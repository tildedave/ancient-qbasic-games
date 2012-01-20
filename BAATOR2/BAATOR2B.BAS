DECLARE SUB Talking ()
DECLARE SUB OnTheBaatezu ()
DECLARE SUB Fights ()
DECLARE SUB GuideSay ()
DECLARE SUB Phlegethos ()
DECLARE SUB Stygia ()
DECLARE SUB Malbolge ()
DECLARE SUB Dead ()
COMMON SHARED Killer2$, RM, Killer, Level, NoShow, Hp, MaxHp, Cornugons, CornuGated, Cornugon1, CornugonHp, Barbazus, BarbGated, BarbazuHp, Abishais, AbishGated, AbishaiHp, Osyluth2, OsyGated, Osyluths, OsyluthHp, HamGated, Hamatulas, HamHp, Hamatula1, ErinyesGated, Erinyes1, ErinyesHp, Rope, East, North, Guide, GuideLeft, ArcFight, ArcReveal, Arcanoloth, ReturnTo940, Mezzoloths, ArcGated, MezzHp, MezzGated, ArcHp, CantRun, A$, FuryMad, Slave, Immune, GoingToDie, FreakWormHole, ThugTalk, LtherCome, Thugs, ThugHp, TalkLTher, GuideIncapacitated, FuryBeg, Ruby, Money, Osyluth3, Escaped, PitFiend2, PitFiendHp, LetFree, Mezz1, LTherHere3, FuryLeft, GateOpened, Calling, CabinetOpen, Pool, DoorOpen, Cur, SeenThis, Looked, Cons, Abishai2, Cornugon2, ClosedEyes, Barbazu1, Osyluth1, AbishHit, Book, Chains, Kyton, Page, StyxDead, Crawling, BoatMan, Pass, Break, Sinking, Kyton1, Alley1Seen, Alley2Seen, Alley3Seen, AlleySeen, PitFiend, YetAnotherAlley, PitFiendGated, FuryCome, FuryHp, EvilTwinHp, FuryConfront
COLOR 15
ON ERROR GOTO Err1
RANDOMIZE TIMER
KEY 10, "fight"
KEY 9, "look"
KEY 8, "regenerate"
KEY 7, "health"
KEY 6, "talk to guide"
KEY 4, "talk to fiend"
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
Ha:
OPEN "data.baa" FOR INPUT AS #1
GOSUB LoadStuff
Arcanoloth = 0
GOSUB 5: GOTO 940
1 Time = Time + 1
IF Hp <= 0 THEN Killer = -1: Killer2$ = "an act of God": Dead
KEY 5, A$
IF Hp <= 10 THEN PRINT "Your vision is dimmed by blackness, like the inky night about to envelop you.": PRINT "Every second seems like a year, and taking a breath has become a concious": PRINT "effort.  You are dying."
IF ArcHp <= 40 AND ArcFight = 1 THEN
IF Level = 4 THEN PRINT "L'Ther runs out of the inn, looking behind you as he runs.  In seconds, he is": PRINT "gone.": ArcFight = 0: Arcanoloth = 1: CantRun = 0: ArcHp = 70
IF Level = 5 THEN PRINT "L'Ther suddenly vanishes.  You look around, but he is nowhere to be seen.": ArcFight = 0: Arcanoloth = 1: CantRun = 0: ArcHp = 70
IF Level = 6 AND ArcReveal = 0 THEN PRINT "L'Ther says to you in a deep voice, 'I grow tired of this cherade.'  With that,": PRINT "he grows about five inches.  His face elongates, until it seems to become like": PRINT "a jackal.  His fingers grow to claws.  You are suddenly facing an arcanoloth.": ArcReveal = 1
END IF
IF FuryHp <> 50 THEN
FHealing = FHealing + 1
IF FHealing >= 4 THEN FHealing = Healing - 4: FuryHp = FuryHp + 1
END IF
IF Hp <> MaxHp THEN
Healing = Healing + 1
IF Healing >= 4 THEN Healing = Healing - 4: Hp = Hp + 1: PRINT "You feel better."
END IF
Fights
IF Level = 4 THEN
IF RM <> 9 AND RM <> 3 AND RM <> 4 THEN
Explode = Explode + 1
IF Explode >= 5 THEN PRINT "Off in the distance, you can hear a volcano erupting.": Explode = Explode - 5
IF Explode <> 5 THEN PRINT "Fire crackles and dances across the sky."
IF RM = 1 THEN
Dmg = INT(RND * 6) + 2
IF Pass = 1 THEN Dmg = Dmg - 4
IF Dmg <= 0 THEN Dmg = 1
Hp = Hp - Dmg
PRINT "The fire licks at you, burning you and singing you.  ";
IF Guide = 5 THEN PRINT "L'Ther doesn't seem affected."
IF Guide = 3 THEN PRINT "Fury doesn't seem affected."
IF Guide = 1 THEN PRINT "Fury winces in pain as the": PRINT "fire licks at him.": FuryHp = FuryHp - 1
IF Guide <> 3 AND Guide <> 1 THEN PRINT ""
END IF
END IF
IF GoingToDie > 0 THEN
GoingToDie = GoingToDie - 1
IF GoingToDie = 3 THEN PRINT "'Elf, you have been ceased to amuse us.  Now you shall be thrown into the pit": PRINT "of lava,' says a disembodied voice."
IF GoingToDie = 2 THEN PRINT "Ten hamatula guards surround you, their pikes aimed at your back."
IF GoingToDie = 1 AND (Guide = 1 OR Guide = 3 OR Guide = 5) THEN
PRINT "The hamatula poke their pikes at ";
IF Guide <> 5 THEN PRINT "Fury, ";  ELSE PRINT "L'Ther, ";
PRINT "who falls into the lava pit.  He": PRINT "screams at first, but there is a huge flash of red light from within the pool": PRINT "of lava.  The hamatula look at you wickedly, and move in on you."
ELSE
PRINT "The hamatula surround you, poking at you with their pikes."
END IF
IF GoingToDie = 0 THEN PRINT "The hamatula push you into the pool of molten lava. Suddenly, a huge light": PRINT "flashes, and when you look up, you are somewhere else.": Level = 5: RM = 26: PRINT : PRINT : GOSUB 5
END IF
IF RM = 4 THEN
Torture = Torture + 1
PRINT "The kocrachon are sticking their claws into you";
IF SaidThis2 = 1 AND Immune = 0 THEN PRINT ", causing you great pain.  You": PRINT "cry out in pain."
IF Immune = 1 THEN PRINT ".  However, you feel nothing."
IF SaidThis2 = 0 AND Immune = 0 THEN PRINT ".  The torture will not be": PRINT "described further, as it is probably too gruesome to describe.": SaidThis2 = 1
Dmg = INT(RND * 10) + 1
Hp = Hp - Dmg
IF Hp <= 10 THEN PRINT "The kocrachon untie you from the steel table, and suddenly you are back in the": PRINT "prison.": RM = 3: GOSUB 5
END IF
IF RM = 3 THEN
Prison = Prison + 1
IF Prison >= 5 AND Hp > 10 THEN RM = 4: Prison = 0: PRINT "Suddenly, three beetle-like fiends appear before you.  'Elf.  It is time.'": PRINT "With that, you all vanish and reappear somewhere else.": GOSUB 5: PRINT "The kocrachon tie you to a steel table."
IF Prison = 20 THEN
PRINT "Suddenly, before you appear a troop of hamatula guards.  'Elf,' they say, 'You"
PRINT "are no longer entertaining.  No longer amusing to play with.  Since you won't"
PRINT "play by our rules, your stay has been reduced.  You are to be thrown into the"
PRINT "pit of the volcano.'  With that, one of them grabs you and all of you vanish."
PRINT "You reappear somewhere else.": RM = 15: GoingToDie = 4: GOSUB 5
END IF
END IF
END IF
IF Level = 6 THEN
IF Guide = 5 AND RM = 3 THEN Guide = 6
IF RM = 19 AND Guide = 6 THEN PRINT "L'Ther stumbles up to you.  'Finally!  I've escaped!' he says.": Guide = 5
IF RM <> 1 AND RM <> 5 AND RM <> 9 AND RM <> 13 AND RM <> 17 AND RM <> 18 AND RM <> 19 AND RM <> 20 AND RM <> 15 THEN
Bould = Bould + 1
IF Bould = 4 THEN PRINT "You can hear a clang from all around you, as the floor and walls shake for a": PRINT "brief second.": Bould = 0
IF Calling = 2 THEN
PRINT "You can hear rioting from the towers above you.  Screams are emerging from the"
PRINT "north of you."
END IF
IF Calling = 1 THEN PRINT "There is a steady clanging coming from the main gate, as if someone were": PRINT "knocking on the copper gate."
IF (RM = 6 OR RM = 10) AND Calling = 0 THEN
PRINT "Suddenly, you can hear a clanging from the main gate.  A nearby hamatula says,"
PRINT "'Answer the gates, Elf.'"
Calling = 1
END IF
END IF
IF RM = 1 AND Guide = 5 AND ArcFight = 0 THEN
PRINT "Suddenly, L'Ther cackles with glee.  'We've found it!  The way on!'  With that,"
PRINT "he says to you, 'Thank you so very much, Elf.  Finally, I can make it to"
PRINT "Grenpoli!  You are no longer of any use to me.  Prepare to die.'"
ArcFight = 1
Guide = 7
END IF
IF Guide = 7 THEN
FurCome = FurCome + 1
IF FurCome = 3 THEN
PRINT "Suddenly, at the mouth of the cavern appears a shadow.  Both you and L'Ther"
PRINT "look at the shadowy figure.  As it steps out of the shadows, you can see that"
PRINT "it is all dressed in white.  'I am Fury,' the figure says.  As it walks out"
PRINT "of the shadows you can see that it is Fury.  Fury draws his sword and attacks!"
Guide = 1
END IF
END IF
END IF
IF Level = 5 THEN
IF Guide = 5 AND ThugTalk = 0 AND FreakWormHole = 2 AND Thugs <> 0 THEN LtherCome = 4
GoingToDie = 0
IF RM = 7 AND FreakWormHole = 2 THEN PRINT "Suddenly, a freak wormhole opens up in the fabric of time and space itself.": PRINT "You are suddenly somewhere else.": RM = 12: PRINT : PRINT : PRINT : GOSUB 5: GOTO 940
IF RM = 9 AND FuryMad = 1 AND FuryBeg = 0 THEN
FuryBeg = 1
PRINT "An erinyes passes by, with a human in chains.  Looking at the human, you see"
PRINT "that it is Fury!  He moans and reaches out to you, while the erinyes laughs."
PRINT "'Come now, Fury.  Don't bother the nice man.'  Fury screams out in pain as the"
PRINT "erinyes pulls on a chain attached to Fury's neck.  Fury grabs a hold of your"
PRINT "tunic."
END IF
IF RM <> 12 THEN
Lightning = Lightning + 1
IF Lightning <> 5 THEN PRINT "The cold wind surrounds you, biting at you and chilling you to the bone."
IF Lightning >= 5 THEN PRINT "A flash of lightning plays across the sky high above you, illuminating the": PRINT "grey sky for a few short seconds.": Lightning = Lightning - 5
END IF
IF RM = 7 AND Thugs = 0 AND FreakWormHole = 2 THEN PRINT "As soon as those words are out of your mouth, a freak wormhole opens up in the": PRINT "fabric of space and time and suddenly you are somewhere else.": RM = 12: GOSUB 5
IF RM = 1 AND FreakWormHole = 0 THEN FreakWormHole = 1: PRINT "Suddenly, a freak wormhole opens in the fabric of space and time.  It envelops": PRINT "your sword, and then is gone as soon as it came.": Sword = 1
IF RM = 1 AND FreakWormHole = 1 THEN
PRINT "Suddenly, out of the shadows step four thugs.  One, an elf dressed in red,"
PRINT "walks up to you."
FreakWormHole = 2
ThugTalk = 4
END IF
IF ThugTalk > 0 AND RM <> 12 THEN
ThugTalk = ThugTalk - 1
IF ThugTalk = 3 THEN PRINT "'New to the city, are you, cutter?  Good.  You look Clueless.'"
IF ThugTalk = 2 THEN PRINT "'Around here, do you know what we do to Clueless berks?  We pound their heads": PRINT "in.  Their reward for being stupid.'"
IF ThugTalk = 1 THEN PRINT "'Do you want to have your head pounded in, cutter?  I hope you're ready.'"
IF ThugTalk = 0 THEN PRINT "'Come on, boys.  Let's get him,' says the elf in red, and the men in the shadows": PRINT "draw their swords."
END IF
IF RM = 26 OR RM = 27 OR RM = 22 OR RM = 23 OR RM = 24 THEN
IF RM = 26 THEN PRINT "The current drags you east.": RM = 27: GOSUB 5: GOTO EndCurrent
IF RM = 27 THEN PRINT "The current drags you northeast.": RM = 22: GOSUB 5: GOTO EndCurrent
IF RM = 22 THEN PRINT "The current drags you east.": RM = 23: GOSUB 5: GOTO EndCurrent
IF RM = 23 THEN PRINT "The current drags you east.": RM = 24: GOSUB 5: GOTO EndCurrent
IF RM = 24 THEN PRINT "The current drags you northeast, invoking a mystical link to a place that you": PRINT "have already been before.": RM = 26: GOSUB 5: GOTO EndCurrent
EndCurrent:
END IF
END IF
IF Guide = 1 THEN
Act = INT(RND * 4) + 1
IF Level = 4 AND RM = 4 THEN Act = 0
IF Level = 6 AND RM = 3 THEN Act = 0: GOTO SkipGuideSay
IF Level = 6 AND RM <> 3 AND FurySaidThisThing = 0 AND ArcFight = 0 THEN FurySaidThisThing = 1: PRINT "Fury appears from around a corner.  You see that he too is handcuffed.  'They": PRINT "got you too, did they?' he asks."
GOSUB GuideSay2
SkipGuideSay:
IF GoingToDie > 0 THEN Act = 5
IF GoingToDie <= 1 AND GoingToDie <> 0 THEN Act = 0
IF Level = 5 AND RM = 12 THEN Act = 0
IF GuideIncapacitated = 1 THEN Act = 0
IF Level = 5 AND (RM = 26 OR RM = 27 OR RM = 22 OR RM = 23 OR RM = 24) THEN Act = 6
IF Act = 1 THEN PRINT "Fury looks around benignly."
IF Act = 2 THEN PRINT "Fury hums a tune that you are totally unfamiliar with."
IF Act = 3 AND LetFree <> 1 THEN PRINT "Fury takes out his short sword and swings it around."
IF Act = 4 THEN PRINT "Fury looks up at the sky, and frowns."
IF Act = 5 THEN PRINT "Fury looks around with a far away glance, like he's about to be a martyr."
IF Act = 6 THEN PRINT "Fury struggles to keep up with the current."
END IF
IF Guide = 3 THEN
Act = INT(RND * 4) + 1
IF Level = 4 AND RM = 4 THEN Act = 0
IF Level = 5 AND RM = 12 THEN Act = 0
IF Level = 6 AND RM = 3 THEN Act = 0: GOTO SkipGuideSay2
IF Level = 6 AND RM <> 3 AND FurySaidThisThing = 0 AND ArcFight = 0 THEN FurySaidThisThing = 1: PRINT "Fury appears from around a corner.  You see that he too is handcuffed.  'They": PRINT "got you too, did they?' he asks."
GOSUB GuideSay2
SkipGuideSay2:
IF GoingToDie > 0 THEN Act = 5
IF Level = 5 AND (RM = 26 OR RM = 27 OR RM = 22 OR RM = 23 OR RM = 24) THEN Act = 6
IF GuideIncapacitated = 1 THEN Act = 0
IF GoingToDie <= 1 AND GoingToDie <> 0 THEN Act = 0
IF Act = 1 THEN PRINT "Fury looks around suspiciously, as if someone was watching him."
IF Act = 2 THEN PRINT "Fury takes out a block of wood and begins to whittle at it."
IF Act = 3 THEN PRINT "Fury takes out his short sword and swings it around."
IF Act = 4 THEN PRINT "Fury swivels around, but there's nobody behind him."
IF Act = 5 THEN PRINT "Fury looks around at the situation confidently."
IF Act = 6 THEN PRINT "Fury watches you from the narrow shoreline."
END IF
IF Guide = 5 THEN
GOSUB GuideSay2
Act = INT(RND * 4) + 1
IF Level = 4 AND RM = 4 THEN Act = 0
IF Level = 5 AND RM = 12 THEN Act = 0
IF GoingToDie > 0 THEN Act = 5
IF Level = 6 AND LTherHere3 = 0 THEN Act = 0
IF Level = 5 AND (RM = 26 OR RM = 27 OR RM = 22 OR RM = 23 OR RM = 24) THEN Act = 6
IF GoingToDie <= 1 AND GoingToDie <> 0 THEN Act = 0
IF Act = 1 THEN PRINT "L'Ther looks around arrogantly."
IF Act = 2 THEN PRINT "L'Ther hums a tune that you are totally unfamiliar with."
IF Act = 3 THEN PRINT "L'Ther flips a dagger up in his left hand and catches it in his right hand."
IF Act = 4 THEN PRINT "L'Ther looks up at the sky, and smiles."
IF Act = 5 THEN PRINT "L'Ther looks around at the situation hopelessly."
IF Act = 6 THEN PRINT "L'Ther hovers above the waters of the River Styx."
END IF
IF Xp >= 50 THEN
Xp = Xp - 50
MaxHp = MaxHp + 5
Hp = Hp + 5
PRINT "You suddenly feel more experienced."
END IF
IF FuryHp <= 0 AND Guide = 1 THEN PRINT "Fury gives out one last scream and falls to the ground of Baator, dead.": Guide = 4: FDeadRm = RM: FDeadLevel = Level
RETURN
5
IF Level = 4 THEN Phlegethos
IF Level = 5 THEN Stygia
IF Level = 6 THEN Malbolge
IF Level >= 7 OR Level <= 3 THEN GOTO Transfer
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
IF FDeadRm = RM AND FDeadLevel = Level AND Guide <> 3 THEN PRINT "Fury's dead body is here.  You stop to weep a bit for your dead friend."
IF FDeadRm = RM AND FDeadLevel = Level AND Guide = 3 THEN PRINT "The dead body of a human in white is here.  He looks a bit like Fury."
RETURN
940 GOSUB 1
941 KEY 5, A$: ReturnTo940 = 0: PRINT : INPUT "Baator>", A$: PRINT
IF A$ = "" THEN GOTO 940
IF A$ = "fight" AND LetFree = 1 THEN PRINT "Your hands are tied with handcuffs.": GOTO 940
IF A$ = "fight" AND Rope = 1 THEN PRINT "You're a little tied up right now.": GOTO 940
IF MID$(A$, 1, 5) = "break" AND Rope = 1 THEN PRINT "You snap the rope!  The rope flies back at the erinyes!": Rope = 0: GOTO 940
IF MID$(A$, 1, 5) = "break" AND LetFree = 1 THEN
PRINT "The handcuffs give you a bit of a shock, but they remain firm around your"
PRINT "wrists."
Hp = Hp - 3
IF Hp <= 0 THEN Killer2$ = "an electrical shock": Killer = 7: Dead
GOTO 940
END IF
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
IF A$ = "talk to guide" AND Level = 6 AND RM = 3 THEN PRINT "Your guide isn't here right now.": GOTO 940
IF A$ = "talk to guide" AND Guide = 5 AND Level = 6 AND (RM = 2 OR RM = 3 OR RM = 4 OR RM = 6 OR RM = 7 OR RM = 8 OR RM = 10 OR RM = 11 OR RM = 12 OR RM = 14 OR RM = 15 OR RM = 16) THEN PRINT "Your guide isn't here right now.": GOTO 940
IF A$ = "talk to guide" AND (Guide = 1 OR Guide = 3 OR Guide = 5) THEN GuideSay: GOTO 940
IF MID$(A$, 1, 4) = "talk" THEN GOSUB Talk
IF A$ = "regenerate" THEN
IF Hamatulas > 0 OR Hamatula1 = 1 OR Osyluths > 0 OR Osyluth2 = 1 OR Osyluth3 = 1 OR Barbazus > 0 OR Barbazu1 = 1 OR Abishai1 = 1 OR Abishais > 0 OR Cornugons > 0 OR Cornugon1 = 1 OR PitFiend = 7 THEN PRINT "Not now!  You're in a fight.": GOTO 941
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
PRINT "     Note:  Most places, characters, and monsters contained in this game are"
PRINT "      registered trademarks of TSR, inc and are derived from the adventure,"
PRINT "      'Fires of Dis.'": PRINT
PRINT "     Note for Idiots:  All characters, events, items, small animals, etc, in"
PRINT "      this story are ficticious.  Any resemblance to any real people, events,"
PRINT "      items, small animals, etc. is purely coincedental.  If any part of this"
PRINT "      game resembles any events in your life, you should start worrying.": PRINT
PRINT "     Freeware note:  This game is freeware.  If you payed for this game, you"
PRINT "      have been peeled by baatezu high-ups that are after your immortal soul."
PRINT "      The only chance you have now is to plan a daring raid into the heart of"
PRINT "      Baator, recover your jink, and slay a few baatezu high-ups."
GOTO 941
END IF
'IF CantRun = 1 AND (A$ = "n" OR A$ = "s" OR A$ = "e" OR A$ = "w" OR A$ = "ne" OR A$ = "nw" OR A$ = "se" OR A$ = "sw" OR A$ = "u" OR A$ = "d") THEN PRINT "Not now.": GOTO 940
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
IF Level = 6 THEN
IF MID$(A$, 1, 5) = "enter" AND RM = 1 AND ArcFight <> 1 THEN
PRINT "You leap through the circle of reddish light, and are suddenly somewhere else.": Level = 7
Choi = INT(RND * 4) + 1
IF Choi = 1 THEN RM = 3
IF Choi = 2 THEN RM = 11
IF Choi = 3 THEN RM = 15
IF Choi = 4 THEN RM = 23
GOSUB 5: GOTO 940
END IF
IF A$ = "d" AND RM = 18 THEN
Warned2 = Warned2 + 1
IF Warned2 = 1 THEN PRINT "As you try to descend, you step onto a wobbly rock.  You step off of it seconds": PRINT "before it plummets down the ravine to the south.": GOTO 940
IF Warned2 = 2 THEN PRINT "You step down, stepping onto an unstable rock formation.  Seconds after you": PRINT "jump off of the rock formation the rocks fall to the south, down into the": PRINT "ravine.": GOTO 940
IF Warned2 = 3 THEN PRINT "You quickly run down the rock formation, into a canyon.": RM = 17: GOSUB 5: GOTO 940
END IF
IF A$ = "n" AND RM = 20 THEN
Warned = Warned + 1
IF Warned = 1 THEN PRINT "As you step north, you step onto a wobbly rock.  You step off of it seconds": PRINT "before it plummets down the ravine to the east.": GOTO 940
IF Warned = 2 THEN PRINT "You step north, stepping onto an unstable rock formation.  Seconds after you": PRINT "jump off of the rock formation the rocks fall to the east, down into the ravine.": GOTO 940
IF Warned = 3 THEN PRINT "Don't say you weren't warned.  You step onto a set of rocks, which turn out to": PRINT "be unstable.  Deadly unstable.  Your body lands in the ravine, having fallen": PRINT "about a thousand feet over sharp and jagged rocks.": Killer1$ = "a treacherous path": Killer = 8: Dead
END IF
IF A$ = "u" AND (RM = 2 OR RM = 4 OR RM = 14 OR RM = 16) AND Calling = 2 THEN PRINT "Not now.  It's a bit dangerous up there right now.": GOTO 940
IF A$ = "s" AND LetFree = 0 AND RM = 3 THEN PRINT "The arcanoloth adviser to the pit fiend on the throne stops you.  'The being": PRINT "who calls himself the Elf, you must stay here until sentence is rendered.'": GOTO 940
IF A$ = "s" AND LetFree = 1 AND RM = 3 THEN PRINT "'Remember, Elf, as long as you wear those chains you are subject to any orders": PRINT "that any fiends ask of you.'": RM = RM + 4: GOSUB 5: GOTO 940
IF A$ = "n" AND RM = 7 THEN PRINT "You don't really want to go back in there.": GOTO 940
IF A$ = "fight" AND RM = 3 THEN PRINT "You launch yourself at the pit fiend in the silver chair, but the arcanoloth": PRINT "lifts up a hand and you are frozen in mid-air.  'We will finish this later,": PRINT "Elf.'": GOTO 940
IF A$ = "s" AND RM = 11 AND Mezz1 < 2 THEN PRINT "The mezzoloth stops you.  'Elf no leave copper palace!' it says, pointing at": PRINT "you with its pike.": GOTO 940
IF A$ = "s" AND RM = 11 AND Mezz1 >= 2 AND GateOpened = 1 THEN PRINT "You walk out of the copper citadel."
IF A$ = "s" AND RM = 11 AND Mezz1 >= 2 AND GateOpened = 0 THEN PRINT "The gates are closed.": GOTO 940
IF A$ = "fight" AND RM = 11 AND Mezz1 <= 1 THEN Mezz1 = 1: GOTO FightMezzoloth
IF A$ = "n" AND RM >= 5 AND RM <> 6 AND RM <> 8 AND RM <> 9 AND RM <> 10 AND RM <> 12 AND RM <> 13 AND RM <> 14 AND RM <> 16 AND RM <> 18 AND RM <> 19 AND RM <> 20 THEN RM = RM - 4: GOSUB 5: GOTO 940
IF A$ = "s" AND RM <> 2 AND RM <> 4 AND RM <> 5 AND RM <> 6 AND RM <> 8 AND RM <> 9 AND RM <> 10 AND RM <> 12 AND RM <= 13 THEN RM = RM + 4: GOSUB 5: GOTO 940
IF A$ = "e" AND RM = 9 THEN RM = 5: GOSUB 5: GOTO 940
IF (A$ = "w" OR A$ = "e") AND LTherHere3 = 0 AND RM = 19 AND Guide = 5 AND ArcFight <> 2 THEN PRINT "Fury stops you.": GOTO 940
IF (A$ = "w" OR A$ = "e") AND Arcanoloth > 0 AND RM = 19 AND Guide <> 5 AND ArcFight <> 2 THEN PRINT "L'Ther stops you.": GOTO 940
IF A$ = "fight" AND Guide <> 5 AND Arcanoloth > 0 AND RM = 19 AND ArcFight = 0 THEN ArcFight = 1: GOTO FightArc
IF A$ = "turn wheel" AND RM = 11 THEN
IF Mezz1 <> 2 AND Calling = 0 THEN PRINT "The mezzoloth stops you.  'Elf no turn wheel!  Elf no leave copper palace!' it": PRINT "exclaims.": GOTO 940
IF Mezz1 = 2 OR Mezz1 = 3 THEN PRINT "You turn the wheel, and the gates open.": GateOpened = 1: GOTO 940
IF Mezz1 = 0 AND Calling = 1 THEN
PRINT "You turn the wheel.  The copper gates open.  At the door is a stooped old crone."
PRINT "The pit fiend ruler of this citadel appears before the crone."
PRINT "'Hello, old woman.  What do you want?' asks the pit fiend."
PRINT "'I demand only food and shelter.' says the old crone."
PRINT "'Demand refused,' says the pit fiend.  ";
Choice4:
PRINT "'Kill her,' she says, pointing to you."
PRINT : PRINT "You say:": PRINT
PRINT "1.  'No.  She's done nothing to you.'"
PRINT "2.  'I can't.  My hands are tied.'"
PRINT "3.  'Yes, master.'"
Choice5: PRINT : INPUT ">", Att: PRINT
IF Att = 1 THEN PRINT "'You are foolish, mortal.  I will deal with you later.  Mezzoloth, kill her,'": PRINT "says the pit fiend.": GOTO BadThing
IF Att = 2 AND LetFree <> 2 THEN PRINT "The pit fiend waves her hand over your shackles.  They vanish.": LetFree = 2: GOTO Choice4
IF Att = 2 AND LetFree = 2 THEN PRINT "'You are an idiot, Elf.'": GOTO Choice4
IF Att = 3 THEN PRINT "'Good, mortal slave.  You are learning.'": GOTO BadThing
IF Att > 3 OR Att < 1 THEN GOTO Choice5
END IF
END IF
IF A$ = "w" AND RM = 5 THEN RM = 9: GOSUB 5: GOTO 940
IF A$ = "e" AND RM >= 18 AND RM <> 20 THEN RM = RM + 1: GOSUB 5: GOTO 940
IF A$ = "w" AND RM >= 19 THEN RM = RM - 1: GOSUB 5: GOTO 940
IF A$ = "sw" AND (RM = 4 OR RM = 11) THEN RM = RM + 3: GOSUB 5: GOTO 940
IF A$ = "nw" AND (RM = 7 OR RM = 16) THEN RM = RM - 5: GOSUB 5: GOTO 940
IF A$ = "se" AND (RM = 11 OR RM = 2) THEN RM = RM + 5: GOSUB 5: GOTO 940
IF A$ = "ne" AND (RM = 7 OR RM = 14) THEN RM = RM - 3: GOSUB 5: GOTO 940
IF A$ = "u" AND (RM = 2 OR RM = 4) THEN RM = RM + 4: GOSUB 5: GOTO 940
IF A$ = "d" AND (RM = 6 OR RM = 8) THEN RM = RM - 4: GOSUB 5: GOTO 940
IF A$ = "u" AND (RM = 14 OR RM = 16 OR RM = 13 OR RM = 19) THEN RM = RM - 4: GOSUB 5: GOTO 940
IF A$ = "d" AND (RM = 10 OR RM = 12 OR RM = 9 OR RM = 15) THEN RM = RM + 4: GOSUB 5: GOTO 940
IF A$ = "u" AND RM = 17 THEN RM = 18: GOSUB 5: GOTO 940
IF A$ = "d" AND RM = 18 THEN RM = 17: GOSUB 5: GOTO 940
END IF
IF Level = 5 THEN
IF FuryBeg = 1 AND RM = 9 AND (A$ = "n" OR A$ = "s" OR A$ = "e" OR A$ = "w" OR A$ = "ne" OR A$ = "nw" OR A$ = "se" OR A$ = "sw" OR A$ = "u" OR A$ = "d") THEN PRINT "Fury has grabbed a hold of your tunic.": GOTO 940
IF A$ = "fight" AND FuryBeg = 1 AND (Erinyes1 = 0 OR Erinyes1 = 3) THEN Erinyes1 = 1
IF MID$(A$, 1, 4) = "give" THEN
IF Ruby = 1 AND MID$(A$, 6) = "ruby" AND FuryBeg = 1 THEN
PRINT "You give the ruby to the erinyes.  The erinyes smiles, and releases Fury.": PRINT "She walks off into the crowd.": PRINT "Fury says, 'Thank you very much.'": Ruby = 2
FuryBeg = 2: FuryMad = 0
IF Guide = 5 THEN GOTO WhatAboutMe
Guide = 1
GOTO 940
END IF
IF Money = 1 AND MID$(A$, 6) = "money" THEN
PRINT "You give the sack to the erinyes.  The erinyes smiles, and releases Fury.": PRINT "She walks off into the crowd.": PRINT "Fury says, 'Thank you very much.'": Money = 2
FuryBeg = 2: FuryMad = 0
IF Guide = 5 THEN GOTO WhatAboutMe
Guide = 1
GOTO 940
END IF
END IF
IF MID$(A$, 1, 5) = "enter" AND RM = 28 THEN PRINT "You walk through the circle of shining light.  Suddenly, you can hear the": PRINT "mocking laughter behind you.  'Be ready Elf, yes, be ready,' says a voice from": PRINT "around you.  When you regain a sense of consiousness, you are somewhere else.": Level = 6: RM = 3: GOSUB 5: GOTO 940
IF A$ = "n" AND RM = 6 AND Escaped = 2 THEN PRINT "You walk through the doorway.  As you walk through the door and through a series": PRINT "of halls, you notice that the halls behind you are sealing themselves up.": PRINT "You're being trapped.": RM = 28: GOSUB 5: GOTO 940
IF A$ = "s" AND RM = 1 AND ThugTalk > 0 THEN PRINT "Not now.  A band of thugs is blocking the exit.": GOTO 940
IF A$ = "s" AND RM = 1 AND ThugTalk = 0 AND FreakWormHole = 2 AND Thugs <> 0 THEN PRINT "Not now.  A band of thugs is blocking the exit.": GOTO 940
IF (A$ = "n" OR A$ = "nw") AND RM = 21 AND Osyluth2 = 0 THEN PRINT "The osyluth says to you, 'Stop.  You're not allowed in here.'": GOTO 940
IF MID$(A$, 1, 4) = "give" AND ((Osyluth2 = 0 AND RM = 21) OR (Osyluth3 = 0 AND RM = 5)) AND ((Ruby = 1 AND MID$(A$, 6) = "ruby") OR (Money = 1 AND MID$(A$, 6) = "money")) THEN PRINT "'How dare you try to bribe me!' says the osyluth.  'I am un-bribable!' he says.'": GOTO 940
IF A$ = "e" AND RM = 5 AND Osyluth3 = 0 THEN PRINT "The osyluth says to you, 'Stop.  You're not allowed in there.'": GOTO 940
IF A$ = "fight" AND RM = 21 AND Osyluth2 <> 2 THEN GOTO FightOsyluth
IF A$ = "fight" AND RM = 5 AND Osyluth3 <> 2 THEN GOTO FightOsyluth
IF A$ = "fight" AND RM = 6 AND PitFiend2 <> 2 THEN GOTO FightPitFiend
IF MID$(A$, 1, 4) = "take" AND RM = 12 THEN PRINT "You grab your sword from the stupified man.  With that, another freak wormhole": PRINT "opens in the fabric of space and time as you are transported somewhere else.": Sword = 0: PRINT : PRINT : RM = 25: ThugTalk = 0: FreakWormHole = 3: GOSUB 5: GOTO 940
IF A$ = "ne" AND RM = 24 THEN PRINT "You follow the current.": RM = 26: GOSUB 5: GOTO 940
IF (A$ = "e" AND (RM = 26 OR RM = 22 OR RM = 23) OR (A$ = "ne" AND RM = 27)) THEN PRINT "You follow the current."
IF (A$ = "s" AND (RM = 21 OR RM = 16 OR RM = 17 OR RM = 18)) OR (A$ = "se" AND (RM = 17 OR RM = 18)) OR (A$ = "sw" AND (RM = 18 OR RM = 17)) THEN PRINT "You jump into the River Styx."
IF (A$ = "n" AND (RM = 22 OR RM = 23 OR RM = 24 OR RM = 27)) OR (A$ = "ne" AND (RM = 23 OR RM = 22)) OR (A$ = "nw" AND (RM = 23 OR RM = 24)) THEN PRINT "You drag yourself out of the current of the Styx."
IF A$ = "n" AND RM >= 7 AND RM <> 11 AND RM <> 12 AND RM <> 16 AND RM <> 18 AND RM <> 19 AND RM <> 26 AND RM <> 28 THEN RM = RM - 6: GOSUB 5: GOTO 940
IF A$ = "s" AND RM <> 10 AND RM <> 5 AND RM <> 6 AND RM <> 12 AND RM <> 13 AND RM <> 20 AND RM <= 21 THEN RM = RM + 6: GOSUB 5: GOTO 940
IF A$ = "e" AND RM >= 3 AND RM <> 6 AND RM <> 10 AND RM <> 11 AND RM <> 12 AND RM <> 13 AND RM <> 15 AND RM <> 18 AND RM <> 19 AND RM <> 20 AND RM <> 24 AND RM <> 25 AND RM <> 27 AND RM <> 28 THEN RM = RM + 1: GOSUB 5: GOTO 940
IF A$ = "w" AND RM >= 4 AND RM <> 7 AND RM <> 11 AND RM <> 12 AND RM <> 13 AND RM <> 14 AND RM <> 16 AND RM <> 19 AND RM <> 20 AND RM <> 24 AND RM <> 25 AND RM <> 27 AND RM <> 21 AND RM <> 28 THEN RM = RM - 1: GOSUB 5: GOTO 940
IF A$ = "ne" AND (RM = 8 OR RM = 15 OR RM = 16 OR RM = 19 OR RM = 21 OR RM = 22 OR RM = 23 OR RM = 27) THEN RM = RM - 5: GOSUB 5: GOTO 940
IF A$ = "sw" AND (RM = 3 OR RM = 10 OR RM = 11 OR RM = 14 OR RM = 16 OR RM = 17 OR RM = 18 OR RM = 22) THEN RM = RM + 5: GOSUB 5: GOTO 940
IF A$ = "nw" AND (RM = 23 OR RM = 24 OR RM = 21 OR RM = 18 OR RM = 15) THEN RM = RM - 7: GOSUB 5: GOTO 940
IF A$ = "se" AND (RM = 8 OR RM = 11 OR RM = 14 OR RM = 16 OR RM = 17) THEN RM = RM + 7: GOSUB 5: GOTO 940
END IF
IF Level = 4 THEN
IF A$ = "fight" AND RM = 4 THEN PRINT "You are a little strapped down right now.": GOTO 940
IF RM = 1 THEN
IF A$ = "n" THEN North = North + 1: GOSUB 5: GOTO 940
IF A$ = "s" AND North <> 0 THEN North = North - 1: GOSUB 5: GOTO 940
IF A$ = "e" AND East <> 0 THEN East = East - 1: GOSUB 5: GOTO 940
IF A$ = "e" AND East = 0 THEN PRINT "There's an infinitely long river of fire in that direction.": GOSUB 5: GOTO 940
IF A$ = "w" THEN East = East + 1: GOSUB 5: GOTO 940
END IF
IF (MID$(A$, 1, 5) = "break" OR MID$(A$, 1, 4) = "free" OR MID$(A$, 1, 5) = "untie") AND Slave = 0 AND RM = 16 THEN
PRINT "You untie the slave.  He cries out gleefully and runs away.  ";
Slave = 1
IF Erinyes1 <> 2 THEN PRINT "However, before": PRINT "him looms an erinyes.  She laughs at the slave, grabs him, and both of them": PRINT "vanish.": Erinyes1 = 2: GOTO 940
IF Erinyes1 = 2 THEN PRINT "Within seconds,": PRINT "he is gone.": GOTO 940
END IF
IF A$ = "n" AND RM = 6 AND Guide <> 3 AND Hamatula1 <> 2 THEN PRINT "A hamatula guard blocks the way.": GOTO 940
IF A$ = "n" AND RM = 6 AND Guide = 3 AND Hamatula1 <> 2 THEN PRINT "Fury nods at the hamatula, and you walk right by it."
IF A$ = "w" AND RM = 10 AND Guide = 3 THEN PRINT "Fury nods at the erinyes, and you walk right past her."
IF A$ = "w" AND RM = 10 AND Guide <> 3 AND Erinyes1 < 2 THEN PRINT "There is an erinyes blocking the entrance to the inn.": GOTO 940
IF GoingToDie = 0 AND ((A$ = "n" AND RM = 15) OR (A$ = "s" AND RM = 7) OR (A$ = "e" AND RM = 10) OR (A$ = "w" AND RM = 12)) THEN PRINT "You aren't that stupid.  While you've plunged into the swamps of Minauros, run": PRINT "through the Viper Woods, and dived into the Styx, you're not THAT dumb.": GOTO 940
IF GoingToDie > 0 AND ((A$ = "n" AND RM = 15) OR (A$ = "s" AND RM = 7) OR (A$ = "e" AND RM = 10) OR (A$ = "w" AND RM = 12)) THEN PRINT "You leap into the pool of lava (quite stupidly, I might add).  A flash of red": PRINT "light blinds you for a few seconds, but when you open your eyes, you are": PRINT "somewhere else.": Level = 5: RM = 26: PRINT : PRINT : GOSUB 5: GOTO 940
IF GoingToDie > 0 AND (A$ = "n" OR A$ = "s" OR A$ = "e" OR A$ = "w" OR A$ = "ne" OR A$ = "nw" OR A$ = "se" OR A$ = "sw" OR A$ = "u" OR A$ = "d") THEN PRINT "Not now.": GOTO 940
IF A$ = "n" AND RM >= 5 AND RM <> 7 AND RM <> 8 AND RM <> 9 AND RM <> 11 AND RM <> 13 AND RM <> 15 THEN RM = RM - 4: GOSUB 5: GOTO 940
IF A$ = "s" AND RM <> 3 AND RM <> 4 AND RM <> 5 AND RM <> 7 AND RM <> 9 AND RM <> 11 AND RM <= 12 THEN RM = RM + 4: GOSUB 5: GOTO 940
IF A$ = "e" AND RM >= 5 AND RM <> 8 AND RM <> 10 AND RM <> 11 AND RM <> 12 AND RM <> 13 AND RM <> 14 AND RM <> 16 THEN RM = RM + 1: GOSUB 5: GOTO 940
IF A$ = "w" AND RM >= 6 AND RM <> 9 AND RM <> 11 AND RM <> 12 AND RM <> 13 AND RM <> 14 AND RM <> 15 THEN RM = RM - 1: GOSUB 5: GOTO 940
IF MID$(A$, 1, 5) = "break" AND RM = 4 THEN PRINT "Your bonds strain a bit, but nothing happens.": GOTO 940
IF RM = 3 AND (A$ = "n" OR A$ = "s" OR A$ = "e" OR A$ = "w" OR A$ = "ne" OR A$ = "nw" OR A$ = "se" OR A$ = "sw") THEN PRINT "You pound into the padded wall, but nothing happens.": GOTO 940
IF A$ = "ne" AND (RM = 13 OR RM = 15) THEN RM = RM - 3: GOSUB 5: GOTO 940
IF A$ = "sw" AND (RM = 10 OR RM = 12) THEN RM = RM + 3: GOSUB 5: GOTO 940
IF A$ = "nw" AND (RM = 15 OR RM = 12) THEN RM = RM - 5: GOSUB 5: GOTO 940
IF A$ = "se" AND (RM = 10 OR RM = 7) THEN RM = RM + 5: GOSUB 5: GOTO 940
IF A$ = "fight" AND RM = 10 AND Erinyes1 = 0 THEN PRINT "The erinyes leaps to the attack!": Erinyes1 = 1: GOTO FightErinyes
IF A$ = "fight" AND RM = 6 AND Hamatula1 <> 1 AND Hamatula1 <> 2 THEN PRINT "The hamatula leaps to the attack!": GOTO FightHam
IF MID$(A$, 1, 4) = "give" THEN
IF MID$(A$, 6) = "money" AND Money = 1 AND Erinyes1 = 0 THEN PRINT "You hand the sack of money to the erinyes.  She nods, and steps aside.": Money = 2: Erinyes1 = 3: GOTO 940
IF MID$(A$, 6) = "ruby" AND Ruby = 1 AND Erinyes1 = 0 THEN PRINT "You hand the ruby to the erinyes.  She nods, and steps aside.": Ruby = 2: Erinyes1 = 3: GOTO 940
END IF
END IF
IF A$ = "fight" AND Osyluths > 0 THEN GOTO FightOsyluth
IF A$ = "fight" AND Hamatulas > 0 THEN GOTO FightHam
IF A$ = "fight" AND Hamatula1 = 1 THEN GOTO FightHam
IF A$ = "fight" AND Cornugons > 0 THEN GOTO FightCornugon
IF A$ = "fight" AND Abishais > 0 THEN GOTO FightAbishai
IF A$ = "fight" AND Barbazus > 0 THEN GOTO FightBarbazu
IF A$ = "fight" AND Erinyes1 = 1 THEN GOTO FightErinyes
IF A$ = "fight" AND Mezzoloths > 0 THEN GOTO FightMezzoloth
IF A$ = "fight" AND ArcFight = 1 THEN GOTO FightArc
IF A$ = "health" THEN
PRINT "You have"; Hp; "hit points remaining out of"; MaxHp; "maximum."
IF Guide = 1 THEN PRINT "Fury has"; FuryHp; "hit points remaining out of 50 maximum."
IF Guide = 3 THEN PRINT "Fury has"; FuryHp; "hit points remaining out of 90 maximum."
GOTO 941
END IF
IF A$ = "n" OR A$ = "s" OR A$ = "e" OR A$ = "w" OR A$ = "ne" OR A$ = "nw" OR A$ = "se" OR A$ = "sw" OR A$ = "u" OR A$ = "d" THEN PRINT "You can't go in that direction.": GOTO 940
PRINT "You can't do that.": GOTO 940
I: PRINT "You have:": PRINT
IF Money = 1 THEN PRINT "  A sack of money."
PRINT "  The official badge of the Athar."
IF Pass = 1 THEN PRINT "  An offical-looking pass to Baator."
IF Ruby = 1 THEN PRINT "  A large ruby, about the size of your fist."
IF Book = 1 THEN PRINT "  A thin black book entitled, 'On the Baatezu.'"
PRINT "  An iron cube, actually a shrunk cube of Acheron."
IF LetFree = 1 THEN PRINT "  You are wearing a set of glowing handcuffs around your wrists."
IF Sword = 0 THEN PRINT "  A blood-stained sword, stained red with the blood of countless fiends."
PRINT : GOTO 941
FightArc:
CantRun = 1
Hit = INT(RND * 2) + 1
IF Hit = 1 AND ArcReveal = 0 THEN PRINT "You swing out at the L'Ther with your sword, but you miss him!"
IF Hit = 1 AND ArcReveal = 1 THEN PRINT "You swing out at the arcanoloth with your sword, but you miss him!"
IF Hit = 2 THEN
Dmg = INT(RND * 8) + 4
ArcHp = ArcHp - Dmg
IF ArcReveal = 0 THEN PRINT "You slash out at L'Ther with your sword, and your sword connects!  He screams": PRINT "out in pain!"
IF ArcReveal = 1 THEN PRINT "You slash out at the arcanoloth with your sword, and your sword connects!  He": PRINT "screams out in pain!"
IF ArcHp <= 0 THEN
BEEP
PRINT "The arcanoloth screams out one last time as he is engulfed in a huge inferno."
PRINT "Its body explodes in a huge fiery blast in every direction.": ArcHp = 70
IF Guide <> 1 AND Guide <> 3 THEN PRINT "Fury walks up to you.  'I'll be your guide now.  You need me, where you're": PRINT "going.'": Guide = 1
Arcanoloth = 1: ArcFight = 2
CantRun = 0
Xp = Xp + 60
IF Level = 6 THEN LTherHere3 = 1
END IF
END IF
GOTO 940
FightErinyes:
CantRun = 1
Hit = INT(RND * 2) + 1
IF Hit = 1 THEN PRINT "You swing out at the erinyes with your sword, but you miss her!  She smiles and": PRINT "laughs a sweet laugh as she presses forward!"
IF Hit = 2 THEN
Dmg = INT(RND * 8) + 4
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
IF Level = 5 THEN
PRINT "Fury stand up.  'Thank you very much, Elf.  I'll be your guide again, now.'"
FuryBeg = 2: FuryMad = 0
IF Guide = 5 THEN GOTO WhatAboutMe
END IF
END IF
END IF
GOTO 940
FightOsyluth:
CantRun = 1
IF Level = 5 AND RM = 21 AND Osyluth2 <> 2 THEN Osyluth2 = 1
IF Level = 5 AND RM = 5 AND Osyluth3 <> 2 THEN Osyluth3 = 1
Hit = INT(RND * 2) + 1
IF Hit = 1 THEN PRINT "You swing out at the osyluth with your sword, but you miss it!"
IF Hit = 2 THEN
Dmg = INT(RND * 8) + 4
OsyluthHp = OsyluthHp - Dmg
PRINT "You swing out at the osyluth with your blood-stained sword, and you hit it!"
PRINT "It screams out in pain as it recoils from your hit!"
IF OsyluthHp <= 0 THEN
BEEP
PRINT "The osyluth falls back in pain as its body hits the floor of Baator and"
PRINT "explodes in a harmless ball of fire.": OsyluthHp = 15
CantRun = 0
IF Osyluths > 0 THEN Osyluths = Osyluths - 1
IF Osyluth2 <> 2 AND RM = 21 THEN Osyluth2 = 2
IF Osyluth3 <> 2 AND RM = 5 THEN Osyluth3 = 2
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
Dmg = INT(RND * 8) + 4
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
FightMezzoloth:
CantRun = 1
Hit = INT(RND * 2) + 1
IF Hit = 1 THEN PRINT "You swing out at the mezzoloth with your sword, but you miss it!"
IF Hit = 2 THEN
Dmg = INT(RND * 8) + 4
MezzHp = MezzHp - Dmg
PRINT "You swing out at the mezzoloth with your blood-stained sword, and you hit it!"
PRINT "It screams out in pain as it recoils from your hit!"
IF MezzHp <= 0 THEN
BEEP
PRINT "The mezzoloth falls back in pain as its body hits the floor of Baator and"
PRINT "explodes in a harmless ball of fire.": MezzHp = 40
CantRun = 0
IF Mezz1 = 1 THEN Mezz1 = 2
IF Mezzoloths > 0 THEN Mezzoloths = Mezzoloths - 1
MezzGated = 0: Xp = Xp + 25
END IF
END IF
GOTO 940
FightBarbazu:
CantRun = 1
Hit = INT(RND * 2) + 1
IF Hit = 1 THEN PRINT "You swing out at the barbazu with your sword, but you miss it!"
IF Hit = 2 THEN
Dmg = INT(RND * 8) + 4
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
Dmg = INT(RND * 8) + 4
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
IF Level = 4 AND (RM = 6 OR RM = 2) THEN
IF Hamatula1 = 0 THEN Hamatula1 = 1
IF Hamatula1 = 3 THEN Hamatula1 = 1
END IF
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
IF Level = 4 AND (RM = 6 OR RM = 2) AND Hamatula1 = 1 THEN Hamatula1 = 2: GOTO PastThis3
IF Hamatulas > 0 THEN Hamatulas = Hamatulas - 1
PastThis3:
END IF
END IF
GOTO 940
FightPitFiend:
IF PitFiend2 <> 1 THEN PitFiend2 = 1
CantRun = 1
Hit = INT(RND * 2) + 1
IF Hit = 1 THEN PRINT "You swing out at the pit fiend with your sword, but you miss it!  It laughs at": PRINT "you mockingly!"
IF Hit = 2 THEN
Dmg = INT(RND * 8) + 4
PitFiendHp = PitFiendHp - Dmg
PRINT "You slash out at the pit fiend with your sword, and your sword connects!  The"
PRINT "pit fiend howls out in rage!"
IF PitFiendHp <= 40 THEN
PRINT "'Stop,' says the pit fiend.  'You win.  Your might has made right.  If you'll"
PRINT "notice,' the pit fiend says, 'There's a door in the north wall.  It leads to a"
PRINT "portal to the next layer of Baator.  That is, of course, where you wanted to"
PRINT "go.'": CantRun = 0: Xp = Xp + 25: Escaped = 2
PitFiendHp = 90
PitFiend2 = 3
Hamatulas = 0
Osyluths = 0
Abishais = 0
Cornugons = 0
Barbazus = 0
END IF
END IF
GOTO 940
Err1: RESUME NEXT
Talk: Talking
IF ReturnTo940 = 1 THEN GOTO 940
IF ReturnTo940 = 2 THEN GOSUB 5: GOTO 940
RETURN
Save: INPUT "Enter filename:", N$
IF N$ = "" THEN N$ = "The_Elf"
SAV$ = N$ + ".bts"
OPEN SAV$ FOR OUTPUT AS #1
SaveStuff:
PRINT #1, Hp: PRINT #1, MaxHp: PRINT #1, Xp: PRINT #1, RM: PRINT #1, Level: PRINT #1, Time: PRINT #1, Sword: PRINT #1, Guide: PRINT #1, Cornugon1: PRINT #1, CornugonHp: PRINT #1, Crawling: PRINT #1, CornuGated: PRINT #1, Cornugons: PRINT #1, Ruby: PRINT #1, CabinetOpen: PRINT #1, Pass: PRINT #1, AbishGated: PRINT #1, Abishais: PRINT #1, AbishaiHp: PRINT #1, Abishai1: PRINT #1, Pool
PRINT #1, Money: PRINT #1, DoorOpen: PRINT #1, CantRun: PRINT #1, BoatMan: PRINT #1, Cur: PRINT #1, Current: PRINT #1, StyxDead: PRINT #1, Abishai2: PRINT #1, Cons: PRINT #1, Looked: PRINT #1, Cornugon2: PRINT #1, OsyGated: PRINT #1, Osyluths: PRINT #1, OsyluthHp: PRINT #1, Osyluth1: PRINT #1, BarbGated: PRINT #1, Barbazus: PRINT #1, BarbazuHp: PRINT #1, Barbazu1: PRINT #1, HamGated: PRINT #1, Hamatulas: PRINT #1, HamHp: PRINT #1, Hamatula1: PRINT #1, Break: PRINT #1, Book: PRINT #1, Page: PRINT #1, Kyton: PRINT #1, KytonHp: PRINT #1, Alley1Seen: PRINT #1, Alley2Seen: PRINT #1, Alley3Seen: PRINT #1, AlleySeen: PRINT #1, PitFiend: PRINT #1, Immune: PRINT #1, PitFiendHp: PRINT #1, PitFiendGated: PRINT #1, FuryCome: PRINT #1, FuryHp: PRINT #1, FDeadRm: PRINT #1, FDeadLevel: PRINT #1, SaidThis: PRINT #1, Sinking: PRINT #1, Arcanoloth: PRINT #1, EvilTwinHp: PRINT #1, FuryConfront: PRINT #1, GuideLeft: PRINT #1, Leave: PRINT #1, Rope: PRINT #1, North: PRINT #1, East: PRINT #1, ArcFight: PRINT #1, ArcReveal
PRINT #1, Slave: PRINT #1, SaidThis2: PRINT #1, Prison: PRINT #1, Torture: PRINT #1, GoingToDie: PRINT #1, FreakWormHole: PRINT #1, FuryMad: PRINT #1, ThugTalk: PRINT #1, LtherCome: PRINT #1, GuideIncapacitated: PRINT #1, TalkLTher: PRINT #1, FuryBeg: PRINT #1, Osyluth3: PRINT #1, Osyluth2: PRINT #1, Escaped: PRINT #1, PitFiend2: PRINT #1, PitFiendHit: PRINT #1, PitFiendGated: PRINT #1, LetFree: PRINT #1, Mezz1: PRINT #1, LTherHere3: PRINT #1, FurySaidThisThing: PRINT #1, FurCome: PRINT #1, Warned: PRINT #1, Warned2: PRINT #1, GateOpened: PRINT #1, Bould: PRINT #1, Calling: PRINT #1, ResistanceOpen: PRINT #1, RebelsKnow: PRINT #1, Mezzoloths: PRINT #1, OsyGuard: PRINT #1, PitFiendLord: PRINT #1, OsyGateGuard: PRINT #1, InLeague: PRINT #1, PalaceGuard
PRINT #1, CellDoor1Opened: PRINT #1, CellDoor2Opened: PRINT #1, CellDoor3Opened: PRINT #1, Stuff: PRINT #1, InWater: PRINT #1, Breath: PRINT #1, Gelugons: PRINT #1, GeluHp: PRINT #1, GeluGated: PRINT #1, Key1: PRINT #1, PastGelugons: PRINT #1, GuideSwitch: PRINT #1, Come: PRINT #1, GuideFound: PRINT #1, PitFiendReveal: PRINT #1, EvilTwinDead: PRINT #1, FuryCellNessus: PRINT #1, YourCellNessus: PRINT #1, InMaze: PRINT #1, Annoy: PRINT #1, EvilTwinAttack: PRINT #1, GuideAttack: PRINT #1, FightBaalzephon: PRINT #1, BaalHp: PRINT #1, EvilGuideHp
CLOSE #1: RETURN
Load:
INPUT "Enter filename:", N$
IF N$ = "" THEN N$ = "The_Elf"
SAV$ = N$ + ".bts"
OPEN SAV$ FOR INPUT AS #1
LoadStuff:
INPUT #1, Hp: INPUT #1, MaxHp: INPUT #1, Xp: INPUT #1, RM: INPUT #1, Level: INPUT #1, Time: INPUT #1, Sword: INPUT #1, Guide: INPUT #1, Cornugon1: INPUT #1, CornugonHp: INPUT #1, Crawling: INPUT #1, CornuGated: INPUT #1, Cornugons: INPUT #1, Ruby: INPUT #1, CabinetOpen: INPUT #1, Pass: INPUT #1, AbishGated: INPUT #1, Abishais: INPUT #1, AbishaiHp: INPUT #1, Abishai1: INPUT #1, Pool
INPUT #1, Money: INPUT #1, DoorOpen: INPUT #1, CantRun: INPUT #1, BoatMan: INPUT #1, Cur: INPUT #1, Current: INPUT #1, StyxDead: INPUT #1, Abishai2: INPUT #1, Cons: INPUT #1, Looked: INPUT #1, Cornugon2: INPUT #1, OsyGated: INPUT #1, Osyluths: INPUT #1, OsyluthHp: INPUT #1, Osyluth1: INPUT #1, BarbGated: INPUT #1, Barbazus: INPUT #1, BarbazuHp: INPUT #1, Barbazu1: INPUT #1, HamGated: INPUT #1, Hamatulas: INPUT #1, HamHp: INPUT #1, Hamatula1: INPUT #1, Break: INPUT #1, Book: INPUT #1, Page: INPUT #1, Kyton: INPUT #1, KytonHp: INPUT #1, Alley1Seen: INPUT #1, Alley2Seen: INPUT #1, Alley3Seen: INPUT #1, AlleySeen: INPUT #1, PitFiend: INPUT #1, Immune: INPUT #1, PitFiendHp: INPUT #1, PitFiendGated: INPUT #1, FuryCome: INPUT #1, FuryHp: INPUT #1, FDeadRm: INPUT #1, FDeadLevel: INPUT #1, SaidThis: INPUT #1, Sinking: INPUT #1, Arcanoloth: INPUT #1, EvilTwinHp: INPUT #1, FuryConfront: INPUT #1, GuideLeft: INPUT #1, Leave: INPUT #1, Rope: INPUT #1, North: INPUT #1, East: INPUT #1, ArcFight: INPUT #1, ArcReveal
INPUT #1, Slave: INPUT #1, SaidThis2: INPUT #1, Prison: INPUT #1, Torture: INPUT #1, GoingToDie: INPUT #1, FreakWormHole: INPUT #1, FuryMad: INPUT #1, ThugTalk: INPUT #1, LtherCome: INPUT #1, GuideIncapacitated: INPUT #1, TalkLTher: INPUT #1, FuryBeg: INPUT #1, Osyluth3: INPUT #1, Osyluth2: INPUT #1, Escaped: INPUT #1, PitFiend2: INPUT #1, PitFiendHit: INPUT #1, PitFiendGated: INPUT #1, LetFree: INPUT #1, Mezz1: INPUT #1, LTherHere3: INPUT #1, FurySaidThisThing: INPUT #1, FurCome: INPUT #1, Warned: INPUT #1, Warned2: INPUT #1, GateOpened: INPUT #1, Bould: INPUT #1, Calling: INPUT #1, ResistanceOpen: INPUT #1, RebelsKnow: INPUT #1, Mezzoloths: INPUT #1, OsyGuard: INPUT #1, PitFiendLord: INPUT #1, OsyGateGuard: INPUT #1, InLeague: INPUT #1, PalaceGuard
INPUT #1, CellDoor1Opened: INPUT #1, CellDoor2Opened: INPUT #1, CellDoor3Opened: INPUT #1, Stuff: INPUT #1, InWater: INPUT #1, Breath: INPUT #1, Gelugons: INPUT #1, GeluHp: INPUT #1, GeluGated: INPUT #1, Key1: INPUT #1, PastGelugons: INPUT #1, GuideSwitch: INPUT #1, Come: INPUT #1, GuideFound: INPUT #1, PitFiendReveal: INPUT #1, EvilTwinDead: INPUT #1, FuryCellNessus: INPUT #1, YourCellNessus: INPUT #1, InMaze: INPUT #1, Annoy: INPUT #1, EvilTwinAttack: INPUT #1, GuideAttack: INPUT #1, FightBaalzephon: INPUT #1, BaalHp: INPUT #1, EvilGuideHp
CLOSE #1: RETURN
Book: OnTheBaatezu: GOTO 940
GuideSay2:
IF Guide = 1 OR Guide = 3 THEN Guide$ = "Fury"
IF Guide = 5 THEN Guide$ = "L'Ther"
IF Level = 4 THEN
IF GuideSay1 = 0 AND (Guide = 1 AND RM = 10 AND (Erinyes = 0 OR Erinyes = 3)) THEN PRINT Guide$; " points at the erinyes.  'That's an erinyes.  Don't let her appearance fool": PRINT "you - they're as vicious as a barbazu, but more subtle.  You can bribe her, or": PRINT "kill her.  Your choice.'": GuideSay1 = 1: RETURN
IF GuideSay1 = 0 AND (Guide = 3 AND RM = 10 AND (Erinyes = 0 OR Erinyes = 3)) THEN PRINT Guide$; " points at the erinyes.  'That's an erinyes.  They're about the only decent": PRINT "fiends there are.  They are polite, corteous, and friendly.  It's a wonder": PRINT "they're even tolerated on Baator.'": GuideSay1 = 1: RETURN
IF GuideSay2 = 0 AND RM = 1 THEN PRINT "'Ah, the wonders of an infinite plain,' says "; Guide$; ".  'If distances on an infinite": PRINT "plane are an infinite distance from one another, it will take an infinite time": PRINT "to get from one place to another.'": GuideSay2 = 1: RETURN
IF GuideSay3 = 0 AND (Guide = 1 AND (RM = 2 OR (RM = 6 AND (Hamatula1 = 0 OR Hamatula1 = 3)))) THEN PRINT Guide$; " points to a hamatula.  'Another hamatala,' says "; Guide$; ".  'However, the": PRINT "hamatula on this level don't trust anyone.  Avoid them, if possible.'": GuideSay3 = 1: RETURN
IF GuideSay3 = 0 AND (Guide = 3 AND (RM = 2 OR (RM = 6 AND (Hamatula1 = 0 OR Hamatula1 = 3)))) THEN PRINT Guide$; " points to a hamatula.  'Another hamatala,' says "; Guide$; ".  'However, the": PRINT "hamatula on this level are actually decent.  They won't bother you if they see": PRINT "you with me.'": GuideSay3 = 1: RETURN
IF GuideSay4 = 0 AND (RM = 7 OR RM = 10 OR RM = 12 OR RM = 15) THEN PRINT Guide$; " points at the lake of lava.  'That's the center of Abriymoch.  Abriymoch": PRINT "is an active volcano, but fiends don't suffer any damage from fire and so they": PRINT "are unaffected when the volcano erupts.'": GuideSay4 = 1: RETURN
IF GuideSay5 = 0 AND RM = 16 AND Slave = 0 THEN PRINT Guide$; " nods at the slave.  'The slaves of Phlegthetos.  They have no hope of": PRINT "escape.  Even if they somehow do escape, an erinyes will most likely round them": PRINT "back up again.'": GuideSay5 = 1
END IF
IF Level = 5 THEN
IF GuideSay6 = 0 AND (RM = 25 OR RM = 19) AND Guide <> 1 THEN PRINT "'Ah.... refuse,' says "; Guide$; ".": GuideSay6 = 1: RETURN
IF GuideSay6 = 0 AND (RM = 25 OR RM = 19) AND Guide = 1 THEN PRINT "'This is digusting,' says "; Guide$; ".  You'd think that for such an organized": PRINT "race of fiends, they'd at least dispose of their waste better.'": GuideSay6 = 1: RETURN
IF GuideSay8 = 0 AND RM = 21 THEN
PRINT "'That's Tantalin, the main city on Stygia.  It's a place where might makes": PRINT "right.  Vicious street gangs roams the place, contesting for every inch of space": PRINT "they can claim as their own";
IF Guide <> 1 THEN PRINT ".  Gotta love it";
PRINT ",' says "; Guide$; ".": GuideSay8 = 1: RETURN
END IF
IF GuideSay7 = 0 AND Guide = 1 AND RM = 21 AND (Osyluth2 = 0 OR Osyluth2 = 3) THEN PRINT "'That osyluth guards the entrance to the city.  You can probably get past him": PRINT "pretty easy by stating your name and business to him,' says "; Guide$; ".": GuideSay7 = 1: RETURN
IF GuideSay7 = 0 AND Guide <> 1 AND RM = 21 AND (Osyluth2 = 0 OR Osyluth2 = 3) THEN PRINT "'That osyluth guards the entrance to the city.  He'll be real tough to get past": PRINT "peacefully,' says "; Guide$; ".": GuideSay7 = 1: RETURN
IF GuideSay9 = 0 AND Guide = 1 AND RM = 5 AND (Osyluth3 = 0 OR Osyluth3 = 3) THEN PRINT "'That osyluth guards the entrance to the throne room.  You can probably get past": PRINT "him pretty easy by stating your name and business to him,' says "; Guide$; ".": GuideSay9 = 1: RETURN
IF GuideSay9 = 0 AND Guide <> 1 AND RM = 5 AND (Osyluth3 = 0 OR Osyluth3 = 3) THEN PRINT "'That osyluth guards the entrance to the throne room.  He'll be real tough to": PRINT "get past peacefully,' says "; Guide$; ".": GuideSay9 = 1: RETURN
END IF
RETURN
Transfer:
OPEN "data.baa" FOR OUTPUT AS #1
GOSUB SaveStuff
Hi2:
IF Level <= 3 THEN RUN "baator2a.bas"
IF Level >= 7 THEN RUN "baator2c.bas"
WhatAboutMe:
PRINT "L'Ther looks at you as if you were insane.  'So,' he says to you, 'You don't"
PRINT "want me anymore.'"
What2: PRINT : PRINT "You say:": PRINT
PRINT "1.  'Oops.  I forgot about you.  Sorry, Fury, I have L'Ther here.'"
PRINT "2.  'Too bad.  Leave us be.'"
PRINT "3.  'Why can't I take both of you?'"
GuideTalk3: PRINT : INPUT ">", A: PRINT
IF A = 1 THEN PRINT "Fury says, 'I'll be back, L'Ther.  And then you shall pay.'  With that, he walks": PRINT "away.": GuideLeft = 1: GOTO 940
IF A = 2 THEN PRINT "L'Ther looks at you darkly.  But without any warning, he attacks Fury!": Guide = 1: ArcFight = 1: GOTO 940
IF A = 3 THEN PRINT "'It's either him or me,' says L'Ther.": GOTO What2
GOTO GuideTalk3
BadThing:
PRINT "Suddenly, the old crone raises her hand.  'You are an inept ruler,' she says"
PRINT "to the pit fiend.  'You attack before you ask questions.  You are impulsive."
PRINT "You are worthless as a pit fiend.  Questions first, attack later.  For your"
PRINT "folly, I shall rend the flesh from your bones and destroy this citadel.'"
IF LetFree = 2 THEN PRINT "'This elf shows great potential.  He manipulated you to get what he wanted -": PRINT "freedom.  As a reward, I revoke the contract between the Elf and you.'"
IF Att = 1 AND LetFree <> 2 THEN PRINT "'This elf disobeyed your orders.  However, he did not believe in wanton": PRINT "destruction, something I approve of.  As a result, you contract is null and": PRINT "void.'  With that, your shackles fall off your wrists.": LetFree = 2
IF Att = 3 AND LetFree <> 2 THEN PRINT "'This elf obeyed your orders.  He is a fool, but since he did not genuinely": PRINT "mean to harm me, I shall spare him.'"
PRINT "The old crone says, 'We shall talk about your punishment in the throne room.'"
PRINT "Suddenly, both the pit fiend and the old crone vanish.  Screams can be heard"
PRINT "from the north.  Upstairs you can hear the cries of hamatula, rioting among"
PRINT "themselves for rulership.  The mezzoloth stays where it is.  The gates swing"
PRINT "shut."
GateOpened = 0
Calling = 2
GOTO 940

