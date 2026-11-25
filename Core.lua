local function Secret(v) -- chat hidden by the game (or faked by /cc secret)
  if CopyCatFakeSecret and CopyCatFakeSecret > GetTime() then return true end
  return issecretvalue ~= nil and issecretvalue(v) == true
end
local ADDON, ns = ...
local dicts = ns.dicts

local defaults = {
  enabled = true,
  langs = { DE = true, FR = true },
  channels = { SAY=true, YELL=true, WHISPER=true, PARTY=true, RAID=true, GUILD=true, CHANNEL=true },
}

local events = {
  CHAT_MSG_SAY="SAY", CHAT_MSG_YELL="YELL", CHAT_MSG_WHISPER="WHISPER",
  CHAT_MSG_PARTY="PARTY", CHAT_MSG_PARTY_LEADER="PARTY",
  CHAT_MSG_RAID="RAID", CHAT_MSG_RAID_LEADER="RAID", CHAT_MSG_RAID_WARNING="RAID",
  CHAT_MSG_GUILD="GUILD", CHAT_MSG_OFFICER="GUILD", CHAT_MSG_CHANNEL="CHANNEL",
}

local db
local cache = {}          -- msg -> { lang, translation, original } or false
local store, storeN = {}, 0  -- id -> entry (ring buffer for hyperlinks)
local MAXSTORE = 300

local function copyDefaults(src, dst)
  for k, v in pairs(src) do
    if type(v) == "table" then
      dst[k] = type(dst[k]) == "table" and dst[k] or {}
      copyDefaults(v, dst[k])
    elseif dst[k] == nil then
      dst[k] = v
    end
  end
end

-- strip links/colors/textures so we only work on plain words
local function plain(msg)
  msg = msg:gsub("|H.-|h(.-)|h", "%1"):gsub("|c%x%x%x%x%x%x%x%x", ""):gsub("|r", ""):gsub("|T.-|t", "")
  return msg
end

