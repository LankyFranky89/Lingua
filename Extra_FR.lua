local _, ns = ...
local d = ns.dicts.FR

-- Regular -er verbs: infinitive=meaning. Common forms are generated automatically.
ns.verbsFR = [[
chercher=look for;trouver=find;jouer=play;parler=speak;demander=ask;donner=give;aimer=like/love;
adorer=love;détester=hate;detester=hate;penser=think;regarder=look;écouter=listen;ecouter=listen;
attendre=wait;arriver=arrive;rester=stay;passer=pass;tomber=fall;entrer=enter;rentrer=go back;
monter=go up;tourner=turn;marcher=walk/work;courir=run;voler=fly/steal;nager=swim;sauter=jump;
acheter=buy;vendre=sell;payer=pay;échanger=trade;echanger=trade;envoyer=send;apporter=bring;
porter=wear/carry;laisser=leave;quitter=leave;oublier=forget;rappeler=remind;montrer=show;
expliquer=explain;essayer=try;tenter=try;réussir=succeed;reussir=succeed;gagner=win;
perdre=lose;tuer=kill;mourir=die;soigner=heal;heal=heal;tanker=tank;puller=pull;looter=loot;
farmer=farm;monter=level up;crafter=craft;récolter=gather;recolter=gather;miner=mine;pêcher=fish;
pecher=fish;cuisiner=cook;forger=forge;enchanter=enchant;aider=help;inviter=invite;
rejoindre=join;suivre=follow;mener=lead;guider=guide;protéger=protect;proteger=protect;
attaquer=attack;frapper=hit;bloquer=block;interrompre=interrupt;kicker=kick;stun=stun;
ressusciter=resurrect;rez=rez;buffer=buff;boire=drink;manger=eat;dormir=sleep;travailler=work;
commencer=start;finir=finish;terminer=finish;arrêter=stop;arreter=stop;continuer=continue;
recommencer=restart;changer=change;bouger=move;utiliser=use;cliquer=click;écrire=write;
ecrire=write;lire=read;taper=type;appeler=call;crier=shout;rigoler=laugh;pleurer=cry;
espérer=hope;esperer=hope;compter=count;partager=share;ignorer=ignore;spammer=spam;
garder=keep;prendre=take;retourner=return;visiter=visit;explorer=explore;voyager=travel;
réparer=repair;reparer=repair;équiper=equip;equiper=equip;préparer=prepare;preparer=prepare;
lancer=cast/throw;tirer=shoot/pull;rater=miss;louper=miss;galérer=struggle;galerer=struggle;
valider=turn in;accepter=accept;rendre=turn in/give back;récupérer=retrieve;recruter=recruit;rechercher=look for;intégrer=join;integrer=join;postuler=apply;raider=raid;progresser=progress;discuter=chat;organiser=organize;proposer=offer;
recuperer=retrieve;
]]

