COMMON SHARED EvilTwinHp, Hp, MaxHp, Level, RM
COLOR 15
CLS
PRINT "Treachery.  There's been way too much of it in your life.  First your shifty"
PRINT "little tiefling 'friend,' and then Pelnar.  Anyone that you can trust turns on"
PRINT "you.  Always.  And now, when you had thought that you had a friend; someone that"
PRINT "you could trust, he turns on you.  A member of the Dark Eight of Baator tricked"
PRINT "you into thinking that HE was David Angelmaster.  Wonderful.  Now HE has the"
PRINT "Book of Forbidden Lore.  Even more wonderful.  But you will find the Book of"
PRINT "Forbidden Lore.  All who take it eventually perish.  This pit fiend will be no"
PRINT "different."
PRINT "[MORE]", A$
2 A$ = INKEY$
IF LEN(A$) = 0 THEN GOTO 2
CLS
LOCATE 11
PRINT "                        B       A       A       T       O       R": PRINT
PRINT "                             Violence isn't always the answer"
3 A$ = INKEY$
IF LEN(A$) = 0 THEN GOTO 3
CLS
Level = 1
RM = 2
CornugonHp = 35
AbishaiHp = 13
BarbazuHp = 20
OsyluthHp = 15
KytonHp = 25
HamHp = 20
FuryHp = 50
PitFiendHp = 90
Hp = 100
MaxHp = 100
EvilTwinHp = 20
FuryHp = 50
BaalHp = 130
OPEN "data.baa" FOR OUTPUT AS #1
PRINT #1, Hp: PRINT #1, MaxHp: PRINT #1, Xp: PRINT #1, RM: PRINT #1, Level: PRINT #1, Time: PRINT #1, Sword: PRINT #1, Guide: PRINT #1, Cornugon1: PRINT #1, CornugonHp: PRINT #1, Crawling: PRINT #1, CornuGated: PRINT #1, Cornugons: PRINT #1, Ruby: PRINT #1, CabinetOpen: PRINT #1, Pass: PRINT #1, AbishGated: PRINT #1, Abishais: PRINT #1, AbishaiHp: PRINT #1, Abishai1: PRINT #1, Pool
PRINT #1, Money: PRINT #1, DoorOpen: PRINT #1, CantRun: PRINT #1, BoatMan: PRINT #1, Cur: PRINT #1, Current: PRINT #1, StyxDead: PRINT #1, Abishai2: PRINT #1, Cons: PRINT #1, Looked: PRINT #1, Cornugon2: PRINT #1, OsyGated: PRINT #1, Osyluths: PRINT #1, OsyluthHp: PRINT #1, Osyluth1: PRINT #1, BarbGated: PRINT #1, Barbazus: PRINT #1, BarbazuHp: PRINT #1, Barbazu1: PRINT #1, HamGated: PRINT #1, Hamatulas: PRINT #1, HamHp: PRINT #1, Hamatula1: PRINT #1, Break: PRINT #1, Book: PRINT #1, Page: PRINT #1, Kyton: PRINT #1, KytonHp: PRINT #1, Alley1Seen: PRINT #1, Alley2Seen: PRINT #1, Alley3Seen: PRINT #1, AlleySeen: PRINT #1, PitFiend: PRINT #1, Immune: PRINT #1, PitFiendHp: PRINT #1, PitFiendGated: PRINT #1, FuryCome: PRINT #1, FuryHp: PRINT #1, FDeadRm: PRINT #1, FDeadLevel: PRINT #1, SaidThis: PRINT #1, Sinking: PRINT #1, Arcanoloth: PRINT #1, EvilTwinHp: PRINT #1, FuryConfront: PRINT #1, GuideLeft: PRINT #1, Leave: PRINT #1, Rope: PRINT #1, North: PRINT #1, East: PRINT #1, ArcFight: PRINT #1, ArcReveal
PRINT #1, Slave: PRINT #1, SaidThis2: PRINT #1, Prison: PRINT #1, Torture: PRINT #1, GoingToDie: PRINT #1, FreakWormHole: PRINT #1, FuryMad: PRINT #1, ThugTalk: PRINT #1, LtherCome: PRINT #1, GuideIncapacitated: PRINT #1, TalkLther: PRINT #1, FuryBeg: PRINT #1, Osyluth3: PRINT #1, Osyluth2: PRINT #1, Escaped: PRINT #1, PitFiend2: PRINT #1, PitFiendHit: PRINT #1, PitFiendGated: PRINT #1, LetFree: PRINT #1, Mezz1: PRINT #1, LtherHere3: PRINT #1, FurySaidThisThing: PRINT #1, FurCome: PRINT #1, Warned: PRINT #1, Warned2: PRINT #1, GateOpened: PRINT #1, Bould: PRINT #1, Calling: PRINT #1, ResistanceOpen: PRINT #1, RebelsKnow: PRINT #1, Mezzoloths: PRINT #1, OsyGuard: PRINT #1, PitFiendLord: PRINT #1, OsyGateGuard: PRINT #1, InLeague: PRINT #1, PalaceGuard
PRINT #1, CellDoor1Opened: PRINT #1, CellDoor2Opened: PRINT #1, CellDoor3Opened: PRINT #1, Stuff: PRINT #1, InWater: PRINT #1, Breath: PRINT #1, Gelugons: PRINT #1, GeluHp: PRINT #1, GeluGated: PRINT #1, Key1: PRINT #1, PastGelugons: PRINT #1, GuideSwitch: PRINT #1, Come: PRINT #1, GuideFound: PRINT #1, PitFiendReveal: PRINT #1, EvilTwinDead: PRINT #1, FuryCellNessus: PRINT #1, YourCellNessus: PRINT #1, InMaze: PRINT #1, Annoy: PRINT #1, EvilTwinAttack: PRINT #1, GuideAttack: PRINT #1, FightBaalzephon: PRINT #1, BaalHp: PRINT #1, EvilGuideHp
CLOSE #1
RUN "baator2a.bas"