SUB Dead
PRINT
IF NoShow = 0 THEN PRINT "You scream out in pain as you fall to the ground of Baator, dead.  About five": PRINT "months later the multiverse is run by the baatezu.  Some people think it had to": PRINT "do with an artifact that the Dark Eight stole from a dead planeswalker, but": PRINT "that's commonly regarded as a rumor."
NoWay2: PRINT :
INPUT "What is your name?", N$
IF N$ = "fight" THEN GOTO NoWay2
IF N$ = "" THEN N$ = "bean"
SAV$ = N$ + ".baa"
OPEN SAV$ FOR OUTPUT AS #1
IF Killer = -1 THEN Killer2$ = "the will of Hereg�l"
IF Killer = 1 THEN Killer2$ = "a cornugon"
IF Killer = 2 THEN Killer2$ = "an abishai"
IF Killer = 3 THEN Killer2$ = "an osyluth"
IF Killer = 4 THEN Killer2$ = "a barbazu"
IF Killer = 5 THEN Killer2$ = "a hamatula"
IF Killer = 6 THEN Killer2$ = "an erinyes"
PRINT #1, N$; " killed by "; Killer2$; " on ";
IF Level = 4 THEN PRINT #1, "Phlegethos, the fourth": PRINT #1, "layer of Baator."
IF Level = 5 THEN PRINT #1, "Stygia, the fifth layer": PRINT #1, "of Baator."
IF Level = 6 THEN PRINT #1, "Malbolge, the sixth layer": PRINT #1, "of Baator."
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
IF Killer = 7 THEN PRINT #1, "A note to you, cutter:  The handcuffs are not to be taken lightly."
IF Killer = 8 THEN PRINT #1, "A note to you, cutter:  You were warned."
CLOSE #1
COLOR 0: END
END SUB

