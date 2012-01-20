DECLARE SUB GuideSay ()
DECLARE SUB Talking ()
DECLARE SUB OnTheBaatezu ()
DECLARE SUB Fights ()
DECLARE SUB Dead ()
DECLARE SUB Maladomini ()
DECLARE SUB Cania ()
DECLARE SUB Nessus ()
COMMON SHARED Killer2$, RM, Killer, Level, NoShow, Hp, MaxHp, Cornugons, CornuGated, Cornugon1, CornugonHp, Barbazus, BarbGated, BarbazuHp, Abishais, AbishGated, AbishaiHp, Osyluth2, OsyGated, Osyluths, OsyluthHp, HamGated, Hamatulas, HamHp, Hamatula1, ErinyesGated, Erinyes1, ErinyesHp, Rope, East, North, Guide, GuideLeft, ArcFight, ArcReveal, Arcanoloth, ReturnTo940, Mezzoloths, ArcGated, MezzHp, MezzGated, ArcHp, CantRun, A$, FuryMad, Slave, Immune, GoingToDie, FreakWormHole, ThugTalk, LtherCome, Thugs, ThugHp, TalkLther, GuideIncapacitated, FuryBeg, Ruby, Money, Osyluth3, Escaped, PitFiend2, PitFiendHp, LetFree, Mezz1, LtherHere3, FuryLeft, GateOpened, Calling, CabinetOpen, Pool, DoorOpen, Cur, SeenThis, Looked, Cons, Abishai2, Cornugon2, ClosedEyes, Barbazu1, Osyluth1, AbishHit, Book, Chains, Kyton, Page, StyxDead, Crawling, BoatMan, Pass, Break, Sinking, Kyton1, Alley1Seen, Alley2Seen, Alley3Seen, AlleySeen, PitFiend, YetAnotherAlley, PitFiendGated, FuryCome, FuryHp, EvilTwinHp, FuryConfront, ResistanceOpen, RebelsKnow, OsyGuard, PitFiendLord, OsyGateGuard, InLeague, PalaceGuard, South, West, SouthEast, SouthWest, NorthEast, NorthWest, CellDoor1Opened, CellDoor2Opened, CellDoor3Opened, Stuff, InWater, Breath, Gelugons, GeluHp, GeluGated, PitFiends, Key1, PastGelugons, Come, GuideSwitch, GuideFound, PitFiendReveal, EvilTwinDead, Place, FuryCellNessus, YourCellNessus, Annoy, EvilTwinAttack, GuideAttack, FightBaalzephon, EvilGuideHp, InMaze
COLOR 15
ON ERROR GOTO Err1
RANDOMIZE TIMER
KEY 10, "fight"
KEY 9, "look"
KEY 8, "regenerate"
KEY 7, "health"
KEY 6, "talk to guide"
KEY 4, "talk to fiend"
GeluHp = 60
CornugonHp = 35
AbishaiHp = 13
BarbazuHp = 20
OsyluthHp = 15
HamHp = 20
FuryHp = 50
PitFiendHp = 90
ErinyesHp = 20
MezzHp = 40
ArcHp = 70
ThugHp = 40
Thugs = 4
EvilGuideHp = 60
BaalHp = 130
Ha:
OPEN "data.baa" FOR INPUT AS #1
GOSUB LoadStuff
GOSUB 5: GOTO 940
1 Time = Time + 1
IF Hp <= 0 THEN Killer = -1: Killer1$ = "an act of God": Dead
KEY 5, A$
IF Hp <= 10 THEN PRINT "Your vision is dimmed by blackness, like the inky night about to envelop you.": PRINT "Every second seems like a year, and taking a breath has become a concious": PRINT "effort.  You are dying."
IF FuryHp <> 50 THEN
FHealing = FHealing + 1
IF FHealing >= 4 THEN FHealing = Healing - 4: FuryHp = FuryHp + 1
END IF
IF Hp <> MaxHp THEN
Healing = Healing + 1
IF Healing >= 4 THEN Healing = Healing - 4: Hp = Hp + 1: PRINT "You feel better."
END IF
Fights
IF (Guide = 1 AND GuideSwitch = 0) AND GuideFound <> 1 THEN
Act = INT(RND * 4) + 1
IF Level = 7 AND RM = 1 THEN Act = 0
GOSUB GuideSay2
IF Act = 1 THEN PRINT "Fury looks around benignly."
IF Act = 2 THEN PRINT "Fury hums a tune that you are totally unfamiliar with."
IF Act = 3 AND LetFree <> 1 THEN PRINT "Fury takes out his short sword and swings it around."
IF Act = 4 THEN PRINT "Fury looks up at the sky, and frowns."
END IF
IF (Guide = 3 OR GuideSwitch = 1) AND GuideFound <> 1 AND GuideAttack = 0 THEN
Act = INT(RND * 4) + 1
IF RM = 5 AND RebelsKnow = 0 THEN Act = 5
GOSUB GuideSay2
IF Act = 1 THEN PRINT "Fury looks around suspiciously, as if someone was watching him."
IF Act = 2 THEN PRINT "Fury takes out a block of wood and begins to whittle at it."
IF Act = 3 THEN PRINT "Fury takes out his short sword and swings it around."
IF Act = 4 THEN PRINT "Fury swivels around, but there's nobody behind him."
IF Act = 5 THEN PRINT "Fury has a dagger held to his throat by a rebel."
END IF
IF Xp >= 50 THEN
Xp = Xp - 50
MaxHp = MaxHp + 5
Hp = Hp + 5
PRINT "You suddenly feel more experienced."
END IF
IF FuryHp <= 0 AND Guide = 1 THEN PRINT "Fury gives out one last scream and falls to the ground of Baator, dead.": Guide = 4: FDeadRm = RM: FDeadLevel = Level
IF Level = 9 THEN
        IF RM <> 8 AND RM <> 2 THEN InMaze = 0
        IF RM = 6 AND GuideFound = 1 THEN PRINT "You can hear a moan from the cell to the north."
        IF RM = 3 AND GuideFound = 1 AND (Guide = 1 OR Guide = 3) THEN PRINT "Fury gets up from the floor.  'Thanks,' he says.  'Now let's go get that": PRINT "sodding pit fiend!'": GuideFound = 0
END IF
IF Level = 8 THEN
        IF RM = 1 AND Key1 = 0 AND Come <> 5 THEN
                Come = Come + 1
                IF Come = 5 THEN PRINT "Suddenly, a plate of food is shoved into your cell.  However, there is no food": PRINT "in it.  There is a shiny key, however."
        END IF
        IF RM = 3 AND (Guide = 1 OR Guide = 3) AND GuideFound = 1 THEN GuideFound = 0: PRINT "Fury says, 'Now let's get out of here and on to the last level of Baator!'"
        IF Level <> 8 THEN Breath = 0
        IF (RM <> 18 AND RM <> 17) THEN Breath = 0
        IF RM = 18 OR RM = 17 THEN Breath = Breath + 1
        IF Breath >= 6 AND Breath <= 9 THEN PRINT "Your lungs are having a hard time holding the air in."
        IF Breath = 10 THEN PRINT "You're getting dizzy from lack of air."
        IF Breath = 11 THEN PRINT "Your lungs are about to burst!"
        IF Breath = 12 THEN PRINT "Your bodily functions have overriden all common sense.  You take a deep breath": PRINT "of the water, and everything goes black.": Killer = 8: Dead
END IF
IF Level = 7 THEN
        IF RM = 26 AND RebelsKnow = 7 THEN Osyluths = 0
        IF RM = 5 AND InLeague = 1 THEN PRINT "Suddenly, there is a thump at the door.  The door suddenly gives way, and": PRINT "fifty osyluths burst into the door.  The rebels are quickly arrested and hauled": PRINT "away.  You too, are taken away, but to the pit fiend's palace.": PitFiendLord = 3: InLeague = 2: RM = 1: PRINT : PRINT : GOSUB 5: PRINT : PRINT "'You have been successful,' says the pit fiend.  The portal is through the door": PRINT "to the west.  Here is your weapon.'": Sword = 0: GOTO 940
        IF RM = 1 AND RebelsKnow = 7 THEN PRINT "There is a mass melee here, with osyluths and barbazu fighting against a tiny": PRINT "band of rebels.  Neither side appears to be winning.": CantRun = 0
        IF RM = 1 AND RebelsKnow = 6 THEN PRINT "There is a mass melee here, with osyluths and barbazu fighting against a tiny": PRINT "band of rebels.  Neither side appears to be winning.": Osyluths = 2: RebelsKnow = 7: CantRun = 0
        IF RM = 7 AND RebelsKnow = 4 THEN RebelsKnow = 5: PRINT "A rebel cuts down the guard here.  Another one opens the massive gates to": PRINT "the palace.  All of them run in.": RebelsKnow = 6: PalaceGuard = 2
        IF RM = 17 AND Sword = 2 THEN RebelsKnow = 4: PRINT "A rebel grabs all of the swords you are carrying, save your own.  He then": PRINT "passes the arms around.  The osyluth guard hisses, and attacks a nearby": PRINT "rebel, but is quickly cut down.  'Regroup at the palace!' yells one rebel.": Sword = 0: OsyGuard = 2
        IF RM = 17 AND RebelsKnow = 3 THEN PRINT "A rebel is here, distracting the osyluth guard."
        IF RM = 17 AND RebelsKnow = 2 THEN RebelsKnow = 3: PRINT "A rebel walks up to the guard and begins talking to the guard."
        IF ResistanceOpen = 1 AND RM <> 4 AND RM <> 5 THEN ResistanceOpen = 0
        IF (Barbazus > 0 OR Osyluths > 0 OR OsyGuard = 1 OR PalaceGuard = 1 OR GateGuard = 1) AND Sword = 1 THEN
                PRINT "You are quickly overwhelmed by your foe.  You are seized and thrown out of the"
                PRINT "town."
                IF Sword = 1 THEN PRINT "You also notice that your receipt has been confiscated.": Sword = -1
        END IF