-- split into word tokens (keeps apostrophe inside words, UTF-8 safe)
local function tokenize(text)
  local t = {}
  for w in text:gmatch("[^%s%.,!%?;:%(%)%[%]\"]+") do
    t[#t + 1] = w
  end
  return t
end

local markerSets = {}
for code, d in pairs(dicts) do
  local s = {}
  for _, m in ipairs(d.markers) do s[m] = true end
  markerSets[code] = s
end

local english = {}
for _, w in ipairs({ "the","and","you","is","are","i","im","for","with","to","of","it","that","what",
  "need","lf","lfg","lfm","anyone","can","have","we","my","this","on","in","pls","plz","thanks","thx" }) do
  english[w] = true
end

local function detect(text)
  local lower = text:lower()
  local tokens = tokenize(lower)
  if #tokens == 0 then return nil end
  local eng = 0
  for _, w in ipairs(tokens) do if english[w] then eng = eng + 1 end end
  local best, bestScore = nil, 0
  for code, d in pairs(dicts) do
    if db.langs[code] then
      local score = 0
      for _, w in ipairs(tokens) do
        local w2 = w:gsub("^[jlcd]'", "")
        if markerSets[code][w] or markerSets[code][w2] then score = score + 1 end
      end
      for _, a in ipairs(d.accents) do
        if lower:find(a, 1, true) then score = score + 1.5 end
      end
      if score > bestScore then best, bestScore = code, score end
    end
  end
  -- need at least 2 points, and more than the english hits
  if best and bestScore >= 2 and bestScore > eng then return best end
  -- single-word / very short messages: one strong marker is enough
  if best and #tokens <= 2 and bestScore >= 1 and eng == 0 then return best end
  return nil
end

local function translate(code, text)
  local d = dicts[code]
  local tokens = tokenize(text)
  local lowerTok = {}
  for i, w in ipairs(tokens) do lowerTok[i] = w:lower() end
  local out, known, total = {}, 0, 0
  local i = 1
  while i <= #tokens do
    local matched = false
    for len = math.min(5, #tokens - i + 1), 2, -1 do
      local phrase = table.concat(lowerTok, " ", i, i + len - 1)
      local tr = d.phrases[phrase]
      if tr then
        out[#out + 1] = "|cffffffff" .. tr .. "|r"
        known, total = known + len, total + len
        i = i + len
        matched = true
        break
      end
    end
    if not matched then
      local w = lowerTok[i]
      local tr = d.phrases[w] or d.words[w]
      if not tr then
        -- try without elided article (l'eau -> eau, j'ai handled by phrases)
        local base = w:match("^[jlcdmtsnq]u?'(.+)$")
        if base then tr = d.words[base] end
      end
      if not tr then
        -- strip common plural / case endings
        for _, suf in ipairs(code == "DE" and { "en","n","e","s","er","es","em" } or { "s","x","es","e","ées","ée","és" }) do
          if #w > #suf + 2 and w:sub(-#suf) == suf then
            tr = d.words[w:sub(1, -#suf - 1)]
            if tr then break end
          end
        end
      end
      total = total + 1
      if tr then
        out[#out + 1] = "|cffffffff" .. tr .. "|r"
        known = known + 1
      else
        out[#out + 1] = "|cff808080" .. tokens[i] .. "|r"
      end
      i = i + 1
    end
  end
  return table.concat(out, " "), known, total
end

local function analyse(msg)
  local c = cache[msg]
  if c ~= nil then return c end
  local text = plain(msg)
  local code = detect(text)
  if not code then cache[msg] = false return false end
  local tr, known, total = translate(code, text)
  storeN = storeN % MAXSTORE + 1
  local entry = { id = storeN, lang = code, original = text, translation = tr, known = known, total = total }
  store[storeN] = entry
  cache[msg] = entry
  return entry
end

ns.analyse = analyse
local function filter(self, event, msg, ...)
  if not db or not db.enabled or Secret(msg) then return false end
  local ch = events[event]
  if not ch or not db.channels[ch] then return false end
  if type(msg) ~= "string" or msg == "" then return false end
  local e = analyse(msg)
  if not e then return false end
  local tag = ("|cff66ccff|Hlingua:%d|h[%s]|h|r "):format(e.id, e.lang)
  return false, tag .. msg, ...
end

for ev in pairs(events) do
  ChatFrame_AddMessageEventFilter(ev, filter)
end

-- Hover tooltip ---------------------------------------------------------
local function onEnter(frame, link)
  local id = link and link:match("^lingua:(%d+)")
  if not id then return end
  local e = store[tonumber(id)]
  if not e then return end
  GameTooltip:SetOwner(frame, "ANCHOR_CURSOR")
  GameTooltip:AddLine(dicts[e.lang].name .. " > English", 0.4, 0.8, 1)
  GameTooltip:AddLine(e.translation, 1, 1, 1, true)
  GameTooltip:AddLine(" ")
  GameTooltip:AddLine(e.original, 0.6, 0.6, 0.6, true)
  GameTooltip:AddLine(("Understood %d of %d words. Click to copy."):format(e.known, e.total), 0.5, 0.5, 0.5)
  GameTooltip:Show()
  ns.watchTooltip(frame)
end

-- Watchdog: WoW doesn't fire OnHyperlinkLeave when the mouse leaves the chat
-- frame entirely, so poll and hide the tooltip ourselves.
local watcher = CreateFrame("Frame")
watcher:Hide()
watcher:SetScript("OnUpdate", function(self)
  local f = self.chat
  local x, y = GetCursorPosition()
  local moved = math.abs(x - self.x) + math.abs(y - self.y)
  if GameTooltip:GetOwner() ~= f then self:Hide() return end
  if not f:IsVisible() or not f:IsMouseOver() or moved > 60 * (UIParent:GetEffectiveScale()) then
    GameTooltip:Hide()
    self:Hide()
  end
end)
function ns.watchTooltip(frame)
  watcher.chat = frame
  watcher.x, watcher.y = GetCursorPosition()
  watcher:Show()
end

local function onLeave(frame, link)
  if link and link:match("^lingua:") then
    GameTooltip:Hide()
    watcher:Hide()
  end
end

local hooked = {}
local function hookFrames()
  for i = 1, (NUM_CHAT_WINDOWS or 10) do
    local f = _G["ChatFrame" .. i]
    if f and not hooked[f] then
      f:HookScript("OnHyperlinkEnter", onEnter)
      f:HookScript("OnHyperlinkLeave", onLeave)
      hooked[f] = true
    end
  end
end

-- Copy box --------------------------------------------------------------
local copy
local function showCopy(text)
  if not copy then
    copy = CreateFrame("Frame", "LinguaCopyFrame", UIParent, BackdropTemplateMixin and "BackdropTemplate" or nil)
    copy:SetSize(420, 70)
    copy:SetPoint("CENTER", 0, 150)
    copy:SetFrameStrata("DIALOG")
    if copy.SetBackdrop then
      copy:SetBackdrop({ bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
        edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", edgeSize = 14,
        insets = { left = 3, right = 3, top = 3, bottom = 3 } })
      copy:SetBackdropColor(0, 0, 0, 0.9)
    end
    copy:EnableMouse(true)
    copy:SetMovable(true)
    copy:RegisterForDrag("LeftButton")
    copy:SetScript("OnDragStart", copy.StartMoving)
    copy:SetScript("OnDragStop", copy.StopMovingOrSizing)
    local title = copy:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    title:SetPoint("TOPLEFT", 10, -8)
    title:SetText("Lingua — Ctrl+C to copy, Esc to close")
    local eb = CreateFrame("EditBox", nil, copy, "InputBoxTemplate")
    eb:SetPoint("BOTTOMLEFT", 16, 12)
    eb:SetPoint("BOTTOMRIGHT", -12, 12)
    eb:SetHeight(24)
    eb:SetAutoFocus(true)
    eb:SetScript("OnEscapePressed", function() copy:Hide() end)
    eb:SetScript("OnEnterPressed", function() copy:Hide() end)
    copy.eb = eb
    local close = CreateFrame("Button", nil, copy, "UIPanelCloseButton")
    close:SetPoint("TOPRIGHT", 2, 2)
  end
  copy:Show()
  copy.eb:SetText(text)
  copy.eb:SetFocus()
  copy.eb:HighlightText()
end

local origSetItemRef = SetItemRef
SetItemRef = function(link, text, button, ...)
  local id = link and link:match("^lingua:(%d+)")
  if id then
    local e = store[tonumber(id)]
    if e then showCopy(e.original) end
    return
  end
  return origSetItemRef(link, text, button, ...)
end

-- Slash command ---------------------------------------------------------
local function p(s) DEFAULT_CHAT_FRAME:AddMessage("|cff66ccffLingua:|r " .. s) end
local function onoff(b) return b and "|cff00ff00on|r" or "|cffff4040off|r" end

local function status()
  p("addon " .. onoff(db.enabled) .. "  |  German " .. onoff(db.langs.DE) .. "  French " .. onoff(db.langs.FR))
  local parts = {}
  for _, ch in ipairs({ "SAY","YELL","WHISPER","PARTY","RAID","GUILD","CHANNEL" }) do
    parts[#parts + 1] = ch:lower() .. " " .. onoff(db.channels[ch])
  end
  p(table.concat(parts, ", "))
  p("Toggle: /lingua on|off|de|fr|say|yell|whisper|party|raid|guild|channel")
end

SLASH_LINGUA1 = "/lingua"
SlashCmdList.LINGUA = function(arg)
  arg = (arg or ""):lower():gsub("^%s+", ""):gsub("%s+$", "")
  if arg == "on" then db.enabled = true
  elseif arg == "off" then db.enabled = false
  elseif arg == "de" or arg == "fr" then db.langs[arg:upper()] = not db.langs[arg:upper()]
  elseif db.channels[arg:upper()] ~= nil then db.channels[arg:upper()] = not db.channels[arg:upper()]
  elseif arg ~= "" then p("unknown option '" .. arg .. "'") end
  wipe(cache)
  status()
end

local ev = CreateFrame("Frame")
ev:RegisterEvent("ADDON_LOADED")
ev:RegisterEvent("PLAYER_LOGIN")
ev:SetScript("OnEvent", function(_, e, name)
  if e == "ADDON_LOADED" and name == ADDON then
    LinguaDB = LinguaDB or {}
    copyDefaults(defaults, LinguaDB)
    db = LinguaDB
  elseif e == "PLAYER_LOGIN" then
    hookFrames()
  end
end)