SUB Fights
IF LtherCome >= 3 THEN
Hit = INT(RND * 2) + 1
END IF
IF ThugTalk = 0 AND FreakWormHole = 2 AND Thugs <> 0 THEN
IF LtherCome <> 3 THEN LtherCome = LtherCome + 1
IF LtherCome = 3 THEN PRINT "Suddenly, out of the shadows appears L'Ther.  He says to you, 'Need help?' and": PRINT "he grabs the elf in red by the throat.  He then snaps the elf's neck.": Thugs = Thugs - 1: ThugHp = 40: LtherCome = 4
ThugHit = INT(RND * 2) + 1
IF Thugs = 4 THEN Thug$ = "The elf in red": Sex$ = "he": DOSex$ = "his"
IF Thugs = 3 THEN Thug$ = "A human in red": Sex$ = "she": DOSex$ = "her"
IF Thugs = 2 THEN Thug$ = "A githyanki in red": Sex$ = "he": DOSex$ = "his"
IF Thugs = 1 THEN Thug$ = "A tiefling in red": Sex$ = "she": DOSex$ = "her"
IF (Guide = 1 OR Guide = 3) AND GuideIncapacitated = 0 THEN PRINT "One of the thugs slashes out at Fury, and he falls to the alley floor,": PRINT "unconsious.": GuideIncapacitated = 1
IF LtherCome >= 3 THEN
IF ThugHit = 1 THEN PRINT Thug$; " swings "; DOSex$; " sword at L'Ther, but he manages to duck aside!"
IF ThugHit = 2 THEN PRINT Thug$; " swings "; DOSex$; " sword at L'Ther, and "; Sex$; " hits him!"
LTherHit = INT(RND * 3) + 1
IF LTherHit = 1 THEN PRINT "L'Ther strikes out at a nearby thug, but the thug manages to dodge aside!"
IF LTherHit = 2 THEN PRINT "L'Ther strikes out at a nearby thug, and he hits the thug!": Dmg = INT(RND * 10) + 5: ThugHp = ThugHp - Dmg
IF LTherHit = 3 THEN PRINT "L'Ther strikes out at a nearby thug, and he manages to grab the thug's neck.": PRINT "With a simple snap, the thug falls to the ground, dead.": ThugHp = 40: Thugs = Thugs - 1
IF ThugHp <= 0 THEN PRINT "Another thug falls to the ground, dead.": Thugs = Thugs - 1: ThugHp = 40
END IF
IF LtherCome < 3 THEN
IF ThugHit = 1 THEN PRINT Thug$; " swings "; DOSex$; " sword at you, but you manage to duck aside!"
IF ThugHit = 2 THEN PRINT Thug$; " swings "; DOSex$; " sword at you, and "; Sex$; " hits you!": Dmg = INT(RND * 6) + 2: Hp = Hp - Dmg
END IF
IF Hp <= 0 THEN Killer2$ = "a band of thugs": Killer = 7: Dead
IF Thugs = 0 AND Guide = 5 THEN PRINT "L'Ther looks around confidently.  'Now THAT was amusing.'": Escaped = 1
IF Thugs = 0 AND Guide <> 5 THEN
PRINT "Fury moans, and gets up from the alley floor.  'Ouch,' he says, groaning."
PRINT "L'Ther looks around confidently.  'Now THAT was amusing.'": Escaped = 1: TalkLTher = 1: GuideIncapacitated = 0: Talking
END IF
END IF
IF Guide = 5 AND ArcFight = 1 AND RM = 19 AND Level = 6 THEN
FuryHit = INT(RND * 2) + 1
IF ArcReveal = 0 THEN Kill$ = "L'Ther": Sex$ = "he": Fiend = 7
IF ArcReveal = 1 THEN Kill$ = "the arcanoloth": Sex$ = "it": Fiend = 7
IF FuryHit = 1 THEN PRINT "Fury slashes out at "; Kill$; ", but he misses!"
IF FuryHit = 2 THEN
Dmg = INT(RND * 6) + 4
ArcHp = ArcHp - Dmg
PRINT "Fury slashes out at "; Kill$; ", and he hits!"
IF ArcHp <= 0 AND ArcReveal = 1 AND ArcFight = 1 THEN
PRINT "Fury brings his sword down on the arcanoloth, and it screams out one last time"
PRINT "before it explodes in a fiery inferno."
IF Guide <> 1 AND Guide <> 3 THEN PRINT "Fury walks up to you.  'I'll be your guide now.  You need me, where you're": PRINT "going.'": Guide = 1
Arcanoloth = 1: ArcFight = 2
END IF
END IF
END IF
IF Guide = 1 AND (((Erinyes1 = 1 OR Cornugon1 = 1 OR Hamatula1 = 1 OR Osyluth2 = 1 OR Mezzoloths > 0 OR ArcFight = 1)) OR (ArcFight = 1)) THEN
FuryHit = INT(RND * 2) + 1
IF Erinyes1 = 1 THEN Kill$ = "the erinyes": Sex$ = "she": Fiend = 1
IF Cornugon1 = 1 THEN Kill$ = "the cornugon": Sex$ = "it": Fiend = 2
IF Hamatula1 = 1 THEN Kill$ = "the hamatula": Sex$ = "it": Fiend = 3
IF Osyluth2 = 1 OR Osyluth3 = 1 THEN Kill$ = "the osyluth": Sex$ = "it": Fiend = 4
IF PitFiend2 = 1 THEN Kill$ = "the pit fiend": Sex$ = "it": Fiend = 6
IF ArcFight = 1 AND ArcReveal = 0 THEN Kill$ = "L'Ther": Sex$ = "he": Fiend = 7
IF Escaped = 0 AND LtherCome >= 3 AND Level = 5 AND RM = 1 THEN Kill$ = "L'Ther": Sex$ = "he": Fiend = 7
IF ArcFight = 1 AND ArcReveal = 1 THEN Kill$ = "the arcanoloth": Sex$ = "it": Fiend = 7
IF Mezzoloths > 0 THEN Kill$ = "a mezzoloth": Sex$ = "it": Fiend = 8
IF Mezz1 = 1 THEN Kill$ = "a mezzoloth": Sex$ = "it": Fiend = 8
IF FuryHit = 1 THEN PRINT "Fury slashes out at "; Kill$; ", but he misses!"
IF FuryHit = 2 THEN
Dmg = INT(RND * 6) + 4
IF Fiend = 1 THEN ErinyesHp = ErinyesHp - Dmg
IF Fiend = 2 THEN CornugonHp = CornugonHp - Dmg
IF Fiend = 3 THEN HamHp = HamHp - Dmg
IF Fiend = 4 THEN OsyluthHp = OsyluthHp - Dmg
IF Fiend = 6 THEN PitFiendHp = PitFiendHp - Dmg
IF Fiend = 7 THEN ArcHp = ArcHp - Dmg
IF Fiend = 8 THEN MezzHp = MezzHp - Dmg
PRINT "Fury slashes out at "; Kill$; ", and he hits!"
IF ArcHp <= 0 AND ArcReveal = 0 AND ArcFight = 1 THEN
PRINT "Fury brings his sword down on L'Ther, and he screams out one last time"
PRINT "before he explodes in a fiery inferno."
Arcanoloth = 1: ArcFight = 2
END IF
IF ArcHp <= 0 AND ArcReveal = 1 AND ArcFight = 1 THEN
PRINT "Fury brings his sword down on the arcanoloth, and it screams out one last time"
PRINT "before it explodes in a fiery inferno."
IF Guide <> 1 AND Guide <> 3 THEN PRINT "Fury walks up to you.  'I'll be your guide now.  You need me, where you're": PRINT "going.'": Guide = 1
Arcanoloth = 1: ArcFight = 2
END IF
IF Arcanoloth <> 1 AND (ErinyesHp <= 0 OR CornugonHp <= 0 OR HamHp <= 0 OR OsyluthHp <= 0 OR MezzHp <= 0 OR PitFiendHp <= 0) THEN
PRINT "Fury brings his sword down on "; Kill$; ", and "; Sex$; " screams out one last time"
PRINT "before it explodes in a fiery inferno."
IF Fiend = 1 THEN Erinyes1 = 2
IF Fiend = 2 THEN Cornugon1 = 2
IF Fiend = 3 THEN Hamatula1 = 2
IF Fiend = 4 THEN Osyluth2 = 2
IF Fiend = 5 THEN Osyluth3 = 2
IF Fiend = 6 THEN PitFiend2 = 2
IF Fiend = 8 THEN Mezzoloths = Mezzoloths - 1
END IF
END IF
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
IF Osyluth2 = 1 THEN
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
IF Hamatula1 = 1 OR Hamatula2 = 1 THEN
Hit = INT(RND * 5) + 1
IF HamGated = 0 AND HamHp <= 5 THEN Hit = 5
IF Hit = 5 AND HamGated = 1 THEN Hit = INT(RND * 4) + 1
IF Hit = 1 AND Immune = 0 THEN PRINT "The hamatula swings it's claw at you, hitting!": Hp = Hp - 4
IF Hit = 1 AND Immune = 1 THEN PRINT "The hamatula swings it's claw at you, hitting!  However, you don't feel anything.": Hp = Hp - 4
IF Hit = 2 THEN PRINT "The hamatula swings it's claw at you, but you manage to duck aside!"
IF Hit = 3 AND Immune = 0 THEN PRINT "The hamatula bites you!": Hp = Hp - 6
IF Hit = 3 AND Immune = 1 THEN PRINT "The hamatula bites you, but you don't feel anything!": Hp = Hp - 6
IF Hit = 4 THEN PRINT "The hamatula reaches at you to bite you, but you duck to one side!"
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
IF Hp <= 0 THEN Killer1$ = "a hamatula": Killer = 5: Dead
END IF
IF Erinyes1 = 1 THEN
Hit = INT(RND * 4) + 1
IF Rope = 1 THEN PRINT "The erinyes stabs you with her dagger.  Being bound, you cannot dodge!": Hp = Hp - 4: Hit = 0
IF Hit = 1 THEN PRINT "The erinyes pulls out a rope and hurls it at you.  The rope seems to take on a": PRINT "life of its own as it binds you tight!": Rope = 1
IF Hit = 2 THEN PRINT "The erinyes swings her dagger out at you, but you manage to dodge it!"
IF Hit = 3 THEN PRINT "The erinyes swings her dagger at you, and she hits you!": Hp = Hp - 4
IF Hit = 4 AND ErinyesGated = 1 THEN
PRINT "The erinyes laughs a sweet laugh, and vanishes from sight.": Erinyes1 = 4
IF Level = 5 THEN PRINT "Fury gets up.  'Thank you very much.  I can help you now,' he says.": FuryBeg = 2: FuryMad = 0
IF Guide = 5 THEN
PRINT "L'Ther looks at you as if you were insane.  'So,' he says to you, 'You don't"
PRINT "want me anymore.'"
What3: PRINT : PRINT "You say:": PRINT
PRINT "1.  'Oops.  I forgot about you.  Sorry, Fury, I have L'Ther here.'"
PRINT "2.  'Too bad.  Leave us be.'"
PRINT "3.  'Why can't I take both of you?'"
GuideTalk4: PRINT : INPUT ">", A: PRINT
IF A > 3 OR A < 1 THEN GOTO GuideTalk4
IF A = 1 THEN PRINT "Fury says, 'I'll be back, L'Ther.  And then you shall pay.'  With that, he walks": PRINT "away.": GuideLeft = 1: GOTO EndFights
IF A = 2 THEN PRINT "L'Ther looks at you darkly.  But without any warning, he attacks Fury!": Guide = 1: ArcFight = 1: GOTO EndFights
IF A = 3 THEN PRINT "'It's either him or me,' says L'Ther.": GOTO What3
END IF
END IF
IF Hit = 4 AND ErinyesGated = 0 THEN
ErinyesGated = 1
Gate = INT(RND * 100) + 1
IF Gate <= 35 THEN
Bar = INT(RND * 4) + 1
Barbazus = Barbazus + Bar
IF Bar = 1 THEN PRINT "The erinyes concentrates for a few seconds, and a barbazu appears!"
IF Bar > 1 THEN PRINT "The erinyes concentrates for a few seconds, and"; Bar; "barbazu appears!"
ELSE
PRINT "The erinyes concentrates for a few seconds, but nothing happens!"
END IF
END IF
IF Hp <= 0 THEN Killer1$ = "an erinyes": Killer = 6: Dead
END IF
IF ArcFight = 1 THEN
IF ArcReveal = 0 THEN
IF Level = 5 AND RM = 9 AND Guide = 1 THEN
Hit = INT(RND * 2) + 1
IF Hit = 1 THEN PRINT "L'Ther swings out at Fury with a short sword, but he misses!"
IF Hit = 2 THEN PRINT "L'Ther swings out at Fury with a short sword, and he hits!": Dmg = INT(RND * 6) + 4: FuryHp = FuryHp - Dmg
ELSE
IF Guide <> 1 THEN Hit = INT(RND * 2) + 1
IF Guide = 1 THEN Hit = INT(RND * 4) + 1
IF Hit = 1 THEN PRINT "L'Ther swings out at you with a short sword, but he misses!"
IF Hit = 2 THEN PRINT "L'Ther swings out at you with a short sword, and he hits!": Dmg = INT(RND * 6) + 4: Hp = Hp - Dmg
IF Hit = 3 THEN PRINT "L'Ther swings out at Fury with a short sword, but he misses!"
IF Hit = 4 THEN PRINT "L'Ther swings out at Fury with a short sword, and he hits!": Dmg = INT(RND * 6) + 4: FuryHp = FuryHp - Dmg
END IF
ELSE
Hit = INT(RND * 5) + 1
IF ArcGated = 1 THEN Hit = INT(RND * 4) + 1
IF Hit = 1 THEN PRINT "The arcanoloth swings a claw out at you, but it misses you!"
IF Hit = 2 THEN PRINT "The arcanoloth swings a claw out at you, and it hits you!": Dmg = INT(RND * 4) + 1: Hp = Hp - Dmg
IF Hit = 3 THEN PRINT "The arcanoloth bites you, but you dodge to one side!"
IF Hit = 4 THEN PRINT "The arcanoloth bites you!": Dmg = INT(RND * 6) + 1: Hp = Hp - Dmg: Dmg = INT(RND * 6) + 1: Hp = Hp - Dmg
IF Hit = 5 THEN
ArcGated = 1
Gate = INT(RND * 100) + 1
IF Gate <= 40 THEN
Mezz = INT(RND * 6) + 1
Mezzoloths = Mezzoloths + Mezz
IF Mezz = 1 THEN PRINT "The arcanoloth concentrates for a few seconds, and a humanoid-looking insect": PRINT "with long, lanky arms and legs and wide, armored skulls with sharp claws and": PRINT "glowing red eyes.  A mezzoloth."
IF Mezz > 1 THEN PRINT "The arcanoloth concentrates for a few seconds, and"; Mezz; " humanoid-looking insects": PRINT "with long, lanky arms and legs and wide, armored skulls with sharp claws and": PRINT "glowing red eyes.  Great.  Mezzoloths."
ELSE
PRINT "The arcanoloth concentrates for a few seconds, but nothing happens!"
END IF
END IF
END IF
END IF
IF Mezz1 = 1 THEN
Hit = INT(RND * 3) + 1
IF MezzGated = 1 THEN Hit = INT(RND * 2) + 1
IF Hit = 1 THEN PRINT "The mezzoloth swings its pike out at you, but it misses!"
IF Hit = 2 THEN PRINT "The mezzoloth swings its pike out at you, and it hits you!": Dmg = INT(RND * 8): Hp = Hp - Dmg
IF Hit = 3 THEN
MezzGated = 1
Gate = INT(RND * 100) + 1
IF Gate <= 40 THEN
Mezz = INT(RND * 4) + 1
Mezzoloths = Mezzoloths + Mezz
IF Mezz = 1 THEN PRINT "The mezzoloth concentrates for a few seconds, and another mezzoloth appears!"
IF Mezz > 1 THEN PRINT "The mezzoloth concentrates for a few seconds, and"; Mezz; "more mezzoloths appear!"
ELSE
PRINT "The mezzoloth concentrates for a few seconds, but nothing happens!"
END IF
END IF
END IF
IF Mezzoloths > 0 THEN
MezzHit = Mezzoloths
MezHit:
MezzHit = MezzHit - 1
Hit = INT(RND * 3) + 1
IF MezzGated = 1 THEN Hit = INT(RND * 2) + 1
IF Hit = 1 THEN PRINT "A mezzoloth swings its pike out at you, but it misses!"
IF Hit = 2 THEN PRINT "A mezzoloth swings its pike out at you, and it hits you!": Dmg = INT(RND * 8): Hp = Hp - Dmg
IF Hit = 3 THEN
MezzGated = 1
Gate = INT(RND * 100) + 1
IF Gate <= 40 THEN
Mezz = INT(RND * 4) + 1
Mezzoloths = Mezzoloths + Mezz
IF Mezz = 1 THEN PRINT "A mezzoloth concentrates for a few seconds, and another mezzoloth appears!"
IF Mezz > 1 THEN PRINT "A mezzoloth concentrates for a few seconds, and"; Mezz; "more mezzoloths appear!"
ELSE
PRINT "A mezzoloth concentrates for a few seconds, but nothing happens!"
END IF
END IF
IF MezzHit <> 0 THEN GOTO MezHit
END IF
IF PitFiend2 = 1 THEN
Hit = INT(RND * 13) + 1
IF Hit = 13 AND PitFiendGated = 1 THEN Hit = INT(RND * 12) + 1
IF Guide <> 1 AND Guide <> 3 THEN Hit = INT(RND * 7) + 1
IF Hit = 7 AND Guide <> 1 AND Guide <> 3 AND PitFiendGated = 0 THEN Hit = 13
IF Hit = 7 AND Guide <> 1 AND Guide <> 3 AND PitFiendGated = 1 THEN Hit = INT(RND * 6) + 1
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
IF Hp <= 0 THEN Killer2$ = "a pit fiend": Killer = 10: Dead
END IF
GOTO EndFights
EndFights:
END SUB