END IF
RETURN
5
North = 0
South = 0
East = 0
West = 0
NorthEast = 0
NorthWest = 0
SouthEast = 0
SouthWest = 0
IF Level = 7 THEN Maladomini
IF Level = 8 THEN Cania
IF Level = 9 THEN Nessus
IF Level < 7 THEN GOTO Transfer
IF Cornugons > 1 THEN PRINT "There are"; Cornugons; "cornugons here, attacking you!"
IF Cornugons = 1 THEN PRINT "There a cornugon here, attacking you!"
IF Barbazus > 1 THEN PRINT "There are"; Barbazus; "barbazus here, attacking you!"
IF Barbazus = 1 THEN PRINT "There a barbazu here, attacking you!"
IF Abishais > 1 THEN PRINT "There are"; Abishais; "abishai here, attacking you!"
IF Abishais = 1 THEN PRINT "There an abishai here, attacking you!"
IF Osyluths > 1 THEN PRINT "There are"; Osyluths; "osyluth here, attacking you!"
IF Osyluths = 1 THEN PRINT "There an osyluth here, attacking you!"
IF Hamatulas > 1 THEN PRINT "There are"; Hamatulas; "hamatula here, attacking you!"
IF Hamatulas = 1 THEN PRINT "There a hamatula here, attacking you!"
IF Gelugons > 1 THEN PRINT "There are"; Gelugons; "gelugons here, attacking you!"
IF FightBaalzephon = 1 THEN PRINT "Baalzephon is here, attacking you!"
IF GuideAttack = 1 THEN PRINT "Fury is here, attacking you!"
IF EvilTwinAttack = 1 THEN PRINT "There is an exact duplicate of you here, attacking you!"
IF FDeadRm = RM AND FDeadLevel = Level AND Guide <> 3 THEN PRINT "Fury's dead body is here.  You stop to weep a bit for your dead friend."
IF FDeadRm = RM AND FDeadLevel = Level AND Guide = 3 THEN PRINT "The dead body of a human in white is here.  He looks a bit like Fury."
RETURN
940 GOSUB 1
941 KEY 5, A$: ReturnTo940 = 0: PRINT : INPUT "Baator>", A$: PRINT
IF A$ = "" THEN GOTO 940
IF A$ = "diagnose" THEN
PRINT "You are immune to poison."
PRINT "You are immune to disease."
PRINT "You heal at an accelerated rate."
PRINT "You are immune to life energy drain and memory loss."
IF Immune = 1 THEN PRINT "The tooth and claws of baatezu in Baator cause you no pain."
PRINT "You can regenerate all of your wounds at will when not in battle."
PRINT "You have"; Hp; "hit points out of"; MaxHp; "maximum."
GOTO 941
END IF
IF A$ = "read book" AND Book = 1 THEN GOTO Book
IF A$ = "talk to guide" AND (Guide = 1 OR Guide = 3) AND GuideFound <> 1 THEN GuideSay: GOTO 940
IF MID$(A$, 1, 4) = "talk" THEN GOSUB Talk
IF A$ = "regenerate" THEN
IF Hamatulas > 0 OR Hamatula1 = 1 OR Osyluths > 0 OR Osyluth2 = 1 OR Osyluth3 = 1 OR Barbazus > 0 OR Barbazu1 = 1 OR Abishai1 = 1 OR Abishais > 0 OR Cornugons > 0 OR Cornugon1 = 1 THEN PRINT "Not now!  You're in a fight.": GOTO 941
PRINT "You close your eyes and clear your mind.  Your wounds begin to heal of their"
PRINT "own accord and in a matter of moments, you are completely healed."
Hp = MaxHp: GOTO 940
END IF
IF A$ = "z" THEN PRINT "Time passes....": Healing = Healing + 1: GOTO 940
IF A$ = "" THEN GOTO 940
IF A$ = "room" THEN PRINT RM: GOTO 941
IF A$ = "credits" THEN
PRINT "Baator:  You bet your life": PRINT
PRINT "     Programmer:  Dave King"
PRINT "     Designer:  Dave King"
PRINT "     Dedicated to:  Chuck Kappenman, upon which the basic premise of this game"
PRINT "      is based.  Chuck - make it through this game without drawing a weapon.": PRINT
PRINT "     Note:  Most places, characters, and monsters contained in this game are"
PRINT "      registered trademarks of TSR, inc and are derived from the adventure,"
PRINT "      'Fires of Dis.'": PRINT
PRINT "     Note for Idiots:  All characters, events, items, small animals, etc, in"
PRINT "      this story are ficticious.  Any resemblance to any real people, events,"
PRINT "      items, small animals, etc. is purely coincedental.  If any part of this"
PRINT "      game reflects any events in your life, you should start worrying.": PRINT
PRINT "     Freeware note:  This game is freeware.  If you payed for this game, you"
PRINT "      have been peeled by baatezu high-ups that are after your immortal soul."
PRINT "      The only chance you have now is to plan a daring raid into the heart of"
PRINT "      Baator, recover your jink, and slay a few baatezu high-ups."
GOTO 941
END IF
IF A$ = "i" THEN GOTO I
IF A$ = "fight" AND Sword = 1 THEN PRINT "You don't have your sword.  You can't fight without a sword.": GOTO 940
IF A$ = "look" OR A$ = "l" THEN GOSUB 5: GOTO 941
IF A$ = "save" THEN GOSUB Save: GOTO 941
IF A$ = "load" THEN GOSUB Load: GOSUB 5: GOTO 941
IF MID$(A$, 1, 1) = "q" THEN
INPUT "Do you really want to quit?", Q$: PRINT
IF MID$(Q$, 1, 1) = "y" THEN COLOR 0: END
PRINT "Good!  The adventure must go on!": GOTO 941
END IF
IF Level = 9 THEN
IF A$ = "fight" AND RM = 14 AND Annoy <= 2 THEN PRINT "Your sword doesn't seem to touch Baalzephon.  He laughs.": GOTO 940
IF A$ = "fight" AND RM = 14 AND EvilTwinAttack = 1 THEN GOTO FightEvilTwin
IF A$ = "fight" AND RM = 14 AND GuideAttack = 1 THEN GOTO FightGuide
IF A$ = "fight" AND RM = 14 AND FightBaalzephon = 1 THEN GOTO FightBaal
IF A$ = "s" AND RM = 5 THEN Place = 2
IF A$ = "n" AND RM = 11 THEN Place = 3
IF A$ = "e" AND RM = 7 THEN Place = 4
IF A$ = "w" AND RM = 9 THEN Place = 1
IF RM = 8 OR RM = 2 THEN
IF A$ = "w" AND Place = 3 AND InMaze >= 25 AND RM = 8 THEN RM = 7: GOSUB 5: GOTO 940
IF A$ = "s" AND Place = 5 AND InMaze >= 25 AND RM = 2 THEN RM = 5: GOSUB 5: GOTO 940
IF A$ = "n" AND Place <> 1 AND Place <> 3 AND Place <> 6 AND Place <> 8 THEN
InMaze = InMaze + 1
B = INT(RND * 3) + 1
IF B = 1 THEN Place = 3: GOSUB 5: GOTO 940
IF B = 2 THEN Place = 5: GOSUB 5: GOTO 940
IF B = 3 THEN Place = 7: GOSUB 5: GOTO 940
END IF
IF A$ = "s" AND Place <> 2 AND Place <> 1 AND Place <> 4 AND Place <> 6 AND Place <> 8 THEN
InMaze = InMaze + 1
B = INT(RND * 4) + 1
IF B = 1 THEN Place = 2: GOSUB 5: GOTO 940
IF B = 2 THEN Place = 4: GOSUB 5: GOTO 940
IF B = 3 THEN Place = 5: GOSUB 5: GOTO 940
IF B = 4 THEN Place = 7: GOSUB 5: GOTO 940
END IF
IF A$ = "e" AND Place <> 2 AND Place <> 3 AND Place <> 4 AND Place <> 5 AND Place <> 6 THEN
InMaze = InMaze + 1
IF InMaze >= 25 THEN B = INT(RND * 6) + 1
IF InMaze < 25 THEN B = INT(RND * 5) + 1
IF B = 1 THEN Place = 2: GOSUB 5: GOTO 940
IF B = 2 THEN Place = 1: GOSUB 5: GOTO 940
IF B = 3 THEN Place = 4: GOSUB 5: GOTO 940
IF B = 4 THEN Place = 6: GOSUB 5: GOTO 940
IF B = 5 THEN Place = 7: GOSUB 5: GOTO 940
IF B = 6 THEN Place = 3
END IF
IF A$ = "w" AND Place <> 3 AND Place <> 5 AND Place <> 8 THEN
InMaze = InMaze + 1
B = INT(RND * 3) + 1
IF B = 1 THEN Place = 1: GOSUB 5: GOTO 940
IF B = 2 THEN Place = 7: GOSUB 5: GOTO 940
IF B = 3 THEN Place = 8: GOSUB 5: GOTO 940
END IF
IF RM = 2 AND (A$ = "n" OR A$ = "s" OR A$ = "e" OR A$ = "w" OR A$ = "ne" OR A$ = "nw" OR A$ = "se" OR A$ = "sw" OR A$ = "u" OR A$ = "d") THEN PRINT "Ouch!  You bump into a wall!": GOTO 940
END IF
IF A$ = "n" AND RM = 6 AND FuryCellNessus = 0 THEN
PRINT "You throw yourself against the door with all your might, ";
Destroy = INT(RND * 10) + 1
IF Destroy = 1 THEN PRINT "and the door bursts": PRINT "open with a shatter.": FuryCellNessus = 1: RM = RM - 3: GOSUB 5: GOTO 940
PRINT "but the door does not": PRINT "yield.": GOTO 940
END IF
IF A$ = "s" AND RM = 1 AND YourCellNessus = 0 THEN
PRINT "You throw yourself against the door with all your might, ";
Destroy = INT(RND * 10) + 1
IF Destroy = 1 THEN PRINT "and the door bursts": PRINT "open with a shatter.": YourCellNessus = 1: RM = RM + 3: GOSUB 5: GOTO 940
PRINT "but the door does not": PRINT "yield.": GOTO 940
END IF
IF A$ = "take book" AND FightBaalzephon = 2 THEN
PRINT "You pick up the Book of Forbidden Lore from the ground.  Suddenly, the world"
PRINT "spins around you, and the floor seems to swallow you as the colors dance in"
PRINT "front of your eyes, and you can see where you have been.  You can see Fury. "
PRINT "You can see the dead Baalzephon.  You can see fiend upon fiend upon fiend.  You"
PRINT "can see the rebels in Grenpoli, being slaughtered for their crimes.  You can"
PRINT "see L'Ther.  You can see Jangling Hiter; the eternal city of Dis; everything."
PRINT : PRINT "And it all gets farther and farther and farther away.": PRINT
PRINT "Until it can be seen no more.": GOTO WinGame
END IF
IF A$ = "n" AND North = 1 THEN RM = RM - 3: GOSUB 5: GOTO 940
IF A$ = "s" AND South = 1 THEN RM = RM + 3: GOSUB 5: GOTO 940
IF A$ = "e" AND East = 1 THEN RM = RM + 1: GOSUB 5: GOTO 940
IF A$ = "w" AND West = 1 THEN RM = RM - 1: GOSUB 5: GOTO 940
IF A$ = "se" AND RM = 10 THEN RM = 14: GOSUB 5: GOTO 940
IF A$ = "nw" AND RM = 14 THEN RM = 10: GOSUB 5: GOTO 940
IF A$ = "sw" AND RM = 12 THEN RM = 14: GOSUB 5: GOTO 940
IF A$ = "ne" AND RM = 14 THEN RM = 12: GOSUB 5: GOTO 940
END IF
IF Level = 8 THEN
IF A$ = "close door" AND (RM = 1 OR RM = 2 OR RM = 3 OR RM = 5 OR RM = 6 OR RM = 7) THEN
IF (RM = 1 OR RM = 5) AND CellDoor1Opened = 2 THEN PRINT "You close the door.": CellDoor1Opened = 1: GOTO 940
IF (RM = 2 OR RM = 6) AND CellDoor2Opened = 2 THEN PRINT "You close the door.": CellDoor2Opened = 1: GOTO 940
IF (RM = 3 OR RM = 7) AND CellDoor3Opened = 2 THEN PRINT "You close the door.": CellDoor3Opened = 1: GOTO 940
END IF
IF MID$(A$, 1, 4) = "open" AND (RM = 1 OR RM = 2 OR RM = 3 OR RM = 5 OR RM = 6 OR RM = 7) THEN A$ = "open door"
IF MID$(A$, 1, 6) = "unlock" AND (RM = 1 OR RM = 2 OR RM = 3 OR RM = 5 OR RM = 6 OR RM = 7) THEN A$ = "unlock door"
IF A$ = "open door" AND (RM = 1 OR RM = 2 OR RM = 3 OR RM = 5 OR RM = 6 OR RM = 7) THEN
IF (RM = 1 OR RM = 5) AND CellDoor1Opened = 0 THEN PRINT "The door is locked.": GOTO 940
IF (RM = 2 OR RM = 6) AND CellDoor2Opened = 0 THEN PRINT "The door is locked.": GOTO 940
IF (RM = 3 OR RM = 7) AND CellDoor3Opened = 0 THEN PRINT "The door is locked.": GOTO 940
IF (RM = 1 OR RM = 5) AND CellDoor1Opened = 1 THEN PRINT "You open the door.": CellDoor1Opened = 2: GOTO 940
IF (RM = 2 OR RM = 6) AND CellDoor2Opened = 1 THEN PRINT "You open the door.": CellDoor2Opened = 2: GOTO 940
IF (RM = 3 OR RM = 7) AND CellDoor3Opened = 1 THEN PRINT "You open the door.": CellDoor3Opened = 2: GOTO 940
END IF
IF A$ = "lock door" AND (RM = 1 OR RM = 2 OR RM = 3 OR RM = 5 OR RM = 6 OR RM = 7) THEN
IF Key1 <> 1 THEN PRINT "You don't have the key to the door.": GOTO 940
IF (RM = 1 OR RM = 5) AND CellDoor1Opened = 1 THEN PRINT "You turn the key in the lock.  The door locks.": CellDoor1Opened = 0: GOTO 940
IF (RM = 2 OR RM = 6) AND CellDoor2Opened = 1 THEN PRINT "You turn the key in the lock.  The door locks.": CellDoor2Opened = 0: GOTO 940
IF (RM = 3 OR RM = 7) AND CellDoor3Opened = 1 THEN PRINT "You turn the key in the lock.  The door locks.": CellDoor3Opened = 0: GOTO 940
END IF
IF A$ = "unlock door" AND (RM = 1 OR RM = 2 OR RM = 3 OR RM = 5 OR RM = 6 OR RM = 7) THEN
IF Key1 <> 1 THEN PRINT "You don't have the key to the door.": GOTO 940
IF (RM = 1 OR RM = 5) AND CellDoor1Opened = 0 THEN PRINT "You turn the key in the lock.  The door gives a little click.  It is unlocked.": CellDoor1Opened = 1: GOTO 940
IF (RM = 2 OR RM = 6) AND CellDoor2Opened = 0 THEN PRINT "You turn the key in the lock.  The door gives a little click.  It is unlocked.": CellDoor2Opened = 1: GOTO 940
IF (RM = 3 OR RM = 7) AND CellDoor3Opened = 0 THEN PRINT "You turn the key in the lock.  The door gives a little click.  It is unlocked.": CellDoor3Opened = 1: GOTO 940
END IF
IF A$ = "take key" AND RM = 1 AND Key1 = 0 AND Come = 5 THEN Key1 = 1: PRINT "You pick the key up off the plate.  The plate suddenly melts into the floor.": GOTO 940
IF A$ = "d" AND RM = 20 AND PastGelugons = 0 THEN PRINT "A gelugon stops you.": GOTO 940
IF A$ = "fight" AND Gelugons = 0 AND RM = 20 THEN Gelugons = 5: PRINT "Five gelugons break off from the group to attack you!"
IF A$ = "w" AND Key1 = 0 AND RM = 16 THEN PRINT "A gelugon blocks the entrance.": GOTO 940
IF A$ = "s" AND RM = 1 AND CellDoor1Opened <> 2 THEN PRINT "There is a closed cell door in that direction.": GOTO 940
IF A$ = "n" AND RM = 6 AND CellDoor2Opened <> 2 THEN PRINT "There is a closed cell door in that direction.": GOTO 940
IF A$ = "n" AND RM = 7 AND CellDoor3Opened <> 2 THEN PRINT "There is a closed cell door in that direction.": GOTO 940
IF MID$(A$, 1, 9) = "put sword" AND Sword = 0 THEN Sword = 4: PRINT "You dip your sword into the vat of green water.  Suddenly, your sword begins": PRINT "to glow.  Soon, the glowing subsides.": GOTO 940
IF A$ = "n" AND North = 1 THEN RM = RM - 4: GOSUB 5: GOTO 940
IF A$ = "s" AND South = 1 THEN RM = RM + 4: GOSUB 5: GOTO 940
IF A$ = "e" AND East = 1 THEN RM = RM + 1: GOSUB 5: GOTO 940
IF A$ = "w" AND West = 1 THEN RM = RM - 1: GOSUB 5: GOTO 940
IF A$ = "ne" AND NorthEast = 1 THEN RM = RM - 3: GOSUB 5: GOTO 940
IF A$ = "nw" AND NorthWest = 1 THEN RM = RM - 5: GOSUB 5: GOTO 940
IF A$ = "se" AND SouthEast = 1 THEN RM = RM + 5: GOSUB 5: GOTO 940
IF A$ = "sw" AND SouthWest = 1 THEN RM = RM + 3: GOSUB 5: GOTO 940
IF A$ = "u" AND RM = 19 THEN RM = 20: GOSUB 5: GOTO 940
IF A$ = "d" AND RM = 20 THEN RM = 19: GOSUB 5: GOTO 940
IF A$ = "d" AND RM = 19 THEN RM = 18: InWater = 1: PRINT "You plunge into the icy water.": GOSUB 5: GOTO 940
IF A$ = "u" AND RM = 17 THEN RM = 18: GOSUB 5: GOTO 940
IF A$ = "enter portal" AND RM = 17 THEN PRINT "You enter the portal.  Suddenly, you are somewhere else.": Level = 9: RM = 8: Place = INT(RND * 8) + 1: GOSUB 5: GOTO 940
'IF (MID$(A$, 1, 6) = "unlock" OR MID$(A$, 1, 4) = "open") AND (RM = 1 OR RM = 6 OR RM = 7) AND Key1 = 1 THEN
'IF RM = 1 THEN CellDoor1Opened = 1
'IF RM = 6 THEN CellDoor2Opened = 1
'IF RM = 7 THEN CellDoor3Opened = 1
'PRINT "You unlock the door.": GOTO 940
'END IF
IF A$ = "d" AND RM = 18 THEN
        InWater = InWater + 1
        IF InWater = 10 THEN RM = 17
        GOSUB 5: GOTO 940
END IF
IF A$ = "u" AND RM = 18 THEN
        InWater = InWater - 1
        IF InWater = 0 THEN RM = 19: PRINT "You surface from the water, and breathe in a deep breath."
        GOSUB 5: GOTO 940
END IF
IF A$ = "take stuff" AND RM = 10 AND Stuff = 1 THEN Stuff = 0: PRINT "You take all your stuff.": GOTO 940
END IF
IF Level = 7 THEN
IF ((A$ = "n" AND RM = 8) OR (A$ = "e" AND RM = 14) OR (A$ = "w" AND RM = 12) OR A$ = "s" AND RM = 18) AND RebelsKnow >= 4 THEN PRINT "You can't leave now.  You're in the middle of an insurrection!": GOTO 940
IF A$ = "fight" AND OsyGateGuard = 0 AND Barbazus = 0 AND Osyluths = 0 AND (RM = 3 OR RM = 11 OR RM = 15 OR RM = 23) THEN Osyluths = 4: PRINT "The osyluth gives off a high pitched scream, and suddenly four osyluths appear": PRINT "before you.  The osyluth leaps out of the checkpoint.": OsyGateGuard = 1: GOTO 940
IF A$ = "fight" AND RM = 7 AND PalaceGuard = 0 THEN PalaceGuard = 1: PRINT "The osyluth attacks!": GOTO FightOsyluth
IF A$ = "fight" AND Sword = 0 AND RM = 1 AND PitFiendLord = 0 THEN PitFiendLord = 1: PRINT "The osyluth attacks!": GOTO FightOsyluth
IF A$ = "fight" AND Sword = 0 AND RM = 17 AND OsyGuard = 0 THEN OsyGuard = 1: PRINT "The osyluth attacks!": GOTO FightOsyluth
IF A$ = "e" AND ResistanceOpen = 0 AND RM = 4 THEN PRINT "There is a door in that direction.": GOTO 940
IF A$ = "e" AND ResistanceOpen = 1 AND RM = 4 THEN
PRINT "You walk into the small room.  The door slams shut behind you.": ResistanceOpen = 0
RM = 5: GOSUB 5
IF Guide = 1 THEN PRINT "Fury says, 'He's with me,' to the group of black cloaked figures.  One of them": PRINT "nods.": RebelsKnow = 1
IF RebelsKnow = 0 THEN PRINT "You are grabbed from behind and a knife comes within one inch of your neck.": GOTO Interrogate
GOTO 940
END IF
IF MID$(A$, 1, 5) = "knock" AND RM = 4 THEN GOTO Knock
IF Sword = 0 AND OsyGateGuard = 0 AND ((A$ = "n" AND RM = 23) OR (A$ = "e" AND RM = 11) OR (A$ = "w" AND RM = 15) OR (RM = 3 AND A$ = "s")) THEN PRINT "The osyluth guard stops you.  'Sorry, sir, but you may not carry a weapon into": PRINT "Grenpoli.'": GOTO 940
IF MID$(A$, 1, 10) = "give sword" AND Sword = 0 AND (RM = 23 OR RM = 11 OR RM = 15 OR RM = 3) THEN PRINT "You hand your sword to the osyluth.  'Thank you,' he says.  He hands you a": PRINT "receipt.  'You can use this receipt to retrieve your sword when you leave town.'": Sword = 1: GOTO 940
IF MID$(A$, 1, 12) = "give receipt" AND Sword = 1 AND (RM = 23 OR RM = 11 OR RM = 15 OR RM = 3) THEN PRINT "You hand your receipt to the osyluth.  'Thank you,' he says.  He produces your": PRINT "sword out of mid-air and gives it to you.": Sword = 0: GOTO 940
IF MID$(A$, 1, 4) = "take" AND RM = 21 AND Sword = 1 THEN PRINT "You pick up a handful of weapons, including your own sword.": Sword = 2: GOTO 940
IF A$ = "s" AND RM = 17 AND RebelsKnow <> 3 THEN PRINT "An osyluth guard blocks the warehouse entrance.": GOTO 940
IF A$ = "w" AND RM = 7 AND (RebelsKnow < 4 AND OsyGuard = 0) THEN PRINT "An osyluth guard blocks the entrance.": GOTO 940
IF A$ = "w" AND RM = 1 AND RebelsKnow = 7 THEN PRINT "You rush out of the room, through a maze of twisty passages until you reach": PRINT "a large room.": RM = 26: GOSUB 5: GOTO 940
IF A$ = "w" AND RM = 1 AND (PitFiendLord = 2 OR PitFiendLord = 3) THEN PRINT "You rush out of the room, through a maze of twisty passages until you reach": PRINT "a large room.": RM = 26: GOSUB 5: GOTO 940
IF A$ = "w" AND RM = 1 AND RebelsKnow <> 6 AND RebelsKnow <> 7 AND PitFiendLord <> 2 THEN PRINT "The pit fiend blocks the exit.": GOTO 940
IF A$ = "e" AND RM = 26 THEN PRINT "You rush out of the room, through a maze of twisty passages until you reach": PRINT "a large throne room.": RM = 1: GOSUB 5: GOTO 940
IF A$ = "enter portal" AND RM = 26 THEN
        Level = 8
        PRINT "You enter the portal.  Suddenly, you are somewhere else, somewhere much colder."
        IF InLeague = 2 THEN
                RM = 1
                Stuff = 1
                IF Guide = 1 THEN GuideSwitch = 1: GuideFound = 1
                IF Guide = 3 THEN GuideFound = 1
        END IF
        IF InLeague <> 2 THEN RM = 16
        GOSUB 5: GOTO 940
