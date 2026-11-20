local _, ns = ...
local d = ns.dicts.DE

-- Regular verbs: infinitive=meaning. All common forms are generated automatically.
ns.verbsDE = [[
brauchen=need;suchen=look for;machen=do/make;spielen=play;sagen=say;fragen=ask;antworten=answer;
warten=wait;holen=fetch/get;kaufen=buy;verkaufen=sell;zahlen=pay;bezahlen=pay;handeln=trade;
leveln=level;farmen=farm;questen=quest;looten=loot;pullen=pull;tanken=tank;heilen=heal;
kämpfen=fight;kaempfen=fight;töten=kill;toeten=kill;sterben=die;leben=live;wohnen=live;
lernen=learn;trainieren=train;craften=craft;sammeln=collect;tauschen=swap;schicken=send;
zeigen=show;erklären=explain;erklaeren=explain;glauben=believe;denken=think;hoffen=hope;
lieben=love;hassen=hate;mögen=like;moegen=like;freuen=be glad;danken=thank;helfen=help;
folgen=follow;führen=lead;fuehren=lead;reisen=travel;fliegen=fly;laufen=run;rennen=run;
reiten=ride;schwimmen=swim;springen=jump;fallen=fall;öffnen=open;oeffnen=open;schließen=close;
schliessen=close;stellen=put;legen=lay;setzen=sit/set;stehen=stand;sitzen=sit;liegen=lie;
hören=hear;hoeren=hear;schauen=look;gucken=look;sehen=see;finden=find;verlieren=lose;
gewinnen=win;versuchen=try;probieren=try;schaffen=manage;klappen=work out;passen=fit/pass;
brennen=burn;bauen=build;reparieren=repair;benutzen=use;nutzen=use;tragen=wear/carry;
ziehen=pull;drücken=press;druecken=press;klicken=click;tippen=type;schreiben=write;lesen=read;
reden=talk;sprechen=speak;erzählen=tell;erzaehlen=tell;rufen=call;melden=report;einladen=invite;
joinen=join;leaven=leave;verlassen=leave;bleiben=stay;wechseln=switch;ändern=change;aendern=change;
bewegen=move;drehen=turn;rennen=run;umgehen=avoid;vermeiden=avoid;blocken=block;unterbrechen=interrupt;
kicken=kick;stunnen=stun;sheepen=sheep;bannen=banish;fesseln=root;heilen=heal;buffen=buff;
rezzen=rez;wiederbeleben=resurrect;trinken=drink;essen=eat;schlafen=sleep;arbeiten=work;
anfangen=start;beginnen=begin;aufhören=stop;aufhoeren=stop;enden=end;starten=start;stoppen=stop;
brauchen=need;benötigen=need;benoetigen=need;wollen=want;mieten=rent;leihen=lend;geben=give;
nehmen=take;bekommen=get;kriegen=get;erhalten=receive;bringen=bring;tun=do;kennen=know;wissen=know;
verstehen=understand;vergessen=forget;erinnern=remember;merken=notice;hoffen=hope;zählen=count;
zaehlen=count;teilen=share;ignorieren=ignore;spammen=spam;flamen=flame;lachen=laugh;weinen=cry;
grinden=grind;skillen=skill;equippen=equip;ausrüsten=equip;ausruesten=equip;verzaubern=enchant;
angeln=fish;rekrutieren=recruit;bewerben=apply;raiden=raid;organisieren=organize;anbieten=offer;
kochen=cook;schmieden=forge;nähen=sew;naehen=sew;brauen=brew;
]]