SUB GuideSay
IF Guide = 1 OR Guide = 3 THEN Guide$ = "Fury"
IF Guide = 5 THEN Guide$ = "L'Ther"
IF Level = 4 THEN
IF Guide = 1 AND RM = 10 AND (Erinyes = 0 OR Erinyes = 3) THEN PRINT Guide$; " points at the erinyes.  'That's an erinyes.  Don't let her appearance fool": PRINT "you - they're as vicious as a barbazu, but more subtle.  You can bribe her, or": PRINT "kill her.  Your choice.'": GOTO EndSub
IF (Guide = 3 OR Guide = 5) AND RM = 10 AND (Erinyes = 0 OR Erinyes = 3) THEN PRINT Guide$; " points at the erinyes.  'That's an erinyes.  They're about the only decent": PRINT "fiends there are.  They are polite, corteous, and friendly.  It's a wonder": PRINT "they're even tolerated on": PRINT "Baator.'": GOTO EndSub
IF RM = 1 THEN PRINT "'Ah, the wonders of an infinite plain,' says "; Guide$; ".  'If distances on an infinite": PRINT "plane are an infinite distance from one another, it will take an infinite time": PRINT "to get from one place to another.'": GOTO EndSub
IF Guide = 1 AND (RM = 2 OR (RM = 6 AND (Hamatula1 = 0 OR Hamatula1 = 3))) THEN PRINT Guide$; " points to a hamatula.  'Another hamatala,' says "; Guide$; ".  'However, the": PRINT "hamatula on this level don't trust anyone.  Avoid them, if possible.'": GOTO EndSub
IF Guide = 3 AND (RM = 2 OR (RM = 6 AND (Hamatula1 = 0 OR Hamatula1 = 3))) THEN PRINT Guide$; " points to a hamatula.  'Another hamatala,' says "; Guide$; ".  'However, the": PRINT "hamatula on this level are actually decent.  They won't bother you if they see": PRINT "you with me.'": GOTO EndSub
IF Guide = 5 AND (RM = 2 OR (RM = 6 AND (Hamatula1 = 0 OR Hamatula1 = 3))) THEN PRINT Guide$; " points to a hamatula.  'Another hamatala,' says "; Guide$; ".  'However, the": PRINT "hamatula on this level are actually decent.'": GOTO EndSub
IF RM = 7 OR RM = 10 OR RM = 12 OR RM = 15 THEN PRINT Guide$; " points at the lake of lava.  'That's the center of Abriymoch.  Abriymoch": PRINT "is an active volcano, but fiends don't suffer any damage from fire and so they": PRINT "are unaffected when the volcano erupts.'": GOTO EndSub
IF RM = 3 THEN PRINT "'Great,' says "; Guide$; ".  'How are we going to get out of here?' he asks,": PRINT "rhetorically.": GOTO EndSub
IF RM = 4 OR (GoingToDie <= 1 AND GoingToDie <> 0) THEN PRINT "You forget.  "; Guide$; " isn't here.": GOTO EndSub
IF RM = 16 AND Slave = 0 THEN PRINT Guide$; " nods at the slave.  'The slaves of Phlegthetos.  They have no hope of": PRINT "escape.  Even if they somehow do escape, an erinyes will most likely round them": PRINT "back up again.'": GuideSay5 = 1
END IF
IF Level = 5 THEN
IF (RM = 25 OR RM = 19) AND Guide <> 1 THEN PRINT "'Ah.... refuse,' says "; Guide$; ".": GOTO EndSub
IF (RM = 25 OR RM = 19) AND Guide = 1 THEN PRINT "'This is digusting,' says "; Guide$; ".  You'd think that for such an organized": PRINT "race of fiends, they'd at least dispose of their waste better.'": GOTO EndSub
IF RM = 21 THEN
PRINT "'That's Tantalin, the main city on Stygia.  It's a place where might makes": PRINT "right.  Vicious street gangs roams the place, contesting for every inch of space": PRINT "they can claim as their own";
IF Guide <> 1 THEN PRINT ".  Gotta love it";
PRINT ",' says "; Guide$; ".": GOTO EndSub
END IF
IF GuideSay7 = 0 AND Guide = 1 AND RM = 21 AND (Osyluth2 = 0 OR Osyluth2 = 3) THEN PRINT "'That osyluth guards the entrance to the city.  You can probably get past him": PRINT "pretty easy by stating your name and business to him,' says "; Guide$; ".": GOTO EndSub
IF GuideSay7 = 0 AND Guide <> 1 AND RM = 21 AND (Osyluth2 = 0 OR Osyluth2 = 3) THEN PRINT "'That osyluth guards the entrance to the city.  He'll be real tough to get past": PRINT "peacefully,' says "; Guide$; ".": GOTO EndSub
IF GuideSay9 = 0 AND Guide = 1 AND RM = 5 AND (Osyluth3 = 0 OR Osyluth3 = 3) THEN PRINT "'That osyluth guards the entrance to the throne room.  You can probably get past": PRINT "him pretty easy by stating your name and business to him,' says "; Guide$; ".": GOTO EndSub
IF GuideSay9 = 0 AND Guide <> 1 AND RM = 5 AND (Osyluth3 = 0 OR Osyluth3 = 3) THEN PRINT "'That osyluth guards the entrance to the throne room.  He'll be real tough to": PRINT "get past peacefully,' says "; Guide$; ".": GOTO EndSub
END IF
PRINT "'I don't have much to say here,' says "; Guide$; ".": ReturnTo940 = 1
EndSub:
END SUB