END IF
IF A$ = "n" AND North = 1 THEN RM = RM - 5: GOSUB 5: GOTO 940
IF A$ = "s" AND South = 1 THEN RM = RM + 5: GOSUB 5: GOTO 940
IF A$ = "e" AND East = 1 THEN RM = RM + 1: GOSUB 5: GOTO 940
IF A$ = "w" AND West = 1 THEN RM = RM - 1: GOSUB 5: GOTO 940
END IF
IF A$ = "fight" AND (Osyluths > 0 OR OsyGateGuard = 1 OR OsyGuard = 1 OR PalaceGuard = 1) THEN GOTO FightOsyluth
IF A$ = "fight" AND Gelugons > 0 THEN GOTO FightGelu
IF A$ = "fight" AND Hamatulas > 0 THEN GOTO FightHam
IF A$ = "fight" AND Cornugons > 0 THEN GOTO FightCornugon
IF A$ = "fight" AND Abishais > 0 THEN GOTO FightAbishai
IF A$ = "fight" AND Barbazus > 0 THEN GOTO FightBarbazu
IF A$ = "fight" AND PitFiendLord = 1 THEN GOTO FightPitFiend
IF A$ = "health" THEN
PRINT "You have"; Hp; "hit points remaining out of"; MaxHp; "maximum."
IF GuideAttack = 0 THEN
IF Guide = 1 THEN PRINT "Fury has"; FuryHp; "hit points remaining out of 50 maximum."
IF Guide = 3 THEN PRINT "Fury has"; FuryHp; "hit points remaining out of 90 maximum."
END IF
GOTO 941
END IF
IF A$ = "n" OR A$ = "s" OR A$ = "e" OR A$ = "w" OR A$ = "ne" OR A$ = "nw" OR A$ = "se" OR A$ = "sw" OR A$ = "u" OR A$ = "d" THEN PRINT "You can't go in that direction.": GOTO 940
PRINT "You can't do that.": GOTO 940
I: PRINT "You have:": PRINT
IF Key1 = 1 THEN PRINT "  A shiny key."
IF Stuff = 0 THEN
IF Money = 1 THEN PRINT "  A sack of money."
IF Sword = 1 AND Level = 7 THEN PRINT "  A paper receipt."
PRINT "  The official badge of the Athar."
IF Pass = 1 THEN PRINT "  An offical-looking pass to Baator."
IF Ruby = 1 THEN PRINT "  A large ruby, about the size of your fist."
IF Book = 1 THEN PRINT "  A thin black book entitled, 'On the Baatezu.'"
PRINT "  An iron cube, actually a shrunk cube of Acheron."
IF Sword = 0 OR Sword = 4 THEN PRINT "  A blood-stained sword, stained red with the blood of countless fiends."
IF Sword = 2 THEN PRINT "  A large bundle of weapons, among them being your own blood-stained sword."
END IF
IF Stuff = 1 AND Key1 <> 1 THEN PRINT "Nothing at all."
PRINT : GOTO 941
FightGelu:
CantRun = 1
Hit = INT(RND * 2) + 1
IF Hit = 1 THEN PRINT "You swing out at the gelugon with your sword, but you miss it!"
IF Hit = 2 THEN
IF Sword = 0 THEN Dmg = INT(RND * 8) + 4
IF Sword = 4 THEN Dmg = INT(RND * 8) + 20
GeluHp = GeluHp - Dmg
PRINT "You slash out at the gelugon with your sword, and your sword connects!  She"
PRINT "screams out in pain!"
IF GeluHp <= 0 THEN
BEEP
PRINT "The gelugon screams out one last time as she is engulfed in a huge inferno.  Her"
PRINT "body explodes in a huge fiery blast in every direction.": GeluHp = 60
CantRun = 0
Xp = Xp + 40
END IF
END IF
GOTO 940
FightErinyes:
CantRun = 1
Hit = INT(RND * 2) + 1
IF Hit = 1 THEN PRINT "You swing out at the erinyes with your sword, but you miss her!  She smiles and": PRINT "laughs a sweet laugh as she presses forward!"
IF Hit = 2 THEN
IF Sword = 0 THEN Dmg = INT(RND * 8) + 4
IF Sword = 4 THEN Dmg = INT(RND * 8) + 20
ErinyesHp = ErinyesHp - Dmg
PRINT "You slash out at the erinyes with your sword, and your sword connects!  She"
PRINT "screams out in pain!"
IF ErinyesHp <= 0 THEN
BEEP
PRINT "The erinyes screams out one last time as she is engulfed in a huge inferno.  Her"
PRINT "body explodes in a huge fiery blast in every direction.": ErinyesHp = 20
Erinyes1 = 2
CantRun = 0
Xp = Xp + 10
END IF
END IF
GOTO 940
FightOsyluth:
CantRun = 1
Hit = INT(RND * 2) + 1
IF Hit = 1 THEN PRINT "You swing out at the osyluth with your sword, but you miss it!"
IF Hit = 2 THEN
IF Sword = 0 THEN Dmg = INT(RND * 8) + 4
IF Sword = 4 THEN Dmg = INT(RND * 8) + 20
OsyluthHp = OsyluthHp - Dmg
PRINT "You swing out at the osyluth with your blood-stained sword, and you hit it!"
PRINT "It screams out in pain as it recoils from your hit!"
IF OsyluthHp <= 0 THEN
BEEP
PRINT "The osyluth falls back in pain as its body hits the floor of Baator and"
PRINT "explodes in a harmless ball of fire.": OsyluthHp = 15
CantRun = 0
IF Osyluths > 0 THEN Osyluths = Osyluths - 1: GOTO PastThis4
IF Level = 7 THEN
IF OsyGuard = 0 AND RM = 7 THEN OsyGuard = 2
IF (RM = 3 OR RM = 11 OR RM = 15 OR RM = 23) THEN OsyGateGuard = 2
IF RM = 7 THEN PalaceGuard = 2
IF RM = 17 THEN OsyGuard = 2
END IF
PastThis4:
OsyGated = 0: Xp = Xp + 10
END IF
END IF
GOTO 940
FightAbishai:
CantRun = 1
Hit = INT(RND * 2) + 1
IF Hit = 1 THEN PRINT "You swing out at the red abishai with your sword, but you miss it!"
IF Hit = 2 THEN
IF Sword = 0 THEN Dmg = INT(RND * 8) + 4
IF Sword = 4 THEN Dmg = INT(RND * 8) + 20
AbishaiHp = AbishaiHp - Dmg
PRINT "You swing out at the abishai with your blood-stained sword, and you hit it!"
PRINT "It screams out in pain as it recoils from your hit!"
IF AbishaiHp <= 0 THEN
BEEP
PRINT "The abishai falls back in pain as its body hits the floor of Baator and"
PRINT "explodes in a harmless ball of fire.": AbishaiHp = 13
CantRun = 0
IF Abishais > 0 THEN Abishais = Abishais - 1
AbishGated = 0: Xp = Xp + 5:
END IF
END IF
GOTO 940
FightEvilTwin:
CantRun = 1
Hit = INT(RND * 2) + 1
IF Hit = 1 THEN PRINT "You swing out at your evil twin with your sword, but you miss him!"
IF Hit = 2 THEN
IF Sword = 0 THEN Dmg = INT(RND * 8) + 4
IF Sword = 4 THEN Dmg = INT(RND * 8) + 20
EvilTwinHp = EvilTwinHp - Dmg
PRINT "You swing out at your evil twin with your blood-stained sword, and you hit"
PRINT "him!  He screams out in pain as he recoils from your hit!"
IF EvilTwinHp <= 0 THEN
BEEP
PRINT "You bring your sword down one last time on your evil twin.  He screams out as"
PRINT "he dies.  His body then melts into the floor and vanishes into a reddish mist,"
PRINT "which is soon gone."
EvilTwinAttack = 2
END IF
END IF
GOTO 940
FightGuide:
CantRun = 1
Hit = INT(RND * 2) + 1
IF Hit = 1 THEN PRINT "You swing out at Fury with your sword, but you miss him!"
IF Hit = 2 THEN
IF Sword = 0 THEN Dmg = INT(RND * 8) + 4
IF Sword = 4 THEN Dmg = INT(RND * 8) + 20
EvilGuideHp = EvilGuideHp - Dmg
PRINT "You swing out at Fury with your blood-stained sword, and you hit him!"
PRINT "He screams out in pain as he recoils from your hit!"
IF EvilGuideHp <= 0 THEN
BEEP
PRINT "You bring your sword down one last time on Fury.  Fury screams out as he dies."
PRINT "As he dies, his body suddenly contorts back into the shape of a Pit Fiend and"
PRINT "quickly vanishes into the ground in a puff of flame."
GuideAttack = 2
END IF
END IF
GOTO 940
FightBaal:
CantRun = 1
Hit = INT(RND * 2) + 1
IF Hit = 1 THEN PRINT "You swing out at Baalzephon with your sword, but you miss him!"
IF Hit = 2 THEN
IF Sword = 0 THEN Dmg = INT(RND * 8) + 4
IF Sword = 4 THEN Dmg = INT(RND * 8) + 20
BaalHp = BaalHp - Dmg
PRINT "You swing out at Baalzephon with your blood-stained sword, and you hit him!"
PRINT "He screams out in pain as he recoils from your hit!"
IF BaalHp <= 0 THEN
BEEP
PRINT "Baalzephon falls back in pain as its body hits the floor of Baator and"
PRINT "his body slowly sink into the floor.  Next to his body is the Book of Forbidden"
PRINT "Lore."
FightBaalzephon = 2
END IF
END IF
GOTO 940
FightBarbazu:
CantRun = 1
Hit = INT(RND * 2) + 1
IF Hit = 1 THEN PRINT "You swing out at the barbazu with your sword, but you miss it!"
IF Hit = 2 THEN
IF Sword = 0 THEN Dmg = INT(RND * 8) + 4
IF Sword = 4 THEN Dmg = INT(RND * 8) + 20
BarbazuHp = BarbazuHp - Dmg
PRINT "You swing out at the barbazu with your blood-stained sword, and you hit it!"
PRINT "It screams out in pain as it recoils from your hit!"
IF BarbazuHp <= 0 THEN
BEEP
PRINT "The barbazu falls back in pain as its body hits the floor of Baator and"
PRINT "explodes in a harmless ball of fire.": BarbazuHp = 20
CantRun = 0
IF Level = 2 AND Barbazu1 = 1 THEN Barbazu1 = 2: GOTO PastThis6
IF Barbazus > 0 THEN Barbazus = Barbazus - 1
PastThis6:
BarbGated = 0: Xp = Xp + 15
END IF
END IF
GOTO 940
FightCornugon:
CantRun = 1
IF Level = 1 AND RM = 2 THEN
IF Cornugon1 = 0 THEN Cornugon1 = 1
IF Cornugon1 = 3 THEN Cornugon1 = 1
END IF
IF Level = 2 AND RM = 2 THEN
IF Cornugon2 = 0 THEN Cornugon2 = 1
IF Cornugon2 = 3 THEN Cornugon2 = 1
END IF
Hit = INT(RND * 2) + 1
IF Hit = 1 THEN PRINT "You swing out at the cornugon with your sword, but you miss it!"
IF Hit = 2 THEN
IF Sword = 0 THEN Dmg = INT(RND * 8) + 4
IF Sword = 4 THEN Dmg = INT(RND * 8) + 20
CornugonHp = CornugonHp - Dmg
PRINT "You swing out at the cornugon with your blood-stained sword, and you hit it!"
PRINT "It screams out in pain as it recoils from your hit!"
IF CornugonHp <= 0 THEN
BEEP
PRINT "The cornugon falls back in pain as its body hits the floor of Baator and"
PRINT "explodes in a harmless ball of fire.": CornugonHp = 25
CantRun = 0
IF Level = 1 AND Cornugon1 = 1 THEN Cornugon1 = 2: GOTO PastThis2
IF Level = 2 AND Cornugon2 = 1 THEN Cornugon2 = 2: GOTO PastThis2
IF Cornugons > 0 THEN Cornugons = Cornugons - 1
PastThis2:
CornuGated = 0: Xp = Xp + 20
END IF
END IF
GOTO 940
FightHam:
CantRun = 1
Hit = INT(RND * 2) + 1
IF Hit = 1 THEN PRINT "You swing out at the hamatula with your sword, but you miss it!"
IF Hit = 2 THEN
Dmg = INT(RND * 8) + 4
HamHp = HamHp - Dmg
PRINT "You swing out at the hamatula with your blood-stained sword, and you hit it!"
PRINT "It screams out in pain as it recoils from your hit!"
IF HamHp <= 0 THEN
BEEP
PRINT "The hamatula falls back in pain as its body hits the floor of Baator and"
PRINT "explodes in a harmless ball of fire.": HamHp = 20
CantRun = 0
HamGated = 0: Xp = Xp + 20
IF Hamatulas > 0 THEN Hamatulas = Hamatulas - 1
PastThis3:
END IF
END IF
GOTO 940
FightPitFiend:
CantRun = 1
Hit = INT(RND * 2) + 1
IF Hit = 1 THEN PRINT "You swing out at the pit fiend with your sword, but you miss it!  It laughs at": PRINT "you mockingly!"
IF Hit = 2 THEN
IF Sword = 0 THEN Dmg = INT(RND * 8) + 4
IF Sword = 4 THEN Dmg = INT(RND * 8) + 20
PitFiendHp = PitFiendHp - Dmg
PRINT "You slash out at the pit fiend with your sword, and your sword connects!  The"
PRINT "pit fiend howls out in rage!"
IF PitFiendHp <= 0 THEN
BEEP
PRINT "The pit fiend falls back in pain as its body hits the floor of Baator and"
PRINT "explodes in a harmless ball of fire."
PitFiendHp = 90
PitFiendGated = 0
IF RM = 1 AND Level = 7 THEN PitFiendLord = 2
Xp = Xp + 50
END IF
END IF
GOTO 940
Err1: PRINT "File save/load error.": CLOSE : GOTO 940
Talk: Talking
IF ReturnTo940 = 1 THEN GOTO 940
IF ReturnTo940 = 2 THEN GOSUB 5: GOTO 940
RETURN
Save:
INPUT "Enter filename:", N$
IF N$ = "" THEN N$ = "The_Elf"
SAV$ = N$ + ".bts"
OPEN SAV$ FOR OUTPUT AS #1
SaveStuff:
PRINT #1, Hp: PRINT #1, MaxHp: PRINT #1, Xp: PRINT #1, RM: PRINT #1, Level: PRINT #1, Time: PRINT #1, Sword: PRINT #1, Guide: PRINT #1, Cornugon1: PRINT #1, CornugonHp: PRINT #1, Crawling: PRINT #1, CornuGated: PRINT #1, Cornugons: PRINT #1, Ruby: PRINT #1, CabinetOpen: PRINT #1, Pass: PRINT #1, AbishGated: PRINT #1, Abishais: PRINT #1, AbishaiHp: PRINT #1, Abishai1: PRINT #1, Pool
PRINT #1, Money: PRINT #1, DoorOpen: PRINT #1, CantRun: PRINT #1, BoatMan: PRINT #1, Cur: PRINT #1, Current: PRINT #1, StyxDead: PRINT #1, Abishai2: PRINT #1, Cons: PRINT #1, Looked: PRINT #1, Cornugon2: PRINT #1, OsyGated: PRINT #1, Osyluths: PRINT #1, OsyluthHp: PRINT #1, Osyluth1: PRINT #1, BarbGated: PRINT #1, Barbazus: PRINT #1, BarbazuHp: PRINT #1, Barbazu1: PRINT #1, HamGated: PRINT #1, Hamatulas: PRINT #1, HamHp: PRINT #1, Hamatula1: PRINT #1, Break: PRINT #1, Book: PRINT #1, Page: PRINT #1, Kyton: PRINT #1, KytonHp: PRINT #1, Alley1Seen: PRINT #1, Alley2Seen: PRINT #1, Alley3Seen: PRINT #1, AlleySeen: PRINT #1, PitFiend: PRINT #1, Immune: PRINT #1, PitFiendHp: PRINT #1, PitFiendGated: PRINT #1, FuryCome: PRINT #1, FuryHp: PRINT #1, FDeadRm: PRINT #1, FDeadLevel: PRINT #1, SaidThis: PRINT #1, Sinking: PRINT #1, Arcanoloth: PRINT #1, EvilTwinHp: PRINT #1, FuryConfront: PRINT #1, GuideLeft: PRINT #1, Leave: PRINT #1, Rope: PRINT #1, North: PRINT #1, East: PRINT #1, ArcFight: PRINT #1, ArcReveal
PRINT #1, Slave: PRINT #1, SaidThis2: PRINT #1, Prison: PRINT #1, Torture: PRINT #1, GoingToDie: PRINT #1, FreakWormHole: PRINT #1, FuryMad: PRINT #1, ThugTalk: PRINT #1, LtherCome: PRINT #1, GuideIncapacitated: PRINT #1, TalkLther: PRINT #1, FuryBeg: PRINT #1, Osyluth3: PRINT #1, Osyluth2: PRINT #1, Escaped: PRINT #1, PitFiend2: PRINT #1, PitFiendHit: PRINT #1, PitFiendGated: PRINT #1, LetFree: PRINT #1, Mezz1: PRINT #1, LtherHere3: PRINT #1, FurySaidThisThing: PRINT #1, FurCome: PRINT #1, Warned: PRINT #1, Warned2: PRINT #1, GateOpened: PRINT #1, Bould: PRINT #1, Calling: PRINT #1, ResistanceOpen: PRINT #1, RebelsKnow: PRINT #1, Mezzoloths: PRINT #1, OsyGuard: PRINT #1, PitFiendLord: PRINT #1, OsyGateGuard: PRINT #1, InLeague: PRINT #1, PalaceGuard
PRINT #1, CellDoor1Opened: PRINT #1, CellDoor2Opened: PRINT #1, CellDoor3Opened: PRINT #1, Stuff: PRINT #1, InWater: PRINT #1, Breath: PRINT #1, Gelugons: PRINT #1, GeluHp: PRINT #1, GeluGated: PRINT #1, Key1: PRINT #1, PastGelugons: PRINT #1, GuideSwitch: PRINT #1, Come: PRINT #1, GuideFound: PRINT #1, PitFiendReveal: PRINT #1, EvilTwinDead: PRINT #1, FuryCellNessus: PRINT #1, YourCellNessus: PRINT #1, InMaze: PRINT #1, Annoy: PRINT #1, EvilTwinAttack: PRINT #1, GuideAttack: PRINT #1, FightBaalzephon: PRINT #1, BaalHp: PRINT #1, EvilGuideHp
CLOSE #1: RETURN
Load:
INPUT "Enter filename:", N$
IF N$ = "" THEN GOSUB 5: GOTO 940
SAV$ = N$ + ".bts"
OPEN SAV$ FOR INPUT AS #1
LoadStuff:
INPUT #1, Hp: INPUT #1, MaxHp: INPUT #1, Xp: INPUT #1, RM: INPUT #1, Level: INPUT #1, Time: INPUT #1, Sword: INPUT #1, Guide: INPUT #1, Cornugon1: INPUT #1, CornugonHp: INPUT #1, Crawling: INPUT #1, CornuGated: INPUT #1, Cornugons: INPUT #1, Ruby: INPUT #1, CabinetOpen: INPUT #1, Pass: INPUT #1, AbishGated: INPUT #1, Abishais: INPUT #1, AbishaiHp: INPUT #1, Abishai1: INPUT #1, Pool
INPUT #1, Money: INPUT #1, DoorOpen: INPUT #1, CantRun: INPUT #1, BoatMan: INPUT #1, Cur: INPUT #1, Current: INPUT #1, StyxDead: INPUT #1, Abishai2: INPUT #1, Cons: INPUT #1, Looked: INPUT #1, Cornugon2: INPUT #1, OsyGated: INPUT #1, Osyluths: INPUT #1, OsyluthHp: INPUT #1, Osyluth1: INPUT #1, BarbGated: INPUT #1, Barbazus: INPUT #1, BarbazuHp: INPUT #1, Barbazu1: INPUT #1, HamGated: INPUT #1, Hamatulas: INPUT #1, HamHp: INPUT #1, Hamatula1: INPUT #1, Break: INPUT #1, Book: INPUT #1, Page: INPUT #1, Kyton: INPUT #1, KytonHp: INPUT #1, Alley1Seen: INPUT #1, Alley2Seen: INPUT #1, Alley3Seen: INPUT #1, AlleySeen: INPUT #1, PitFiend: INPUT #1, Immune: INPUT #1, PitFiendHp: INPUT #1, PitFiendGated: INPUT #1, FuryCome: INPUT #1, FuryHp: INPUT #1, FDeadRm: INPUT #1, FDeadLevel: INPUT #1, SaidThis: INPUT #1, Sinking: INPUT #1, Arcanoloth: INPUT #1, EvilTwinHp: INPUT #1, FuryConfront: INPUT #1, GuideLeft: INPUT #1, Leave: INPUT #1, Rope: INPUT #1, North: INPUT #1, East: INPUT #1, ArcFight: INPUT #1, ArcReveal
INPUT #1, Slave: INPUT #1, SaidThis2: INPUT #1, Prison: INPUT #1, Torture: INPUT #1, GoingToDie: INPUT #1, FreakWormHole: INPUT #1, FuryMad: INPUT #1, ThugTalk: INPUT #1, LtherCome: INPUT #1, GuideIncapacitated: INPUT #1, TalkLther: INPUT #1, FuryBeg: INPUT #1, Osyluth3: INPUT #1, Osyluth2: INPUT #1, Escaped: INPUT #1, PitFiend2: INPUT #1, PitFiendHit: INPUT #1, PitFiendGated: INPUT #1, LetFree: INPUT #1, Mezz1: INPUT #1, LtherHere3: INPUT #1, FurySaidThisThing: INPUT #1, FurCome: INPUT #1, Warned: INPUT #1, Warned2: INPUT #1, GateOpened: INPUT #1, Bould: INPUT #1, Calling: INPUT #1, ResistanceOpen: INPUT #1, RebelsKnow: INPUT #1, Mezzoloths: INPUT #1, OsyGuard: INPUT #1, PitFiendLord: INPUT #1, OsyGateGuard: INPUT #1, InLeague: INPUT #1, PalaceGuard
INPUT #1, CellDoor1Opened: INPUT #1, CellDoor2Opened: INPUT #1, CellDoor3Opened: INPUT #1, Stuff: INPUT #1, InWater: INPUT #1, Breath: INPUT #1, Gelugons: INPUT #1, GeluHp: INPUT #1, GeluGated: INPUT #1, Key1: INPUT #1, PastGelugons: INPUT #1, GuideSwitch: INPUT #1, Come: INPUT #1, GuideFound: INPUT #1, PitFiendReveal: INPUT #1, EvilTwinDead: INPUT #1, FuryCellNessus: INPUT #1, YourCellNessus: INPUT #1, InMaze: INPUT #1, Annoy: INPUT #1, EvilTwinAttack: INPUT #1, GuideAttack: INPUT #1, FightBaalzephon: INPUT #1, BaalHp: INPUT #1, EvilGuideHp
CLOSE #1: RETURN
Book: OnTheBaatezu: GOTO 940
GuideSay2:
RETURN
Transfer:
OPEN "data.baa" FOR OUTPUT AS #1
GOSUB SaveStuff
Hi2:
IF Level <= 3 THEN RUN "baator2a.bas"
IF Level >= 4 AND Level <= 6 THEN RUN "baator2b.bas"
GOTO 940
Knock:
PRINT "You knock on the door."
IF RebelsKnow >= 2 THEN PRINT "There is no reply.": GOTO 940
PRINT "'Who goes there?' says a gruff voice.": PRINT
PRINT "You say:": PRINT
PRINT "1.  'I'm the Elf.  I killed Zaebos.'"
PRINT "2.  'A fellow member of the resistance.  Death to the aristoratic swine!'"
PRINT "3.  'Grenpoli Police.  Open up.'"
PRINT "4.  'Oops, wrong door.'"
KnockInput:
PRINT : INPUT ">", A: PRINT
IF A > 4 OR A < 1 THEN GOTO KnockInput
IF A = 3 THEN PRINT "Behind the door there is silence.  Then, a crossbow hits you, right between": PRINT "your eyes.": Killer = 7: Dead
IF A = 4 THEN GOTO 940
IF A = 1 AND RebelsKnow = 1 THEN ResistanceOpen = 1: PRINT "The door opens.": GOSUB 5: GOTO 940
PRINT "'What's the secret password?'"
PRINT : PRINT "You say:": PRINT
PRINT "1.  'Workers of the world, unite!'"
PRINT "2.  'Death to the aristocratic swine!'"
PRINT "3.  'I killed Zaebos.'"
PRINT "4.  'Raquel sent me.'"
PRINT "5.  'Long live the baatezu!'"
PRINT "6.  'Uh.... I don't know.'"
KnockInput2:
PRINT : INPUT ">", A: PRINT
IF A = 5 THEN PRINT "Behind the door there is silence.  Then, a crossbow hits you, right between": PRINT "your eyes.": Killer = 7: Dead
IF A > 6 OR A < 1 THEN GOTO KnockInput2
PRINT "'Okay, then.  You can come in.'"
ResistanceOpen = 1: GOSUB 5: GOTO 940
Interrogate:
PRINT "'Okay, talk quick and there won't be any blood.  Who sent you?'": PRINT
PRINT "You say:": PRINT
PRINT "1.  'I dunno.  I just kinda wandered in here on my own.'"
PRINT "2.  'I'm the Elf.  I killed Zaebos.'"
PRINT "3.  'A fellow member of the resistance.'"
PRINT "4.  'Grenpoli Police.  I'm here to inspect the premises for rebels.'"
PRINT "5.  'Oops, wrong door.'"
PRINT "6.  'Mayhaps I should save my game here.'"
InterInput:
PRINT : INPUT ">", A: PRINT
IF A = 6 THEN GOSUB Save: GOTO InterInput
IF A > 5 OR A < 1 THEN GOTO InterInput
IF A = 5 THEN PRINT "'Nice try.  Give us a real answer.": GOTO Interrogate
IF A = 4 THEN PRINT "No sooner are the words out of your mouth than your throat is neatly slit in": PRINT "two.": Killer = 7: Dead
IF A = 1 OR A = 2 THEN PRINT "'This is getting nowhere,' says the rebel holding you.": GOTO Interrogate
IF A = 3 THEN
        PRINT "'Who?'": PRINT
        PRINT "You say:": PRINT
        PRINT "1.  'Uh... Fury.'"
        PRINT "2.  'Uh... Nacyl Angelbane.'"
        PRINT "3.  'Uh... Dispater, Lord of Dis.'"
        PRINT "4.  'Uh... Never mind.'"