ns.extraFR = [[
alors=so/then;donc=so;parce que=because;car=because;quand même=still/anyway;quand meme=anyway;
puisque=since;comme=like/as;si=if/yes;sinon=otherwise;pourtant=yet;enfin=finally/well;
vieux=old;nouveau=new;nouvelle=new;jeune=young;grand=big;grande=big;petit=small;petite=small;
long=long;court=short;haut=high;bas=low;fort=strong;faible=weak;dur=hard;facile=easy;
simple=simple;difficile=difficult;important=important;sûr=sure;sur_=sure;dangereux=dangerous;
plein=full;vide=empty;ouvert=open;fermé=closed;ferme=closed;fini=done;prêt=ready;
fatigué=tired;fatigue=tired;malade=sick;content=happy;contente=happy;triste=sad;gentil=nice;
méchant=mean;mechant=mean;bête=dumb;bete=dumb;con=idiot;drôle=funny;drole=funny;
beau=nice/beautiful;belle=beautiful;moche=ugly;meilleur=better/best;pire=worse;
premier=first;première=first;premiere=first;deuxième=second;deuxieme=second;dernier=last;
dernière=last;derniere=last;prochain=next;autre=other;autres=others;même=same;meme=same;
seul=alone;ensemble=together;tout=all;tous=all;toute=all;toutes=all;chaque=each;
jour=day;jours=days;semaine=week;mois=month;an=year;année=year;annee=year;heure=hour;
heures=hours;minute=minute;minutes=minutes;min=min;seconde=second;sec=sec;temps=time;
matin=morning;soir=evening;nuit=night;midi=noon;tôt=early;tot=early;tard=late;
souvent=often;parfois=sometimes;jamais=never;toujours=always;enfin=finally;vraiment=really;
franchement=honestly;sérieux=seriously;serieux=seriously;évidemment=obviously;
evidemment=obviously;malheureusement=unfortunately;peut-être=maybe;peut-etre=maybe;
probablement=probably;certainement=certainly;quelque part=somewhere;quelque chose=something;
personne=nobody/person;partout=everywhere;dedans=inside;dehors=outside;derrière=behind;
derriere=behind;devant=in front;à côté=next to;a cote=next to;entre=between;contre=against;
pendant=during;depuis=since;jusqu'à=until;jusqua=until;malgré=despite;sans=without;
homme=man;femme=woman;enfant=child;mec=guy;pote=buddy;gars=guy;les gars=guys;
humain=human;nain=dwarf;nains=dwarves;gnome=gnome;elfe=elf;elfe de la nuit=night elf;orc=orc;
troll=troll;tauren=tauren;mort-vivant=undead;réprouvé=Forsaken;reprouve=Forsaken;
alliance=Alliance;horde=Horde;classe=class;race=race;perso=character;personnage=character;
reroll=alt;main=main;talent=talent;talents=talents;sort=spell;sorts=spells;compétence=skill;
competence=skill;aggro=aggro;cd=cooldown;rage=rage;énergie=energy;energie=energy;
vie=health/life;pv=hp;santé=health;sante=health;potion=potion;potions=potions;popo=potion;
bandage=bandage;bandages=bandages;flèches=arrows;fleches=arrows;balles=bullets;munitions=ammo;
épée=sword;epee=sword;hache=axe;masse=mace;dague=dagger;bâton=staff;baton=staff;arc=bow;
fusil=gun;bouclier=shield;casque=helmet;gants=gloves;bottes=boots;ceinture=belt;anneau=ring;
bague=ring;cape=cloak;jambières=legs;jambieres=legs;torse=chest;épaules=shoulders;
epaules=shoulders;brassards=bracers;stuff=gear;
quête=quest;donneur de quête=quest giver;rendre=turn in;valider=turn in;terminé=done;
termine=done;fait=done;expérience=XP;experience=XP;xp=XP;
mortemines=Deadmines;prison=Stockades;monastère=Monastery;monastere=Monastery;écarlate=Scarlet;
ecarlate=Scarlet;donjon=dungeon;hurlevent=Stormwind;forgefer=Ironforge;darnassus=Darnassus;
orgrimmar=Orgrimmar;les pitons-du-tonnerre=Thunder Bluff;fossoyeuse=Undercity;
forêt d'elwynn=Elwynn Forest;marche de l'ouest=Westfall;bois de la pénombre=Duskwood;
les carmines=Redridge;loch modan=Loch Modan;dun morogh=Dun Morogh;teldrassil=Teldrassil;
sombrivage=Darkshore;les tarides=Barrens;tarides=Barrens;durotar=Durotar;mulgore=Mulgore;
clairières de tirisfal=Tirisfal;forêt des pins-argentés=Silverpine;les paluns=Wetlands;
orneval=Ashenvale;serres-rocheuses=Stonetalon;strangleronce=Stranglethorn;désert=desert;
desert=desert;tanaris=Tanaris;
fête=party;groupe=group;raid=raid;guilde=guild;membre=member;chef=leader;lead=lead;
butin=loot;maître du butin=master looter;jet=roll;roll=roll;besoin=need;cupidité=greed;
passer=pass;hôtel des ventes=auction house;hv=AH;ah=AH;boîte aux lettres=mailbox;
courrier=mail;banque=bank;aubergiste=innkeeper;garde=guard;porte=gate/door;tour=tower;
maison=house;pont=bridge;route=road;chemin=path;île=island;ile=island;mer=sea;côte=coast;
cote=coast;plage=beach;village=village;camp=camp;cimetière=graveyard;cimetiere=graveyard;
fantôme=ghost;fantome=ghost;esprit=spirit;guérisseur spirituel=spirit healer;corps=body/corpse;
chien=dog;chat=cat;loup=wolf;ours=bear;araignée=spider;araignee=spider;araignées=spiders;
araignees=spiders;sanglier=boar;murloc=murloc;murlocs=murlocs;kobold=kobold;kobolds=kobolds;
gnoll=gnoll;gnolls=gnolls;dragon=dragon;squelette=skeleton;zombie=zombie;bête=beast;
familier=pet;pet=pet;monture=mount;
attention=watch out;fais gaffe=careful;gaffe=careful;au secours=help;à l'aide=help;
pourquoi=why;lequel=which;laquelle=which;combien=how much;d'où=where from;dou=where from;
sérieusement=seriously;serieusement=seriously;n'importe quoi=nonsense;merde=crap;putain=damn;
zut=darn;bon ben=well;bah=well;ben=well;euh=uh;ouf=phew;génial=awesome;cool=cool;
mdr=lol;ptdr=lmao;lol=lol;xd=xD;gg=gg;wp=wp;bravo=well done;félicitations=congrats;
felicitations=congrats;gz=gz;bienvenue=welcome;désolée=sorry;desolee=sorry;dsl=sorry;
pardon=sorry;thx=thanks;mci=thanks;de rien=you're welcome;bn=good night;bonne nuit=good night;
a+=see you;@+=see you;a demain=see you tomorrow;à demain=see you tomorrow;biz=kisses;bisous=kisses;
tkt=don't worry;t'inquiète=don't worry;t'inquiete=don't worry;chui=I am;jsuis=I am;jsp=dunno;
jpp=I can't anymore;osef=who cares;cad=that is;pk=why;pq=why;bcp=a lot;tjrs=always;tjs=always;
qqn=someone;qq=some;qqch=something;mtn=now;slt=hi;bjr=hello;cc=hi;re=back again;afk=afk;
français=French;francais=French;anglais=English;allemand=German;parles=speak;parle=speak;
langue=language;comprends=understand;comprend=understand;je comprends pas=I don't understand;
je ne comprends pas=I don't understand;tu parles français=do you speak French;
un peu=a little;pas beaucoup=not much;
six=six;sept=seven;huit=eight;neuf=nine/new;dix=ten;onze=eleven;douze=twelve;vingt=twenty;
trente=thirty;quarante=forty;cinquante=fifty;cent=hundred;farm=farm;wow=WoW;on garde=we keep;débutant=beginner;debutant=beginner;débutants=beginners;debutants=beginners;
vétéran=veteran;veteran=veteran;vétérans=veterans;veterans=veterans;familial=family;familiale=family-friendly;
entraide=mutual help;sortie=outing/run;sorties=runs;requis=required;requise=required;obligatoire=mandatory;
second=second;seconde=second;degré=degree;degre=degree;second degré=sense of humor;indispensable=essential;
membre=member;membres=members;recrutement=recruitment;recrue=recruit;candidature=application;
discord=Discord;vocal=voice chat;event=event;events=events;événement=event;evenement=event;
ambiance=atmosphere;bonne ambiance=good vibes;sympa=friendly;chill=chill;actif=active;active=active;
actifs=active;adulte=adult;adultes=adults;majeur=adult (18+);expérimenté=experienced;
experimente=experienced;niveau requis=level required;horaires=schedule;soirée=evening;soiree=evening;
semaine=week;week-end=weekend;weekend=weekend;mp=PM/whisper;mp moi=whisper me;chuchotez=whisper;
chuchote=whisper;info=info;infos=info;plus d'infos=more info;contact=contact;contactez=contact;
bienvenus=welcome;bienvenues=welcome;tous niveaux=all levels;tout niveau=any level;
ce=this;cet=this;cette=this;ces=these;ceci=this;cela=that;celui=the one;celle=the one;voici=here is;voilà=there you go;voila=there you go;mille=thousand;
]]