SUB Malbolge
ON RM GOTO Portal2, NWTowerBase, ThroneRm, NETowerBase, SecretCave, NWTowerTop, Hallway, NETowerTop, CanyonView, SWTowerTop, Hallway2, SETowerTop, CanyonN, SWTowerBase, CopperGates, SETowerBase, CanyonS, Rocks, MountainSlopes, Rocks2
NWTowerBase: PRINT "Base of the Northwest Tower": PRINT
PRINT "You are at the base of the northwest tower.  Torches line the walls here.  A"
PRINT "set of stairs leads up from here, while there is a hall to the southeast."
GOTO EndMalbolge
ThroneRm: PRINT "Throne Room": PRINT
PRINT "You are in a large, ornate room.  There is a grand and ornate silver chair in"
PRINT "the center of the room, upon which sits a large pit fiend.  Next to the pit"
PRINT "fiend is an arcanoloth wearing a set of spectacles.  There is a door to the"
PRINT "south."
GOTO EndMalbolge
NETowerBase: PRINT "Base of Northeast Tower": PRINT
PRINT "You are at the base of the northeast tower.  Torches line the walls here.  A"
PRINT "set of stairs leads up from here, while there is a hall to the southwest."
GOTO EndMalbolge
SecretCave: PRINT "Inside Cave": PRINT
PRINT "You are inside a cave.  To the north is a large cavern, out of which comes a"
PRINT "reddish light.  To the west is an exit from the cave, out into the daylight."
GOTO EndMalbolge
NWTowerTop: PRINT "Top of Northwest Tower": PRINT
PRINT "You are at the top of the northwest tower.  A squadron of hamatula is here,"
PRINT "looking out onto the landscape, which consists of mountain ridge after mountain"
PRINT "ridge.  A set of stairs leads down from here.  In the landscape you can see a"
PRINT "canyon.  On the other side of the canyon you can see a cave, which is glowing"
PRINT "with a reddish light."
GOTO EndMalbolge
Hallway2: PRINT "Hallway, South": PRINT
PRINT "You are in the south hallway of the copper citadel.  There are doorways to the"
PRINT "southeast and southwest.  Tapestries here depict the copper citadel's"
PRINT "construction and how it has repelled invasion after invasion from outsiders."
PRINT "To the south is a huge copper gate.  Next to it is a wheel, attached to a chain."
IF GateOpened = 0 THEN PRINT "The gates are closed."
IF GateOpened = 1 THEN PRINT "The gates have been opened, letting the reddish light from outside to stream in."
IF Mezz1 = 0 OR Mezz1 = 3 THEN PRINT "There is a mezzoloth here, watching the door."
GOTO EndMalbolge
Hallway: PRINT "Hallway, North": PRINT
PRINT "You are in the north hallway of the copper citadel.  There are doorways to the"
PRINT "north, northeast, and northwest.  The hall continues to the south from here."
PRINT "Tapestries here depict the glory of the pit fiend ruler of this citadel."
GOTO EndMalbolge
NETowerTop: PRINT "Top of Northeast Tower": PRINT
PRINT "You are at the top of the northeast tower.  A squadron of hamatula is here,"
PRINT "looking out onto the landscape, which consists of mountain ridge after mountain"
PRINT "ridge.  A set of stairs leads down from here."
GOTO EndMalbolge
CanyonView: PRINT "Canyon View": PRINT
PRINT "From here, you can see the entire canyon that you have climbed through to the"
PRINT "south.  A path leads down from here, into said canyon.  To the east is an"
PRINT "opening in the rocky walls.  From inside the cave comes a ruddy light."
GOTO EndMalbolge
SWTowerTop: PRINT "Top of Southwest Tower": PRINT
PRINT "You are at the top of the southwest tower.  A squadron of hamatula is here,"
PRINT "looking out onto the landscape, which consists of mountain ridge after mountain"
PRINT "ridge.  A set of stairs leads down from here.  In the landscape you can see a"
PRINT "canyon.  On the other side of the canyon you can see a cave, which is glowing"
PRINT "with a reddish light."
GOTO EndMalbolge
SETowerTop: PRINT "Top of Southeast Tower": PRINT
PRINT "You are at the top of the southeast tower.  A squadron of hamatula is here,"
PRINT "looking out onto the landscape, which consists of mountain ridge after mountain"
PRINT "ridge.  A set of stairs leads down from here."
GOTO EndMalbolge
CanyonN: PRINT "Canyon, North": PRINT
PRINT "You are at the north end of the canyon.  To the south is the south end of the"
PRINT "canyon.  There is a path leading up from here, out of the canyon."
GOTO EndMalbolge
SWTowerBase: PRINT "Base of Southwest Tower": PRINT
PRINT "You are at the base of the southwest tower.  Torches line the walls here.  A"
PRINT "set of stairs leads up from here, while there is a hall to the northeast."
GOTO EndMalbolge
CopperGates: PRINT "Outside Copper Gates": PRINT
PRINT "You are outside of the copper gates that lead into the copper citadel.  From"
PRINT "here, a path descends into the mountain ridges of this land.  To the north are"
PRINT "a set of closed gates fashioned out of copper."
GOTO EndMalbolge
SETowerBase: PRINT "Base of Southeast Tower": PRINT
PRINT "You are at the base of the southeast tower.  Torches line the walls here.  A"
PRINT "set of stairs leads up from here, while there is a hall to the northwest."
GOTO EndMalbolge
CanyonS: PRINT "Canyon, South": PRINT
PRINT "You are at the south end of a canyon.  Above you is a path of unstable rocks."
PRINT "The canyon continues to the north from here.  Above you and to the northeast"
PRINT "you can see the copper citadel you were in before."
GOTO EndMalbolge
Rocks: PRINT "Rocks": PRINT
PRINT "You are on a set of rocks, that seem ready to topple down at any second.  The"
PRINT "surface your feet are on seem uncertain at best, and the rocks shake with each"
PRINT "step you take.  A path leads east, while a seemingly very treacherous path leads"
PRINT "down from here.  The rocks seem unstable in that direction, but beyond the rock"
PRINT "piles you can see a canyon.  To the south is a ravine."
GOTO EndMalbolge
MountainSlopes: PRINT "Mountain Slope": PRINT
PRINT "You are at a slope down from a mountain.  The copper citadel you just escaped"
PRINT "is on a path above of you.  There are two rocky paths, one to the east and one"
PRINT "to the west.  Both seem equally travelled (that is, not at all) and equally"
PRINT "treacherous.  To the south is a ravine."
IF LTherHere3 = 0 AND (Guide = 5 OR Guide = 6) THEN PRINT "Fury is here, leaning against a rock.  He has his sword in his hand."
IF Arcanoloth > 0 AND ArcFight <> 2 AND Guide <> 5 AND Guide <> 6 THEN PRINT "L'Ther is here, leaning against a rock.  He seems different than before.  More": PRINT "smug.  More arrogant.  More powerful."
GOTO EndMalbolge
Rocks2: PRINT "Rocks": PRINT
PRINT "You are on a set of rocks, that seem ready to topple down at any second.  The"
PRINT "surface your feet are on seem uncertain at best, and the rocks shake with each"
PRINT "step you take.  A path leads west, while a seemingly very treacherous path leads"
PRINT "north from here.  It is strewn along many plates of rocks that don't seem to be"
PRINT "anchored to solid ground.  To the east is a ravine."
GOTO EndMalbolge
Portal2: PRINT "Cavern": PRINT
PRINT "You are standing in a large cavern.  In the center of this cavern is a glowing"
PRINT "circle of reddish light.  There is a series of tunnels to the south of here,"
PRINT "but other than that there are no exits from this room."
GOTO EndMalbolge
EndMalbolge:
END SUB

SUB OnTheBaatezu
Page = Page + 1
IF Page = 1 THEN
PRINT "                        ON THE BAATEZU": PRINT
PRINT "   Excerpts from the Planescape Monstrous Compendium, Volume I": PRINT
PRINT "          Copyright 1994 TSR, Inc.  All Rights Reserved.": PRINT
PRINT "     Additional Penmanship by Dking, Mage of the God Hereg�l"
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