InterInput2:
        PRINT : INPUT ">", A: PRINT
        IF A = 1 THEN
                PRINT "'You know Fury?' asks one of the rebels."
                PRINT : PRINT "You say:": PRINT
                PRINT "1.  'Yes.  He and I journeyed together for a while before he met his end at"
                PRINT "     the hands of an erinyes who was going to sell him into slavery.'"
                PRINT "2.  'Yes.  He and I journeyed together for a while before he met his end at"
                PRINT "     the hands of a beserk fanatic named L'Ther.'"
                PRINT "3.  'Yes.  He and I journeyed together for a while before he met his end at"
                PRINT "     the hands of a pit fiend trying to get me to sell my soul.'"
                PRINT "4.  'Yes.  He and I journeyed together for a while before he met his end at"
                PRINT "     the claws of a cranium rat.  Horrible thing, to die by toebite.'"
                PRINT "5.  'Yes.  I killed him.  Why?'"
                PRINT "6.  'Fury?  Who's Fury?  Where am I?  What are you talking about?'"
InterInput3:
                PRINT : INPUT ">", A: PRINT
                IF A >= 1 AND A <= 4 THEN
                        PRINT "'A pity.  Fury was one of our most dedicated rebels in the field,' says one of"
                        PRINT "the rebels.  'I guess you're okay,' he adds.  With that, he lets go of you."
                        IF Guide = 3 THEN PRINT "'But, this one here...' says another rebel.  Fury falls to the ground, dead.": PRINT "No sooner than he stops bleeding than his body explodes in a pyrotechnics": PRINT "display.  'Sorry,' says the rebel.  'I saw he was a fiend, so I was forced to": PRINT "terminate him.": Guide = 0
                        RebelsKnow = 1: GOSUB 5: GOTO 940
                END IF
                IF A = 5 THEN PRINT "'Kill him,' says the rebel leader.  You die quickly, from a slit throat.": Killer = 7: Dead
IF A = 6 THEN PRINT "'This is getting nowhere,' says one of the rebels.": GOTO Interrogate
IF A > 6 OR A < 1 THEN GOTO InterInput3
END IF
IF A = 2 OR A = 3 THEN PRINT "'Those are fiend names!' says one of the rebel leaders.  'Kill him!'": PRINT "Your throat is slit, and you die in seconds.": Killer = 7: Dead
IF A = 4 THEN GOTO Interrogate
IF A > 4 OR A < 1 THEN GOTO InterInput2
END IF
WinGame:
PRINT : PRINT : PRINT
NoWay3:
INPUT "What is your name?", N$
IF N$ = "fight" THEN GOTO NoWay3
IF N$ = "" THEN N$ = "the_elf"
SAV$ = N$ + ".baa"
OPEN SAV$ FOR OUTPUT AS #1
PRINT #1, N$; " killed won on Nessus, the ninth layer of Baator."
PRINT #1, N$; " lived for"; Time; "moves on Baator."
IF Hp < 0 THEN PRINT #1, "At the time that, "; N$; " won the game, "; N$; " had "; Hp; "hit points remaining"
PRINT #1, "out of"; MaxHp; "maximum."
PRINT #1, "A note to ya, cutter:  Congrats.  You won the game.  Now play it again."
CLOSE #1
COLOR 0: END

SUB Cania
ON RM GOTO YourCell, NecroCell, FuryCell, D, PrisonHall, PrisonHall, PrisonHall, PrisonLobby, Hall, MapRm, Armory, Hall, ThroneRm, Hall, Hall, OutsidePalace2, Portal, Water, InPit, NearPit
EXIT SUB
YourCell:
PRINT "Cell": PRINT
PRINT "You are in a cell fashioned out of ice.  There is a cell door to the south."
IF CellDoor1Opened <> 2 THEN PRINT "The cell door is closed.  ";  ELSE PRINT "The cell door is open."
PRINT "A cold wind chills you to the bone."
IF Key1 = 0 AND Come = 5 THEN PRINT "There is a shiny key on a plate on the floor here."
South = 1
EXIT SUB
NecroCell:
PRINT "Cell": PRINT
PRINT "You are in a cell fashioned out of ice.  There is a cell door to the south."
IF CellDoor2Opened <> 2 THEN PRINT "The cell door is closed.  ";  ELSE PRINT "The cell door is open."
PRINT "A cold wind chills you to the bone."
South = 1
EXIT SUB
FuryCell:
PRINT "Cell": PRINT
PRINT "You are in a cell fashioned out of ice.  There is a cell door to the south."
IF CellDoor3Opened <> 2 THEN PRINT "The cell door is closed.  ";  ELSE PRINT "The cell door is open."
PRINT "A cold wind chills you to the bone."
South = 1
EXIT SUB
D:
South = 1
EXIT SUB
PrisonHall:
PRINT "Prison Hall": PRINT
PRINT "You are walking down a hall fashioned out of ice as flawless and perfect as"
PRINT "crystal."
North = 1
East = 1
IF RM = 5 THEN
PRINT "You may go east.  ";
IF CellDoor1Opened <> 2 THEN PRINT "There is a cell door to the north.  It is closed."
IF CellDoor1Opened = 2 THEN PRINT "There is a cell door to the north.  It is open."
END IF
IF RM = 6 THEN
PRINT "You may go east and west.  ";
IF CellDoor2Opened <> 2 THEN PRINT "There is a cell door to the north.  It is closed."
IF CellDoor2Opened = 2 THEN PRINT "There is a cell door to the north.  It is open."
END IF
IF RM = 7 THEN
PRINT "You may go east and west.  ";
IF CellDoor3Opened <> 2 THEN PRINT "There is a cell door to the north.  It is closed."
IF CellDoor3Opened = 2 THEN PRINT "There is a cell door to the north.  It is open."
END IF
IF RM <> 5 THEN West = 1
EXIT SUB
PrisonLobby:
PRINT "Prison Lobby": PRINT
PRINT "To the west is an icy hall fashioned out of crystal ice, next to which are the"
PRINT "cells.  You may go west and south."
West = 1
South = 1
EXIT SUB
Hall:
PRINT "Hall": PRINT
PRINT "You are in a hall fashioned completely out of ice as clear as crystal glass."
IF RM = 9 THEN SouthEast = 1: East = 1: PRINT "You may go southeast and east."
IF RM = 14 THEN West = 1: NorthWest = 1: East = 1: PRINT "You may go west, northwest, and east."
IF RM = 15 THEN East = 1: West = 1: NorthEast = 1: PRINT "You may go east, west, and northeast."
IF RM = 12 THEN West = 1: North = 1: SouthWest = 1: PRINT "You may go west, north, and southwest."
EXIT SUB
MapRm:
PRINT "Empty Room": PRINT
PRINT "You are in a mainly empty room.  You may exit here to the west."
IF Stuff = 1 THEN PRINT "Your stuff is here, all in a pile."
West = 1
EXIT SUB
Armory:
PRINT "Armory": PRINT
PRINT "You are in the standard castle/palace armory.  You may go east."
East = 1
EXIT SUB
ThroneRm:
PRINT "Throne Room": PRINT
PRINT "This room is empty, save for a huge throne in the middle of the room.  You may"
PRINT "go east."
East = 1
EXIT SUB
OutsidePalace2:
PRINT "Outside Palace": PRINT
PRINT "You are standing outside a massive ice palace.  The palace is made entirely"
PRINT "of ice.  The sky above beats down upon you, and the wind chills you to the bone."
PRINT "There is a path going south, towards a huge ice pit and a horde of gelugons."
IF Key1 = 0 THEN PRINT "There is a gelugon blocking the entrace to the palace, which is west."
South = 1: West = 1
EXIT SUB
Portal:
PRINT "Portal": PRINT
PRINT "You are floating at the bottom of the icy water pool.  There is a portal here,"
PRINT "glowing with a serene reddish glow, like the fires of hell.  You can swim"
PRINT "upwards."
EXIT SUB
Water:
PRINT "In Water": PRINT
PRINT "You are in icy water.  The icy water soaks you to the bone, drenching you and"
PRINT "making you shiver with cold.  You may swim up or down in this tunnel of"
PRINT "water."
EXIT SUB
InPit:
PRINT "In the Pit": PRINT
PRINT "You are in an icy pit.  There is a pool of icy water next to you here, out of"
PRINT "which eminates a reddish glow.  You may climb out of the pit using a set of"
PRINT "stairs carved into the ice."
EXIT SUB
NearPit:
PRINT "Near Ice Pit": PRINT
PRINT "You are standing near an icy pit.  You may go north.  There is a horde of"
PRINT "gelugons guarding the pit.  The pit seems to contain a great deal of icy"
PRINT "water, at the bottom of which comes a reddish glow.  You could also enter the"
PRINT "ice pit by a set of stairs carved into the ice."
North = 1
EXIT SUB
END SUB