for _, m in ipairs({"tkt","chui","jsuis","jsp","dsl","mdr","ptdr","slt","bjr","on","le","la","attend","cette","ce","ces","au","aux","du"}) do d.markers[#d.markers+1]=m end

local function merge(blob, dst)
  for pair in blob:gmatch("[^;\n]+") do
    local k, v = pair:match("^%s*(.-)%s*=%s*(.-)%s*$")
    if k and k ~= "" then
      k = k:lower()
      if k:find(" ") then d.phrases[k] = d.phrases[k] or v else dst[k] = dst[k] or v end
    end
  end
end
merge(ns.extraFR, d.words)

-- French -er / -re / -ir verb forms
for pair in ns.verbsFR:gmatch("[^;\n]+") do
  local inf, mean = pair:match("^%s*(.-)%s*=%s*(.-)%s*$")
  if inf and inf ~= "" then
    local forms
    local s = inf:match("^(.-)er$")
    if s then
      forms = { inf, s.."e", s.."es", s.."ons", s.."ez", s.."ent", s.."é", s.."e", s.."ée",
        s.."és", s.."ait", s.."ais", s.."aient", s.."erai", s.."era", s.."ant" }
    else
      s = inf:match("^(.-)re$") or inf:match("^(.-)ir$") or inf
      forms = { inf, s, s.."s", s.."t", s.."ons", s.."ez", s.."ent", s.."u", s.."i", s.."is",
        s.."it", s.."issons", s.."issez", s.."issent", s.."ait", s.."ais" }
    end
    for _, f in ipairs(forms) do
      if not d.words[f] then d.words[f] = mean end
    end
  end
end