SUB Phlegethos
ON RM GOTO BurningLandscape, OutsideCastle, Prison, TortureRoom, Gates, FieryStreet, NearLake, FieryStreet, BurningBariaurInn, FieryStreet, Lake, NearLake, FieryStreet, BurningAlley, NearLake, FieryStreet
BurningLandscape: PRINT "Burning Landscape": PRINT
Technical = INT(RND * 8) + 1
IF Technical = 1 THEN
PRINT "Given:  On an infinite plane, there is an infinite distance between places."
PRINT "Given:  You are on an infinite plane."
PRINT "Therefore:  You will have to walk an infinite distance to get anywhere.": PRINT
END IF
PRINT "You are on a very large plain, all of it shrouded in flames.  Not many major"
PRINT "landmarks dot this area.  ";
IF North = 0 THEN PRINT "To the south are the gates of a city.  To the east": PRINT "is a river of fire.": Decided = 1
IF East = 0 AND North <> 0 THEN PRINT "To the east is a river of fire.": Decided = 1
IF Decided = 0 THEN PRINT ""
Decided = 0
GOTO PhlegethosEndSub
OutsideCastle: PRINT "Outside Crystal Castle": PRINT
PRINT "To the north is a large castle, made entirely out of crystal.  Hamatula guards"
PRINT "guard the entrance.  There is a fiery street to the south.  The crystal spires"
PRINT "glitter in the burning red sky."
GOTO PhlegethosEndSub
Prison: PRINT "Cell": PRINT
PRINT "You are in a cell here.  Cellmates of all sorts surround you.  One of them"
PRINT "sits on to wall close to you.  There are no exits from this room.  The walls"
PRINT "have been padded, and the ceiling is made of steel."
GOTO PhlegethosEndSub
TortureRoom:
PRINT "Torture Room": PRINT
PRINT "You are strapped to a steel table.  Four or five beetle-like insects with long"
PRINT "probing noses(?) surround you.  Kocrachon - the torturers of Baator.  You"
PRINT "shudder to think of the future.  There are no exits from this room."
GOTO PhlegethosEndSub
Gates: PRINT "Gates to Abriymoch": PRINT
PRINT "You are standing at the gates to Abriiymoch.  An infinite plane is to the north,"
PRINT "while fiery street is to the east.  The gates themselves are made out of black"
PRINT "steel and rubies."
GOTO PhlegethosEndSub
NearLake: PRINT "Near Lake of Molten Lava": PRINT
PRINT "You are standing near a lake of molten lava.  To the ";
IF RM = 7 THEN PRINT "south ";
IF RM = 12 THEN PRINT "west ";
IF RM = 15 THEN PRINT "north ";
PRINT "is a large lake of"
PRINT "molten lava.  You may also go ";
IF RM = 12 THEN PRINT "north, south, northwest, and southwest."
IF RM = 15 THEN PRINT "northeast, northwest, and east."
IF RM = 7 THEN PRINT "west, east, and southeast."
IF GoingToDie > 0 THEN PRINT "You are surrounded by a troop of hamatula guards."
GOTO PhlegethosEndSub
FieryStreet: PRINT "Fiery Street": PRINT
PRINT "You are on a fiery street, winding it's way through a city built on a volcano."
PRINT "From here, the street goes ";
IF RM = 6 THEN PRINT "north, south, east, and west."
IF RM = 8 THEN PRINT "south and west."
IF RM = 10 THEN PRINT "north, west, southwest, south, and southeast.  To the": PRINT "east is a lake of lava.  To the west is an inn.  Over the entrance is a sign": PRINT "reading, 'The Burning Bariaur Inn.'  Wonderful."
IF RM = 13 THEN PRINT "northeast."
IF RM = 6 AND (Hamatula1 = 0 OR Hamatula1 = 3) THEN PRINT "A hamatula blocks the north road."
IF RM = 10 AND Erinyes1 = 0 THEN PRINT "A winged female is here, blocking the entrance to the inn.  An erinyes."
IF RM = 16 THEN
PRINT "north and west.  ";
IF Slave = 0 THEN PRINT "There is a slave in chains here.  He": PRINT "looks at you pitifully." ELSE PRINT ""
END IF
GOTO PhlegethosEndSub
BurningBariaurInn: PRINT "Burning Bariaur Inn": PRINT
PRINT "You are in the Burning Bariaur inn.  Well, at least the room is well-lit."
PRINT "Tables are all around here.  Most of them empty.  ";
IF Arcanoloth = 0 AND (Guide = 0 OR Guide = 2 OR Guide = 6 OR Guide = 1 OR (Guide = 4 AND GuideDeadLevel = 4)) THEN PRINT "L'Ther is here.": PRINT "You may go east.": Decided = 1
IF Decided = 0 THEN PRINT "You may go east.": Decided = 0
GOTO PhlegethosEndSub
Lake:
GOTO PhlegethosEndSub
BurningAlley:
PRINT "Burning Alley": PRINT
PRINT "You are in a burning alley.  The alley itself isn't all that flammable, but the"
PRINT "walls seem to eminate heat and fire.  You may go north."
GOTO PhlegethosEndSub
PhlegethosEndSub:
END SUB

SUB Stygia
ON RM GOTO Alley, FreezingBariaur, Street, OutsideHall, Hall, Throne, Street, Street, Street, Market, IceFloe, GreyElfCity, Tavern, Street, Market, EdgeofIceFloe, EdgeofIceFloe, EdgeofIceFloe, DumpN, Alley, OutsideGates, Styx, Styx, Styx, DumpS, Styx, Styx, Portal
Alley: PRINT "Alley": PRINT
PRINT "You are in an alley.  There is a large mural on the wall here, depicting a"
IF RM = 1 THEN PRINT "bloody red hand.  ";
IF RM = 20 THEN PRINT "broken finger.  ";
PRINT "The exit from the alley is to the ";
IF RM = 1 THEN PRINT "south. ";
IF RM = 20 THEN PRINT "north. ";
PRINT "The sky above": PRINT "flashes with lightning."
GOTO EndStygiaSub
FreezingBariaur: PRINT "Freezing Bariaur Inn": PRINT
PRINT "This is one of the coldest inns that you have ever been in.  The tables and"
PRINT "chairs around here are basically empty.  One on of the nearby walls here is the"
PRINT "mural of a bloody red hand, painted with some sort of red paint - but it looks"
PRINT "much like blood.  You may go south."
GOTO EndStygiaSub
Street: PRINT "Street": PRINT
PRINT "You are on a street that winds through this town.  Various folk surround you,"
PRINT "all of them wearing ";
IF RM = 3 OR RM = 8 OR RM = 7 OR RM = 9 THEN PRINT "red ";
IF RM = 14 THEN PRINT "blue ";
PRINT "clothes.  They look at your garments suspiciously."
PRINT "You may go ";
IF RM = 3 THEN PRINT "south, east, and southwest."
IF RM = 7 THEN PRINT "north, south, and east.  To the north is an alley, while there is a": PRINT "tavern, 'The Maelephant's Trumpet,' to the south."
IF RM = 8 THEN PRINT "north, south, east, west, northeast, and southeast.  To the north": PRINT "is a picture of a bariaur huddling in the cold.  'The Freezing Bariaur Inn,'": PRINT "reads a sign."
IF RM = 9 THEN PRINT "north, south, east, and west."
IF RM = 14 THEN PRINT "north, south, east, southeast, and southwest."
GOTO EndStygiaSub
OutsideHall: PRINT "Outside Hall": PRINT
PRINT "To the east is a huge hall, made out of diamond-like ice.  To the west is a"
PRINT "street.  On the wall here is the mural of a red hand.  People are here, looking"
PRINT "at you suspiciously."
GOTO EndStygiaSub
Hall: PRINT "Hall of Rulership": PRINT
PRINT "You are in the hall where desicions are passed down concerning Tantalin.  People"
PRINT "surround you in all directions, talking to various fiends and such."
IF Osyluth3 <> 2 OR (Guide = 0 OR Guide = 6 OR Guide = 2) THEN PRINT "The door into the throne room is guarded by a bony and skeletal osyluth." ELSE PRINT "There is a door to the east, leading into the throne room."
GOTO EndStygiaSub
Throne: PRINT "Throne Room": PRINT
PRINT "You are in a large, rectangular room.  There is a hall to the west.  At the"
PRINT "center of the room is a huge throne";
IF PitFiend2 = 0 OR PitFiend2 = 3 THEN PRINT ", upon which sits a huge pit fiend." ELSE PRINT " which is unoccupied."
IF Escaped = 2 THEN PRINT "There is a doorway in the north wall, where you had thought there was only a": PRINT "blank wall."
GOTO EndStygiaSub
Market: PRINT "Market": PRINT
PRINT "You are standing in the marketplace.  Fiends and planars surround you, all of"
PRINT "them wearing shades of red.  You are given a peery eye, seeing how you are"
PRINT "wearing green.  From here, you may go west, southwest, and north."
GOTO EndStygiaSub
IceFloe: PRINT "Ice Floe": PRINT
PRINT "You are on a large ice floe.  From here, you may go in all southern directions."
PRINT "The air around you chills you to the bone, and lightning flashes high above in"
PRINT "the sky.  The ice beneath you seems relatively sturdy."
GOTO EndStygiaSub
GreyElfCity: PRINT "Grey Elf City": PRINT
PRINT "You are standing in the middle of a crowd of people.  Grey elves and humans"
PRINT "surround you on all sides, with two humans standing in the center, looking at"
PRINT "each other with menacing glares.  One of the humans - a human dressed in a white"
PRINT "and gold tunic - is holding your sword."
GOTO EndStygiaSub
Tavern: PRINT "The Maelephant's Trumpet": PRINT
PRINT "You are in what some primes would call a tavern, but you most definitely would"
PRINT "have to call it a dive.  Seedy patrons are everywhere.  Everyone wears red here."
PRINT "There is the mural of a bloody hand on the south wall here."
GOTO EndStygiaSub
EdgeofIceFloe: PRINT "Edge of Ice Floe": PRINT
PRINT "You are standing on the edge of an ice floe.  To the south flows the River Styx,"
PRINT "winding it's way through the icy floes of Stygia.  From here, the ice goes to"
PRINT "the ";
IF RM = 17 THEN PRINT "north, west, and east.  The Styx is in all southern directions."
IF RM = 16 THEN PRINT "northeast, southwest, and east.  The Styx is south and southeast."
IF RM = 18 THEN PRINT "northwest and west.  The Styx is south and southwest."
GOTO EndStygiaSub
DumpN: PRINT "Dump, North": PRINT
PRINT "You are in the north area of the dump on Tantalin.  Refuse and garbage surrounds"
PRINT "you here, and occasionally worms and maggots poke their heads out of the piles"
PRINT "and piles of garbage.  The dump continues to the south, while the horrible"
PRINT "smell lessens to the northeast."
GOTO EndStygiaSub
OutsideGates: PRINT "Outside Gates": PRINT
PRINT "You stand outside of the gates to Tantlin, a huge city on a crushing ice floe."
PRINT "Streets go off in all northern direction.  To the south and east is the River"
PRINT "Styx."
IF Osyluth2 = 0 OR Osyluth2 = 3 THEN PRINT "The gates are guarded by a gaunt and skeletal-looking osyluth.  It look at you": PRINT "and smiles."
GOTO EndStygiaSub
Styx: PRINT "River Styx": PRINT
PRINT "You are adrift in the River Styx.  The current here is lazier than it was on"
PRINT "Avernus.  The river stretches from the ";
IF RM = 26 THEN PRINT "southwest to east."
IF RM = 27 THEN PRINT "west to northeast."
IF RM = 22 THEN PRINT "southwest to east."
IF RM = 23 THEN PRINT "east to west."
IF RM = 24 THEN PRINT "west to northeast."
IF RM = 27 THEN PRINT "An ice floe is to the north."
IF RM = 22 THEN PRINT "Ice floes are to the north and west."
IF RM = 23 THEN PRINT "You can climb out of the river in all northern directions."
IF RM = 24 THEN PRINT "You can climb out of the river, onto an ice floe, to the north and northwest."
GOTO EndStygiaSub
DumpS: PRINT "Dump, South": PRINT
PRINT "You are in the south area of the dump on Tantalin.  Refuse and garbage surrounds"
PRINT "you here, and occasionally worms and maggots poke their heads out of the piles"
PRINT "and piles of garbage.  You may go north."
GOTO EndStygiaSub
Portal: PRINT "Portal": PRINT
PRINT "You are standing in a circular room, in which the only feature is a circle of"
PRINT "floating green light, a portal which floats in mid-air above the center of the"
PRINT "room.  There are no exits from this room."
GOTO EndStygiaSub
EndStygiaSub:
IF FuryBeg = 1 THEN PRINT "Fury is here, holding onto your tunic, while an erinyes holds his chains nearby."
END SUB

SUB Talking
IF Level = 6 THEN
IF RM = 6 OR RM = 8 OR RM = 10 OR RM = 12 THEN
PRINT "You walk up to a hamatula.  'Hello!' you say."
PRINT "'Go away,' one says.  'We don't want you here.'  Another says, 'Flay his hide!'"
PRINT "Still another one says, 'Pick the flesh off his bones!'"
PRINT "You back away.": ReturnTo940 = 1: GOTO EndTalking
END IF
IF RM = 19 AND LTherHere3 = 0 AND Guide = 5 THEN
PRINT "You walk up to Fury.  'Hello,' you say."
PRINT "'Yes, it is I, Fury,' he says.  'You've taken that evil fiend as your guide."
PRINT "He is not what he seems.  I will prove it.'"
PRINT "With that, he drives his sword into L'Ther's body.  L'Ther screams, and his"
PRINT "face suddenly grows furrier.  It changes into that of a jackal.  Its fingers"
PRINT "become claws.  Its eyes glow red.  You are facing an arcanoloth.  Fury was"
PRINT "right.  The Aracanoloth raises its claws up to attack!": ArcReveal = 1: ArcFight = 1: ReturnTo940 = 1: GOTO EndTalking
END IF
IF RM = 19 AND LTherHere3 = 0 AND Guide <> 5 AND Guide <> 6 THEN
        PRINT "You walk up to L'Ther.  'You,' you say."
        PRINT "'Yes, it is I, L'Ther,' he says.  'This time, however, it is different.  I am"
        PRINT "not here to ask to be your guide.  I am not here to help you.'"
ArcTalk6: PRINT : PRINT "You say:": PRINT
        PRINT "1.  'I am the Elf.  I killed Zaebos.'"
        PRINT "2.  'Why are you here, then?'"
        PRINT "3.  'I'm sick of looking at you.  Eat steel!'"
        PRINT "4.  'Help me!  I need to get these handcuffs off!'"
        PRINT "5.  'I need to pass by here.'"
        PRINT "6.  'Never mind.'"
ArcTalk7: PRINT : INPUT ">", A: PRINT
        IF A = 6 THEN ReturnTo940 = 1: GOTO EndTalking
        IF A = 5 THEN
                PRINT "'You may not pass,' says L'Ther.  ";
                IF Guide <> 1 THEN PRINT "": GOTO ArcTalk7
                IF Guide = 1 THEN
                        PRINT "Fury draws his sword."
                        PRINT "'Who are you to bar our passage?  We have done nothing to you.'"
                        PRINT "'I am L'Ther,' says L'Ther.  'You shall obey me in all aspects.'"
                        PRINT "With that, Fury pushes L'Ther south, onto the edge of the ravine."
                        PRINT "L'Ther teeters there for a second, and suddenly he undergoes a transformation."
                        PRINT "His teeth elongate, to that of a wolf's.  His face grows furrier and his nose"
                        PRINT "grows, until the face looks jackal-like.  His smile grows into a snarl.  L'Ther"
                        PRINT "is an arcanoloth."
                        PRINT "You get a good look at him for about three seconds before he falls into the"
                        PRINT "ravine, screaming the entire way down."
                        LTherHere3 = 1: ReturnTo940 = 1: GOTO EndTalking
                END IF
        END IF
        IF A = 1 THEN PRINT "'I know, you arrogant fool.  Stop regaling me with your pathetic tales of past": PRINT "glories.'": GOTO ArcTalk6
        IF A = 2 OR A = 4 THEN
                PRINT "'You have not listened to me, Elf.  I'm giving you one last chance.  I want to"
                PRINT "help you, not kill you.  This is your last chance to avoid a final"
                PRINT "confrontation.  Will you accept me as your guide?'"
                PRINT : PRINT "You say:": PRINT
                PRINT "1.  'No.  I'd rather die here, tied up and helpless than let you be my guide.'"
                PRINT "2.  'Sure.  You can be my guide.  Just get these handcuffs off of me.'"
                PRINT "3.  'Let me think about it.'"
ArcTalk8: PRINT : INPUT ">", A: PRINT
                IF A = 1 THEN PRINT "'You are a fool, Elf.  I shall snap your neck and display it to her mightiness.": PRINT "I shall rend your body apart and feast on your remains.  I will snaps your": PRINT "bones in two, and give them to the kocrachons to animate so that you shall live": PRINT "in pain and agony, though you may be dead.  You are a fool!'  With that, his": PRINT "eyes flash red.": GOTO GoingToKill
                IF A = 2 THEN
                        PRINT "'Good, Elf.  Very good.  You are not a fool after all,' he says.  With that, he": PRINT "grabs your shackles and rips them open.  The shackles fall to the ground,": PRINT "useless.": LetFree = 2
                                IF Guide = 1 OR Guide = 3 THEN
                                        PRINT "Fury looks at you as if you were insane.  'So,' he says to you, 'You don't want"
                                        PRINT "me anymore.'": PRINT : PRINT "You say:": PRINT
                                        PRINT "1.  'Oops.  I forgot about you.  Sorry, L'Ther, I have Fury here.'"
                                        PRINT "2.  'Too bad.  Leave us be.'"
                                        PRINT "3.  'Why can't I take both of you?'"
GuideTalk8: PRINT : INPUT ">", A: PRINT
                                        IF A > 3 OR A < 1 THEN GOTO GuideTalk8
                                        IF A = 1 THEN PRINT "'Then prepare to die, both of you.  Such loyalty.  Such folly.'  L'Ther draws his": PRINT "sword.  'You shall die together.'": LTherHere3 = 1: ArcFight = 1: ReturnTo940 = 1: GOTO EndTalking
                                        IF A = 2 AND Guide = 1 THEN PRINT "Fury looks at you darkly.  'If you do not believe me, Elf, then I shall prove": PRINT "it to you!  He is not what is appears!'  With that, he drives his sword into": PRINT "L'Ther's body.  L'Ther screams, and his face suddenly grows furrier.  It changes": PRINT "into that of a jackal.  Its fingers become claws.  Its eyes glow red.  You are": PRINT "facing an arcanoloth.  Fury was right.  The Aracanoloth raises its claws up to": PRINT "attack!": LTherHere3 = 1: ArcReveal = 1: ArcFight = 1: ReturnTo940 = 1: GOTO EndTalking
                                        IF A = 2 AND Guide = 3 THEN PRINT "Fury looks at you darkly.  'Fine, then, Elf.  We will meet again,' says Fury,": PRINT "and he suddenly vanishes."
                                        IF A = 3 THEN PRINT "'It's either him or me,' says Fury.": GOTO GuideTalk8
                                        LTherHere3 = 1: Guide = 5: ReturnTo940 = 1: GOTO EndTalking
                                END IF
                                LTherHere3 = 1: Guide = 5: ReturnTo940 = 1: GOTO EndTalking
                END IF
                IF A = 3 THEN PRINT "'There will be no THINKING about it, Elf.  You are a pathetic coward.  When the": PRINT "situation suits you, you attack blindly, not caring about the consequences.": PRINT "But when you have to make a decision, you pause and 'think.'  You are a weak": PRINT "snivelling coward.  You are too much like a tanar'ri for your own good.  My": PRINT "offer has been rescinded.  I WILL kill you now.'": ArcFight = 1: ReturnTo940 = 1: GOTO EndTalking
                GOTO ArcTalk8
GoingToKill:
        IF Guide = 1 THEN PRINT "Fury stands in front of you.  'You'll have to kill me first, fiend.'": PRINT "L'Ther merely laughs.  'Such loyalty, from a double-crossing liar!'"
        ArcFight = 1
        LTherHere3 = 1
        ReturnTo940 = 1: GOTO EndTalking