SUB Dead
PRINT
IF NoShow = 0 THEN PRINT "You scream out in pain as you fall to the ground of Baator, dead.  About five": PRINT "months later the multiverse is run by the baatezu.  Some people think it had to": PRINT "do with an artifact that the Dark Eight stole from a dead planeswalker, but": PRINT "that's commonly regarded as a rumor."
NoWay2: PRINT :
INPUT "What is your name?", N$
IF N$ = "fight" THEN GOTO NoWay2
IF N$ = "" THEN N$ = "bean"
SAV$ = N$ + ".baa"
OPEN SAV$ FOR OUTPUT AS #1
IF Killer = -1 THEN Killer1$ = "the will of Hereg–l"
IF Killer = 1 THEN Killer1$ = "a cornugon"
IF Killer = 2 THEN Killer1$ = "an abishai"
IF Killer = 3 THEN Killer1$ = "an osyluth"
IF Killer = 4 THEN Killer1$ = "a barbazu"
IF Killer = 5 THEN Killer1$ = "a hamatula"
IF Killer = 6 THEN Killer1$ = "an erinyes"
IF Killer = 7 THEN Killer1$ = "a stupid response"
IF Killer = 8 THEN Killer1$ = "the waters of Cania"
IF Killer = 9 THEN Killer1$ = "a gelugon"
PRINT #1, N$; " killed by "; Killer1$; " on ";
IF Level = 7 THEN PRINT #1, "Maladomini, the seventh": PRINT #1, "layer of Baator."
IF Level = 8 THEN PRINT #1, "Cania, the eighth layer": PRINT #1, "of Baator."
IF Level = 9 THEN PRINT #1, "Nessus, the ninth layer": PRINT #1, "of Baator."
PRINT #1, N$; " lived for"; Time; "moves on Baator."
IF Hp < 0 THEN PRINT #1, "At the time of death, "; N$; " had "; Hp; "hit points remaining out of"; MaxHp; "maximum."
IF Hp >= 0 THEN PRINT #1, "At the time of death, "; N$; " had"; Hp; "hit points remaining out of"; MaxHp; "maximum."
IF Killer = -1 THEN PRINT #1, "A note to you, cutter:  Play fairly."
IF Killer = 1 THEN PRINT #1, "A note to you, cutter:  Don't cross a cornugon.  And NEVER think one is": PRINT #1, "a fool."
IF Killer = 2 THEN PRINT #1, "A note to you, cutter:  Never mess with a baatezu, even a low-ranker."
IF Killer = 3 THEN PRINT #1, "A note to you, cutter:  The osyluths are as deadly as a scorpion, and much": PRINT #1, "more powerful."
IF Killer = 4 THEN PRINT #1, "A note to you, cutter:  The barbazu live for battle."
IF Killer = 5 THEN PRINT #1, "A note to you, cutter:  Hamatulas are efficient guards of Phlegethos.": PRINT #1, "Don't cross one."
IF Killer = 6 THEN PRINT #1, "A note to you, cutter:  The erinyes are dangerous.  Though they do not": PRINT #1, "enjoy combat, they are a formidible foe nonetheless."
IF Killer = 7 THEN PRINT #1, "I have just one thing to say to you, cutter.  You asked for it."
IF Killer = 8 THEN PRINT #1, "A note to you, cutter:  Don't dawdle while you're underwater."
IF Killer = 9 THEN PRINT #1, "A note to you, cutter:  Beware of the Gelugon.  They'll cut you down sooner": PRINT #1, "than saw hello."
IF Killer = 11 THEN PRINT #1, "A note to you, cutter:  Keep trying, you're almost there."
CLOSE #1
COLOR 0: END
END SUB

SUB Fights
IF Guide = 1 AND GuideSwitch <> 1 AND (Erinyes1 = 1 OR Cornugon1 = 1 OR Hamatula1 = 1 OR Osyluth2 = 1 OR Mezzoloths > 0 OR ArcFight = 1) THEN
FuryHit = INT(RND * 2) + 1
IF Cornugons > 0 THEN Kill$ = "the cornugon": Sex$ = "it": Fiend = 2
IF Hamatulas > 0 THEN Kill$ = "the hamatula": Sex$ = "it": Fiend = 3
IF Gelugons > 0 THEN Kill$ = "a gelugon": Sex$ = "it": Fiend = 8
IF Osyluths > 0 OR OsyGuard = 1 OR OsyGateGuard = 1 OR PalaceGuard = 1 THEN Kill$ = "the osyluth": Sex$ = "it": Fiend = 4
IF PitFiendLord = 1 OR PitFiends > 0 THEN Kill$ = "the pit fiend": Sex$ = "it": Fiend = 6
IF ArcFight = 1 AND ArcReveal = 0 THEN Kill$ = "L'Ther": Sex$ = "he": Fiend = 7
IF FuryHit = 1 THEN PRINT "Fury slashes out at "; Kill$; ", but he misses!"
IF FuryHit = 2 THEN
Dmg = INT(RND * 6) + 4
IF Fiend = 1 THEN ErinyesHp = ErinyesHp - Dmg
IF Fiend = 2 THEN CornugonHp = CornugonHp - Dmg
IF Fiend = 3 THEN HamHp = HamHp - Dmg
IF Fiend = 4 THEN OsyluthHp = OsyluthHp - Dmg
IF Fiend = 6 THEN PitFiendHp = PitFiendHp - Dmg
IF Fiend = 8 THEN GeluHp = GeluHp - Dmg
PRINT "Fury slashes out at "; Kill$; ", and he hits!"
IF ErinyesHp <= 0 OR CornugonHp <= 0 OR HamHp <= 0 OR OsyluthHp <= 0 OR MezzHp <= 0 OR PitFiendHp <= 0 OR GeluHp <= 0 THEN
PRINT "Fury brings his sword down on "; Kill$; ", and "; Sex$; " screams out one last time"
PRINT "before it explodes in a fiery inferno."
IF Fiend = 2 THEN Cornugons = Cornugons - 1
IF Fiend = 3 THEN Hamatulas = Hamatulas - 1
IF Fiend = 4 THEN
        IF PalaceGuard = 1 THEN PalaceGuard = 2: GOTO PastThis5
        IF OsyGateGuard = 1 THEN OsyGateGuard = 2: GOTO PastThis5
        IF OsyGuard = 1 THEN OsyGuard = 2: GOTO PastThis5
        Osyluths = Osyluths - 1
PastThis5:
END IF
IF Fiend = 6 THEN
        IF Level = 7 THEN PitFiendLord = 2
        IF Level = 9 THEN PitFiends = PitFiends - 1
END IF
END IF
END IF
END IF
IF FightBaalzephon = 1 THEN
        Hit = INT(RND * 6) + 1
        IF Hit = 1 THEN Dmg = (INT(RND * 4) + 12) * 2: PRINT "Baalzephon raises both of his wings up against you and buffets you against": PRINT "the wall!": Hp = Hp - Dmg
        IF Hit = 2 THEN PRINT "Baalzephon raises both of his wings up against you, but you dodge them!"
        IF Hit = 3 THEN PRINT "Baalzephon swipes one of his claws at you, hitting you!": Dmg = INT(RND * 6) + 6: Hp = Hp - Dmg
        IF Hit = 4 THEN PRINT "Baalzephon swipes one of his claws at you, but you dodge it!"
        IF Hit = 5 THEN PRINT "Baalzephon bites you with his fanged mouth!": Dmg = INT(RND * 6) + 1: Hp = Hp - Dmg: Dmg = INT(RND * 10) + 6: Hp = Hp - Dmg
        IF Hit = 6 THEN PRINT "Baalzephon tries to bite at you with his fanged mouth, but you duck aside!"
        IF Hp <= 0 AND GuideSwitch = 0 THEN Killer1$ = "Baalzephon": Killer = 11: Dead
        IF Hp <= 0 AND GuideSwitch = 1 THEN
        Hp = 1
        PRINT "Suddenly, as Baalzephon raises his claws and wings out to finish you, a noise"
        PRINT "comes from behind him.  A blood-curdling scream is heard as Fury rushes in from"
        PRINT "the northeast, sword drawn.  He appears to have been imprisoned for some time."
        PRINT "Baalzephon turns around, but it's too late.  Fury rams his sword through"
        PRINT "Baalzephon, pinning him to the wall.  Baalzephon grabs Fury's neck, and the"
        PRINT "two of them are locked in a deadly embrace for a few seconds.  Then, Fury is"
        PRINT "hurled backwards as Baalzephon slumps down to the ground.  Both are dead.  On"
        PRINT "the ground next to Baalzephon's dead body is the book of forbidden lore."
        FightBaalzephon = 2: EXIT SUB
        END IF