-- Plain words and phrases: word=meaning;
ns.extraDE = [[
aber=but;also=so;ach=oh;achso=oh I see;alt=old;neu=new;jung=young;groß=big;gross=big;klein=small;
lang=long;kurz=short;hoch=high;tief=deep;stark=strong;schwach=weak;schwer=hard/heavy;leicht=easy/light;
einfach=simple;schwierig=difficult;wichtig=important;egal=doesn't matter;sicher=sure/safe;
gefährlich=dangerous;gefaehrlich=dangerous;voll=full;leer=empty;offen=open;zu=closed/to;
fertig=done;bereit=ready;müde=tired;muede=tired;hungrig=hungry;krank=sick;froh=glad;traurig=sad;
nett=nice;lieb=kind;böse=evil/angry;boese=evil/angry;dumm=stupid;schlau=smart;lustig=funny;
schön=nice/beautiful;schoen=nice/beautiful;hässlich=ugly;haesslich=ugly;besser=better;beste=best;
schlimmer=worse;mehr=more;meist=most;erste=first;ersten=first;zweite=second;letzte=last;
letzten=last;nächste=next;naechste=next;andere=other;anderen=other;gleiche=same;selbe=same;
eigene=own;ganz=whole/quite;halb=half;fast=almost;genug=enough;zu viel=too much;
heute=today;abend=evening;abends=in the evening;morgens=in the morning;mittag=noon;nacht=night;
tag=day;tage=days;woche=week;monat=month;jahr=year;stunde=hour;stunden=hours;minute=minute;
minuten=minutes;min=min;sekunde=second;sek=sec;zeit=time;uhr=o'clock;sofort=immediately;
bald=soon;früher=earlier;frueher=earlier;oft=often;manchmal=sometimes;selten=rarely;
endlich=finally;wirklich=really;eigentlich=actually;natürlich=of course;natuerlich=of course;
leider=unfortunately;hoffentlich=hopefully;wahrscheinlich=probably;bestimmt=surely;
zusammen=together;allein=alone;irgendwo=somewhere;irgendwas=something;irgendwer=someone;
niemand=nobody;nirgends=nowhere;überall=everywhere;ueberall=everywhere;drin=inside;
draußen=outside;draussen=outside;drinnen=inside;hinten=behind;vorne=in front;neben=next to;
zwischen=between;unter=under;über=over/about;ueber=over/about;gegen=against;durch=through;
seit=since;bis=until;wegen=because of;weil=because;dass=that;wenn=if/when;ob=whether;als=than/as;
damit=so that;sonst=otherwise;trotzdem=anyway;deshalb=therefore;sowieso=anyway;eh=anyway;
mann=man;frau=woman;kind=child;typ=guy;kumpel=buddy;bro=bro;leute=people;mensch=human;
menschen=humans;zwerg=dwarf;zwerge=dwarves;gnom=gnome;nachtelf=night elf;elf=elf;ork=orc;
orc=orc;troll=troll;taure=tauren;untoter=undead;untote=undead;allianz=Alliance;horde=Horde;
klasse=class;rasse=race;charakter=character;char=character;twink=alt;main=main;
stufe=level;talent=talent;talente=talents;fähigkeit=ability;faehigkeit=ability;zauber=spell;
zauberspruch=spell;buff=buff;debuff=debuff;aggro=aggro;cooldown=cooldown;cd=cooldown;
mana=mana;wut=rage;energie=energy;leben=health/life;hp=hp;gesundheit=health;trank=potion;
tränke=potions;traenke=potions;heiltrank=healing potion;manatrank=mana potion;verband=bandage;
verbände=bandages;verbaende=bandages;pfeile=arrows;munition=ammo;kugeln=bullets;
schwert=sword;axt=axe;streitkolben=mace;dolch=dagger;stab=staff;bogen=bow;gewehr=gun;
schild=shield;helm=helmet;handschuhe=gloves;stiefel=boots;gürtel=belt;guertel=belt;
ring=ring;umhang=cloak;hose=pants;brust=chest;schultern=shoulders;armschienen=bracers;
quest=quest;questitem=quest item;questgeber=quest giver;abgeben=turn in;annehmen=accept;
erledigt=done;geschafft=done;fertig=done;offen=open;belohnung=reward;erfahrung=XP;ep=XP;xp=XP;
dungeon=dungeon;instanz=instance;todesminen=Deadmines;verlies=Stockades;burg=keep/castle;
höhlen=caves;hoehlen=caves;kloster=Monastery;scharlachrotes=Scarlet;mine=mine;
sturmwind=Stormwind;eisenschmiede=Ironforge;darnassus=Darnassus;orgrimmar=Orgrimmar;
donnerfels=Thunder Bluff;unterstadt=Undercity;wald von elwynn=Elwynn Forest;elwynn=Elwynn;
westfall=Westfall;dämmerwald=Duskwood;daemmerwald=Duskwood;rotkammgebirge=Redridge Mountains;
loch modan=Loch Modan;dun morogh=Dun Morogh;teldrassil=Teldrassil;dunkelküste=Darkshore;
dunkelkueste=Darkshore;brachland=Barrens;durotar=Durotar;mulgore=Mulgore;tirisfal=Tirisfal;
silberwald=Silverpine;sumpfland=Wetlands;eschental=Ashenvale;steinkrallengebirge=Stonetalon;
schlingendorntal=Stranglethorn;wüste=desert;wueste=desert;tanaris=Tanaris;
gruppe=group;party=party;raid=raid;gilde=guild;gildenbank=guild bank;mitglied=member;
anführer=leader;anfuehrer=leader;leiter=leader;lead=lead;plündern=loot;pluendern=loot;
beutemeister=master looter;würfle=roll;wuerfle=roll;gewürfelt=rolled;gewuerfelt=rolled;
bedarf=need;gier=greed;passen=pass;verkauf=sale;angebot=offer;auktionshaus=auction house;ah=AH;
briefkasten=mailbox;post=mail;bank=bank;gasthaus=inn;gastwirt=innkeeper;wache=guard;
tor=gate;turm=tower;haus=house;brücke=bridge;bruecke=bridge;straße=road;strasse=road;weg=path/away;
insel=island;meer=sea;küste=coast;kueste=coast;strand=beach;dorf=village;lager=camp;
friedhof=graveyard;geist=ghost;geistheiler=spirit healer;leiche=corpse;
hund=dog;katze=cat;wolf=wolf;bär=bear;baer=bear;spinne=spider;spinnen=spiders;eber=boar;
murloc=murloc;murlocs=murlocs;kobold=kobold;kobolde=kobolds;gnoll=gnoll;gnolle=gnolls;
drache=dragon;skelett=skeleton;zombie=zombie;geister=ghosts;tier=animal/beast;begleiter=pet;
pet=pet;reittier=mount;mount=mount;
schnell=fast;langsam=slow;rennt=runs;lauft=run;hilfe=help;achtung=watch out;vorsicht=careful;
weg=away;raus=out;rein=in;hoch=up;runter=down;hin=there;her=here;zurück=back;
wieso=why;weshalb=why;welche=which;welcher=which;welches=which;wieviel=how much;wie viel=how much;
wieviele=how many;woher=where from;ehrlich=honestly;echt=really;quatsch=nonsense;mist=damn;
scheiße=crap;scheisse=crap;verdammt=damn;oh mann=oh man;na ja=well;naja=well;tja=well;
juhu=yay;yay=yay;haha=haha;hehe=hehe;xd=xD;gg=gg;wp=wp;gz=gz;grats=grats;gratz=grats;
glückwunsch=congrats;glueckwunsch=congrats;herzlichen glückwunsch=congratulations;
glueckwunsch=congrats;willkommen=welcome;sorry=sorry;sry=sorry;thx=thanks;dankeschön=thank you;
dankeschoen=thank you;bitteschön=you're welcome;bitteschoen=you're welcome;gn8=good night;
nabend=evening;n8=night;bb=bye;cya=see you;bis morgen=see you tomorrow;
deutsch=German;englisch=English;französisch=French;franzoesisch=French;spreche=speak;
sprichst=speak;sprache=language;verstehe=understand;verstehst=understand;kein deutsch=no German;
ich verstehe nicht=I don't understand;sprichst du deutsch=do you speak German;
nur ein bisschen=only a little;bisschen=a bit;ein bisschen=a little;
sechs=six;sieben=seven;acht=eight;neun=nine;zehn=ten;elf=eleven/elf;zwölf=twelve;zwoelf=twelve;
zwanzig=twenty;dreißig=thirty;dreissig=thirty;vierzig=forty;fünfzig=fifty;fuenfzig=fifty;
hundert=hundred;farm=farm;wow=WoW;anfänger=beginner;anfaenger=beginner;erfahren=experienced;erfahrene=experienced;
mitglieder=members;neue=new;willkommen=welcome;familiär=family-friendly;familiaer=family-friendly;
entspannt=relaxed;aktiv=active;aktive=active;erwachsene=adults;erwachsen=adult;ü18=18+;ue18=18+;
pflicht=mandatory;voraussetzung=requirement;discord=Discord;teamspeak=TeamSpeak;ts=TeamSpeak;
raidzeiten=raid times;termine=dates;abends=evenings;wochenende=weekend;flüstern=whisper;
fluestern=whisper;flüstert=whisper;fluestert=whisper;meldet euch=get in touch;meld dich=get in touch;
bei interesse=if interested;interesse=interest;infos=info;gemeinschaft=community;spaß=fun;spass=fun;
alle stufen=all levels;jede stufe=any level;rekrutiert=recruits;sucht verstärkung=looking for members;
verstaerkung=reinforcements;verstärkung=reinforcements;
gerade=just now;grad=just now;eben=just;sogar=even;etwa=about;ungefähr=about;ungefaehr=about;tausend=thousand;erster=first;zweiter=second;dritter=third;
]]

-- Merge into the main word table
local function merge(blob, dst)
  for pair in blob:gmatch("[^;\n]+") do
    local k, v = pair:match("^%s*(.-)%s*=%s*(.-)%s*$")
    if k and k ~= "" then
      k = k:lower()
      if k:find(" ") then d.phrases[k] = d.phrases[k] or v else dst[k] = dst[k] or v end
    end
  end
end
merge(ns.extraDE, d.words)

-- German verb forms from the infinitive
for pair in ns.verbsDE:gmatch("[^;\n]+") do
  local inf, mean = pair:match("^%s*(.-)%s*=%s*(.-)%s*$")
  if inf and inf ~= "" then
    local stem = inf:match("^(.-)en$") or inf:match("^(.-)n$") or inf
    local forms = { inf, stem, stem.."e", stem.."st", stem.."t", stem.."est", stem.."et",
      stem.."te", stem.."test", stem.."ten", stem.."tet", "ge"..stem.."t", "ge"..stem.."et", stem.."ete", stem.."eten", stem.."end" }
    for _, f in ipairs(forms) do
      if not d.words[f] then d.words[f] = mean end
    end
  end
end