END IF
IF A = 3 THEN PRINT "'That may be a little hard at this moment, seeing how you are all tied up.'": PRINT "L'Ther laughs at you, mockingly.": GOTO ArcTalk6
GOTO ArcTalk7
END IF
IF RM = 11 AND Mezz1 = 0 THEN
PRINT "You approach the mezzoloth.  The mezzoloth glares at you.  'Elf no leave copper"
PRINT "palace!'"
PRINT : PRINT "You say:": PRINT
PRINT "1.  'Elf killed Zaebos!'"
PRINT "2.  'Mezzoloth move aside!'"
PRINT "3.  'Hello, my ungramatically correct friend.  Please return to whichever"
PRINT "     institute of higher learning that you never graduated from.'"
PRINT "4.  'Never mind.'"
MezzTalk: PRINT : INPUT ">", A: PRINT
IF A > 4 OR A < 1 THEN GOTO MezzTalk
IF A = 1 THEN PRINT "'I no care.  Zaebos matter not!  Elf think I idiot!'": ReturnTo940 = 1: GOTO EndTalking
IF A = 2 AND Calling <> 2 THEN PRINT "'I kill Elf now!  Prepare die now!' says the mezzoloth, who draws its pike.": Mezz1 = 1: ReturnTo940 = 1: GOTO EndTalking
IF A = 2 AND Calling = 2 THEN PRINT "'Elf may leave.' says the mezzoloth, who stands aside from the wheel.": Mezz1 = 3: ReturnTo940 = 1: GOTO EndTalking
IF A = 3 THEN PRINT "'Actually, I graduated valedictorian of my class in Harvard, where I majored in": PRINT "English and Drama.  You see, I was cast into the role of this mezzoloth by some": PRINT "inept school of drama that had no realization of my true talent.'": ReturnTo940 = 1: GOTO EndTalking
IF A = 4 THEN ReturnTo940 = 1: GOTO EndTalking
END IF
IF LetFree = 0 THEN
PRINT "You approach the pit fiend.  The arcanoloth stops you.  'Stop.  Thou shalt not"
PRINT "speak to her mightiness,' it says in a somewhat familiar voice.": PRINT
PRINT "You say:": PRINT
PRINT "1.  'Hello.  I'm the Elf.  I killed Zaebos.'"
PRINT "2.  'Why can't I speak to her mightiness?  I'm mighty, too!'"
PRINT "3.  'Can I leave this room?'"
PRINT "4.  'I'm looking for a way to the next level of Baator.'"
PRINT "5.  'Convey my disgust to her mightiness.  Bye.'"
ArcTalk1: PRINT : INPUT ">", A: PRINT
IF A > 5 OR A < 1 THEN GOTO ArcTalk1
IF A = 1 THEN PRINT "'That's nice.  I know that.  Remember, we know everything about you.'": ReturnTo940 = 1: GOTO EndTalking
IF A = 2 THEN PRINT "'According to her mightiness, you are a weak and insignificant pawn.  Remember": PRINT "that, weakling.  Her mightiness could smite you right now, where you stand,": PRINT "with but a single glare.'": ReturnTo940 = 1: GOTO EndTalking
IF A = 3 THEN PRINT "'Only if her mightiness deems it may you leave.'": ReturnTo940 = 1: GOTO EndTalking
IF A = 4 THEN
PRINT "'Perhaps her mightiness can help you.  If you were to say..... serve her"
PRINT "mightiness in this citadel for one year, we could allow you to go on to the"
PRINT "next layer of Baator.'"
PRINT : PRINT "You say:": PRINT
PRINT "1.  'I don't like servitude.  No.'"
PRINT "2.  'Sure!  I'll be your slave for one whole year.  I think that even though"
PRINT "     this multiverse may not exist in one year, I need to get to the next"
PRINT "     level of Baator, no matter what.'"
PRINT "3.  'Let me think about it.'"
Slave: PRINT : INPUT ">", A: PRINT
IF A = 1 OR A = 3 THEN PRINT "'Think about it.'": ReturnTo940 = 1: GOTO EndTalking
IF A > 3 OR A < 1 THEN GOTO Slave
IF A = 2 THEN
LetFree = 1
PRINT "'Her mightiness deems you to be her slave for one year.  You shall be shackled"
PRINT "to prevent escapes.'"
PRINT "With that, the arcanoloth produces a set of glowing handcuffs out of thin air"
PRINT "and clamps them around your wrists."
PRINT "'You shall not leave this place until the one year is up.  You shall not"
PRINT "attack any fiend in this castle.  When these chains are released from your"
PRINT "wrists, you shall be freed.'": ReturnTo940 = 1: GOTO EndTalking
END IF
END IF
IF A = 5 THEN PRINT "'Shut up, Elf.  Don't be insolent.  Her mightiness might take it into her head": PRINT "to pound you skull in.'": ReturnTo940 = 1: GOTO EndTalking
END IF
END IF
IF (FuryBeg = 1 OR FuryMad = 1) AND Level = 5 AND RM = 9 THEN
PRINT "'Fury, what do you want?' you ask."
PRINT "'GUESS???  You sold me into slavery, Elf.  You gave me - your FRIEND - into the"
PRINT "clutches of this vile fiend.  THAT'S WHAT!  So help me, I'll KILL you!'"
PRINT : PRINT "You say:": PRINT
PRINT "1.  'I'm cold and heartless.  Shut up.'"
PRINT "2.  'Mrs. Erinyes Lady, I'd like my friend back.'"
PRINT "3.  'Mrs. Erinyes Lady, take this lunatic away.'"
PRINT "4.  'I'm the Elf.  I killed Zaebos.'"
PRINT "5.  'Okay, I guess I'm obliged to free you.'"
GuideTalk7: PRINT : INPUT ">", A: PRINT
IF A = 1 OR A = 3 THEN PRINT "'No... don't leave me here....'  With that, the erinyes grabs Fury.  'Now Fury,": PRINT "don't bother the nice man.'  Fury and the erinyes vanish into the crowd.": FuryBeg = 2: FuryMad = 0: ReturnTo940 = 1: GOTO EndTalking
IF A = 2 OR RM = 5 THEN
PRINT "'I don't want to give Fury back.  He's such a good slave,' she says.  ";
IF A = 2 THEN PRINT "'And I'm": PRINT "currently unattached,' she says."
IF A = 5 THEN PRINT ""
PRINT : PRINT "You say:": PRINT
PRINT "1.  'Okay, you asked for it!  Prepare to die, Mrs. Erinyes Lady!'"
PRINT "2.  'Never mind, then.'"
PRINT "3.  'Here, I have money.'"
GiveBackFury: PRINT : INPUT ">", A: PRINT
IF A = 1 THEN PRINT "'I'm unattached at the moment, my dear,' says the erinyes.  'Prepare to die.'": Erinyes1 = 1: ReturnTo940 = 1: GOTO EndTalking
IF A = 2 THEN PRINT "The erinyes nods, and drags Fury away from you, through the crowd.": FuryBeg = 2: FuryMad = 0: ReturnTo940 = 1: GOTO EndTalking
IF A = 3 THEN
IF Ruby = 0 AND Money = 0 THEN PRINT "'No, you don't,' says the erinyes.  With that, she walks off into the crowd,": PRINT "dragging Fury with her.": FuryBeg = 2: FuryMad = 0: ReturnTo940 = 1: GOTO EndTalking
IF Ruby = 1 THEN A$ = "give ruby": GOTO EndTalking
IF Money = 1 THEN A$ = "give money": GOTO EndTalking
END IF
END IF
IF A = 4 THEN PRINT "'WHAT DOES THAT HAVE TO DO WITH ANYTHING?' Fury screams.  The erinyes says,": PRINT "'Now, Fury, don't bother the nice man.'  Laughing, the erinyes walks off into": PRINT "the crowd.": FuryBeg = 2: FuryMad = 0: ReturnTo940 = 1: GOTO EndTalking
END IF
IF TalkLTher = 1 THEN
PRINT "'So,' says L'Ther.  'Was that impressive, or not?'"
Talk2:  PRINT : PRINT "You say:": PRINT
PRINT "1.  'Impressive.'"
PRINT "2.  'Not.'"
PRINT "3.  'You cross-trading berk!  Prepare to die!'"
PRINT "4.  'Ooooo...  You're so powerful!  Will you be my guide-friend?'"
PRINT "5.  'I'm the Elf.  I killed Zaebos.'"
TalkLTher: PRINT : INPUT ">", A: PRINT
IF A > 5 OR A < 1 THEN GOTO TalkLTher
IF A = 2 THEN PRINT "'Mind your tongue, Elf,' says L'Ther, 'someone may rip it out one day.'": GOTO Talk2
IF A = 3 THEN PRINT "'Okay,' L'Ther says.  'If you're ready to die, come at me.'": TalkLTher = 2: ArcFight = 1: ReturnTo940 = 1: GOTO EndTalking
IF A = 4 THEN GOTO Trusted
IF A = 5 THEN PRINT "'I know your name, and you've made your adventuring career very obvious to me,'": PRINT "says L'Ther.": GOTO Talk2
IF A = 1 THEN
PRINT "'Good.  Now, I'd like to offer you my services as a guide to Baator.'"
Choice3:  PRINT : PRINT "You say:": PRINT
PRINT "1.  'No.  I don't trust you.'"
PRINT "2.  'No.  You MUST be a fiend in disguise.  Anyone as powerful as you MUST be"
PRINT "    a fiend.  Besides - you want to be my guide, and all guides eventually"
PRINT "    betray me.  It's a theme.'"
PRINT "3.  'Sure!  I'll trust you, although ever other guide I've had before has"
PRINT "    turned stag on me.  What's another one in the grand scheme of things?'"
PRINT "4.  'Sure.  I trust you with my life.'"
PRINT "5.  'Maybe.  Let me deliberate over the ramifications of such a descision"
PRINT "     that is fraught with portent.'"
ArcTalk5: PRINT : INPUT ">", A: PRINT
IF A > 5 OR A < 1 THEN GOTO ArcTalk5
IF A = 5 THEN PRINT "'Whatever,' says L'Ther.": GOTO Choice3
IF A = 1 THEN PRINT "'A pity,' says L'Ther.  With that, he walks out of the alley.": TalkLTher = 2: ReturnTo940 = 1: GOTO EndTalking
IF A = 2 THEN PRINT "'You know something, Elf?  Some people would say the same thing about you,'": PRINT "L'Ther says, and he walk south, of the alley.": TalkLTher = 2:  ReturnTo940 = 1: GOTO EndTalking
IF A = 3 OR A = 4 THEN
Trusted: PRINT "'It's good to know that I'm trusted,' says L'Ther."
IF Guide = 1 OR Guide = 3 THEN
PRINT "Fury looks at you as if you were insane.  'So,' he says to you, 'You don't want"
PRINT "me anymore.'"
What: PRINT : PRINT "You say:": PRINT
PRINT "1.  'Oops.  I forgot about you.  Sorry, L'Ther, I have Fury here.'"
PRINT "2.  'Too bad.  Leave us be.'"
PRINT "3.  'Why can't I take both of you?'"
GuideTalk2: PRINT : INPUT ">", A: PRINT
IF A > 3 OR A < 1 THEN GOTO GuideTalk2
IF A = 1 THEN PRINT "L'Ther says, 'Your loss,' and walks out of the alley.":  TalkLTher = 2: ReturnTo940 = 1: Arcanoloth = 1: GOTO EndTalking
IF A = 2 THEN PRINT "Fury looks at you darkly.  'I'll be back!' he yells at L'Ther.  'And then you'll": PRINT "be dead.  Beware, Elf!  He is not what he seems to be!'  With that, Fury stomps": PRINT "out of the alley.": Guide = 5: TalkLTher = 2: FuryLeft = 1: ReturnTo940 = 1: GOTO EndTalking
IF A = 3 THEN PRINT "'It's either him or me,' says Fury.": GOTO What
END IF
TalkLTher = 2: Guide = 5: ReturnTo940 = 1: GOTO EndTalking
END IF
END IF
END IF
IF Level = 4 THEN
IF RM = 3 THEN
PRINT "You greet a fellow cellmate.  'Hi!  I'm the Elf!' you say."
PRINT "'Wonderful,' say the cellmate."
IF Guide = 1 THEN PRINT "'And I'm Fury,' says Fury.": PRINT "'Great,' says the cellmate.  'A bunch of comedians.'"
PRINT : PRINT "You say:": PRINT
PRINT "1.  'I killed Zaebos.  Quiver before me, worthless scum!'"
PRINT "2.  'So, what's the program here?'"
PRINT "3.  'You baatezu are all wimps.'"
PRINT "4.  'You're a fiend in disguise!  I know it!  (The last option suggested it to"
PRINT "     me!)'"
PRINT "5.  'Never mind.'"
CellTalk: PRINT : INPUT ">", A: PRINT
IF A > 5 OR A < 1 THEN GOTO CellTalk
IF A = 1 THEN PRINT "'Words aren't everything, sod,' says the cellmate.  'Go play with the": PRINT "kocrachons,' he says.": ReturnTo940 = 1: GOTO EndTalking
IF A = 2 THEN PRINT "'The kocrachons take us, torture us, wait for us to heal, and then they repeat": PRINT "the schedule.  Forever.'": ReturnTo940 = 1: GOTO EndTalking
IF A = 3 THEN PRINT "'I'm not a fiend,' says the cellmate.": ReturnTo940 = 1: GOTO EndTalking
IF A = 4 THEN PRINT "'Don't believe everything you read,' says the cellmate.": ReturnTo940 = 1: GOTO EndTalking
IF A = 5 THEN ReturnTo940 = 1: GOTO EndTalking
END IF
IF RM = 4 THEN
PRINT "You say:": PRINT
PRINT "1.  'AHHHH!!!!'"
PRINT "2.  'OWWWW!!!!'"
PRINT "3.  'No more.... no more.....'"
PRINT "4.  'STOP!!  FOR THE LOVE OF GOD, STOP!'"
PRINT "5.  'Can you do that a little down and to the left?'"
PRINT : INPUT ">", A: PRINT
IF A = 1 THEN PRINT "'AHHHH!!!!' you scream.": ReturnTo940 = 1: GOTO EndTalking
IF A = 2 THEN PRINT "'OWWWW!!!!' you scream.": ReturnTo940 = 1: GOTO EndTalking
IF A = 3 THEN PRINT "'No more.... no more!' you scream.  This has little effect on the kocrachon.": ReturnTo940 = 1: GOTO EndTalking
IF A = 4 THEN PRINT "'STOP!!  FOR THE LOVE OF GOD, STOP!' you scream.  This has little effect on the": PRINT "kocrachon.": ReturnTo940 = 1: GOTO EndTalking
IF A = 5 AND Immune = 0 THEN PRINT "You can't quite talk that well right now, so you scream, 'AHHHH!'": ReturnTo940 = 1: GOTO EndTalking
IF A = 5 AND Immune = 1 THEN PRINT "The kocrachon look confused, and you suddenly vanish from where you were and": PRINT "appear elsewhere.": RM = 3: ReturnTo940 = 2: GOTO EndTalking
END IF
IF RM = 10 AND (Erinyes1 = 0 OR Erinyes1 = 3) THEN
PRINT "You walk up to the erinyes.  'Hello,' you greet her."
PRINT "'Yes?' she says sweetly.  'What can I do for you?'"
PRINT : PRINT "You say:": PRINT
PRINT "1.  'Can I enter the Burning Bariaur Inn?'"
PRINT "2.  'I killed Zaebos.'"
PRINT "3.  'You are a fiend.  I hate fiends.  Therefore, I hate you.  Prepare to die.'"
PRINT "4.  'Nice day, isn't it?'"
PRINT "5.  'Would you take a bribe?'"
PRINT "6.  'Never mind.'"
ErinyesTalk: PRINT : INPUT ">", A: PRINT
IF A > 6 OR A < 1 THEN GOTO ErinyesTalk
IF A = 1 THEN
IF Guide = 3 THEN PRINT "'You may enter, at no charge,' says the erinyes, winking at Fury.": ReturnTo940 = 1: GOTO EndTalking
PRINT "'There's a small toll,' she says."
PRINT : PRINT "You say:": PRINT
PRINT "1.  'I strongly resemble a tiefling bard.  I'm not paying.'"
PRINT "2.  'Toll?  Like what do you want?'"
PRINT "3.  'Never mind.'"
EryTalk: PRINT : INPUT ">", A: PRINT
IF A > 3 OR A < 1 THEN GOTO EryTalk
IF A = 1 THEN PRINT "'Have it your way, handsome,' says the erinyes.": ReturnTo940 = 1: GOTO EndTalking
IF A = 2 THEN
PRINT "'I like money.  I also like jewels.  Slaves are good, too.'"
IF Guide <> 1 THEN ReturnTo940 = 1: GOTO EndTalking
PRINT : PRINT "You say:": PRINT
PRINT "1.  'I have my guide-friend here.  He'll be more than willing to be your"
PRINT "     slave.'"
PRINT "2.  'I have my guide-friend here.  While he may not want to be your slave, I"
PRINT "     think that I'll force him to be your slave.'"
PRINT "3.  'Never mind.'"
EriTalk: PRINT : INPUT ">", A: PRINT
IF A > 3 OR A < 1 THEN GOTO EriTalk
IF A = 1 OR A = 2 THEN
PRINT "Fury looks at you as if you were insane."
PRINT "'WHAT?' he screams at you."
Choice2: PRINT : PRINT "You say:": PRINT
PRINT "1.  'Mrs. Erinyes Lady, take him away.'"
PRINT "2.  'Oops.  Sorry.'"
PRINT "3.  'What do you mean, 'What'?'"
ErinTalk: PRINT : INPUT ">", A: PRINT
IF A > 3 OR A < 1 THEN GOTO ErinTalk
IF A = 3 THEN
PRINT "'JUST What I said, 'WHAT'  Are you going to hand me over to that demon?' Fury": PRINT "yells."
PRINT : PRINT "You say:": PRINT
PRINT "1.  'Yes.  Go with Mrs. Erinyes.'"
PRINT "2.  'No.  I'm sorry.'"
Choic: PRINT : INPUT ">", A: PRINT
IF A <> 1 AND A <> 2 THEN GOTO Choic
END IF
IF A = 1 THEN PRINT "The erinyes smiles at you.  'I'm a Ms.'  She grabs Fury.  'Come now Fury, my": PRINT "dear,' she coos, and grabs Fury.  With that, she laughs at Fury as he shakes": PRINT "his fist at you.": PRINT "'I'll be back, Elf.  And then you'll be sorry then!'": FuryMad = 1: Guide = 6: Erinyes1 = 4: ReturnTo940 = 1: GOTO EndTalking
IF A = 2 THEN PRINT "The erinyes snarls at you, but does nothing.": ReturnTo940 = 1: GOTO EndTalking
END IF
IF A = 3 THEN ReturnTo940 = 1: GOTO EndTalking
END IF
IF A = 3 THEN ReturnTo940 = 1: GOTO EndTalking
END IF
IF A = 2 THEN PRINT "'I'll bet you say that to all of the girls,' says the erinyes.": ReturnTo940 = 1: GOTO EndTalking
IF A = 3 THEN PRINT "'Have it your way,' she says sweetly.": Erinyes1 = 1: ReturnTo940 = 1: GOTO EndTalking
IF A = 4 THEN PRINT "'Isn't it, though?' she says.": ReturnTo940 = 1: GOTO EndTalking
IF A = 5 THEN
PRINT "'Why yes, I would,' she says."
IF Money = 0 AND Ruby = 0 THEN PRINT "'Just checking,' you say.": ReturnTo940 = 1: GOTO EndTalking
IF Money = 1 THEN A$ = "give money"
IF Ruby = 1 THEN A$ = "give ruby"
END IF
IF A = 6 THEN ReturnTo940 = 1: GOTO EndTalking
END IF
IF (RM = 6 AND (Hamatula1 = 0 OR Hamatula1 = 3)) OR RM = 2 THEN
PRINT "You walk up to the hamatula.  The hamatula snarls at you."
PRINT "'You aren't authorized here, sod,' it says.": PRINT
PRINT "You say:": PRINT
PRINT "1.  'Oh, I'm sorry.  I didn't know.'"
PRINT "2.  'Oh, I'm sorry.  But I'm not, really.'"
PRINT "3.  'That's nice.  I'm the Elf.  I killed Zaebos.'"
PRINT "4.  'Okay.  Bye.'"
HamTalk: PRINT : INPUT ">", A: PRINT
IF A = 3 THEN PRINT "'That's nice, sod.  Now, surrender to me or die.'": GOTO Choice
IF A = 4 THEN PRINT "'No, sod.  Surrender to me or die.'": GOTO Choice
IF A = 1 OR A = 2 THEN
IF A = 1 THEN PRINT "'Ignorance of the law is no excuse!' says the hamatula.  'Surrender now or die!'"
IF A = 2 THEN PRINT "'Mockery of the law is no excuse!' says the hamatula.  'Surrender now or die!'"
Choice: PRINT : PRINT "You say:": PRINT
PRINT "1.  'What happens to me if I don't surrender?'"
PRINT "2.  'What happens to me if I do surrender?'"
PRINT "3.  'Okay.  I give up.'"
PRINT "4.  'You won't take me without a fight!'"
HamTalk2: PRINT : INPUT ">", A: PRINT
IF A > 4 OR A < 1 THEN GOTO HamTalk2
IF A = 1 THEN PRINT "'I kill you,' says the hamatula.  'Then we decapitate your body and put your": PRINT "head on a spike in the center of town.  Then mock it until all of the flesh": PRINT "has decayed.  Then, your skull and your body are tossed into the lake of fire.": PRINT "And that's the lenient punishment,' says the hamatula.": GOTO Choice
IF A = 2 THEN PRINT "'You are sent to the inside of the Crystal Palace.  There, you are turned over": PRINT "to the kocrachon, where you will remain until we tire of you.  Then, you are": PRINT "dumped into the lake of lava - alive.  The most lenient punishment there is,'": PRINT "says the hamatula.": GOTO Choice
IF A = 3 THEN PRINT "'A smart decision,' says the hamatula.  It carries you off to the Crystal Palace": PRINT "where you are locked up in a cell.  You also note that you are in perfect": PRINT "health.": PRINT : Hp = MaxHp: RM = 3: ReturnTo940 = 2: GOTO EndTalking
IF A = 4 THEN PRINT "'It's your funeral,' says the hamatula.  With that, he attacks!": HamHp = 80: Hamatula1 = 1: ReturnTo940 = 1: GOTO EndTalking
END IF
END IF
IF RM = 9 AND Arcanoloth = 0 AND (Guide = 0 OR (Guide = 4 AND GuideDeadLevel <> 4)) THEN
PRINT "You walk up to L'Ther.  'Hello,' you say to him."
PRINT "'Hello,' he says politely."
PRINT : PRINT "You say:": PRINT
PRINT "1.  'Why are you here?'"
PRINT "2.  'I killed Zaebos.'"
PRINT "3.  'Never mind.'"
LtherTalk: PRINT : INPUT ">", A: PRINT
IF A < 1 OR A > 3 THEN GOTO LtherTalk
IF A = 2 THEN PRINT "'Talk's cheap, sod,' says L'Ther.": ReturnTo940 = 1: GOTO EndTalking
IF A = 1 THEN
PRINT "'I'm here to help you,' he says.  'I want to help you through Baator.  You need"
PRINT "help.  I won't betray you.  Do you trust me?' he asks."
PRINT : PRINT "You say:": PRINT
PRINT "1.  'Yes.'"
PRINT "2.  'Not on your life.'"
PRINT "3.  'Maybe.'"
Hmmm2: PRINT : INPUT ">", A: PRINT
IF A = 1 THEN GOTO Offer2
IF A = 2 THEN PRINT "'Your loss,' says L'Ther, and he vanishes.": Arcanoloth = 1: ReturnTo940 = 1: GOTO EndTalking
IF A = 3 THEN PRINT "'Make up your mind,' says L'Ther.": ReturnTo940 = 1: GOTO EndTalking
IF A > 3 OR A < 1 THEN GOTO Hmmm2
Offer2:
PRINT "'So, you trust me.  That's good,' says L'Ther.  'That's part of the reason I'm"
PRINT "here.  I want to know something:  Would you like a trustworthy guide to Baator?"
PRINT "I'm sure you do.'": PRINT : PRINT "You say:": PRINT
PRINT "1.  'No.  I changed my mind - I don't trust you.'"
PRINT "2.  'No.  I am biased against people who wear grey.'"
PRINT "3.  'Sure!  I'll trust you, although ever other guide I've had before has"
PRINT "    turned stag on me.  What's another one in the grand scheme of things?'"
PRINT "4.  'Sure.  I trust you with my life.'"
PRINT "5.  'Maybe.  Let me deliberate over the ramifications of such a descision"
PRINT "     that is fraught with portent.'"
ArcTalk4: PRINT : INPUT ">", A: PRINT
IF A > 5 OR A < 1 THEN GOTO ArcTalk4
IF A = 5 THEN PRINT "'Whatever,' says L'Ther.": ReturnTo940 = 1: GOTO EndTalking
IF A = 1 OR A = 2 THEN PRINT "'A pity,' says L'Ther.  With that, he stands up and instantly vanishes.": ReturnTo940 = 1: GOTO EndTalking
IF A = 3 OR A = 4 THEN PRINT "'It's good to know that I'm trusted,' says L'Ther.": Guide = 5: ReturnTo940 = 1: GOTO EndTalking
END IF
IF A = 3 THEN ReturnTo940 = 1: GOTO EndTalking
END IF
IF RM = 9 AND Arcanoloth = 0 AND ((Guide = 2 AND GuideLeft = 1) OR Guide = 1 OR (Guide = 4 AND GuideDeadLevel = 4) OR Guide = 6) THEN
PRINT "You walk up to L'Ther.  'You again,' you say."
PRINT "'Yes, it's me,' says L'Ther."
PRINT : PRINT "You say:": PRINT
PRINT "1.  'YOU!  You cross-trading berk, prepare to die!'"
PRINT "2.  'I killed Zaebos.'"
PRINT "3.  'You're evil incarnate.  I know because my guide-friend told me so.'"
PRINT "4.  'So, why are you here?'"
PRINT "5.  'Can you help me?'"
PRINT "6.  'Never mind.'"
ArcTalk: PRINT : INPUT ">", A: PRINT
IF A > 6 OR A < 1 THEN GOTO ArcTalk
IF A = 6 THEN ReturnTo940 = 1: GOTO EndTalking
IF A = 1 THEN PRINT "L'Ther stands up from his table.  'Okay,' he says.  'If you're ready to die,": PRINT "come at me.'": ArcFight = 1: ReturnTo940 = 1: GOTO EndTalking
IF A = 2 THEN PRINT "'Talk's cheap, sod,' says L'Ther.": ReturnTo940 = 1: GOTO EndTalking
IF A = 4 THEN
PRINT "'I want to offer you my services as a trustworthy guide,' says L'Ther.  'Do you"
PRINT "trust me?' he asks."
PRINT : PRINT "You say:": PRINT
PRINT "1.  'Yes.'"
PRINT "2.  'Not on your life.'"
PRINT "3.  'Maybe.'"
Hmmm: PRINT : INPUT ">", A: PRINT
IF A = 1 THEN GOTO Offer
IF A = 2 THEN PRINT "'Your loss,' says L'Ther, and he vanishes.": Arcanoloth = 1: ReturnTo940 = 1: GOTO EndTalking
IF A = 3 THEN PRINT "'Make up your mind,' says L'Ther.": ReturnTo940 = 1: GOTO EndTalking
IF A > 3 OR A < 1 THEN GOTO Hmmm
END IF
IF A = 5 THEN GOTO Offer
IF A = 3 THEN
PRINT "'I am, am I?' says L'Ther.  ";
IF Guide = 1 THEN PRINT "'Now, remember that your, 'guide-friend' pushed me into the swamps of Minauros.": PRINT "He turned stag on me.  And you trust him,' L'Ther says, shaking his head.": ReturnTo940 = 1: GOTO EndTalking
IF Guide = 2 OR Guide = 6 THEN
PRINT "'What happened to your, 'guide-friend?' he asks."
PRINT : PRINT "You say:": PRINT
PRINT "1.  'Uh.... he died.'"
PRINT "2.  'Uh.... I sent him away.'"
PRINT "3.  'Uh.... I killed him.'"
ArcTalk2: PRINT : INPUT ">", A: PRINT
IF A > 3 OR A < 1 THEN GOTO ArcTalk2
IF A = 1 AND Guide = 4 THEN PRINT "'What a pity,' says L'Ther.": ReturnTo940 = 1: GOTO EndTalking
IF A = 1 AND Guide <> 4 THEN PRINT "'I'm sure,' says L'Ther.": ReturnTo940 = 1: GOTO EndTalking
IF A = 3 THEN PRINT "'Sure,' says L'Ther.": ReturnTo940 = 1: GOTO EndTalking
IF A = 2 AND GuideLeft <> 1 AND FuryMad <> 1 THEN PRINT "'Sure,' says L'Ther.": ReturnTo940 = 1: GOTO EndTalking
IF A = 2 AND (GuideLeft = 1 OR FuryMad = 1) THEN
Offer:
PRINT "'So, you trust me.  That's good,' says L'Ther.  'That's part of the reason I'm"
PRINT "here.  I want to know something:  Would you like a trustworthy guide to Baator?"
PRINT "I'm sure you do.'": PRINT : PRINT "You say:": PRINT
PRINT "1.  'No.  I must honor the memory of the dead.'"
PRINT "2.  'No.  I am biased against people who wear grey.'"
PRINT "3.  'Sure!  I'll trust you, although ever other guide I've had before has"
PRINT "    turned stag on me.  What's another one in the grand scheme of things?'"
PRINT "4.  'Sure.  I trust you with my life.'"
PRINT "5.  'Maybe.  Let me deliberate over the ramifications of such a weighty"
PRINT "     decision fraught with portent.'"
ArcTalk3: PRINT : INPUT ">", A: PRINT
IF A > 5 OR A < 1 THEN GOTO ArcTalk3
IF A = 5 THEN PRINT "'Whatever,' says L'Ther.": ReturnTo940 = 1: GOTO EndTalking
IF A = 1 OR A = 2 THEN PRINT "'A pity,' says L'Ther.  With that, he stands up and instantly vanishes."
IF A = 3 OR A = 4 THEN
PRINT "'It's good to know that I'm trusted,' says L'Ther."
IF Guide = 1 OR Guide = 3 THEN
PRINT "Fury looks at you as if you were insane.  'So,' he says to you, 'You don't want"
PRINT "me anymore.'": PRINT : PRINT "You say:": PRINT
PRINT "1.  'Oops.  I forgot about you.  Sorry, L'Ther, I have Fury here.'"
PRINT "2.  'Too bad.  Leave us be.'"
PRINT "3.  'Why can't I take both of you?'"
GuideTalk: PRINT : INPUT ">", A: PRINT
IF A > 3 OR A < 1 THEN GOTO GuideTalk
IF A = 1 THEN PRINT "L'Ther says, 'Your loss,' and vanishes.": ReturnTo940 = 1: Arcanoloth = 1: GOTO EndTalking
IF A = 2 THEN PRINT "Fury looks at you darkly.  'I'll be back!' he yells at L'Ther.  'And then you'll": PRINT "be dead.  Beware, Elf!  He is not what he seems to be!'  With that, Fury stomps": PRINT "out of the Burning Bariuar Inn.": Guide = 5: FuryLeft = 1: ReturnTo940 = 1: GOTO EndTalking
IF A = 3 THEN PRINT "'It's either him or me,' says Fury.": GOTO GuideTalk
END IF
Guide = 5: ReturnTo940 = 1: GOTO EndTalking
END IF
END IF
END IF
END IF
END IF
IF RM = 16 AND Slave = 0 THEN
PRINT "'Free me!' begs the slave."
PRINT "You say:": PRINT
PRINT "1.  'Why?'"
PRINT "2.  'Sure!'"
PRINT "3.  'No.  You might be a fiend in disguise.'"
PRINT "4.  'Never mind.'"
SlaveTalk: PRINT : INPUT ">", A: PRINT
IF A > 4 OR A < 1 THEN GOTO SlaveTalk
IF A = 1 THEN PRINT "'I'll help you!' begs the slave.": ReturnTo940 = 1: GOTO EndTalking
IF A = 2 THEN PRINT "'Okay,' you say, 'I'll free you.'": A$ = "free slave": GOTO EndTalking
IF A = 3 THEN PRINT "'I'm not!' begs the slave.": ReturnTo940 = 1: GOTO EndTalking
IF A = 4 THEN ReturnTo940 = 1: GOTO EndTalking
END IF
END IF
IF Level = 5 THEN
IF RM = 5 AND (Osyluth3 = 0 OR Osyluth3 = 3) THEN
PRINT "You walk up to the osyluth.  'Hello!' you say to it."
PRINT "'How may I be of service to you, kind sir?' asks the osyluth."
PRINT : PRINT "You say:": PRINT
PRINT "1.  'Kind sir, nothing!  I'm the Elf.  I killed Zaebos!'"
PRINT "2.  'I'd like to pass here, if that is at all possible without bribing or"
PRINT "    slaying you (and it's probably not)."
PRINT "3.  'My name is Lycan Fiendsbane.  You killed my father.  Prepare to die.'"
PRINT "4.  'Never mind.'"
OsyTalk2: PRINT : INPUT ">", A: PRINT
IF A = 1 THEN PRINT "'Okay,' says the osyluth.  'I believe you.  You're the... Elf? is it?  And you": PRINT "killed Zaebos.'  The osyluth nods.": ReturnTo940 = 1: GOTO EndTalking
IF A = 2 THEN
PRINT "'You may pass,' says the osyluth, 'if you tell me your name and business.'"
PRINT : PRINT "You say:": PRINT
PRINT "1.  'I'm the Elf.  I believe that since you are blocking the entrance to the"
PRINT "    throne room, that there is something important in there.  If there is"
PRINT "    something important in the throne room, I find out what it is.'"
PRINT "2.  'I'm Lycan Fiendsbane.  My mission is to kill fiends.'"
PRINT "3.  'I'm Nacyl Angelbane.  My mission is to kill angels.'"
PRINT "4.  'Never mind.'"
WhoAmI: PRINT : INPUT ">", A: PRINT
IF A < 1 OR A > 4 THEN GOTO WhoAmI
IF A = 1 THEN PRINT "'That's as good a reason as any,' says the osyluth.": Osyluth3 = 3: ReturnTo940 = 1: GOTO EndTalking
IF A = 2 THEN PRINT "'Okay,' says the osyluth.  'With such an attitude, you'll be dead quick in": PRINT "Baator.  I'm surprised you've made it this far.  You may pass.  Have a nice": PRINT "life, however short it may be from here on.'": ReturnTo940 = 1: Osyluth3 = 3: GOTO EndTalking
IF A = 3 THEN PRINT "'Isn't that a noble quest?' says the osyluth.  'You may certainly pass.'": Osyluth3 = 3: ReturnTo940 = 1: GOTO EndTalking
IF A = 4 THEN PRINT "'Okay.'": ReturnTo940 = 1: GOTO EndTalking
END IF
IF A = 3 THEN PRINT "'I never killed your father, mortal.  But if it's a fight you want, it's a fight": PRINT "you shall have.'": Osyluth3 = 1: ReturnTo940 = 1: GOTO EndTalking
IF A = 4 THEN PRINT "'Have a nice lifetime, mortal,' says the osyluth.": ReturnTo940 = 1: GOTO EndTalking
END IF
IF RM = 21 AND (Osyluth2 = 0 OR Osyluth2 = 3) THEN
PRINT "You walk up to the osyluth.  'Hello!' you say."
PRINT "'Yes?' the osyluth says, in a thin, raspy voice."
PRINT : PRINT "You say:": PRINT
PRINT "1.  'I'm the Elf.  I killed Zaebos.'"
PRINT "2.  'Can I enter the city?'"
PRINT "3.  'Will you be my friend?'"
PRINT "4.  'I'm here to kill you.'"
PRINT "5.  'Never mind.'"
OsyTalk: PRINT : INPUT ">", A: PRINT
IF A > 5 OR A < 1 THEN GOTO OsyTalk
IF A = 1 THEN PRINT "'Good.  I don't really care about your dreams and fantasies.  Honestly, these": PRINT "adventurers now days.'": ReturnTo940 = 1: GOTO EndTalking
IF A = 3 THEN PRINT "'No,' says the osyluth.": ReturnTo940 = 1: GOTO EndTalking
IF A = 4 THEN PRINT "'Good,' says the osyluth.  'The first dead berk of the day.'": Osyluth2 = 1: ReturnTo940 = 1: GOTO EndTalking
IF A = 5 THEN ReturnTo940 = 1: GOTO EndTalking
IF A = 2 THEN
PRINT "'State your name and business,' says the osyluth.": PRINT
PRINT "You say:": PRINT
PRINT "1.  'I'm the Elf.  I am looking for a friend in the city.'"
PRINT "2.  'I'm Lycan Fiendsbane.  My mission is to slaughter fiends.'"
PRINT "3.  'I'm Fury.  I'm a trustworthy guide.'"
PRINT "4.  'Never mind.'"
WhoAreYouTalk: PRINT : INPUT ">", A: PRINT
IF A = 1 THEN PRINT "'Okay, sod.  You may enter Tantlin.  Have a nice day.'": Osyluth2 = 3: ReturnTo940 = 1: GOTO EndTalking
IF A = 2 THEN PRINT "'Sorry, then.  I can't let you in,' says the osyluth.": ReturnTo940 = 1: GOTO EndTalking
IF A = 3 THEN PRINT "'A trustworthy guide?  YOU?'  The osyluth doubles over in laughing, then looks": PRINT "back up at you.  'Don't make me laugh.'": ReturnTo940 = 1: GOTO EndTalking
IF A = 4 THEN
NevMind:
PRINT "'So... you don't want me to know who you are,' says the osyluth in a raspy"
PRINT "voice."
PRINT : PRINT "You say:": PRINT
PRINT "1.  'I am not a suspicious character!  How dare you insinuate otherwise!'"
PRINT "2.  'I killed Zaebos.  Why doesn't anyone believe me?'"
PRINT "3.  'I don't converse with fiends.'"
PRINT "4.  'Never mind.'"
NeverMind: PRINT : INPUT ">", A: PRINT
IF A > 4 OR A < 1 THEN GOTO NeverMind
IF A = 1 THEN PRINT "'Okay, never mind,' says the osyluth.": ReturnTo940 = 1: GOTO EndTalking
IF A = 2 THEN PRINT "'Okay, sod.  You killed Zaebos.  Go away.  I don't even WANT to know who you": PRINT "are.'": ReturnTo940 = 1: GOTO EndTalking
IF A = 3 THEN PRINT "'Okay, fine,' the osyluth says, but he mumbles, 'Prejudiced berk.'": OsyluthHp = OsyluthHp + 10: ReturnTo940 = 1: GOTO EndTalking
IF A = 4 THEN GOTO NevMind
END IF
END IF
END IF
IF RM = 6 AND (PitFiend2 = 0 OR PitFiend2 = 3) THEN
PRINT "You walk up to the pit fiend seated on the blackened throne.  'Hello,' you"
PRINT "say cheerfully."
PRINT "'Hello, mortal,' says the pit fiend.  'I'm the ruler of this entire city.'"
PRINT : PRINT "You say:": PRINT
PRINT "1.  'Why does everyone keep calling me a mortal?  I have no soul.  I'm nearly"
PRINT "    indestructible.  These 'immortals' can die upon my sword.  Why?'"
PRINT "2.  'I'm looking for a portal to the next layer of Baator.'"
PRINT "3.  'I'm the Elf.  I killed Zaebos.'"
PRINT "4.  'What's with this town of yours?  It's barmy!'"
PRINT "5.  'You are a fiend.  I hate fiends.  Therefore, I hate you.  Prepare to die.'"
PRINT "6.  'Never mind.'"
PitFiendTalk: PRINT : INPUT ">", A: PRINT
IF A > 6 OR A < 1 THEN GOTO PitFiendTalk
IF A = 1 THEN PRINT "'You don't live forever, like we do.  If you were to sit yourself down in a nice": PRINT "chair and stay there for ten thousand years without any disruptions, you would": PRINT "be dust.  Us baatezu would not.'": ReturnTo940 = 1: GOTO EndTalking
IF A = 3 THEN PRINT "'Talk's cheap, sod.  But I'm sure that you hear that all the time.'": ReturnTo940 = 1: GOTO EndTalking
IF A = 4 THEN PRINT "'My creed is might makes right.  The gangs that roam the town do so to prove": PRINT "that their might is right.  That's the way my town is.  It's not barmy.  If you": PRINT "want to see barmy, you should go to the city of Grenpoli, on Maladomini.'": ReturnTo940 = 1: GOTO EndTalking
IF A = 5 THEN PRINT "'Idiot adventurer,' says the pit fiend.": PitFiend2 = 1: ReturnTo940 = 1: GOTO EndTalking
IF A = 6 THEN ReturnTo940 = 1: GOTO EndTalking
IF A = 2 THEN
PRINT "'Maybe I should help you.  Maybe I shouldn't.  Why should I help you?'"
PRINT : PRINT "You say:": PRINT
PRINT "1.  'I'm the Elf.  I killed Zaebos.'"
PRINT "2.  'I'm strong.  I'm more powerful than everyone.'"
IF Escaped = 1 THEN PRINT "3.  'I escaped from that mob.  Your creed is might makes right.'"
IAmStrong: PRINT : INPUT ">", A: PRINT
IF (A > 2 OR A < 1) AND Escaped = 0 THEN GOTO IAmStrong
IF (A > 3 OR A < 1) AND Escaped = 1 THEN GOTO IAmStrong
IF A = 1 THEN PRINT "'That option occured in the last menu.  But that's not quite enough, as you": PRINT "could be making it up.'": ReturnTo940 = 1: GOTO EndTalking
IF A = 2 THEN PRINT "'Prove it,' says the pit fiend.": ReturnTo940 = 1: GOTO EndTalking
IF A = 3 THEN PRINT "'You've got me there, blood.  Okay, you'll find a portal through the door in": PRINT "the north,' the pit fiend says, pointing to a door that appears in the wall.": Escaped = 2: ReturnTo940 = 1: GOTO EndTalking
END IF
END IF
IF RM = 1 AND ThugTalk > 0 THEN
PRINT "You walk up to the elf in black.  'Hello,' you say."
PRINT "'Yeah?' asks the elf in black.  'What can I do for you, cutter?'": PRINT
PRINT "You say:": PRINT
PRINT "1.  'Surely we can work this out.  I don't want my head pounded in.'"
PRINT "2.  'If you want a fight, I'll give you a fight.  Prepare to die.'"
PRINT "3.  'I'm the Elf.  I killed Zaebos.'"
PRINT "4.  'Never mind.'"
ThugTalk: PRINT : INPUT ">", A: PRINT
IF A > 4 OR A < 1 THEN GOTO ThugTalk
IF A = 1 THEN PRINT "As soon as those words are out of your mouth, a freak wormhole opens up in the": PRINT "fabric of space and time and suddenly you are somewhere else.": Escaped = 1: Arcanoloth = 1: RM = 12: ReturnTo940 = 2: GOTO EndTalking
IF A = 2 THEN PRINT "The elf in red lifts his fingers.  The three figures in the shadows draw their": PRINT "swords.": ThugTalk = 0: ReturnTo940 = 1: GOTO EndTalking
IF A = 3 THEN PRINT "'You don't fool us, Clueless sod,' says the elf in red.": ReturnTo940 = 1: GOTO EndTalking
IF A = 4 THEN ReturnTo940 = 1: GOTO EndTalking
END IF
END IF
EndTalking:
END SUB