END IF
IF GuideAttack = 1 THEN
Hit = INT(RND * 2) + 1
IF Hit = 1 THEN PRINT "Fury swings his sword at you, but you dodge the blow!"
IF Hit = 2 THEN
Dmg = INT(RND * 6) + 4
PRINT "Fury swings his sword at you, hitting you in the chest!": Hp = Hp - Dmg
END IF
IF Hp <= 0 THEN Killer1$ = "an cross-trading guide": Killer = 11: Dead
END IF
IF EvilTwinAttack = 1 THEN
Hit = INT(RND * 2) + 1
IF Hit = 1 THEN PRINT "Your evil twin swings his blood-stained sword at you, but you dodge the blow!"
IF Hit = 2 THEN
Dmg = INT(RND * 8) + 4
PRINT "You evil twin swings his blood-stained sword at you, hitting you in the chest!": Hp = Hp - Dmg
END IF
IF Hp <= 0 THEN Killer1$ = "an evil twin": Killer = 11: Dead
END IF
IF Cornugons > 0 THEN
CornuHit = Cornugons
Hehehehe:
CornuHit = CornuHit - 1
Hit = INT(RND * 7) + 1
IF CornuGated = 0 AND CornugonHp <= 5 THEN Hit = 7
IF Hit = 7 AND CornuGated = 1 THEN Hit = INT(RND * 6) + 1
IF Hit = 1 THEN PRINT "A cornugon lashes out at you with its spiked whip!": Hp = Hp - 4
IF Hit = 2 THEN PRINT "A cornugon lashes out at you with its spiked whip, but you manage to dodge to": PRINT "one side!"
IF Hit = 3 THEN PRINT "A cornugon gives out a blood-curdling scream as a lightning bolt emerges from": PRINT "its body to hit you!": Hp = Hp - 4
IF Hit = 4 THEN PRINT "A cornugon gives out a scream and a lightning bolt emerges from its chest,": PRINT "but you dodge it!"
IF Hit = 5 THEN PRINT "A cornugon reaches out at you and bites you!": Hp = Hp - 2
IF Hit = 6 THEN PRINT "A cornugon reaches out at you to try to bite you, but you jump back!"
IF Hit = 7 AND CornuGated = 0 THEN
CornuGated = 1
Gate = INT(RND * 100) + 1
Type1 = INT(RND * 3) + 1
IF Type1 = 1 THEN
IF Gate <= 50 THEN
Cor = INT(RND * 3) + 1
Barbazus = Barbazus + Cor
IF Cor > 1 THEN PRINT "The cornugon concentrates for a few seconds, and"; Cor; "barbazu appear!"
IF Cor = 1 THEN PRINT "The cornugon concentrates for a few seconds, and a barbazu appears!"
ELSE
PRINT "The cornugon concentrates for a few seconds, but nothing happens!"
END IF
END IF
IF Type1 = 2 THEN
IF Gate <= 35 THEN
Cor = INT(RND * 3) + 1
Abishais = Abishais + Cor
IF Cor > 1 THEN PRINT "The cornugon concentrates for a few seconds, and"; Cor; "abishai appear!"
IF Cor = 1 THEN PRINT "The cornugon concentrates for a few seconds, and an abishai appears!"
ELSE
PRINT "The cornugon concentrates for a few seconds, but nothing happens!"
END IF
END IF
IF Type1 = 3 THEN
IF Gate <= 20 THEN
Cor = INT(RND * 3) + 1
Cornugons = Cornugons + Cor
IF Cor > 1 THEN PRINT "The cornugon concentrates for a few seconds, and"; Cor; "more cornugons appear!"
IF Cor = 1 THEN PRINT "The cornugon concentrates for a few seconds, and another cornugon appears!"
ELSE
PRINT "The cornugon concentrates for a few seconds, but nothing happens!"
END IF
END IF
END IF
IF CornuHit = 0 THEN GOTO EndFight
GOTO Hehehehe
EndFight:
IF Hp <= 0 THEN Killer1$ = "a cornugon": Killer = 1: Dead
END IF
IF Cornugon1 = 1 THEN
Hit = INT(RND * 7) + 1
IF CornuGated = 0 AND CornugonHp <= 5 THEN Hit = 7
IF Hit = 7 AND CornuGated = 1 THEN Hit = INT(RND * 6) + 1
IF Hit = 1 THEN PRINT "The cornugon lashes out at you with its spiked whip!": Hp = Hp - 4
IF Hit = 2 THEN PRINT "The cornugon lashes out at you with its spiked whip, but you manage to dodge to": PRINT "one side!"
IF Hit = 3 THEN PRINT "The cornugon gives out a blood-curdling scream as a lightning bolt emerges from": PRINT "its body to hit you!": Hp = Hp - 4
IF Hit = 4 THEN PRINT "The cornugon gives out a scream and a lightning bolt emerges from its chest,": PRINT "but you dodge it!"
IF Hit = 5 THEN PRINT "The cornugon reaches out at you and bites you!": Hp = Hp - 2
IF Hit = 6 THEN PRINT "The cornugon reaches out at you to try to bite you, but you jump back!"
IF Hit = 7 AND CornuGated = 0 THEN
CornuGated = 1
Gate = INT(RND * 100) + 1
Type1 = INT(RND * 3) + 1
IF Type1 = 1 THEN
IF Gate <= 50 THEN
Cor = INT(RND * 3) + 1
Barbazus = Barbazus + Cor
IF Cor > 1 THEN PRINT "The cornugon concentrates for a few seconds, and"; Cor; "barbazu appear!"
IF Cor = 1 THEN PRINT "The cornugon concentrates for a few seconds, and a barbazu appears!"
ELSE
PRINT "The cornugon concentrates for a few seconds, but nothing happens!"
END IF
END IF
IF Type1 = 2 THEN
IF Gate <= 35 THEN
Cor = INT(RND * 3) + 1
Abishais = Abishais + Cor
IF Cor > 1 THEN PRINT "The cornugon concentrates for a few seconds, and"; Cor; "abishai appear!"
IF Cor = 1 THEN PRINT "The cornugon concentrates for a few seconds, and an abishai appears!"
ELSE
PRINT "The cornugon concentrates for a few seconds, but nothing happens!"
END IF
END IF
IF Type1 = 3 THEN
IF Gate <= 20 THEN
Cor = INT(RND * 3) + 1
Cornugons = Cornugons + Cor
IF Cor > 1 THEN PRINT "The cornugon concentrates for a few seconds, and"; Cor; "more cornugons appear!"
IF Cor = 1 THEN PRINT "The cornugon concentrates for a few seconds, and another cornugon appears!"
ELSE
PRINT "The cornugon concentrates for a few seconds, but nothing happens!"
END IF
END IF
END IF
IF Hp <= 0 THEN Killer1$ = "a cornugon": Killer = 1: Dead
END IF
IF PitFiends > 0 THEN
PitHit = PitFiends
Hehehehe7:
PitHit = PitHit - 1
Hit = INT(RND * 7) + 1
IF PitFiendGated = 0 AND PitFiendHp <= 5 THEN Hit = 7
IF Hit = 7 AND PitFiendGated = 1 THEN Hit = INT(RND * 6) + 1
IF Hit = 1 THEN Dmg = (INT(RND * 4) + 1) * 2: PRINT "The pit fiend raises both of it's wings up against you and buffets you against": PRINT "the wall!": Hp = Hp - Dmg
IF Hit = 2 THEN PRINT "The pit fiend raises both of it's wings up against you, but you dodge them!"
IF Hit = 3 THEN PRINT "The pit fiend swipes one of it's claws at you, hitting you!": Dmg = INT(RND * 6) + 1: Hp = Hp - Dmg
IF Hit = 4 THEN PRINT "The pit fiend swipes one of it's claws at you, but you dodge it!"
IF Hit = 5 THEN PRINT "The pit fiend bites you with it's fanged mouth!": Dmg = INT(RND * 6) + 1: Hp = Hp - Dmg: Dmg = INT(RND * 6) + 1: Hp = Hp - Dmg
IF Hit = 6 THEN PRINT "The pit fiend tries to bite at you with it's fanged mouth, but you duck aside!"
IF Hit = 7 THEN
PitFiendGated = 1
Type1 = INT(RND * 5) + 1
IF Type1 = 1 THEN PRINT "Suddenly, next to the pit fiend appear two hamatula!": Hamatulas = Hamatulas + 2
IF Type1 = 2 THEN PRINT "Suddenly, next to the pit fiend appears a cornugon!": Cornugons = Cornugons + 1
IF Type1 = 3 THEN PRINT "Suddenly, next to the pit fiend appear two abishais!": Abishais = Abishais + 2
IF Type1 = 4 THEN PRINT "Suddenly, next to the pit fiend appear two osyluths!": Osyluths = Osyluths + 2
IF Type1 = 5 THEN PRINT "Suddenly, next to the pit fiend appear two barbazu!": Barbazus = Barbazus + 2
END IF
IF GeluHit = 0 THEN GOTO EndFight7
GOTO Hehehehe7
EndFight7:
IF Hp <= 0 THEN Killer1$ = "a pit fiend": Killer = 10: Dead
END IF
IF Gelugons > 0 THEN
GeluHit = Gelugons
Hehehehe6:
GeluHit = GeluHit - 1
Hit = INT(RND * 7) + 1
IF GeluGated = 0 AND GeluHp <= 5 THEN Hit = 7
IF Hit = 5 AND GeluGated = 1 THEN Hit = INT(RND * 6) + 1
IF Hit = 1 AND Immune = 0 THEN PRINT "A gelugon bites you!": Hp = Hp - 2
IF Hit = 1 AND Immune = 1 THEN PRINT "A gelugon bites you, but you don't feel anything!": Hp = Hp - 2
IF Hit = 2 THEN PRINT "A gelugon stretches its neck out to bite you, but you jump back!"
IF Hit = 3 THEN PRINT "A gelugon claws you!": Hp = Hp - 3
IF Hit = 4 THEN PRINT "A gelugon swings at you with it's tail, hitting you!": Hp = Hp - 8
IF Hit = 5 THEN PRINT "A gelugon swings at you with it's tail, but it misses you!"
IF Hit = 6 THEN PRINT "A gelugon reaches at you with its claws, but you duck to one side!"
IF Hit = 7 AND AbishGated = 0 THEN
AbishGated = 1
Gate = INT(RND * 100) + 1
IF Gate <= 20 THEN
Gelu = INT(RND * 2) + 1
Gelugons = Gelugons + Gelu
IF Abi > 1 THEN PRINT "A gelugon concentrates for a few seconds, and"; Gelu; "more gelugons appear!"
IF Abi = 1 THEN PRINT "A gelugon concentrates for a few seconds, and another gelugon appears!"
ELSE
PRINT "The gelugon concentrates for a few seconds, but nothing happens!"
END IF
END IF
IF GeluHit = 0 THEN GOTO EndFight6
GOTO Hehehehe6
EndFight6:
IF Hp <= 0 THEN Killer1$ = "a gelugon": Killer = 9: Dead
END IF
IF Abishais > 0 THEN
AbishHit = Abishais
Hehehehe5:
AbishHit = AbishHit - 1
Hit = INT(RND * 5) + 1
IF AbishGated = 0 AND AbishaiHp <= 5 THEN Hit = 5
IF Hit = 5 AND AbishGated = 1 THEN Hit = INT(RND * 4) + 1
IF Hit = 1 AND Immune = 0 THEN PRINT "A red abishai bites you!": Hp = Hp - 2
IF Hit = 1 AND Immune = 1 THEN PRINT "A red abishai bites you, but you don't feel anything!": Hp = Hp - 2
IF Hit = 2 THEN PRINT "A red abishai stretches its neck out to bite you, but you jump back!"
IF Hit = 3 AND Immune = 0 THEN PRINT "A red abishai hits you with it's claws!": Hp = Hp - 3
IF Hit = 3 AND Immune = 1 THEN PRINT "A red abishai hits you with it's claws, but you don't feel anything!": Hp = Hp - 3
IF Hit = 4 THEN PRINT "A red abishai reaches at you with its claws, but you duck to one side!"
IF Hit = 5 AND AbishGated = 0 THEN
AbishGated = 1
Gate = INT(RND * 100) + 1
IF Gate <= 30 THEN
Abi = INT(RND * 3) + 1
Abishais = Abishais + Abi
IF Abi > 1 THEN PRINT "The abishai concentrates for a few seconds, and"; Abi; "more abishai appear!"
IF Abi = 1 THEN PRINT "The abishai concentrates for a few seconds, and another abishai appears!"
ELSE
PRINT "The abishai concentrates for a few seconds, but nothing happens!"
END IF
END IF
IF AbishHit = 0 THEN GOTO EndFight5
GOTO Hehehehe5
EndFight5:
IF Hp <= 0 THEN Killer1$ = "an abishai": Killer = 2: Dead
END IF
IF Osyluths > 0 THEN
OsyluthHit = Osyluths
Hehehehe3:
OsyluthHit = OsyluthHit - 1
Hit = INT(RND * 7) + 1
IF OsyGated = 0 AND OsyluthHp <= 5 THEN Hit = 7
IF Hit = 7 AND OsyGated = 1 THEN Hit = INT(RND * 6) + 1
IF Hit = 1 AND Immune = 0 THEN PRINT "An osyluth claws you!": Hp = Hp - 3
IF Hit = 1 AND Immune = 1 THEN PRINT "An osyluth claws you, but you don't feel anything!": Hp = Hp - 3
IF Hit = 2 THEN PRINT "An osyluth tries to claw at you, but you jump back!"
IF Hit = 3 AND Immune = 0 THEN PRINT "An osyluth bites you with its teeth!": Hp = Hp - 5
IF Hit = 3 AND Immune = 1 THEN PRINT "An osyluth bites you with its teeth, but you don't feel anything!": Hp = Hp - 5
IF Hit = 4 THEN PRINT "An osyluth tries to bite you, but you duck to one side!"
IF Hit = 5 THEN PRINT "An osyluth stings you with it's scorpion-like tail!": Hp = Hp - 8
IF Hit = 6 THEN PRINT "An osyluth tries to sting you with it's tail, but you duck to one side!"
IF Hit = 7 AND OsyGated = 0 THEN
OsyGated = 1
Gate = INT(RND * 100) + 1
IF Gate <= 35 THEN
Osy = INT(RND * 2) + 1
Osyluths = Osyluths + Osy
IF Osy > 1 THEN PRINT "An osyluth concentrates for a few seconds, and"; Osy; "more osyluth appear!"
IF Osy = 1 THEN PRINT "An osyluth concentrates for a few seconds, and another osyluth appears!"
ELSE
PRINT "An osyluth concentrates for a few seconds, but nothing happens!"
END IF
END IF
IF OsyluthHit = 0 THEN GOTO EndFight3
GOTO Hehehehe3
EndFight3:
IF Hp <= 0 THEN Killer1$ = "an osyluth": Killer = 3: Dead
END IF
IF Osyluth2 = 1 OR OsyGuard = 1 OR OsyGateGuard = 1 OR PalaceGuard = 1 THEN
Hit = INT(RND * 7) + 1
IF OsyGated = 0 AND OsyluthHp <= 5 THEN Hit = 7
IF Hit = 7 AND OsyGated = 1 THEN Hit = INT(RND * 6) + 1
IF Hit = 1 AND Immune = 0 THEN PRINT "The osyluth claws you!": Hp = Hp - 3
IF Hit = 1 AND Immune = 1 THEN PRINT "The osyluth claws you, but you don't feel anything!": Hp = Hp - 3
IF Hit = 2 THEN PRINT "The osyluth tries to claw at you, but you jump back!"
IF Hit = 3 AND Immune = 0 THEN PRINT "The osyluth bites you with its teeth!": Hp = Hp - 5
IF Hit = 3 AND Immune = 1 THEN PRINT "The osyluth bites you with its teeth, but you don't feel anything!": Hp = Hp - 5
IF Hit = 4 THEN PRINT "The osyluth tries to bite you, but you duck to one side!"
IF Hit = 5 THEN PRINT "The osyluth stings you with it's scorpion-like tail!": Hp = Hp - 8
IF Hit = 6 THEN PRINT "The osyluth tries to sting you with it's tail, but you duck to one side!"
IF Hit = 7 AND OsyGated = 0 THEN
OsyGated = 1
Gate = INT(RND * 100) + 1
IF Gate <= 35 THEN
Osy = INT(RND * 3) + 1
Osyluths = Osyluths + Osy
IF Osy > 1 THEN PRINT "The osyluth concentrates for a few seconds, and"; Osy; "more abishai appear!"
IF Osy = 1 THEN PRINT "The osyluth concentrates for a few seconds, and another osyluth appears!"
ELSE
PRINT "The osyluth concentrates for a few seconds, but nothing happens!"
END IF
END IF
IF Hp <= 0 THEN Killer1$ = "an osyluth": Killer = 3: Dead
END IF
IF Barbazus > 0 THEN
BarbHit = Barbazus
Hehehehe4:
BarbHit = BarbHit - 1
Hit = INT(RND * 3) + 1
IF BarbGated = 0 AND BarbazuHp <= 5 THEN Hit = 3
IF Hit = 3 AND BarbGated = 1 THEN Hit = INT(RND * 2) + 1
IF Hit = 1 THEN PRINT "A barbazu hits you with its glaive!": Hp = Hp - 6
IF Hit = 2 THEN PRINT "A barbazu swings its glaive at you, but it misses you by about an inch!"
IF Hit = 3 AND BarbGated = 0 THEN
BarbGated = 1
Gate = INT(RND * 100) + 1
Type1 = INT(RND * 2) + 1
IF Type1 = 1 THEN
IF Gate <= 50 THEN
Abi = INT(RND * 11) + 1
Abishais = Abishais + Abi
IF Abi > 1 THEN PRINT "A barbazu concentrates for a few seconds, and"; Abi; "abishai appear!"
IF Abi = 1 THEN PRINT "A barbazu concentrates for a few seconds, and an abishai appears!"
ELSE
PRINT "The barbazu concentrates for a few seconds, but nothing happens!"
END IF
ELSE
IF Gate <= 35 THEN
Bar = INT(RND * 6) + 1
Barbazus = Barbazus + Bar
IF Bar = 1 THEN PRINT "A barbazu concentrates for a second, and another barbazu appears!"
IF Bar > 1 THEN PRINT "A barbazu concentrate for a second, and"; Bar; "more barbazu attack!"
END IF
END IF
END IF
IF BarbHit = 0 THEN GOTO EndFight4
GOTO Hehehehe4
EndFight4:
IF Hp <= 0 THEN Killer1$ = "a barbazu": Killer = 4: Dead
END IF
IF Hamatulas > 0 THEN
HamHit = Hamatulas
Hehehehe2:
HamHit = HamHit - 1
Hit = INT(RND * 5) + 1
IF Hit = 5 AND HamGated = 1 THEN Hit = INT(RND * 4) + 1
IF HamGated = 0 AND HamHp <= 5 THEN Hit = 5
IF Hit = 1 AND Immune = 0 THEN PRINT "A hamatula swings it's claw at you, hitting!": Hp = Hp - 4
IF Hit = 1 AND Immune = 1 THEN PRINT "A hamatula swings it's claw at you, hitting!  However, you don't feel anything.": Hp = Hp - 4
IF Hit = 2 THEN PRINT "A hamatula swings it's claw at you, but you manage to duck aside!"
IF Hit = 3 AND Immune = 0 THEN PRINT "A hamatula bites you!": Hp = Hp - 6
IF Hit = 3 AND Immune = 1 THEN PRINT "A hamatula bites you, but you don't feel anything!": Hp = Hp - 6
IF Hit = 4 THEN PRINT "A hamatula reaches at you to bite you, but you duck to one side!"
IF Hit = 5 AND HamGated = 0 THEN
HamGated = 1
Gate = INT(RND * 100) + 1
Type1 = INT(RND * 2) + 1
IF Type1 = 1 THEN
IF Gate <= 35 THEN
Abi = INT(RND * 3) + 1
Hamatulas = Hamatulas + Abi
IF Abi > 1 THEN PRINT "A hamatula concentrates for a few seconds, and"; Abi; "more hamatulas appear!"
IF Abi = 1 THEN PRINT "A hamatula concentrates for a few seconds, and another hamatula appears!"
ELSE
PRINT "The hamatula concentrates for a few seconds, but nothing happens!"
ELSE
IF Gate <= 50 THEN
Abi = INT(RND * 3) + 1
Abishais = Abishais + Abi
IF Abi > 1 THEN PRINT "A hamatula concentrates for a few seconds, and"; Abi; "abishais appear!"
IF Abi = 1 THEN PRINT "A hamatula concentrates for a few seconds, and an abishai appears!"
END IF
END IF
END IF
END IF
IF HamHit <= 0 THEN GOTO EndFight2
GOTO Hehehehe2
EndFight2:
IF Hp <= 0 THEN Killer1$ = "a hamatula": Killer = 5: Dead
END IF
IF PitFiend2 = 1 OR PitFiendLord = 1 THEN
        IF Guide = 1 THEN Hit = INT(RND * 13) + 1 ELSE Hit = INT(RND * 6) + 1
        IF Hit = 13 AND PitFiendGated = 1 THEN Hit = INT(RND * 12) + 1
        IF PitFiendHp < 10 AND PitFiendGated = 0 THEN Hit = 13
        IF Hit = 1 THEN Dmg = (INT(RND * 4) + 1) * 2: PRINT "The pit fiend raises both of it's wings up against you and buffets you against": PRINT "the alley wall!": Hp = Hp - Dmg
        IF Hit = 2 THEN PRINT "The pit fiend raises both of it's wings up against you, but you dodge them!"
        IF Hit = 3 THEN PRINT "The pit fiend swipes one of it's claws at you, hitting you!": Dmg = INT(RND * 6) + 1: Hp = Hp - Dmg
        IF Hit = 4 THEN PRINT "The pit fiend swipes one of it's claws at you, but you dodge it!"
        IF Hit = 5 THEN PRINT "The pit fiend bites you with it's fanged mouth!": Dmg = INT(RND * 6) + 1: Hp = Hp - Dmg: Dmg = INT(RND * 6) + 1: Hp = Hp - Dmg
        IF Hit = 6 THEN PRINT "The pit fiend tries to bite at you with it's fanged mouth, but you duck aside!"
        IF Hit = 7 THEN Dmg = (INT(RND * 4) + 1) * 2: PRINT "The pit fiend raises both of it's wings up against Fury and buffets him against": PRINT "the alley wall!": FuryHp = FuryHp - Dmg
        IF Hit = 8 THEN PRINT "The pit fiend raises both of its wings up against Fury, but he dodges them!"
        IF Hit = 9 THEN PRINT "The pit fiend swipes one of its claws at Fury, hitting him!": Dmg = INT(RND * 6) + 1: FuryHp = FuryHp - Dmg
        IF Hit = 10 THEN PRINT "The pit fiend swipes one of its claws at Fury, but he dodge it!"
        IF Hit = 11 THEN PRINT "The pit fiend bites Fury with its fanged mouth!": Dmg = INT(RND * 6) + 1: FuryHp = FuryHp - Dmg: Dmg = INT(RND * 6) + 1: FuryHp = FuryHp - Dmg
        IF Hit = 12 THEN PRINT "The pit fiend tries to bite at Fury with it's fanged mouth, but he ducks aside!"
        IF Hit = 13 THEN
                PitFiendGated = 1
                Type1 = INT(RND * 5) + 1
                IF Type1 = 1 THEN PRINT "Suddenly, next to the pit fiend appear two hamatula!": Hamatulas = Hamatulas + 2
                IF Type1 = 2 THEN PRINT "Suddenly, next to the pit fiend appears a cornugon!": Cornugons = Cornugons + 1
                IF Type1 = 3 THEN PRINT "Suddenly, next to the pit fiend appear two abishais!": Abishais = Abishais + 2
                IF Type1 = 4 THEN PRINT "Suddenly, next to the pit fiend appear two osyluths!": Osyluths = Osyluths + 2
                IF Type1 = 5 THEN PRINT "Suddenly, next to the pit fiend appear two barbazu!": Barbazus = Barbazus + 2
        END IF
        IF Hp <= 0 THEN Killer1$ = "a pit fiend": Killer = 10: Dead
END IF
GOTO EndFights
EndFights:
END SUB

SUB GuideSay
END SUB

SUB Maladomini
ON RM GOTO ThroneRoom, Alley, EntrancetoCity, Alley2, BackRoom, InPalace, OutsidePalace, Street, NarrowStreet, Alley3, EntrancetoCity, Street, CenterofTown, Street, EntrancetoCity, OutsidePoliticalSchool, Street, Street, AmongHouses, AmongHouses, WarehouseW, WarehouseE, EntrancetoCity, AmongHouses, AmongHouses, Portal12
Portal12:
PRINT "Portal Room": PRINT
PRINT "There is a portal here, in the center of the room, glowing with a light blue"
PRINT "light.  You may go east."
GOTO EndMaladomini
ThroneRoom:
PRINT "Throne Room": PRINT
PRINT "You are stading in the middle of a huge throne room.  Ornate gold work surrounds"
PRINT "you, while carpets and tapestries hang from the ceiling.  You may go the the"
PRINT "south.  There is also a door to the west from here."
IF PitFiendLord = 0 AND RebelsKnow < 6 THEN PRINT "There is a pit fiend here, sitting on a huge throne."
IF RebelsKnow >= 6 THEN PRINT "There is a pitched melee taking place in this room right now.  Osyluth battles": PRINT "rebel; rebel battles osyluth.  Neither side appears to have a clear advantage."
South = 1
GOTO EndMaladomini
Alley:
PRINT "Alley": PRINT
PRINT "You are in an empty alley.  You may go to the south."
South = 1
GOTO EndMaladomini
EntrancetoCity:
PRINT "Entrance to Grenpoli": PRINT
IF OsyGateGuard = 0 THEN
PRINT "You are standing next to a checkpoint, in which an osyluth is sitting.  It is"
PRINT "looking at you with a hollow gaze.  From here, the entrance to the city is to"
ELSE
PRINT "You are standing next to an empty checkpoint.  From here, the entrane to the"
PRINT "city is to ";
END IF
PRINT "the ";
IF RM = 3 THEN PRINT "south.": South = 1
IF RM = 11 THEN PRINT "east.": East = 1
IF RM = 15 THEN PRINT "west.": West = 1
IF RM = 23 THEN PRINT "north.": North = 1
GOTO EndMaladomini
Alley2:
PRINT "Alley": PRINT
PRINT "You are standing in the middle of an alley.  There is a narrow alley to the"
PRINT "south from here.  There is a door to the east from here.  On it is painted a"
PRINT "curved dagger.  ";
IF ResistanceOpen = 0 THEN
        PRINT "The door is closed."
ELSE
        PRINT "The door is opened."
        East = 1
END IF
South = 1
GOTO EndMaladomini
BackRoom:
IF RebelsKnow = 0 OR RebelsKnow >= 2 THEN
        PRINT "Empty Room": PRINT
        PRINT "You see an empty room before you.  There is a door to the west."
ELSE
        PRINT "Back Room": PRINT
        PRINT "You are standing in a small room.  There is a table in the center of the room"
        PRINT "here, around which a group of rebels in black are gathered.  There is a door"
        PRINT "to the west."
END IF
West = 1
GOTO EndMaladomini
InPalace:
PRINT "Palace Hall": PRINT
PRINT "The throne room of the palace is to the north, while the exit from the palace"
PRINT "is to the east."
North = 1
East = 1
GOTO EndMaladomini
OutsidePalace:
PRINT "Outside Palace": PRINT
PRINT "You are standing outside a palace of tarnished silver.  The palace is also"
PRINT "surrounded by a barbed wire fence that seems to glow with some sort of "
PRINT "electrical glow.  There is a gap in the fence to the west, while an alley is"
PRINT "to the north.  To the east is a main street."
IF PalaceGuard = 0 THEN PRINT "There is an osyluth guard here, guarding the entrance to the palace."
North = 1
West = 1
East = 1
GOTO EndMaladomini
Street:
PRINT "Street": PRINT
PRINT "You are standing on a street.  Not many people walk along this street, and"
IF RebelsKnow = 4 AND RM = 17 THEN
        PRINT "those that do look small, weary, and scared.  From here, there are streets going"
ELSE
        PRINT "those that do are herded into an orderly line by an osyluth guard, standing"
        PRINT "in the middle of the street, directing traffic.  From here, you may go to the"
END IF
IF RM = 8 THEN PRINT "to the north, south, east, and west.  To the north is an exit gate from the": PRINT "city.  There is a narrow street to the east.  The outside of the palace is to": PRINT "the west.": North = 1: South = 1: East = 1: West = 1
IF RM = 14 THEN PRINT "to the north, south, east, and west.  To the east is an exit gate from the": PRINT "city.  There is a narrow street to the north.  The center of town is to the": PRINT "west.": North = 1: South = 1: East = 1: West = 1
IF RM = 12 THEN PRINT "to the south, east, and west.  To the west is an exit gate from the city.": PRINT "The center of the city is to the east.": South = 1: East = 1: West = 1
IF RM = 17 THEN PRINT "to the north, east, and west.  There is a large warehouse to the south.": North = 1: East = 1: West = 1: South = 1
IF RM = 18 THEN PRINT "to the north, south, east, and west.  To the south is an exit gate from the": PRINT "city.": North = 1: South = 1: East = 1: West = 1
GOTO EndMaladomini
NarrowStreet:
PRINT "Narrow Street": PRINT
PRINT "You are standing in a narrow-one way street.  There is nobody on this street"
PRINT "except you.  Narrow alleys go off to the north and east, while there is a"
PRINT "main street to the south and west."
North = 1: South = 1: East = 1: West = 1
GOTO EndMaladomini
Alley3:
PRINT "Alley": PRINT
PRINT "You are in an empty alley.  You may go to the west."
West = 1
GOTO EndMaladomini
CenterofTown:
PRINT "Center of Town": PRINT
PRINT "You are standing in the center of town.  There are streets going off to in all"
PRINT "cardinal directions.  The streets form a meshing fabric of a city, one that"
PRINT "allows easy patrols and quick responses to uprisings and unrest."
North = 1
South = 1
East = 1
West = 1
GOTO EndMaladomini
OutsidePoliticalSchool:
PRINT "Outside Political School": PRINT
PRINT "You are standing near the famed Political School of Grenpoli.  It is surrounded"
PRINT "by barbed wire and "
East = 1
GOTO EndMaladomini
WarehouseW:
PRINT "Warehouse, West": PRINT
PRINT "You are at the west end of the warehouse.  Weapons of all sorts line the walls"
PRINT "and shelves here.  To the east is the empty end of the warehouse."
IF Sword = 1 THEN PRINT "There is a bundle of swords here, tied up with a chain.  Among them is your own": PRINT "sword."
East = 1
GOTO EndMaladomini
WarehouseE:
PRINT "Warehouse, East": PRINT
PRINT "You are standing in the east section of a huge warehouse.  Not many things are"
PRINT "here.  Most of the inventory seems concentrated to the west.  You may go to"
PRINT "the west, and the exit from the warehouse is to the north."
North = 1
West = 1
GOTO EndMaladomini
AmongHouses:
PRINT "Among Houses": PRINT
PRINT "You are standing among a residential district of Grenpoli.  The "
IF RM = 19 THEN PRINT "in all directions.": North = 1: South = 1: East = 1: West = 1
GOTO EndMaladomini
EndMaladomini:
END SUB

SUB Nessus
ON RM GOTO YourCellNessus2, MirrorMaze, FuryCellNessus2, HallNessus, Door, HallNessus, Door, Maze, Door, HallNessus, Door, HallNessus, PlaceHolder, PitFiendThrone
PlaceHolder:
EXIT SUB
YourCellNessus2:
PRINT "Cell": PRINT
PRINT "You are in a dank and dark cell.  ";
IF YourCellNessus = 0 THEN PRINT "There is a closed door to the south from": PRINT "here."
IF YourCellNessus = 1 THEN PRINT "There is a shattered door to the south.  The": PRINT "shattered remains of the door are strewn across the doorway."
South = 1
EXIT SUB
MirrorMaze:
PRINT "Mirrors": PRINT
PRINT "You are in a maze of mirrors.  It is impossible to tell in which directions"
PRINT "lie mirrors and in which directions are openings."
EXIT SUB
FuryCellNessus2:
PRINT "Cell": PRINT
PRINT "You are in a dank and dark cell.  ";
IF FuryCellNessus = 0 THEN PRINT "There is a closed door to the south from": PRINT "here."
IF FuryCellNessus = 1 THEN PRINT "There is a shattered door to the south.  The": PRINT "shattered remains of the door are strewn across the doorway."
South = 1
EXIT SUB
HallNessus:
PRINT "Hall": PRINT
PRINT "You are in an intricatly designed hall.  There are pictures of you in the walls"
PRINT "and floor, while you fight fiends and get beaten back by the fiends.  However,"
PRINT "in the picture you always seem to barely survive to be tortured again."
IF RM = 4 THEN PRINT "You may go north, east, and south.": North = 1: East = 1: South = 1
IF RM = 6 THEN PRINT "You may go north, west, and south.": North = 1: West = 1: South = 1
IF RM = 10 THEN PRINT "You may go north, southeast, and east.": North = 1: East = 1
IF RM = 12 THEN PRINT "You may go north, southwest, and west.": North = 1: West = 1
EXIT SUB
Door:
PRINT "Doorway": PRINT
PRINT "You are near a doorway, over which is an inscription, reading, 'Maze.'"
PRINT "Funny, but whenever you hear that word, your stomach gets a little quesy."
IF RM = 5 THEN PRINT "The maze is to the south.  You may go east, west, and south.": East = 1: West = 1: South = 1
IF RM = 7 THEN PRINT "The maze is to the east.  You may go north, east, and south.": North = 1: East = 1: South = 1
IF RM = 11 THEN PRINT "The maze is to the north.  You may go north, east, and west.": North = 1: East = 1: West = 1
IF RM = 9 THEN PRINT "The maze is to the west.  You may go north, south, and west.": North = 1: South = 1: West = 1
EXIT SUB
PitFiendThrone:
PRINT "Throne Room": PRINT
PRINT "You are standing in an opulent throne room, engraved with pictures of the"
PRINT "fiend Baalzephon.  There is a huge golden throne in the center of the room here,"
IF FightBaalzephon = 0 THEN PRINT "on which Baalzephon himself sits."
IF FightBaalzephon <> 0 THEN PRINT "which is empty."
PRINT "You may go northeast and northwest."
IF FightBaalzephon = 2 THEN
PRINT "There is the dead body of Baalzephon on the floor here";
IF GuideSwitch = 1 THEN PRINT ", next to which is": PRINT "Fury's dead body";
PRINT "."
END IF
EXIT SUB
Maze:
IF Looked = 0 THEN Place = INT(RND * 8) + 1: Looked = 1
PRINT "In Maze": PRINT
PRINT "You are in a maze of twisty little passages, all alike."
IF Place = 2 THEN PRINT "You may go north and west."
IF Place = 1 THEN PRINT "You may go east and west."
IF Place = 3 THEN
IF InMaze < 25 THEN PRINT "You may go south."
IF InMaze >= 25 THEN PRINT "You may go south and west."
END IF
IF Place = 4 THEN PRINT "You may go north and west."
IF Place = 5 THEN PRINT "You may go north and south."
IF Place = 6 THEN PRINT "You may go west."
IF Place = 7 THEN PRINT "You may go in all directions."
IF Place = 8 THEN PRINT "You may go east."
EXIT SUB
END SUB

SUB OnTheBaatezu
Page = Page + 1
IF Page = 1 THEN
PRINT "                        ON THE BAATEZU": PRINT
PRINT "   Excerpts from the Planescape Monstrous Compendium, Volume I": PRINT
PRINT "          Copyright 1994 TSR, Inc.  All Rights Reserved.": PRINT
PRINT "     Additional Penmanship by Dking, Mage of the God Hereg–l"
END IF
IF Page = 2 THEN
PRINT "Lesser Baatezu - Abishai": PRINT
PRINT "The abishai resemble gothic gargoyles, thin and reptilian, with long, prehensile"
PRINT "tails and large wings.  The three varieties of abishai have different skin"
PRINT "colors - in ascending order of station, black, green, and red."
PRINT "The abishai make up large, powerful armies that fight the loathsome tanar'ri"
PRINT "and intruders into Baator.  In some case, a red abishai may prove worthy enough"
PRINT "to command a force of lemures.  If successful, the red abishai may be promoted"
PRINT "to a higher form of baatezu."
END IF
IF Page = 3 THEN
PRINT "Greater Baatezu - Amnizu": PRINT
PRINT "Amnizu dwell on Stygia, fifth plane of Baator.  At times they enter the upper"
PRINT "levels of Baator on missions.  The amnizu are gruesome and unseemly: short (4"
PRINT "feet tall) with elongated, bald heads, stubby legs and arms, and large, leathery"
PRINT "wings.  Amnizu have pug nose, large eyes, and snarling mouth filled with jagged,"
PRINT "razor-sharp teeth."
PRINT "The amnizu are the guards of Baator from intruders via the River Styx, which"
PRINT "cuts through Stygia, Avernus, and Nessus.  Of course, only a sodding idiot"
PRINT "would try to use the Styx as a means to getting to Nessus, home of the Dark"
PRINT "Eight.  Amnizu can imprison a sod as easy as breathing on them by imprisoning"
PRINT "their life force deep in Baator."
END IF
IF Page = 4 THEN
PRINT "Lesser Baatezu - Barbazu": PRINT
PRINT "The barbazu are the vile soldiers of Baator, employed in large numbers as elite"
PRINT "shock troops.  A barbazu is a foul, humanoid creature with a long tail, clawed"
PRINT "hands and feet, pointed ears, and a snaky, disgusting beard.  Its skin is moist,"
PRINT "though scaly like a reptile.  It carries a cruel, saw-toothed glaive capable of"
PRINT "heavy damage."
PRINT "On no account should you ever say anything that could in any way infuriate a"
PRINT "barbazu, as they are the most chaotic of the baatezu and lust for battle.  They"
PRINT "have great needs to inflict violence and pain upon others."
END IF
IF Page = 5 THEN
PRINT "Greater Baatezu - Cornugon": PRINT
PRINT "Cornugons are elite defense forces.  They look frightening: 9 feet tall, only"
PRINT "vaguely humanoid, and covered with scales.  Their huge wings and snaking,"
PRINT "prehensile tail add to their intimidating demeanor.  In combat they favor a long"
PRINT "barbed whip."
PRINT "Beware of the cornugon, for they are fierce fighters and among the more powerful"
PRINT "of the baatezu.  They favor phrases such as, 'You think I am a fool!'  Some"
PRINT "abishai attempt to emulate these phrases, in hopes that they will seem tougher"
PRINT "than they actually are.  106 cornugons guard the Dark Eight, the leaders of"
PRINT "Nessus, with unfaltering loyalty.  If a cornugon serves well, it will be"
PRINT "promoted to a Gelugon. (q.v.)"
END IF
IF Page = 6 THEN
PRINT "Lesser Baatezu - Erinyes": PRINT
PRINT "The erinyes are the most unusual of the baatezu.  They appear as attractive"
PRINT "woman with large feathery wings growing out of their backs.  The erinyes are"
PRINT "the temptors and seducers of mortals.  The erinyes journey to the Prime Material"
PRINT "plane to gather the souls of mortals for participation in the ghastly Blood"
PRINT "War.  Thankfully, only 500 erinyes can ever exist at one time.  Beware the"
PRINT "erinyes, for the gaze of one can put one under the utter servitude of the"
PRINT "baatezu."
END IF
IF Page = 7 THEN
PRINT "Greater Baatezu - Gelugon": PRINT
PRINT "The gelugons are the guards of the last layer of Nessus.  9,999 gelugons guard"
PRINT "the gate to Nessus at all times.  The gate itself is in a deep glacial pit in"
PRINT "Cania.  The gate is 1,001 fathoms below the surface of a lake in deepest Cania."
PRINT "The gelugons have 12-foot insectlike bodies, claws on hands and feet, and sharp"
PRINT "pincers at the mouth.  Their heads bulge with multifaceted eyes.  The gelugon"
PRINT "has a long, thick tail covered with razor-sharp spikes.  Gelugons that serve"
PRINT "well for 777 years may be considered for promotion to pit fiend status.  If"
PRINT "selected for promotion, the gelugon enters the Pit of Flame, where it is"
PRINT "tortured for 1,001 days.  After almost three years of hideous, painful torture,"
PRINT "the former gelugon emerges as a pit fiend."
END IF
IF Page = 8 THEN
PRINT "Lesser Baatezu - Hamatula": PRINT
PRINT "The hamatula patrol the third and fourth layers of Baator.  They are large"
PRINT "humanoids, covered from head to toe with sharp barbs right down to their long,"
PRINT "meaty tails.  Each hamatula has unusually long, sharp claws on its hands, and"
PRINT "keen eyes that shift and dark about, giving the creature a nervous look."
END IF
IF Page = 9 THEN
PRINT "Lesser Baatezu - Kocrachon": PRINT
PRINT "The kocrachon are to be avoided at all costs.  They are the torturers of the"
PRINT "baatezu.  Skilled in the art of inflicting pain, by the time they are finished"
PRINT "with a particular victim, the victim may have developed a perverse delight in"
PRINT "pain after being exposed to it enough.  Certain baatezu war ships are powered"
PRINT "by torture.  The kocrachon torture their victims, which in turn power the"
PRINT "wheeled fortresses.  The kocrachon serve for 223 years in their forms before"
PRINT "being promoted to the status of erinyes. (q.v.)"
END IF
IF Page = 10 THEN
PRINT "Least Baatezu - Lemure": PRINT
PRINT "Barely worth mentioning, the lemures are mound of melting flesh that serve"
PRINT "baatezu with a higher station then them (read:  every other baatezu) as soldiers"
PRINT "in the gruesome Blood War.  It is worth mentioning that lemures can regenerate"
PRINT "from any wounds.  Only holy weapons can permenently kill them."
END IF
IF Page = 11 THEN
PRINT "Least Baatezu - Nupperibo": PRINT
PRINT "As even less worth mentioning, the nupperibo are blind, dead, and dumb.  Like"
PRINT "the lemures, they serve as soldiers in the Blood War.  Nupperibos also will"
PRINT "regenerate from any wounds they recieve.  Nupperibo are also used as trading"
PRINT "stock to the yugoloths in the Blood War.  Nupperibo, though higher up in station"
PRINT "than lemures, cannot advance further unless they are demoted a rank."
END IF
IF Page = 12 THEN
PRINT "Lesser Baatezu - Osyluth": PRINT
PRINT "The osyluth are the police officers of Baator and resemble a dried husk of a"
PRINT "human form.  The head of an osyluth looks much like a human skull covered in"
PRINT "dried and shruken skin.  The osyluths also have large, scorpion-like tails that"
PRINT "can inflict a deadly poison to those unprepared for the blow."
END IF
IF Page = 13 THEN
PRINT "Greater Baatezu - Pit Fiend": PRINT
PRINT "This is the big one, berk.  Larger than life, and much more deadly, the pit"
PRINT "fiend is considered more deadly than almost any other type of fiend, excepting"
PRINT "the Ultroloths (see another book I have written, known as, 'On Yugoloth Society"
PRINT "and Station').  The pit fiends deal in power, and any mortal thinking he can bob"
PRINT "one is severely mistaken.  Get that, berk?  Don't mess with one of these unless"
PRINT "you are some sort of super-powerful planeswalker given extraordinary powers"
PRINT "by a magical artifact.  Pit fiends resemble giant winged humaoids, gargoylish"
PRINT "in appearance, with huge-bat wings that can wrap about their body in defense,"
PRINT "large fangs that drip with vile, green liquid, and hulking red, scaly bodies"
PRINT "that burst into flame when they are angered or excited.": PRINT
PRINT "**** ON NO CONDITION SHOULD YOU EVER MAKE A DEAL WITH A PIT FIEND ****"
END IF
IF Page = 14 THEN
PRINT "Least Baatezu - Spinagon": PRINT
PRINT "Barely worth mentioning, the spinagon are tiny gargoyle-like humanoids with"
PRINT "wings and a spiked tail.  They carry small military forks or other nast weapons."
PRINT "Spinagons have long, razor-sharp talons on their feet."
END IF
IF Page = 15 THEN
PRINT "On the back cover is a poem.": PRINT
PRINT "And then the Power shall awake,"
PRINT "The world will be doomed."
PRINT "The mages cannot stops the beast."
PRINT "They will be entombed.": PRINT
PRINT "Well, that's the end of the book."
Page = 0
END IF
PRINT
END SUB

SUB Talking
IF Level = 9 THEN
        IF RM = 14 AND FightBaalzephon = 0 THEN
                IF Annoy = 0 THEN
                        PRINT "'So we finally meet, Elf.  I assure you, the pleasure is all mine.  Amazingly,"
                        PRINT "you have survived where others have not.  You have made it to Nessus - alive."
                        PRINT "Of course, you would never have made it if it had not been for me.  I believe"
                        PRINT "you know me.  I am Baalzephon.'"
                END IF
                IF Annoy = 1 THEN
                        PRINT "'We meet again, Elf.  I see that you have managed to escape your cell."
                        PRINT "Honestly, security around here isn't what it once was.  My prisoners"
                        PRINT "just seem to walk right out of their cells.'"
                END IF
                IF Annoy = 2 THEN
                        PRINT "'So, Elf.  You managed to escape my maze of mirrors.  You have proven yourself"
                        PRINT "an exceptional specimen of a Clueless Prime.'"
                END IF
                IF Annoy = 3 THEN
                        PRINT "'So, Elf.  You managed to survive your killer double.  I am tiring of this."
                        PRINT "Why don't you just die?'"
                END IF
                IF Annoy = 4 THEN
                        PRINT "'So, Elf.  You survived an attack by your trusted guide.  I tire of this"
                        PRINT "charade.  Will you not fall on your sword and be done with it?'"
                END IF
BaalTalk:
                PRINT : PRINT "You say:": PRINT
                PRINT "1.  'Eat steel, fiend!'"
                PRINT "2.  'I'm the Elf.  I killed Zaebos.'"
                PRINT "3.  'You are a pathetic excuse for a pit fiend.'"
                PRINT "4.  'You have the Book.  Return it.  NOW.'"
                PRINT "5.  'I've come through all nine levels of Baator and about 48K of BASIC code to"
                PRINT "     kill you, and it's time I finally did that and get this game done with.'"
                PRINT "6.  'Go to hell.'"
                PRINT "7.  'Ta, ta.  I must be mosying along.'"
TalkBaal:  PRINT : INPUT ">", A: PRINT
                IF A > 7 OR A < 1 THEN GOTO TalkBaal
                IF A = 7 THEN PRINT "'Do return.  I do so enjoy your company,' says Baalzephon.": ReturnTo940 = 1: EXIT SUB
                IF A = 6 THEN PRINT "'Too late, Elf.  Unless you didn't notice, you're already here!' laughs": PRINT "Baalzephon.": ReturnTo940 = 1: EXIT SUB
                IF A = 2 THEN PRINT "'You haven't gotten an honest response to that question all game.  Why would you": PRINT "want one now?' asks Baalzephon."
                IF A = 3 THEN PRINT "'And you are a pathetic excuse for a Prime.  Forget what I said earlier.'": ReturnTo940 = 1: EXIT SUB
                IF A = 4 THEN PRINT "'No,' says Baalzephon.  'I don't have to.  Goodbye now, Elf.'": GOTO Whoa
                IF A = 5 THEN PRINT "'Sounds like you've had some fun, travelling through Baator.'  Baalzephon says.": PRINT "'But sadly, it's all over now,' he says, waving his hand.": GOTO Whoa
                IF A = 1 THEN
                        PRINT "'Not now, Elf.  Goodbye,' says Baalzephon, waving his hand."
Whoa:
                        Annoy = Annoy + 1
                        IF Annoy = 1 THEN
                                RM = 1
                                IF Guide = 1 OR Guide = 3 THEN GuideFound = 1
                                ReturnTo940 = 2: EXIT SUB
                        END IF
                        IF Annoy = 2 THEN RM = 2: ReturnTo940 = 2: EXIT SUB
                        IF Annoy = 3 THEN PRINT "Suddenly, out of nowhere appears an exact double of you.  It's eyes glow with": PRINT "fire, and it raises it's sword.": EvilTwinAttack = 1: ReturnTo940 = 1: EXIT SUB
                        IF Annoy = 4 THEN
                                IF Guide = 3 OR GuideSwitch = 1 THEN
                                        PRINT "Suddenly, from behind you, Fury draws his sword.  'Prepare to die, Elf.'": GuideAttack = 1: ReturnTo940 = 1: EvilGuideHp = 60: EXIT SUB
                                ELSE
                                        Annoy = 5
                                END IF
                        END IF
                        IF Annoy >= 5 THEN
                                PRINT "Baalzephon stands up from his chair.  'Prepare to die.'": FightBaalzephon = 1: ReturnTo940 = 1: EXIT SUB
                        END IF
                END IF
        ReturnTo940 = 1: EXIT SUB
        END IF
END IF
IF Level = 8 THEN
IF (RM = 16 AND Key1 = 0) OR (RM = 20 AND Key1 = 0) THEN
        PRINT "The gelugon looks at you, and says, 'You're under arrest.'"
        PRINT "Your stuff is taken from you, and you are thrown in jail."
        RM = 1: Stuff = 1
        IF Guide = 1 THEN GuideSwitch = 1: GuideFound = 1
        IF Guide = 3 THEN GuideFound = 1
        ReturnTo940 = 2: EXIT SUB
END IF
IF RM = 20 THEN
        PRINT "You walk up to one of the gelugons.  'Hello!' you say.  'I'm the Elf.'"
        PRINT "'Hello, good sir,' says the gelugon.  'How may I help you?'"
        PRINT : PRINT "You say:": PRINT
        PRINT "1.  'I'm here to kill you.'"
        PRINT "2.  'I'm the Elf.  I killed Zaebos.'"
        PRINT "3.  'May I pass here, into the pit?'"
        PRINT "4.  'It's a bit cold here.'"
        PRINT "5.  'Well, I'll be seeing you.'"
        PRINT : INPUT ">", A: PRINT
        IF A = 5 THEN PRINT "'Have a pleasent existance.  May you suffer the same fate as the 'savior' of": PRINT "Tinetel,' says the gelugon, laughing.": ReturnTo940 = 1: EXIT SUB
        IF A = 1 THEN PRINT "Five gelugons break off from the group to attack you!": Gelugons = 5: ReturnTo940 = 1: EXIT SUB
        IF A = 2 THEN PRINT "The gelugon nods.": ReturnTo940 = 1: EXIT SUB
        IF A = 4 THEN PRINT "'That's the point of Cania, berk.  It isn't made out of ice to look pretty,": PRINT "berk,' replies the gelugon.": ReturnTo940 = 1: EXIT SUB
        IF A = 3 THEN
                PRINT "'State your name and business,' says the gelugon."
                PRINT : PRINT "You say:": PRINT
                PRINT "1.  'I'm the Elf.  I want to see what's in the pit.'"
                PRINT "2.  'I'm the Elf.  I have orders to report to Nessus.'"
                PRINT "3.  'I'm the Elf.  I have to recover a book of forbidden lore.'"
                PRINT "4.  'I'm the Elf.  I want vengeance against someone called Baalzephon.'"
                PRINT "5.  'I'm the Elf.  I killed Zaebos.'"
                PRINT "6.  'I'm the Elf.  I want to slaughter every fiend in Nessus and overthrow the": PRINT "     entire baatezu heirarchy.'"
                PRINT : INPUT ">", A: PRINT
                IF A > 6 OR A < 1 THEN ReturnTo940 = 1: EXIT SUB
                PRINT "'That's as good a reason as any,' says the gelugon.  'You may certainly pass.'": PastGelugons = 1: ReturnTo940 = 1: EXIT SUB
        END IF
        IF A > 5 OR A < 1 THEN ReturnTo940 = 1: EXIT SUB
END IF
END IF
IF Level = 7 THEN
IF RM = 7 AND PalaceGuard = 0 THEN
PRINT "You walk up to the osyluth. 'Hello,' you say.  'I'm the Elf.'"
PRINT "The osyluth says, 'How may I help you, good citizen?'": PRINT
PRINT "You say:": PRINT
PRINT "1.  'I'd like an audience with your master.'"
PRINT "2.  'I'm here to kill you.'"
PRINT "3.  'I'm the Elf.  I killed Zaebos.'"
PRINT "4.  'So long.'"
PRINT : INPUT ">", A: PRINT
IF A = 1 THEN PRINT "The osyluth nods.  Suddenly, you are somewhere else.": RM = 1: ReturnTo940 = 2: EXIT SUB
IF A = 2 THEN PalaceGuard = 1: PRINT "The osyluth screams, then attacks!"
IF A = 3 THEN PRINT "The osyluth is silent."
ReturnTo940 = 1: EXIT SUB
END IF
IF RM = 1 AND RebelsKnow = 0 AND PitFiendLord = 0 THEN
PRINT "You walk up to the pit fiend.  'Hello,' you say.  'I'm the Elf.'"
PRINT "The pit fiend growls."
PRINT : PRINT "You say:": PRINT
PRINT "1.  'I'm looking for a portal to the next level of Baator.'"
PRINT "2.  'I'm here to kill you.'"
PRINT "3.  'I'm the Elf.  I killed Zaebos.'"
PRINT "4.  'So long.'"
PRINT : INPUT ">", A: PRINT
IF A = 1 THEN
PRINT "The pit fiend nods.  'Then help me.  If you can gain access to the rebel's"
PRINT "secret hiding place, then I'll let you use the portal in my palace.  Otherwise,"
PRINT "you must leave.  What do you say?'"
PRINT : PRINT "You say:": PRINT
PRINT "1.  'Sure!'"
PRINT "2.  'Nope, sorry.'"
PRINT "3.  'Maybe.'"
PRINT : INPUT ">", A: PRINT
IF A <> 1 THEN RM = 2: PRINT "Suddenly, you are somewhere else.": ReturnTo940 = 2: EXIT SUB
PRINT "'Good,' growls the pit fiend.  'Go now, and be successful.'  Suddenly, you are": PRINT "somewhere else.": InLeague = 1: ReturnTo940 = 2: RM = 2: EXIT SUB
END IF
IF A <> 1 THEN RM = 2: PRINT "Suddenly, you are somewhere else.": ReturnTo940 = 2: EXIT SUB
ReturnTo940 = 1: EXIT SUB
END IF
IF RM = 5 AND RebelsKnow = 1 THEN
PRINT "You walk up to the rebel in black.  'Hello,' you say.  'I'm the Elf.'"
PRINT "The man in black nods."
PRINT : PRINT "You say:": PRINT
PRINT "1.  'So, what's up?'"
PRINT "2.  'Can I help you in any way?'"
PRINT "3.  'I'm the Elf.  I killed Zaebos.'"
PRINT "4.  'So long.'"
PRINT : INPUT ">", A: PRINT
IF A = 1 THEN
PRINT "'We're planning our raid on the weapons depot,' says the man in black."
PRINT "'We need help.  Can you help us?'": PRINT : PRINT "You say:": PRINT
PRINT "1.  'Sure.'"
PRINT "2.  'Maybe.'"
PRINT "3.  'Not now, thank you.'"
PRINT : INPUT ">", A: PRINT
IF A = 1 THEN GOTO HelpRaid
IF A = 2 OR A = 3 THEN PRINT "The man in black nods.  'Think about it.'": ReturnTo940 = 1: EXIT SUB
END IF
IF A = 2 THEN
HelpRaid:
PRINT "'Good.  We need help.  You'll serve as the person who will slip into the weapons"
PRINT "warehouse and get a large amount of weapons.  He'll distract the guard,' the"
PRINT "man in black says, pointing at a rebel across the table.  'Once you have the"
PRINT "weapons, we'll meet back at the palace, and then make our raid from there.'"
PRINT "Let's go.  We meet outside the warehouse, southwest from the center of the":
PRINT "town.'": RebelsKnow = 2
PRINT : PRINT "With that, the rebels all vanish into the shadows.": ReturnTo940 = 2: EXIT SUB
END IF
IF A = 3 THEN PRINT "The man in black nods.  'Good.  You can help us.'": ReturnTo940 = 1: EXIT SUB
IF A = 4 THEN PRINT "The man in black nods.": ReturnTo940 = 1: EXIT SUB
END IF
IF RM = 8 OR RM = 14 OR RM = 12 OR RM = 17 OR RM = 18 THEN
IF RM = 17 AND RebelsKnow = 2 THEN PRINT "The osyluth's being distracted at the moment.": ReturnTo940 = 1: EXIT SUB
IF RM = 17 AND RebelsKnow = 4 THEN EXIT SUB
PRINT "You walk up to the fiend guard.  'Hello!' you say.  'I'm the Elf!'"
PRINT "'Great,' says the fiend.  'Just what I need.'"
StreetGuard:
PRINT : PRINT "You say:": PRINT
PRINT "1.  'I'm here to kill you.'"
PRINT "2.  'I'm the Elf.  I killed Zaebos.'"
PRINT "3.  'Nice weather we've been having.'"
PRINT "4.  'Ta, ta!'"
PRINT : INPUT ">", A: PRINT
IF A > 4 OR A < 1 THEN GOTO StreetGuard
IF A = 1 THEN Osyluths = 1: PRINT "'Well, then.  I may have to kill you, then,' says the guard, who attacks!": ReturnTo940 = 1: EXIT SUB
IF A = 2 THEN PRINT "'I know who you are.  But down here, we frown on braggarts.  Braggarts are": PRINT "sentenced to the Abyss, so be careful what you say.'": GOTO StreetGuard
IF A = 3 THEN PRINT "'Sarcasm does not become you, 'Elf.'  So keep quiet and remain serious.'": GOTO StreetGuard
IF A = 4 THEN PRINT "'Have a nice day.  May Zaebos smile upon you,' says the osyluth guard.": ReturnTo940 = 1: EXIT SUB
END IF
IF RM = 3 OR RM = 11 OR RM = 15 OR RM = 23 THEN
PRINT "You walk up to the fiend.  'Hello!' you say.  'I'm the Elf!'"
PRINT "'Great,' says the fiend.  'Just what I need.'"
GatesGuard:
PRINT : PRINT "You say:": PRINT
PRINT "1.  'I'm here to kill you.'"
PRINT "2.  'I'm the Elf.  I killed Zaebos.'"
PRINT "3.  'What's the program here?'"
PRINT "4.  'Nice weather we've been having.'"
PRINT "5.  'Have a nice day.  I must be running off.'"
PRINT : INPUT ">", A: PRINT
IF A > 5 OR A < 1 THEN GOTO GatesGuard
IF A = 1 THEN OsyGateGuard = 1: PRINT "'So that's how you want to play,' says the guard, who waves his hands, and": PRINT "behind him appear 3 barbazu.": Barbazus = 3: Osyluths = 1: ReturnTo940 = 1: EXIT SUB
IF A = 2 THEN PRINT "'I know who you are.  But down here, we frown on braggarts.  Braggarts are": PRINT "sentenced to the Abyss, so be careful what you say.'": ReturnTo940 = 1: GOTO GatesGuard
IF A = 3 THEN PRINT "'You give me your weapon.  Then I give you a receipt that you can claim your": PRINT "weapon with when you leave.'": GOTO GatesGuard
IF A = 4 THEN PRINT "'Sarcasm does not become you, 'Elf.'  So keep quiet and remain serious.'": GOTO GatesGuard
IF A = 5 THEN PRINT "'Bye,' says the fiend.  'Good riddance.'": ReturnTo940 = 1: EXIT SUB
END IF
END IF
END SUB

