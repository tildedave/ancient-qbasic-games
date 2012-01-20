DECLARE SUB Talking ()
DECLARE SUB Level2Inputs ()
DECLARE SUB Level1Inputs ()
DECLARE SUB OnTheBaatezu ()
DECLARE SUB Fights ()
DECLARE SUB GuideSay ()
DECLARE SUB Avernus ()
DECLARE SUB Dis ()
DECLARE SUB Minauros ()
DECLARE SUB Dead ()
COMMON SHARED Killer2$, RM, Killer, Level, NoShow, Hp, MaxHp, Cornugons, CornuGated, Cornugon1, CornugonHp, Barbazus, BarbGated, BarbazuHp, Abishais, AbishGated, AbishaiHp, Osyluth2, OsyGated, Osyluths, OsyluthHp, HamGated, Hamatulas, HamHp, Hamatula1, ErinyesGated, Erinyes1, ErinyesHp, Rope, East, North, Guide, GuideLeft, ArcFight, ArcReveal, Arcanoloth, ReturnTo940, Mezzoloths, ArcGated, MezzHp, MezzGated, ArcHp, CantRun, A$, FuryMad, Slave, Immune, GoingToDie, FreakWormHole, ThugTalk, LtherCome, Thugs, ThugHp, TalkLther, GuideIncapacitated, FuryBeg, Ruby, Money, Osyluth3, Escaped, PitFiend2, PitFiendHp, LetFree, Mezz1, LtherHere3, FuryLeft, GateOpened, Calling, CabinetOpen, Pool, DoorOpen, Cur, SeenThis, Looked, Cons, Abishai2, Cornugon2, ClosedEyes, Barbazu1, Osyluth1, AbishHit, Book, Chains, Kyton, Page, StyxDead, Crawling, BoatMan, Pass, Break, Sinking, Kyton1, Alley1Seen, Alley2Seen, Alley3Seen, AlleySeen, PitFiend, YetAnotherAlley, PitFiendGated, FuryCome, FuryHp, EvilTwinHp, FuryConfront, Abishai1
COLOR 15
ON ERROR GOTO Err1
CLS
RANDOMIZE TIMER
KEY 10, "fight"
KEY 9, "look"
KEY 8, "regenerate"
KEY 7, "health"
KEY 6, "talk to guide"
KEY 4, "talk to fiend"
RM = 2
CornugonHp = 35
AbishaiHp = 13
BarbazuHp = 20
OsyluthHp = 15
KytonHp = 25
HamHp = 20
FuryHp = 50
PitFiendHp = 90
Level = 1: RM = 2
OPEN "data.baa" FOR INPUT AS #1
GOSUB LoadStuff
GOSUB 5: GOTO 940
1 Time = Time + 1
KEY 5, A$
IF Hp <= 10 THEN PRINT "Your vision is dimmed by blackness, like the inky night about to envelop you.": PRINT "Every second seems like a year, and taking a breath has become a concious": PRINT "effort.  You are dying."
IF PitFiend <> 7 THEN PitFiendHp = 90
IF CantRun = 1 THEN
IF Abishais = 0 AND RM = 19 AND Abishai1 = 2 THEN CantRun = 0
IF Cornugons = 0 AND RM = 2 AND Cornugon1 = 2 THEN CantRun = 0
IF SeenThis = 2 AND RM = 6 THEN CantRun = 0
END IF
IF Level = 1 AND (RM = 9 OR RM = 7 OR RM = 4) THEN Healing = Healing + 1
IF Level = 1 AND Guide = 1 AND (RM = 9 OR RM = 7 OR RM = 4) THEN FHealing = FHealing + 1
IF FuryHp <> 50 THEN
FHealing = FHealing + 1
IF FHealing >= 4 THEN FHealing = Healing - 4: FuryHp = FuryHp + 1
END IF
IF Hp <> MaxHp THEN
Healing = Healing + 1
IF Healing >= 4 THEN Healing = Healing - 4: Hp = Hp + 1: PRINT "You feel better."
END IF
Fights
IF Level = 3 THEN
IF RM <> 1 AND RM <> 16 AND RM <> 22 AND RM <> 24 THEN PRINT "Polluted rain washes down on you from the sky, soaking you to the skin."
IF RM = 16 OR RM = 22 OR RM = 24 THEN PRINT "Rain trickles down on you from wet chains above."
IF RM = 1 THEN PRINT "You can hear the tinkle of rain on the roof of the Sinking Bariuar Inn."
IF YetAnotherAlley = 1 AND PitFiend = 3 THEN PRINT "The man in white is here, waiting for you to read the scroll."
IF YetAnotherAlley = 1 AND PitFiend = 2 THEN
PitFiend = 3
PRINT "Out of the shadows steps the man dressed all in white.  He greets you, and says,"
PRINT "'I have drawn up a contract for you.'  With that, he holds out a scroll before"
PRINT "you, and says to you, 'Read it.'"
END IF
IF PitFiend = 5 THEN PRINT "The man in white is here, waiting for you to sign the contract."
IF PitFiend = 4 THEN
PRINT "'Nice and simple,' says the man in white.  'Now, all you have to do is sign on"
PRINT "the dotted line, and you shall be invincible against the attacks of the fiends"
PRINT "on Baator.'  With that, he hands you a pen."
PitFiend = 5
END IF
IF RM = 1 AND PitFiend = 6 THEN PRINT "Fury walks up to you.  'Well, let's continue, shall we?'": Guide = 3: FuryHp = 90
IF RM = 8 OR RM = 9 OR RM = 10 OR RM = 11 THEN
PRINT "Your body sinks deeper into the swamp.  Now ";
IF Sinking = 0 THEN PRINT "your ankles have sunk into the": PRINT "swamp."
IF Sinking = 1 THEN PRINT "the swamp has captured your": PRINT "knees."
IF Sinking = 2 THEN PRINT "you are up to your waist in": PRINT "filth and muck."
IF Sinking = 3 THEN PRINT "you are up to your neck in the": PRINT "swamp."
IF Sinking = 4 THEN PRINT "the swamp has totally enveloped": PRINT "you."
IF Sinking >= 5 THEN PRINT "you are beyond all hope of": PRINT "recovery.  Your body sinks deep into the swamp, where it is never found.": NoShow = 1: Killer = 12: Dead
Sinking = Sinking + 1
IF Sinking = 5 THEN GOSUB 5
ELSE
Sinking = 0
END IF
END IF
IF Level = 1 THEN
IF RM = 26 THEN
IF StyxDead = 1 THEN PRINT "You are swept away along the River Styx to a place where your fate is best left": PRINT "undescribed.": NoShow = 1: Killer = 5: Dead
Current = Current + 1
Cur = INT(RND * 2) + 1
IF Current = 8 THEN Cur = 0
IF Current = 9 THEN Current = 1
IF Cur = 0 THEN PRINT "The current is strangely still now."
IF Cur = 1 THEN PRINT "The current is pulling you to the east quicker than you can keep up with the": PRINT "flow!  If you don't do something, you'll be swept away!": StyxDead = 1
IF Cur = 2 THEN PRINT "The current is pulling you to the west quicker than you can keep up with the": PRINT "flow!  If you don't do something, you'll be swept away!": StyxDead = 1
END IF
IF RM = 25 THEN
PRINT "The maggots surround you, biting you, and eating at your living flesh."
Dmg = INT(RND * 8) + 1
Hp = Hp - Dmg
Dmg = INT(RND * 8) + 1
FuryHp = FuryHp - Dmg
IF Hp <= 0 THEN Killer = 4: Killer$ = "the pit of maggots": Dead
END IF
IF SeenThis = 1 AND Abishais = 0 THEN PRINT "The leader of the patrol of abishai asks you again, 'Do you have a pass?'"
FireBall = INT(RND * 20) + 1
IF FireBall = 1 THEN
Dir = INT(RND * 4) + 1
PRINT "A fireball whizzes by, about two hundred feet ";
IF Dir = 1 THEN PRINT "to your left."
IF Dir = 2 THEN PRINT "to your right."
IF Dir = 3 THEN PRINT "behind you."
IF Dir = 4 THEN PRINT "in front of you."
END IF
END IF
IF Guide = 1 THEN
Act = INT(RND * 4) + 1
IF Arcanoloth = 1 AND FuryConfront = 0 THEN
FuryConfront = 1
PRINT "Fury walks up to you.  'Uh, sir, I know you may not trust me now, what with"
PRINT "what L'Ther said to you.  I know you may not believe me, but he was lying about"
PRINT "me.  Nothing he said about me was true.  I don't want you to desert me, and I"
PRINT "don't kill innocent travelers.  Nor do I work as a guide just for the money."
PRINT "I'm actually looking for a.... as funny as this may sound... a friend.  So, I'm"
PRINT "willing to give you back the ruby if you want it, but please don't send me"
PRINT "away.'"
Choice: PRINT : PRINT "You say:": PRINT
PRINT "1.  'I'm touched.  You can stay with me and keep the ruby.'"
PRINT "2.  'I'm touched.  You can stay with me.  Give me my ruby back.'"
PRINT "3.  'Go away!  I don't want to see you again, you cross-trading liar!'"
PRINT "4.  'Let me save my game so I can come back here at a later point.'"
Please: PRINT : INPUT ">", A: PRINT
IF A > 4 OR A < 1 THEN GOTO Please
IF A = 1 THEN PRINT "'Thank you, sir,' says Fury.  'I'm glad that you want to keep me,' he adds."
IF A = 2 THEN PRINT "'Here, sir,' says Fury, handing the ruby back to you.  'We may need it to bribe": PRINT "baatezu officers.'": Ruby = 1
IF A = 3 THEN PRINT "Fury nods his head slowly, and walks off into the rain.": Guide = 2: GuideLeft = 1: GOTO GuidEnd
IF A = 4 THEN PRINT "'Always glad to oblidge,' says Fury.": FuryConfront = 0: GOSUB Save: GOTO Choice
END IF
GOSUB GuideSay2
IF RM = 16 AND Level = 2 AND Break <> 0 THEN Act = 0
IF RM = 26 AND Level = 1 THEN Act = 5
IF Act = 0 THEN PRINT "Fury rattles his chains and moans in misery."
IF Act = 1 THEN PRINT "Fury looks around benignly."
IF Act = 2 THEN PRINT "Fury hums a tune that you are totally unfamiliar with."
IF Act = 3 THEN PRINT "Fury takes out his short sword and swings it around."
IF Act = 4 THEN PRINT "Fury looks up at the sky, and frowns."
IF Act = 5 THEN PRINT "Fury struggles to keep up with the current."
GuidEnd:
END IF
IF Guide = 3 THEN
GOSUB GuideSay2
Act = INT(RND * 4) + 1
IF Act = 1 THEN PRINT "Fury looks around suspiciously, as if someone was watching him."
IF Act = 2 THEN PRINT "Fury takes out a block of wood and begins to whittle at it."
IF Act = 3 THEN PRINT "Fury takes out his short sword and swings it around."
IF Act = 4 THEN PRINT "Fury swivels around, but there's nobody behind him."
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
YetAnotherAlley = 0
IF A$ <> "l" AND A$ <> "look" AND Level = 2 THEN Looked = 0: Cons = 0
IF Level = 1 THEN Avernus
IF Level = 2 THEN Dis
IF Level = 3 THEN Minauros
IF Level >= 4 THEN GOTO Transfer
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
IF PitFiend = 7 THEN PRINT "A pit fiend is here, attacking you!"
IF FDeadRm = RM AND FDeadLevel = Level AND Guide <> 3 THEN PRINT "Fury's dead body is here.  You stop to weep a bit for your dead friend."
IF FDeadRm = RM AND FDeadLevel = Level AND Guide = 3 THEN PRINT "The dead body of a human in white is here.  He looks a bit like Fury."
RETURN
940 GOSUB 1
941 KEY 5, A$: ReturnTo940 = 0: PRINT : INPUT "Baator>", A$: PRINT
IF A$ = "fight" AND Chains = 1 THEN PRINT "You're a bit tied up right now.": GOTO 940
IF A$ = "break" AND Chains = 1 THEN
PRINT "You break the barbed chain open, causing the chain to fall to the ground and": PRINT "also causing your flesh to rend further."
Hp = Hp - 3
IF Hp <= 0 THEN Killer$ = "a length of chain": Dead
Chains = 0: GOTO 940
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
IF A$ = "talk to guide" AND Guide = 1 THEN GuideSay: GOTO 940
IF A$ = "talk to guide" AND Guide = 3 THEN GuideSay: GOTO 940
IF MID$(A$, 1, 4) = "talk" THEN GOSUB Talk
IF A$ = "regenerate" THEN
IF Hamatulas > 0 OR Hamatula1 = 1 OR Osyluths > 0 OR Osyluth1 = 1 OR Barbazus > 0 OR Barbazu1 = 1 OR Abishai1 = 1 OR Abishais > 0 OR Cornugons > 0 OR Cornugon1 = 1 OR PitFiend = 7 THEN PRINT "Not now!  You're in a fight.": GOTO 941
PRINT "You close your eyes and clear your mind.  Your wounds begin to heal of their": MaxHp = MaxHp - 1: Hp = MaxHp
PRINT "own accord and in a matter of moments, you are completely healed."
GOTO 940
END IF
IF A$ = "z" THEN PRINT "Time passes....": Healing = Healing + 1: GOTO 940
IF A$ = "" THEN GOTO 940
IF A$ = "room" THEN PRINT RM: GOTO 941
IF A$ = "credits" THEN
PRINT "Baator:  You bet your life": PRINT
PRINT "     Programmer:  Dave King"
PRINT "     Designer:  Dave King"
PRINT "     Dedicated to:  Chuck Kappenman, upon which the basic premise of this game"
PRINT "      is based."
PRINT "     Note:  Most places, characters, and monsters contained in this game are"
PRINT "      registered trademarks of TSR, inc and are derived from the adventure,"
PRINT "      'Fires of Dis.'"
PRINT "     Note for Idiots:  All characters, events, items, small animals, etc, in"
PRINT "      this story are ficticious.  Any resemblance to any real people, events,"
PRINT "      items, small animals, etc. is purely coincedental.  If any part of this"
PRINT "      game resembles any events in your life, you should start worrying."
PRINT "     Shareware note:  This game is shareware.  If you payed for this game, you"
PRINT "      have been peeled by baatezu high-ups that are after your immortal soul."
PRINT "      The only chance you have now is to plan a daring raid into the heart of"
PRINT "      Baator, recover your jink, and slay a few baatezu high-ups."
PRINT "     Game plug:  'The Garden,' on Avernus will be later detailed in a game"
PRINT "      affectionatly known as 'Dking's guide to Extraordinary Extraplanar"
PRINT "      Sites.'"
GOTO 941
END IF
IF CantRun = 1 AND (A$ = "n" OR A$ = "s" OR A$ = "e" OR A$ = "w" OR A$ = "ne" OR A$ = "nw" OR A$ = "se" OR A$ = "sw" OR A$ = "u" OR A$ = "d") THEN PRINT "Not now.": GOTO 940
IF A$ = "i" THEN GOTO I
IF A$ = "fight" AND Sword = 1 THEN PRINT "You don't have your sword.  You can't fight without a sword.": GOTO 941
IF A$ = "look" OR A$ = "l" THEN GOSUB 5: GOTO 941
IF A$ = "save" THEN GOSUB Save: GOTO 941
IF A$ = "load" THEN GOSUB Load: GOSUB 5: GOTO 941
IF MID$(A$, 1, 1) = "q" THEN
INPUT "Do you really want to quit?", Q$: PRINT
IF MID$(Q$, 1, 1) = "y" THEN COLOR 0: END
PRINT "Good!  The adventure must go on!": GOTO 941
END IF
IF Level = 1 THEN GOSUB Level1
IF Level = 2 THEN GOSUB Level2
IF Level = 3 THEN
IF PitFiend = 5 AND ((RM = 4 AND A$ = "s") OR (RM = 3 AND A$ = "w") OR (RM = 6 AND A$ = "w") OR A$ = "no") THEN
Leave = Leave + 1
IF Leave = 1 THEN PRINT "The man in white says, 'What's the matter?  Don't you like my contract?'": GOTO 940
IF Leave = 2 THEN PRINT "The man in white says, 'Are you GOING to sign?'": GOTO 940
IF Leave >= 3 THEN PRINT "The man in white's eyes flash red.  'Okay, mortal.  You will pay for your": PRINT "reluctance!'  With that, the man in white's form grows into that of that of a": PRINT "huge gargoyle-like demon.  Two massive wings surround his body, and he is": PRINT "shrouded in fire.  It grins on you, and attacks!": CantRun = 1: PitFiend = 7: PitFiendGated = 1: GOTO 940
END IF
IF A$ = "enter portal" AND Arcanoloth = 1 AND Sinking = 5 AND RM = 9 THEN PRINT "You pass through the portal, and suddenly you are somwhere else.": Level = 4: RM = 10: GOSUB 5: GOTO 940
IF Kyton = 1 AND ((A$ = "n" AND RM = 14) OR (A$ = "ne" AND RM = 22) OR (A$ = "n" AND (RM = 24 OR RM = 16))) THEN PRINT "The kyton blocks the exit.": GOTO 940
IF A$ = "give pass" AND RM = 7 AND Pass = 1 AND Hamatula1 <> 1 AND Hamatula1 <> 2 THEN PRINT "You hand the pass to the hamatula.  He reads it, and hands it back.  'Okay, sod.": PRINT "You can pass here.  Have a nice day.  Go away.  Never bother me again.'": Hamatula1 = 3: GOTO 940
IF A$ = "s" AND RM = 7 AND Hamatula1 < 2 AND Guide <> 1 AND Guide <> 3 THEN PRINT "A hamatula guards the exit.": GOTO 940
IF A$ = "s" AND Guide = 2 AND RM = 7 AND PitFiend = 6 THEN PitFiend = 8: PRINT "Suddenly, next to you appears Fury.  'Hey, I guess that you're skipping out on": PRINT "that deal, huh?'  You nod.": Guide = 3: FuryHp = 90: GOTO 940
IF (A$ = "s" AND RM = 9) OR (A$ = "se" AND RM = 8) OR (A$ = "n" AND RM = 10) THEN PRINT "You pull yourself out of the swamp."
IF (A$ = "s" AND RM = 7) OR (RM = 12 AND (A$ = "n" OR A$ = "nw")) THEN
PRINT "You plunge into the swamp.  ";
IF SaidThis = 1 THEN PRINT ""
IF SaidThis = 0 THEN SaidThis = 1: PRINT "On a stupidy scale, this one ranks right up there": PRINT "with running into the Viper Forest of Azzagrat."
END IF
IF A$ = "u" AND (RM = 8 OR RM = 9 OR RM = 10 OR RM = 11) THEN
IF Sinking = 5 THEN PRINT "You struggle to stay above the swamp.  You pull yourself up high enough so that": PRINT "your upper body is no longer covered by the swamp.": Sinking = 3: GOSUB 5: GOTO 940
END IF
IF MID$(A$, 1, 4) = "talk" AND RM = 1 THEN
IF PitFiend = 0 THEN
IF Guide = 0 THEN
PRINT "You walk up to the man in white.  'Hello,' he says to you.  'I'm Fury.  I can"
PRINT "bestow upon you vast riches and power for a small price.  In fact, I'm so nice"
PRINT "that I'll give you vast power.  I will make it so that you will be invincible"
PRINT "in battle.  So, what do you say?  The deal will be nice and safe, with no hazard"
PRINT "to you or your person.'"
PitFiend = 1: GOTO 940
END IF
IF Guide = 1 THEN
PRINT "You walk up to the man in white.  'Hello,' he says to you.  'I hear that you"
PRINT "are the Elf.  However, unlike some people, I don't want to kill you for your"
PRINT "crimes.  In fact, I'm quite happy that you killed Zaebos.  I'd like to repay"
PRINT "you, if possible.  I can make you invincible in battle.  So, what do you say?'"
PitFiend = 1: GOTO 940
END IF
ELSE
IF PitFiend = 1 THEN PRINT "'Well,' says the man in white, 'Have you reached a decision?'": GOTO 940
END IF
END IF
IF A$ = "fight" AND (RM = 14 OR RM = 15 OR RM = 19 OR RM = 21) AND Kyton = 0 THEN Kyton = 1: PRINT "The kyton leaps to the attack!": Kyton = 1: GOTO FightKyton
IF A$ = "fight" AND Arcanoloth = 0 AND RM = 23 THEN PRINT "The man in grey laughs at you, and vanishes.  Suddenly, a kyton appears behind": PRINT "you.  It smiles, and attacks!": Kyton = 1: Arcanoloth = 1: GOTO 940
IF MID$(A$, 1, 4) = "read" AND PitFiend = 3 OR PitFiend = 4 THEN
PRINT "A Contract of Power:": PRINT
PRINT "The party of the first part, hereby known as the grantor, shall hereby give the"
PRINT "party of the second part, hereby known as the grantee what the grantee desired"
PRINT "at the time of the contract's signature. The teeth and claws of the baatezu in"
PRINT "Baator shall cause the grantee no pain at all."
PRINT "Payment for this contract shall be as follows:  the grantee shall relinquish all"
PRINT "rights that the grantee ever had on one pint of blood from the grantee.  The"
PRINT "blood shall be bestowed on the grantor with all rights and legal ownership that"
PRINT "was given to the grantee over the grantee's pint of blood."
PRINT : PRINT
PRINT "Signed:  _________________________________": PRINT : PRINT
IF PitFiend = 3 THEN PitFiend = 4
GOTO 940
END IF
IF A$ = "fight" AND PitFiend = 7 THEN GOTO FightPitFiend
IF MID$(A$, 1, 4) = "sign" AND PitFiend = 5 THEN
PRINT "You lift up the pen, and sign, 'The Elf,' onto the dotted line.  With that, the"
PRINT "man in white snaps up the scroll and pen from you.  'Done!' he shouts gleefully."
PRINT "With that, he says, 'Now, let the terms of the contract be fufilled!'  You"
PRINT "suddenly feel tougher.  Then he says, 'And now for my part of the deal.'  With"
PRINT "that, one of his fingers cuts open a vein on your arm.  The blood pours out of"
PRINT "your arm, into a vial that he holds nearby.  When the vial is filled, he snaps"
PRINT "his fingers.  Your arm is healed."
IF Guide = 2 THEN PRINT "The man in white says, 'Oh, and by the way, your guide is waiting for you back": PRINT "at the Sinking Bariaur Inn.'  ";
PRINT "With that, he vanishes."
FDeadLevel = 9: EvilTwinHp = EvilTwinHp + 50: Immune = 1: PitFiend = 6: GOTO 940
END IF
IF ((RM = 4 AND MID$(A$, 1, 1) = "s") OR (RM <> 4 AND MID$(A$, 1, 1) = "w")) AND PitFiend = 3 THEN PRINT "The man in white says, 'Wait.  Read the contract first.'": GOTO 940
IF A$ = "fight" AND RM = 7 AND Hamatula1 <> 2 THEN GOTO FightHam
IF A$ = "no" AND RM = 1 AND PitFiend = 1 THEN
PRINT "The man in white raises his eyebrow.  'Really?' he says.  'I'm sure that a"
PRINT "cutter like you could use the help.  But if you change your mind, then by all"
PRINT "means let me know.  You'll need help if you'll be wanting to storm Nessus again."
PRINT "While most lower fiends won't believe your stories, the gelugons and pit fiends"
PRINT "of Cania and Nessus will remember you.'": GOTO 940
END IF
IF MID$(A$, 1, 1) = "y" AND RM = 1 AND PitFiend = 1 THEN
IF Guide = 0 THEN
PRINT "'Good.  I'll get a contract drawn up.  I'll meet you in a place you'll know as"
PRINT "'Yet Another Sinking Alley.'  I'll have the deal drawn up - all nice and legal."
PRINT "The man in white gets up and walks out of the inn."
PitFiend = 2: GOTO 940
END IF
IF Guide = 1 THEN
PRINT "'Just let me work things out with your guide here,' says the man in white. "
PRINT "We'll meet you in a place you'll know as, 'Yet Another Sinking Alley.'  I'll"
PRINT "have the deal all drawn up - nice and legal.  The man in white starts talking"
PRINT "with Fury."
Guide = 2: PitFiend = 2: GOTO 940
END IF
END IF
IF A$ = "s" AND RM = 12 THEN RM = 14: GOSUB 5: GOTO 940
IF A$ = "n" AND RM = 14 THEN RM = 12: GOSUB 5: GOTO 940
IF A$ = "n" AND RM >= 5 AND RM <> 6 AND RM <> 8 AND RM <> 9 AND RM <> 13 AND RM <> 14 AND RM <> 15 AND RM <> 19 AND RM <> 20 AND RM <> 22 THEN RM = RM - 3: GOSUB 5: GOTO 940
IF A$ = "s" AND RM <> 1 AND RM <> 3 AND RM <> 5 AND RM <> 6 AND RM <> 10 AND RM <> 11 AND RM <> 12 AND RM <> 16 AND RM <> 17 AND RM <> 19 AND RM <= 21 THEN RM = RM + 3: GOSUB 5: GOTO 940
IF A$ = "e" AND RM <> 3 AND RM <> 4 AND RM <> 6 AND RM <> 7 AND RM <> 8 AND RM <> 9 AND RM <> 11 AND RM <> 12 AND RM <> 14 AND RM <> 15 AND RM <> 16 AND RM <> 17 AND RM <> 18 AND RM <= 19 THEN RM = RM + 1: GOSUB 5: GOTO 940
IF A$ = "w" AND RM <> 1 AND RM <> 4 AND RM <> 5 AND RM <> 7 AND RM <> 8 AND RM <> 9 AND RM <> 10 AND RM <> 12 AND RM <> 13 AND RM <> 15 AND RM <> 16 AND RM <> 17 AND RM <> 18 AND RM <> 19 AND RM <= 20 THEN RM = RM - 1: GOSUB 5: GOTO 940
IF A$ = "ne" AND (RM = 7 OR RM = 11 OR RM = 17 OR RM = 19 OR RM = 20 OR RM = 22 OR RM = 23) THEN RM = RM - 2: GOSUB 5: GOTO 940
IF A$ = "sw" AND (RM = 9 OR RM = 5 OR RM = 15 OR RM = 17 OR RM = 18 OR RM = 20 OR RM = 21) THEN RM = RM + 2: GOSUB 5: GOTO 940
IF A$ = "nw" AND (RM = 12 OR RM = 17 OR RM = 18 OR RM = 23 OR RM = 21) THEN RM = RM - 4: GOSUB 5: GOTO 940
IF A$ = "se" AND (RM = 8 OR RM = 13 OR RM = 14 OR RM = 17 OR RM = 19) THEN RM = RM + 4: GOSUB 5: GOTO 940
END IF
IF A$ = "fight" AND Osyluths > 0 THEN GOTO FightOsyluth
IF A$ = "fight" AND Hamatulas > 0 THEN GOTO FightHam
IF A$ = "fight" AND Cornugons > 0 THEN GOTO FightCornugon
IF A$ = "fight" AND Abishais > 0 THEN GOTO FightAbishai
IF A$ = "fight" AND Barbazus > 0 THEN GOTO FightBarbazu
IF A$ = "fight" AND Kyton = 1 THEN GOTO FightKyton
IF A$ = "health" THEN
PRINT "You have"; Hp; "hit points remaining out of"; MaxHp; "maximum."
IF Guide = 1 THEN PRINT "Fury has"; FuryHp; "hit points remaining out of 50 maximum."
IF Guide = 3 AND FuryHp <= 50 THEN PRINT "Fury has"; FuryHp; "hit points remaining out of 50 maximum."
IF Guide = 3 AND FuryHp >= 51 THEN PRINT "Fury has 50 hit points remaining out of 50 maximum."
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
IF Sword = 0 THEN PRINT "  A blood-stained sword, stained red with the blood of countless fiends."
PRINT : GOTO 941
FightKyton:
Hit = INT(RND * 2) + 1
IF Hit = 1 THEN PRINT "You swing out at the kyton with your sword, but you miss it!  It's chains jingle": PRINT "as it presses forward!"
IF Hit = 2 THEN
Dmg = INT(RND * 8) + 4
KytonHp = KytonHp - Dmg
PRINT "You swing out at the kyton with your blood-stained sword, and you hit it!"
PRINT "You can hear the jingling of chains from it as it falls back and then moves"
PRINT "forward again!"
IF KytonHp <= 0 THEN
BEEP
PRINT "The kyton falls back in pain as its body hits the floor of Baator and seemingly"
PRINT "evaporates into thin air.": KytonHp = 25
Kyton = 0
CantRun = 0
Xp = Xp + 20
END IF
END IF
GOTO 940
FightPitFiend:
CantRun = 1
Hit = INT(RND * 2) + 1
IF Hit = 1 THEN PRINT "You swing out at the pit fiend with your sword, but you miss it!  It laughs at": PRINT "you mockingly!"
IF Hit = 2 THEN
Dmg = INT(RND * 8) + 4
PitFiendHp = PitFiendHp - Dmg
PRINT "You slash out at the pit fiend with your sword, and your sword connects!  The"
PRINT "pit fiend howls out in rage!"
IF PitFiendHp <= 0 THEN
BEEP
PRINT "The pit fiend falls back in pain as its body hits the floor of Baator and"
PRINT "explodes in a huge fiery blast in every direction.": PitFiendHp = 90
PitFiend = 8
PitFiendGated = 0
CantRun = 0
Xp = Xp + 50
IF FuryCome = 6 THEN FuryCome = 0: PRINT "Fury sheathes his sword.  'Good thing I showed up when I did, huh?'": Guide = 1
END IF
END IF
GOTO 940
FightOsyluth:
CantRun = 1
IF Level = 2 AND RM = 10 AND Osyluths = 0 AND Osyluth1 = 0 THEN Osyluth1 = 1
IF Level = 3 AND RM = 1 AND Osyluths = 0 AND Osyluth2 = 0 THEN Osyluth2 = 1
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
IF Osyluth1 = 1 AND Level = 2 THEN Osyluth1 = 2: GOTO PastThis4
IF Osyluth2 = 1 AND Level = 3 THEN Osyluth2 = 2: GOTO PastThis4
IF Osyluths > 0 THEN Osyluths = Osyluths - 1
PastThis4:
OsyGated = 0: Xp = Xp + 10
IF Level = 2 THEN PRINT "Suddenly, two osyluths appear behind you.  'Okay, sod.  You're most definitely": PRINT "under arrest for the slaying of a law enforcement official.  Come with us.'": PRINT "They grab you, and in moments, you are somewhere else.": Osyluths = 0: RM = 16: Break = 3: GOSUB 5: GOTO 940
END IF
END IF
GOTO 940
FightAbishai:
CantRun = 1
IF Level = 1 AND RM = 19 AND Abishais = 0 AND Abishai1 = 0 THEN Abishai1 = 1
IF Level = 2 AND RM = 1 AND Abishais = 0 AND Abishai2 = 0 THEN Abishai2 = 1
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
IF SeenThis = 1 THEN SeenThis = 2
IF Abishai1 = 1 AND Level = 1 THEN Abishai1 = 2: GOTO PastThis
IF Abishai2 = 1 AND Level = 2 THEN Abishai2 = 2: GOTO PastThis
IF Abishais > 0 THEN Abishais = Abishais - 1
PastThis:
AbishGated = 0: Xp = Xp + 5:
END IF
END IF
GOTO 940
FightBarbazu:
CantRun = 1
IF Level = 2 AND RM = 11 THEN
IF Barbazu1 = 0 THEN Barbazu1 = 1
IF Barbazu1 = 3 THEN Barbazu1 = 1
END IF
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
IF Level = 3 AND RM = 7 THEN
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
IF Level = 3 AND RM = 7 AND Hamatula1 = 1 THEN Hamatula1 = 2: GOTO PastThis3
IF Hamatulas > 0 THEN Hamatulas = Hamatulas - 1
PastThis3:
END IF
END IF
GOTO 940
Err1: PRINT "Save/Load file error.": CLOSE #1: GOTO 940
Talk: Talking
IF ReturnTo940 = 1 THEN GOTO 940
IF ReturnTo940 = 2 THEN GOSUB 5: GOTO 940
RETURN
Level1: Level1Inputs
IF ReturnTo940 = 1 THEN GOTO 940
IF ReturnTo940 = 2 THEN GOSUB 5: GOTO 940
IF ReturnTo940 = 3 THEN GOTO FightCornugon
IF ReturnTo940 = 4 THEN GOTO FightAbishai
RETURN
Level2: Level2Inputs
IF ReturnTo940 = 1 THEN GOTO 940
IF ReturnTo940 = 2 THEN GOSUB 5: GOTO 940
IF ReturnTo940 = 3 THEN GOTO FightCornugon
IF ReturnTo940 = 4 THEN GOTO FightAbishai
IF ReturnTo940 = 5 THEN GOTO FightOsyluth
IF ReturnTo940 = 6 THEN GOTO FightBarbazu
RETURN
Save: INPUT "Enter filename:", N$
IF N$ = "" THEN N$ = "The_Elf"
SAV$ = N$ + ".bts"
OPEN SAV$ FOR OUTPUT AS #1
SaveStuff:
PRINT #1, Hp: PRINT #1, MaxHp: PRINT #1, Xp: PRINT #1, RM: PRINT #1, Level: PRINT #1, Time: PRINT #1, Sword: PRINT #1, Guide: PRINT #1, Cornugon1: PRINT #1, CornugonHp: PRINT #1, Crawling: PRINT #1, CornuGated: PRINT #1, Cornugons: PRINT #1, Ruby: PRINT #1, CabinetOpen: PRINT #1, Pass: PRINT #1, AbishGated: PRINT #1, Abishais: PRINT #1, AbishaiHp: PRINT #1, Abishai1: PRINT #1, Pool
PRINT #1, Money: PRINT #1, DoorOpen: PRINT #1, CantRun: PRINT #1, BoatMan: PRINT #1, Cur: PRINT #1, Current: PRINT #1, StyxDead: PRINT #1, Abishai2: PRINT #1, Cons: PRINT #1, Looked: PRINT #1, Cornugon2: PRINT #1, OsyGated: PRINT #1, Osyluths: PRINT #1, OsyluthHp: PRINT #1, Osyluth1: PRINT #1, BarbGated: PRINT #1, Barbazus: PRINT #1, BarbazuHp: PRINT #1, Barbazu1: PRINT #1, HamGated: PRINT #1, Hamatulas: PRINT #1, HamHp: PRINT #1, Hamatula1: PRINT #1, Break: PRINT #1, Book: PRINT #1, Page: PRINT #1, Kyton: PRINT #1, KytonHp: PRINT #1, Alley1Seen: PRINT #1, Alley2Seen: PRINT #1, Alley3Seen: PRINT #1, AlleySeen: PRINT #1, PitFiend: PRINT #1, Immune: PRINT #1, PitFiendHp: PRINT #1, PitFiendGated: PRINT #1, FuryCome: PRINT #1, FuryHp: PRINT #1, FDeadRm: PRINT #1, FDeadLevel: PRINT #1, SaidThis: PRINT #1, Sinking: PRINT #1, Arcanoloth: PRINT #1, EvilTwinHp: PRINT #1, FuryConfront: PRINT #1, GuideLeft: PRINT #1, Leave: PRINT #1, Rope: PRINT #1, North: PRINT #1, East: PRINT #1, ArcFight: PRINT #1, ArcReveal
PRINT #1, Slave: PRINT #1, SaidThis2: PRINT #1, Prison: PRINT #1, Torture: PRINT #1, GoingToDie: PRINT #1, FreakWormHole: PRINT #1, FuryMad: PRINT #1, ThugTalk: PRINT #1, LtherCome: PRINT #1, GuideIncapacitated: PRINT #1, TalkLther: PRINT #1, FuryBeg: PRINT #1, Osyluth3: PRINT #1, Osyluth2: PRINT #1, Escaped: PRINT #1, PitFiend2: PRINT #1, PitFiendHit: PRINT #1, PitFiendGated: PRINT #1, LetFree: PRINT #1, Mezz1: PRINT #1, LtherHere3: PRINT #1, FurySaidThisThing: PRINT #1, FurCome: PRINT #1, Warned: PRINT #1, Warned2: PRINT #1, GateOpened: PRINT #1, Bould: PRINT #1, Calling: PRINT #1, ResistanceOpen: PRINT #1, RebelsKnow: PRINT #1, Mezzoloths: PRINT #1, OsyGuard: PRINT #1, PitFiendLord: PRINT #1, OsyGateGuard: PRINT #1, InLeague: PRINT #1, PalaceGuard
PRINT #1, CellDoor1Opened: PRINT #1, CellDoor2Opened: PRINT #1, CellDoor3Opened: PRINT #1, Stuff: PRINT #1, InWater: PRINT #1, Breath: PRINT #1, Gelugons: PRINT #1, GeluHp: PRINT #1, GeluGated: PRINT #1, Key1: PRINT #1, PastGelugons: PRINT #1, GuideSwitch: PRINT #1, Come: PRINT #1, GuideFound: PRINT #1, PitFiendReveal: PRINT #1, EvilTwinDead: PRINT #1, FuryCellNessus: PRINT #1, YourCellNessus: PRINT #1, InMaze: PRINT #1, Annoy: PRINT #1, EvilTwinAttack: PRINT #1, GuideAttack: PRINT #1, FightBaalzephon: PRINT #1, BaalHp: PRINT #1, EvilGuideHp
CLOSE #1: RETURN
Load: INPUT "Enter filename:", N$
IF N$ = "" THEN GOTO 940
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
IF Level = 1 THEN
IF SaidThis1 = 0 AND RM = 2 AND Cornugon1 <> 2 THEN PRINT "Fury points at the cornugon.  'That's a cornugon.  He's guarding Darkspine here.": PRINT "Since I'm with you, he won't ask any questions, and he'll let you by.'": SaidThis1 = 1: RETURN
IF SaidThis2 = 0 AND RM = 12 THEN PRINT "Fury points north.  'That's the Garden, to the north.  It's a peaceful place,": PRINT "with no fiends or anything.  It's actually a right peaceful place.  Wonderful": PRINT "place to relax and just have a good time.'": SaidThis2 = 1: RETURN
IF SaidThis3 = 0 AND RM = 8 THEN PRINT "Fury says, 'To the west is the lake of the Garden, while the main settlements": PRINT "of the Garden are to the north.'": SaidThis3 = 1: RETURN
IF SaidThis4 = 0 AND RM = 19 THEN PRINT "Fury says, 'Okay.  We'll have to get across the maggot pit to get to Dis, the": PRINT "second level.  An abishai will fly us across - for a price.  Hope you have jink.": PRINT "If not, you can always try to kill the abishai and wade through the Maggot": PRINT "pit by yourself.'": SaidThis4 = 1: RETURN
IF SaidThis5 = 0 AND (RM = 13 OR RM = 17) THEN PRINT "Fury points at the boatman.  'That's a marraenoloth.  He'll ferry you across": PRINT "the river - for the right amount of jink, of course.  Usually a sack full of": PRINT "money will buy them.  They're really the only way across, unless you're a": PRINT "sodding idiot and want to swim the Styx.'": SaidThis5 = 1: RETURN
IF SaidThis6 = 0 AND (RM = 24 OR RM = 23) THEN PRINT "Fury says, 'The caverns to the east and west house Tiamat's consorts.  Don't": PRINT "go into them.  Most likely, you won't be able to enter them anyway.'": SaidThis6 = 1: RETURN
IF SaidThis7 = 0 AND RM = 9 THEN PRINT "Fury gestures to the pillar of skulls.  'That's the pillar of skulls.  Ignore": PRINT "it.'": SaidThis7 = 1: RETURN
END IF
IF Level = 2 THEN
IF SaidThis8 = 0 AND RM = 1 AND Abishai2 <> 2 THEN PRINT "Fury points at the abishai.  'That's an abishai.  It guards the gate from": PRINT "Avernus.  You'll need to get past him.  With me here, you won't have any": PRINT "problems.  If I weren't here, you could most likely bribe him or kill him.'": SaidThis8 = 1: RETURN
IF SaidThis9 = 0 AND RM = 2 AND Cornugon2 <> 2 THEN PRINT "Fury points at the cornugon.  'That's a cornugon.  It guards the entrance to the": PRINT "city of Dis.  There's a layer named Dis and a city named Dis.  However, they're": PRINT "basically one and the same.'": SaidThis9 = 1: RETURN
IF SaidThis10 = 0 AND (RM = 7 OR RM = 8 OR RM = 9 OR RM = 10 OR RM = 12 OR RM = 13 OR RM = 14 OR RM = 15) THEN PRINT "Fury points at the tower.  'That's the tower of Dispater.  The gate to Minauros,": PRINT "the next layer of Baator lies within it.  You'll need to make it to the tower": PRINT "before you can do anything.  Usually, this will involve closing your eyes and": PRINT "walking towards it.  The tower is under powerful magic that tries to convince": PRINT "your brain that it isn't really there.  Just close your eye and walk towards it;": PRINT "you'll make it.'": SaidThis10 = 1: RETURN
IF SaidThis11 = 0 AND RM = 11 AND Barbazu1 <> 2 THEN PRINT "'Well, this is it,' says Fury.  'This is a barbazu,' he says, pointing to the": PRINT "barbazu.  'Now, don't provoke him.  All he wants is a fight.'": SaidThis11 = 1: RETURN
END IF
IF Level = 3 THEN
IF Guide = 1 AND SaidThis12 = 0 AND Kyton = 0 AND (RM = 15 OR RM = 19 OR RM = 21) THEN PRINT "Fury points at the man in chains.  'That's one of the silent defenders of": PRINT "Jangling Hiter, a kyton.  Don't cross them; they're a real terror in battle.'": SaidThis12 = 1: RETURN
IF Guide = 3 AND SaidThis12 = 0 AND Kyton = 0 AND (RM = 15 OR RM = 19 OR RM = 21) THEN PRINT "Fury points at the man in chains.  'That's one of the silent defenders of": PRINT "Jangling Hiter, a kyton.  They're pretty easy to beat in combat - I really": PRINT "don't see why peopele call them powerful.'": SaidThis12 = 1: RETURN
IF SaidThis13 = 0 AND Hamatula1 <> 2 AND Hamatula1 <> 1 AND RM = 7 THEN PRINT "Fury points at the hamatula.  'That's a hamatula.  They guard and patrol the": PRINT "third and fourth layers of Baator.'": SaidThis13 = 1: RETURN
IF Guide = 1 AND SaidThis14 = 0 AND (RM = 2 OR RM = 5) THEN PRINT "Fury says, 'We're in Minauros, the sinking city.  It's the main city on this": PRINT "layer, and it's slowly sinking into the swamp.  Or so the fiends think.  Myself,": PRINT "I don't think it will ever completely sink into the swamp.'": SaidThis14 = 1: RETURN
IF Guide = 3 AND SaidThis14 = 0 AND (RM = 2 OR RM = 5) THEN PRINT "Fury says, 'We're in Minauros, the sinking city.  It's the main city on this": PRINT "layer, and it's slowly sinking into the swamp.  Or so the fiends think.  Myself,": PRINT "I think that the city's about to completely sink into the swamp.'": SaidThis14 = 1: RETURN
IF Guide = 1 AND SaidThis15 = 0 AND Arcanoloth = 0 AND RM = 23 THEN PRINT "Fury groans.  'Oh no.  Look, that's L'Ther, a berk I was paid to escort through": PRINT "Baator.  We made it through the gate to Dis, and that's when he skipped off.  He": PRINT "vanished, and then he returned later - with a group of hirelings he had gotten": PRINT "to kill me.  I barely escaped their blades alive, but before I escape I pushed": PRINT "L'Ther into the swamp.  And he's still alive.  Stay away from him.  He deals": PRINT "in intelligence, and he's usually right, but he's downright evil.'": SaidThis15 = 1: RETURN
IF SaidThis17 = 0 AND (RM = 14 OR RM = 12) THEN PRINT "'Ah, Jangling Hiter, city of chains.  There are no weak links here.  The city's": PRINT "connected to the sky by the chains attached to the city.  The city's basically": PRINT "run by humanoids wrapped in chains - the kytons.  Though the city's legally run": PRINT "by a hamatula, everyone knows he's only a puppet of the kytons.'": SaidThis17 = 1: RETURN
END IF
RETURN
Transfer:
OPEN "data.baa" FOR OUTPUT AS #1
GOSUB SaveStuff
IF Level >= 4 AND Level <= 6 THEN RUN "baator2b.bas"
IF Level >= 7 THEN RUN "baator2c.bas"

SUB Avernus
ON RM GOTO RuinedInn, RuinedStreet, RuinedAlley, Village, SchemingBariaurInn, BlastedPlain, NearLake, WillowTrees, PillarOfSkulls, RuinedStreets, RuinedStreets, NearGarden, NearRiver, NearRiver, BlastedPlain, BlastedPlain, NearRiver, NearRiver, WMaggotPit, EMaggotPit, Tunnel, IronDoor, Cavern, Cavern, MaggotPit, RiverStyx
GOTO EndAvernus
RuinedAlley: PRINT "Ruined Alley": PRINT
PRINT "You are in an alley.  The nearby walls are crumbling down and a blackened with"
PRINT "fire.  ";
IF Guide = 0 THEN PRINT "There is a human wearing white here, leaning against the wall."
PRINT "You may go west."
GOTO EndAvernus
Village: PRINT "Peaceful Village": PRINT
PRINT "You are in a peaceful village.  Houses and the like surround you in all"
PRINT "directions.  Perfectly happy citizen walk the street, being generally friendly"
PRINT "to one another.  The red sky hanging above your head is the only indication that"
PRINT "you are even on Baator."
PRINT "From here, a path goes to the south into a grove of willow trees."
GOTO EndAvernus
SchemingBariaurInn: PRINT "Blasted Scheming Bariaur Inn": PRINT
PRINT "This inn has been burned by countless fireballs that ravage this level of"
PRINT "Baator.  The walls of are blackened and burned.  In fact, there is the corpse"
PRINT "of a patron here, slumped over a table.  ";
IF Money = 0 THEN PRINT "There is a sack of money next to him." ELSE PRINT "He has been badly burned by fire."
PRINT "You may go southeast from here."
GOTO EndAvernus
BlastedPlain: PRINT "Blasted Plain": PRINT
PRINT "You are walking along a blasted plain.  Beneath your feet seems to be the"
PRINT "remnants of a path or a street.  The reddish sky above seems to beat down on"
PRINT "you in an odd sort of oppressive way.  From here, the path goes off to the"
IF RM = 6 THEN PRINT "north and southeast."
IF RM = 15 THEN PRINT "north, east, west."
IF RM = 16 THEN PRINT "north and west."
IF SaidThis = 1 THEN PRINT "A patrol of abishai is here, watching you."
GOTO EndAvernus
NearLake: PRINT "Near Lake": PRINT
PRINT "To the west is a large, beautiful lake.  All is still and quiet around here."
PRINT "No birds singing in the treetops to give you a headache.  No locusts buzzing"
PRINT "around in your ears.  No insects, bugs, or bees.  All is perfectly happy, and"
PRINT "content.  The only reminder that you are in Baator is the large hanging red sky"
PRINT "above you.  You may go down a peaceful county lane to the east."
GOTO EndAvernus
WillowTrees: PRINT "Grove of Willow Trees": PRINT
PRINT "Peaceful.  Serene.  You are walking in a forest of willow trees.  Their long"
PRINT "curtains surround you, filling you with a sense of beauty and majesty.  Paths"
PRINT "from here go north, west, and south.  No birds are singing in the trees.  No"
PRINT "annoying locusts buzzing in your ears.  All is peaceful and serene."
GOTO EndAvernus
PillarOfSkulls: PRINT "Pillar of Skulls": PRINT
PRINT "You are standing at a pillar of skulls.  Yep, that's about what it is.  A huge"
PRINT "pillar reaching into the sky, covered in many different skulls of various races."
PRINT "They chatter and talk, disagreeing and yelling and screaming at each other."
PRINT "You may go southeast and south."
GOTO EndAvernus
RuinedStreets: PRINT "Ruined Streets": PRINT
PRINT "You are walking on a ruined street.  Burned and blackened buildings surround you"
PRINT "on all sides.  The blackened and burned street itself goes ";
IF RM = 10 THEN PRINT "northwest and east."
IF RM = 11 THEN PRINT "northwest, west,": PRINT "and south."
GOTO EndAvernus
NearGarden: PRINT "Near Garden": PRINT
PRINT "To the north is a seeming oasis of beauty and life.  Willow trees sway in the"
PRINT "wind.  The lake is clear and blue and vast and wide, sitting next to the lazy"
PRINT "village in a warm air.  If it weren't for the red sky above it, you'd think it"
PRINT "was in Mount Celestia, not in Baator.  You may go north and south."
GOTO EndAvernus
NearRiver: PRINT "Near River": PRINT
PRINT "To the ";
IF RM = 13 OR RM = 14 THEN PRINT "south ";  ELSE PRINT "north ";
PRINT "is a large river of blood.  Apparently, it's the River Styx. "
IF RM = 13 OR RM = 17 THEN PRINT "There is a silent boatman here.  His skin is green and he is tall and gaunt.": PRINT "His eyes glowing red.  A marraenoloth, one of the ferrymen of the River Styx.": PRINT "He stands next to a small vessel, obviously used for crossing the Styx."
PRINT "You may go ";
IF RM = 13 THEN PRINT "north and east from here."
IF RM = 14 THEN PRINT "northwest, west, and east from here."
IF RM = 17 THEN PRINT "east from here."
IF RM = 18 THEN PRINT "east and west from here.  The ground descends to the east."
GOTO EndAvernus
WMaggotPit: PRINT "West End of the Maggot Pit": PRINT
PRINT "You are standing at the west end of a large pit filled with maggots  Inside of"
PRINT "the pit, the maggots squirm and wiggle, waiting to devour any that set foot in"
PRINT "the pit.  There is a large blasted plain to the west.  The maggot pit is to"
PRINT "the east."
IF Abishai1 = 0 OR Abishai1 = 3 THEN PRINT "There a fiend here, looking much like a gothic gargoyle.  It has a black, scaly": PRINT "hide with large black claws and horns and teeth.  An abishai."
IF Abishai1 = 1 THEN PRINT "There is an abishai here, attacking you!"
GOTO EndAvernus
EMaggotPit: PRINT "East End of Maggot Pit": PRINT
PRINT "Well, you did it.  By hook or by crook, you made it to the other end of the"
PRINT "maggot pit.  There is a large cave in the wall to the south, while the maggot"
PRINT "pit is to the west from here."
GOTO EndAvernus
Tunnel: PRINT "Tunnel": PRINT
PRINT "You are in a tunnel.  Before you is a large archway.  It appears to have some"
PRINT "writing on it.  You may go north and south.  There is a huge iron door to the"
PRINT "north, while the tunnel continues to the south."
GOTO EndAvernus
IronDoor: PRINT "Iron Door": PRINT
PRINT "Before you is a ";
IF DoorOpen = 0 THEN PRINT "closed ";
IF DoorOpen = 1 THEN PRINT "slightly ajar ";
PRINT "large iron door.  It is made out of blackened"
PRINT "iron, and looks quite large.  The tunnel goes back north, while the huge door"
PRINT "itself is to the south."
GOTO EndAvernus
Cavern: PRINT "Cavern": PRINT
PRINT "You are in a cavern.  There are two large caverns to your east and west, while"
PRINT "there is a tunnel leading north and south from here.  Immense waves of fear"
PRINT "eminate from the east and west tunnels."
GOTO EndAvernus
RuinedInn: PRINT "Ruined Inn": PRINT
PRINT "This inn is generally falling apart.  The walls are blackened and burned by"
PRINT "fire, and the ceiling looks like it would collapse any moment.  From here, you"
PRINT "may go east.  ";
IF CabinetOpen = 0 THEN PRINT "There is a closed cabinet set in the wall here, locked with a": PRINT "rusty lock."
IF CabinetOpen = 1 THEN PRINT "There is a closed cabinet set in the wall here.  The rusty lock": PRINT "that once locked it is on the floor, crumbled to pieces."
IF CabinetOpen = 2 AND Ruby = 0 THEN PRINT "There is an open cabinet set in the wall here.  Inside it is a": PRINT "large ruby."
IF CabinetOpen = 2 AND Ruby <> 0 THEN PRINT "There is an open cabinet set in the wall here.  It is empty."
GOTO EndAvernus
RuinedStreet: PRINT "Ruined Street": PRINT
PRINT "You are standing on an empty street.  The buildings around you are burned and"
PRINT "desolated, and look on the verge of falling apart."
IF Cornugon1 = 0 OR Cornugon1 = 3 THEN PRINT "There is a large scaly humanoid figure with two wings and a barbed whip in its": PRINT "claws.  It looks at you, and laughs a mocking laugh.  Yes, he's a cornugon all": PRINT "right."
IF Cornugon1 = 1 THEN PRINT "There is a cornugon here, attacking you!"
GOTO EndAvernus
MaggotPit: PRINT "In Maggot Pit": PRINT
IF Abishai1 = 2 THEN
PRINT "Wonderful.  Of all the places you choose to go in this entire plane, of all of"
PRINT "the paths that you take, you HAD to crawl through the maggot pit.  Some people"
PRINT "choose to PAY the guard instead of killing him.  The pit goes east and west from"
PRINT "here."
END IF
IF Abishai1 <> 2 THEN
PRINT "Wonderful.  Of all the places you choose to go in this entire plane, of all of"
PRINT "the paths that you take, you HAD to crawl through the maggot pit.  The pit goes"
PRINT "east and west from here."
END IF
GOTO EndAvernus
RiverStyx: PRINT "River Styx": PRINT
PRINT "You are in the River Styx.  It's blood-red water washes over you quickly, making"
PRINT "it hard for you to keep afloat.  The current is changing faster than you can"
PRINT "keep up with it, and if you don't make it to shore soon, you'll be swept away!"
PRINT "The shore is to the north and south."
IF Cur = 1 THEN PRINT "The current is pulling you east!  If you don't do something now, you'll be": PRINT "pulled away!"
IF Cur = 2 THEN PRINT "The current is pulling you west!  If you don't do something now, you'll be": PRINT "pulled away!"
IF Cur = 0 THEN PRINT "The waters are still.... for now."
GOTO EndAvernus
EndAvernus:
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
IF Killer <> 5 AND Killer <> 12 THEN PRINT #1, N$; " killed by "; Killer$; " on ";
IF Killer = 5 THEN PRINT #1, N$; " was swept away by the River Styx on ";
IF Killer = 12 THEN PRINT #1, N$; " sank into the swamp on ";
IF Level = 1 THEN PRINT #1, "Avernus, the first layer": PRINT #1, "of Baator."
IF Level = 2 THEN PRINT #1, "Dis, the second layer of": PRINT #1, "Baator."
IF Level = 3 THEN PRINT #1, "Minauros, the third layer": PRINT #1, "of Baator."
IF Level = 4 THEN PRINT #1, "Phlegethos, the fourth": PRINT #1, "layer of Baator."
IF Level = 5 THEN PRINT #1, "Stygia, the fifth layer": PRINT #1, "of Baator."
IF Level = 6 THEN PRINT #1, "Malbolge, the sixth layer": PRINT #1, "of Baator."
IF Level = 7 THEN PRINT #1, "Maladomini, the seventh": PRINT #1, "layer of Baator."
IF Level = 8 THEN PRINT #1, "Cania, the eigth layer": PRINT #1, "of Baator."
IF Level = 9 THEN PRINT #1, "Nessus, the ninth and": PRINT #1, "last layer of Baator."
PRINT #1, N$; " lived for"; Time; "moves on Baator."
IF Hp < 0 THEN PRINT #1, "At the time of death, "; N$; " had "; Hp; "hit points remaining out of"; MaxHp; "maximum."
IF Hp >= 0 THEN PRINT #1, "At the time of death, "; N$; " had"; Hp; "hit points remaining out of"; MaxHp; "maximum."
IF Killer = 1 THEN PRINT #1, "A note to you, cutter:  Sometimes it's best to give the baatezu a large": PRINT #1, "garnish instead of recieving its wrath."
IF Killer = 2 THEN PRINT #1, "A note to you, cutter:  Never mess with a baatezu, even a low-ranker."
IF Killer = 3 THEN PRINT #1, "A note to you, cutter:  Fiends pervert commands.  Be as specific as": PRINT #1, "possible."
IF Killer = 4 THEN PRINT #1, "A note to you, cutter:  Don't dawdle in the Pit of Maggots."
IF Killer = 5 THEN PRINT #1, "A note to you, cutter:  Sometimes there are ways to cross a river that": PRINT "don't involve being a tightwad."
IF Killer = 6 THEN PRINT #1, "A note to you, cutter:  There's only one form of a good osyluth - a dead": PRINT #1, "one."
IF Killer = 9 THEN PRINT #1, "A note to you, cutter:  In the city of chains, the kytons are the law."
IF Killer = 10 THEN PRINT #1, "A note to you, cutter:  NEVER cross a pit fiend."
CLOSE #1
COLOR 0: END
END SUB

SUB Dis
IF A$ <> "look" AND ClosedEyes = 1 AND RM <> 11 THEN PRINT "You open your eyes first.": ClosedEyes = 0
IF A$ <> "look" AND ClosedEyes = 1 AND RM = 11 THEN PRINT "You walk straight forward, in the direction in which you last saw the tower.": PRINT "Eventually, you reach it and open your eyes.": ClosedEyes = 0
ON RM GOTO Summit, Gate, Path, Street, Street, Street, Street, Street, Street, Street, Tower, Street, Street, Street, Street, Prison, Entrance, Library, Spiral, Overlook, Gate2
Summit: PRINT "Summit": PRINT
PRINT "You are at a summit that lies high above the rest of the land.  Here, the land"
PRINT "is green instead of red, but it still hangs down on you.  There is a path going"
PRINT "down from the summit here."
IF Abishai2 = 1 THEN PRINT "An abishai is here, attacking you!"
IF Abishai2 <> 1 AND Abishai2 <> 2 THEN PRINT "An abishai guards the path down here."
GOTO EndDisSub
Gate: PRINT "Gate to Dis": PRINT
PRINT "You are standing at the gate to Dis, the Iron City.  The huge gates are opened"
PRINT "wide.  There is a path going north, while the city itself is to the north."
IF Cornugon2 = 1 THEN PRINT "A cornugon is here, attacking you!"
IF Cornugon2 <> 1 AND Cornugon2 <> 2 THEN PRINT "A cornugon guards the entrance to the city, looking at you intently."
GOTO EndDisSub
Path: PRINT "Path": PRINT
PRINT "You are walking along a path that is leading you closer and closer to the Iron"
PRINT "City of Dis.  The greenish sky overhead hangs down on you, and the path goes"
PRINT "south from here.  A path also ascends up a mountain.  You think that you can see"
PRINT "the gates of Dis to the south from here, but you aren't sure."
GOTO EndDisSub
Street:
PRINT "Street in Dis": PRINT
PRINT "You are on a street in the Burning City of Dis.  Streets go in all directions"
PRINT "from here.  ";
IF RM = 5 THEN PRINT "The gates out of the city are to the north from here." ELSE PRINT "People of all races and factions surround you."
IF RM <> 5 AND Looked = 0 THEN Looked = 1: Cons = INT(RND * 9) + 1
IF Looked = 1 THEN
IF Cons = 1 THEN PRINT "The street to the north is being torn up by a troop of construction workers."
IF Cons = 2 THEN PRINT "The street to the south is being re-paved by a troop of enslaved petitioners."
IF Cons = 3 THEN PRINT "The street to the east is having cobblestones put into it."
IF Cons = 4 THEN PRINT "The street to the west is having it's cobblestones torn up."
IF Cons = 5 THEN PRINT "A building has recently fallen down here.  Work crews are clearing it out, but": PRINT "the rubble covers the north and east streets."
IF Cons = 6 THEN PRINT "A building is being built up here.  Work crews are lifting up equipment to": PRINT "build it.  However, the equipment covers the east and south streets."
IF Cons = 7 THEN PRINT "A work crew is erecting a large statue of Dispater, lord of Dis here.  The": PRINT "statue and crew blocks the streets to the west and north."
IF Cons = 8 THEN PRINT "The south and east streets are cordoned off from the rest of the city.": PRINT "Apparently, work crews are putting in a sewer system here."
IF Cons = 9 THEN PRINT "The north and south streets are cordoned off.  Work crews are tearing out the": PRINT "sewer systems here."
END IF
IF RM = 7 THEN PRINT "You can see a huge iron tower rising out of the city to the southeast."
IF RM = 8 THEN PRINT "You can see a huge iron tower rising out of the city to the south."
IF RM = 9 THEN PRINT "You can see a huge iron tower rising out of the city to the southwest."
IF RM = 10 THEN PRINT "You can see a huge iron tower rising out of the city to the east."
IF RM = 12 THEN PRINT "You can see a huge iron tower rising out of the city to the west."
IF RM = 13 THEN PRINT "You can see a huge iron tower rising out of the city to the northeast."
IF RM = 14 THEN PRINT "You can see a huge iron tower rising out of the city to the north."
IF RM = 15 THEN PRINT "You can see a huge iron tower rising out of the city to the northwest."
IF RM = 10 AND Osyluth1 <> 1 AND Osyluth1 <> 2 THEN PRINT "There is a thin fiend here with an orange hide and a large, scorpion-like": PRINT "stinger.  It's an osyluth, one of the police officers of Baator."
GOTO EndDisSub
Tower: PRINT "Burning Tower": PRINT
PRINT "You are at the Burning Tower in the center of Dis.  There is a staircase leading"
PRINT "up from here into the tower.  You may also go in all other direction into the"
PRINT "streets of Dis."
IF Barbazu1 <> 1 AND Barbazu1 <> 2 THEN PRINT "There is a green-faced fiend here.  In one hand it holds a wicked saw-toothed": PRINT "glaive.  It also has a long, wirelike beard and glowing red eyes.  It grins as": PRINT "you approach.  It's a barbazu, all right.  It looks at you wicked, as if daring": PRINT "you to attack him."
IF Barbazu1 = 1 THEN PRINT "There is a barbazu here, attacking you!"
GOTO EndDisSub
Prison: PRINT "Prison": PRINT
PRINT "You are in the prison.  Prisoners of all sorts surround you.  Tanar'ri, enslaved"
PRINT "mortals, etc, etc.  There are no apparent exits from this room.  The wall are"
PRINT "smooth, blank, and white.  However, each and every one is stained in blood."
IF Break <> 0 THEN PRINT "You are bound tight by steel chains."
PRINT "There is a set of orbs here; a red one labelled, '˜'; a blue one labelled, '‘';"
PRINT "and a green one labelled, 'Ž'  There is a large sigil in the center of this room"
PRINT "that is a large 'ë'."
GOTO EndDisSub
Entrance: PRINT "Entrance": PRINT
PRINT "You are in the entrance to the Burning Tower.  There are three orbs here; a red"
PRINT "one labelled, 'Ž', a blue orb labelled, 'ë', and a green one labelled, 'O'."
PRINT "There do not seem to be any exits from this room.  There is a large sigil in"
PRINT "the center of the room here, '˜'."
GOTO EndDisSub
Library: PRINT "Library": PRINT
PRINT "This room is entirely filled with books of all sorts and documents of all types."
IF Book = 0 THEN PRINT "One book in particular draws your attention to itself.  'On the Baatezu,' it": PRINT "is entitled.  It's a thin black book."
PRINT "There are three orbs here; a red orb labelled, '¯', a blue orb labelled '˜', and"
PRINT "a green orb labelled, 'ë'.  There is a large sigil in the center of the room"
PRINT "here, 'Ž'."
GOTO EndDisSub
Spiral: PRINT "Spiral": PRINT
PRINT "You are at a spiral staircase.  You may go up and down from here.  There are"
PRINT "also three orbs here; a red orb labelled, 'ë', a blue orb labelled, '¯', and a"
PRINT "green orb labelled, 'Ÿ'.  There is a large sigil in the center of the room here,"
PRINT "'‘'."
GOTO EndDisSub
Overlook: PRINT "Overlook": PRINT
PRINT "From here, you can see the entirety of the infinite City of Dis.  How you can"
PRINT "see the entire thing while it's infinite is just another one of the infinte"
PRINT "mysteries of the planes.  There are three orbs here; a red orb labelled, '‘',"
PRINT "a blue orb labelled, 'Ž', and a green orb labelled, 'Ÿ'.  There is a large sigil"
PRINT "in the center of the room here, '¯'."
GOTO EndDisSub
Gate2: PRINT "Gate": PRINT
PRINT "This room's distinguishing feature is a large portal in the center of the room."
PRINT "It bathes the entire room in reddish light.  There are also three orbs here; a"
PRINT "red orb labelled, '‘', a blue orb labelled, 'ë', and a green orb labelled, '¯'."
PRINT "The portal itself is to the north.  There is a large sigil in the center of the"
PRINT "room here, 'Ÿ'."
GOTO EndDisSub
EndDisSub:
END SUB

SUB Fights
IF FuryCome = 6 THEN
Hit = INT(RND * 2) + 1
IF Hit = 1 THEN PRINT "Fury swings out at the pit fiend with his sword, but he misses it!  It laughs at": PRINT "him mockingly!"
IF Hit = 2 THEN
Dmg = INT(RND * 6) + 4
PitFiendHp = PitFiendHp - Dmg
PRINT "Fury slashes out at the pit fiend with his sword, and his sword connects!  The"
PRINT "pit fiend howls out in rage!"
IF PitFiendHp <= 0 THEN
BEEP
PRINT "The pit fiend falls back in pain as its body hits the floor of Baator and"
PRINT "explodes in a huge fiery blast in every direction.": PitFiendHp = 70
PitFiend = 8
CantRun = 0
Xp = Xp + 50
PRINT "Fury sheathes his sword.  'Good thing I showed up when I did, huh?'": FuryCome = 0: Guide = 1
END IF
END IF
END IF
IF Kyton = 1 THEN
Hit = INT(RND * 4) + 1
IF Chains = 1 THEN Hit = 0
IF Hit = 0 THEN
PRINT "The kyton sends a few more chains flying in your direction, hitting your face": PRINT "and chest.  Being bound, you are unable to dodge the blow!"
Dmg = INT(RND * 12) + 4
Hp = Hp - Dmg
END IF
IF Hit = 1 THEN
PRINT "The kyton holds out his left hand, covered in chains, and a long barbed chain": PRINT "emerges from it and ties itself to you, rending your flesh with many barbs.  In": PRINT "addition, the chain has bound you tight.": Chains = 1
Dmg = INT(RND * 10) + 1
Hp = Hp - Dmg
END IF
IF Hit = 2 THEN PRINT "The kyton holds out his left hand, covered in chains, and a long barbed chain": PRINT "emerges from it and fles towards you.  Luckily for you, you manage to dodge to": PRINT "one side!"
IF Hit = 3 THEN
PRINT "The kyton lashes his right hand at you, causing about five seperate chains to": PRINT "lash across your chest and face!"
Dmg = INT(RND * 5) + 1
Hp = Hp - Dmg
END IF
IF Hit = 4 THEN PRINT "The kyton lashes his right hand at you, sending about five seperate chains": PRINT "flying in your direction.  By some odd quirk of fate, you manage to dodge the": PRINT "chains!"
IF Hp <= 0 THEN Killer$ = "a kyton": Killer = 9: Dead
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
IF Gate <= 40 THEN
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
IF Hp <= 0 THEN Killer$ = "a cornugon": Killer = 1: Dead
END IF
IF Cornugon1 = 1 OR Cornugon2 = 1 THEN
Hit = INT(RND * 7) + 1
IF CornuGated = 0 AND CornugonHp <= 5 THEN Hit = 7
IF Hit = 7 AND CornuGated = 1 THEN Hit = INT(RND * 6) + 1
IF Hit = 1 THEN PRINT "The cornugon lashes out at you with its spiked whip!": Hp = Hp - 4
IF Hit = 2 THEN PRINT "The cornugon lashes out at you with its spiked whip, but you manage to dodge to": PRINT "one side!"
IF Hit = 3 THEN PRINT "The cornugon gives out a blood-curdling scream as a lightning bolt emerges from": PRINT "its body to hit you!": Hp = Hp - 4
IF Hit = 4 THEN PRINT "The cornugon gives out a scream and a lightning bolt emerges from its chest,": PRINT "but you dodge it!"
IF Hit = 5 AND Immune = 0 THEN PRINT "The cornugon reaches out at you and bites you!": Hp = Hp - 2
IF Hit = 5 AND Immune = 1 THEN PRINT "The cornugon reaches out at you and bites you, but you don't feel anything!": Hp = Hp - 2
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
IF Hp <= 0 THEN Killer$ = "a cornugon": Killer = 1: Dead
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
IF Hp <= 0 THEN Killer$ = "an abishai": Killer = 2: Dead
END IF
IF Abishai1 = 1 OR Abishai2 = 1 THEN
Hit = INT(RND * 5) + 1
IF AbishGated = 0 AND AbishaiHp <= 5 THEN Hit = 5
IF Hit = 5 AND AbishGated = 1 THEN Hit = INT(RND * 4) + 1
IF Hit = 1 AND Immune = 0 THEN PRINT "The red abishai bites you!": Hp = Hp - 2
IF Hit = 1 AND Immune = 1 THEN PRINT "The red abishai bites you, but you don't feel anything!": Hp = Hp - 2
IF Hit = 2 THEN PRINT "The red abishai stretches its neck out to bite you, but you jump back!"
IF Hit = 3 AND Immune = 0 THEN PRINT "The red abishai hits you with it's claws!": Hp = Hp - 3
IF Hit = 3 AND Immune = 1 THEN PRINT "The red abishai hits you with it's claws, but you don't feel anything!": Hp = Hp - 3
IF Hit = 4 THEN PRINT "The red abishai reaches at you with its claws, but you duck to one side!"
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
IF Hp <= 0 THEN Killer$ = "an abishai": Killer = 2: Dead
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
IF Hp <= 0 THEN Killer$ = "an osyluth": Killer = 6: Dead
END IF
IF Osyluth1 = 1 OR Osyluth2 = 1 THEN
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
IF Hp <= 0 THEN Killer$ = "an osyluth": Killer = 6: Dead
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
IF Hp <= 0 THEN Killer$ = "a barbazu": Killer = 7: Dead
END IF
IF Barbazu1 = 1 OR Barbazu2 = 1 THEN
Hit = INT(RND * 3) + 1
IF BarbGated = 0 AND BarbazuHp <= 5 THEN Hit = 3
IF Hit = 3 AND BarbGated = 1 THEN Hit = INT(RND * 2) + 1
IF Hit = 1 THEN PRINT "The barbazu hits you with its glaive!": Hp = Hp - 6
IF Hit = 2 THEN PRINT "The barbazu swings its glaive at you, but it misses you by about an inch!"
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
IF Hp <= 0 THEN Killer$ = "a barbazu": Killer = 7: Dead
END IF
IF Hamatulas > 0 THEN
HamHit = Hamatulas
Hehehehe2:
HamHit = HamHit - 1
Hit = INT(RND * 5) + 1
IF Hit = 5 AND HamGated = 1 THEN Hit = INT(RND * 4) + 1
IF HamGated = 0 AND HamHp <= 5 THEN Hit = 5
IF Hit = 1 AND Immune = 0 THEN PRINT "A hamatula swings it's claw at you, hitting!": Hp = Hp - 4
IF Hit = 1 AND Immune = 1 THEN PRINT "A hamatula swings it's claw at you, hitting!  However, you don't feel": PRINT "anything.": Hp = Hp - 4
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
IF Hp <= 0 THEN Killer$ = "a hamatula": Killer = 8: Dead
END IF
IF Hamatula1 = 1 OR Hamatula2 = 1 THEN
Hit = INT(RND * 5) + 1
IF HamGated = 0 AND HamHp <= 5 THEN Hit = 5
IF Hit = 5 AND HamGated = 1 THEN Hit = INT(RND * 4) + 1
IF Hit = 1 AND Immune = 0 THEN PRINT "The hamatula swings it's claw at you, hitting!": Hp = Hp - 4
IF Hit = 1 AND Immune = 1 THEN PRINT "The hamatula swings it's claw at you, hitting!  However, you don't feel": PRINT "anything.": Hp = Hp - 4
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
IF Hp <= 0 THEN Killer$ = "a hamatula": Killer = 8: Dead
END IF
IF PitFiend = 7 THEN
IF FuryCome <> 6 AND Guide = 2 THEN
FuryCome = FuryCome + 1
IF FuryCome = 6 THEN PRINT "Suddenly, at the mouth of the alley appears Fury.  He yells out at you, 'I'm": PRINT "here to help!  Together we can beat him!'  With that, he draws his short sword": PRINT "and leaps into battle!"
END IF
IF FuryCome <> 6 THEN Hit = INT(RND * 7) + 1
IF FuryCome = 6 THEN Hit = INT(RND * 13) + 1
IF FuryCome <> 6 AND Hit = 7 AND PitFiendGated = 0 THEN Hit = 13
IF FuryCome <> 6 AND Hit = 7 AND PitFiendGated = 1 THEN Hit = INT(RND * 6) + 1
IF FuryCome <> 6 AND Hit = 13 AND PitFiendGated = 1 THEN Hit = INT(RND * 12) + 1
IF FuryCome = 6 AND Hit = 13 AND PitFiendGated = 1 THEN Hit = INT(RND * 12) + 1
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
IF Hp <= 0 THEN Killer$ = "a pit fiend": Killer = 10: Dead
END IF
GOTO EndFights
EndFights:
END SUB

SUB GuideSay
IF Level = 1 THEN
IF RM = 2 AND Cornugon1 <> 2 THEN PRINT "Fury points at the cornugon.  'That's a cornugon.  He's guarding Darkspine here.": PRINT "Since I'm with you, he won't ask any questions, and he'll let you by.'": GOTO EndSub
IF RM = 12 THEN PRINT "Fury points north.  'That's the Garden, to the north.  It's a peaceful place,": PRINT "with no fiends or anything.  It's actually a right peaceful place.  Wonderful": PRINT "place to relax and just have a good time.'": GOTO EndSub
IF RM = 8 THEN PRINT "Fury says, 'To the west is the lake of the Garden, while the main settlements": PRINT "of the Garden are to the north.'": GOTO EndSub
IF RM = 19 THEN PRINT "Fury says, 'Okay.  We'll have to get across the maggot pit to get to Dis, the": PRINT "second level.  An abishai will fly us across - for a price.  Hope you have jink.": PRINT "If not, you can always try to kill the abishai and wade through the Maggot": PRINT "pit by yourself.'": GOTO EndSub
IF RM = 13 OR RM = 17 THEN PRINT "Fury points at the boatman.  'That's a marraenoloth.  He'll ferry you across": PRINT "the river - for the right amount of jink, of course.  Usually a sack full of": PRINT "money will buy them.  They're really the only way across, unless you're a": PRINT "sodding idiot and want to swim the Styx.'": GOTO EndSub
IF RM = 24 OR RM = 23 THEN PRINT "Fury says, 'The caverns to the east and west house Tiamat's consorts.  Don't": PRINT "go into them.  Most likely, you won't be able to enter them anyway.'": GOTO EndSub
IF RM = 9 THEN PRINT "Fury gestures to the pillar of skulls.  'That's the pillar of skulls.  Ignore": PRINT "it.'": GOTO EndSub
END IF
IF Level = 2 THEN
IF RM = 1 AND Abishai2 <> 2 THEN PRINT "Fury points at the abishai.  'That's an abishai.  It guards the gate from": PRINT "Avernus.  You'll need to get past him.  With me here, you won't have any": PRINT "problems.  If I weren't here, you could most likely bribe him or kill him.'": GOTO EndSub
IF RM = 2 AND Cornugon2 <> 2 THEN PRINT "Fury points at the cornugon.  'That's a cornugon.  It guards the entrance to the": PRINT "city of Dis.  There's a layer named Dis and a city named Dis.  However, they're": PRINT "basically one and the same.'": GOTO EndSub
IF RM = 7 OR RM = 8 OR RM = 9 OR RM = 10 OR RM = 12 OR RM = 13 OR RM = 14 OR RM = 15 THEN PRINT "Fury points at the tower.  'That's the tower of Dispater.  The gate to Minauros,": PRINT "the next layer of Baator lies within it.  You'll need to make it to the tower": PRINT "before you can do anything.  Usually, this will involve closing your eyes and": PRINT "walking towards it.  The tower is under powerful magic that tries to convince": PRINT "your brain that it isn't really there.  Just close your eye and walk towards it;": PRINT "you'll make it.'": GOTO EndSub
IF RM = 11 AND Barbazu1 <> 2 THEN PRINT "'Well, this is it,' says Fury.  'This is a barbazu,' he says, pointing to the": PRINT "barbazu.  'Now, don't provoke him.  All he wants is a fight.'": GOTO EndSub
END IF
IF Level = 3 THEN
IF Guide = 1 AND Kyton = 0 AND (RM = 15 OR RM = 19 OR RM = 21) THEN PRINT "Fury points at the man in chains.  'That's one of the silent defenders of": PRINT "Jangling Hiter, a kyton.  Don't cross them; they're a real terror in battle.'": SaidThis12 = 1: GOTO EndSub
IF Guide = 3 AND Kyton = 0 AND (RM = 15 OR RM = 19 OR RM = 21) THEN PRINT "Fury points at the man in chains.  'That's one of the silent defenders of": PRINT "Jangling Hiter, a kyton.  They're pretty easy to beat in combat - I really": PRINT "don't see why peopele call them powerful.'": GOTO EndSub
IF Hamatula1 <> 2 AND Hamatula1 <> 1 AND RM = 7 THEN PRINT "Fury points at the hamatula.  'That's a hamatula.  They guard and patrol the": PRINT "third and fourth layers of Baator.'": GOTO EndSub
IF Guide = 1 AND (RM = 2 OR RM = 5) THEN PRINT "Fury says, 'We're in Minauros, the sinking city.  It's the main city on this": PRINT "layer, and it's slowly sinking into the swamp.  Or so the fiends think.  Myself,": PRINT "I don't think it will ever completely sink into the swamp.'": GOTO EndSub
IF Guide = 3 AND (RM = 2 OR RM = 5) THEN PRINT "Fury says, 'We're in Minauros, the sinking city.  It's the main city on this": PRINT "layer, and it's slowly sinking into the swamp.  Or so the fiends think.  Myself,": PRINT "I think that the city's about to completely sink into the swamp.'": GOTO EndSub
IF Guide = 1 AND Arcanoloth = 0 AND RM = 23 THEN PRINT "Fury groans.  'Oh no.  Look, that's L'Ther, a berk I was paid to escort through": PRINT "Baator.  We made it through the gate to Dis, and that's when he skipped off.  He": PRINT "vanished, and then he returned later - with a group of hirelings he had gotten": PRINT "to kill me.  I barely escaped their blades alive, but before I escape I pushed": PRINT "L'Ther into the swamp.  And he's still alive.  Stay away from him.  He deals": PRINT "in intelligence, and he's usually right, but he's downright evil.'": GOTO EndSub
IF RM = 14 OR RM = 12 THEN PRINT "'Ah, Jangling Hiter, city of chains.  There are no weak links here.  The city's": PRINT "connected to the sky by the chains attached to the city.  The city's basically": PRINT "run by humanoids wrapped in chains - the kytons.  Though the city's legally run": PRINT "by a hamatula, everyone knows he's only a puppet of the kytons.'": GOTO EndSub
END IF
PRINT "'I don't have much to say here,' says Fury.": ReturnTo940 = 1
EndSub:
END SUB

SUB Level1Inputs
IF MID$(A$, 1, 4) = "read" AND RM = 21 THEN PRINT "'Dis,' reads the archway.": ReturnTo940 = 1: GOTO Inputs1
IF MID$(A$, 1, 4) = "take" THEN
It$ = MID$(A$, 6)
IF Ruby = 0 AND CabinetOpen = 2 AND RM = 1 THEN Ruby = 1: PRINT "You take the large ruby.": ReturnTo940 = 1: GOTO Inputs1
IF Money = 0 AND RM = 5 AND Money = 0 THEN PRINT "You scoop up the money from the table.": Money = 1: ReturnTo940 = 1: GOTO Inputs1
END IF
IF A$ = "e" AND Abishai1 = 2 AND RM = 19 THEN PRINT "You climb into the pit of maggots.": Pool = 1: RM = 25: ReturnTo940 = 2: GOTO Inputs1
IF A$ = "w" AND RM = 20 THEN PRINT "You climb into the pit of maggots.": Pool = 3: RM = 25: ReturnTo940 = 2: GOTO Inputs1
IF A$ = "e" AND Abishai1 = 0 AND RM = 19 THEN PRINT "The abishai's guarding the pit.": ReturnTo940 = 1: GOTO Inputs1
IF RM = 25 THEN
IF A$ = "w" THEN
Pool = Pool - 1
IF Pool = 0 THEN PRINT "You drag yourself out of the pit of maggots.": RM = 19: ReturnTo940 = 2: GOTO Inputs1
IF Pool <> 0 THEN PRINT "You wade through the crawling maggots, steadily making progress towards the": PRINT "end of the pit.": ReturnTo940 = 2: GOTO Inputs1
END IF
IF A$ = "e" THEN
Pool = Pool + 1
IF Pool = 4 THEN PRINT "You drag yourself out of the pit of maggots.": RM = 20: ReturnTo940 = 2: GOTO Inputs1
IF Pool <> 4 THEN PRINT "You wade through the crawling maggots, steadily making progress towards the": PRINT "end of the pit.": ReturnTo940 = 2: GOTO Inputs1
END IF
END IF
IF A$ = "fight" AND (RM = 17 OR RM = 13) THEN PRINT "You swing your sword down on the marraenoloth.  The sword just goes right": PRINT "through him.": ReturnTo940 = 1: GOTO Inputs1
IF MID$(A$, 1, 3) = "get" AND (RM = 17 OR RM = 13) AND BoatMan = 1 THEN
BoatMan = 0
PRINT "You get in the boat.  The marraenoloth rows the boat to the other side.  You"
PRINT "get out of the boat.  The marraenoloth silently nods, and you get out of the"
PRINT "boat."
IF RM = 17 THEN RM = 13: ReturnTo940 = 2: GOTO Inputs1
IF RM = 13 THEN RM = 17: ReturnTo940 = 2: GOTO Inputs1
END IF
IF MID$(A$, 1, 4) = "give" THEN
IF MID$(A$, 6) = "pass" AND Pass = 1 THEN
IF RM = 19 AND Abishai1 = 0 THEN PRINT "You show your pass to the abishai.  'Yes?' he says.  'Am I to be impressed by": PRINT "that piece of paper?  I'm sorry, but I don't honor passes given out by": PRINT "guards in Darkspine.'": ReturnTo940 = 1: GOTO Inputs1
IF RM = 17 OR RM = 13 THEN PRINT "You show your pass to the marraenoloth.  'See, it gives me free passage,' you": PRINT "say.": PRINT "'I'm proud of you.  Did you know that I don't honor baatezu passes.": PRINT "It's jink or you'll be swimming, berk.'": ReturnTo940 = 1: GOTO Inputs1
END IF
IF (RM = 13 OR RM = 17) AND MID$(A$, 6) = "ruby" AND Ruby = 1 THEN PRINT "You hand your ruby to the boatman.  He nods, and motions for you to get into the": PRINT "boat.": Ruby = 2: BoatMan = 1: ReturnTo940 = 1: GOTO Inputs1
IF (RM = 13 OR RM = 17) AND MID$(A$, 6) = "money" AND Money = 1 THEN PRINT "You hand the money to the boatman.  He nods, and motions for you to get into the": PRINT "boat.": Money = 2: BoatMan = 1: ReturnTo940 = 1: GOTO Inputs1
IF ((MID$(A$, 6) = "ruby" AND Ruby = 1) OR (MID$(A$, 6) = "money" AND Money = 1)) AND RM = 19 AND Abishai1 = 0 AND RM = 19 THEN
IF MID$(A$, 6) = "ruby" AND RM = 19 AND Abishai1 = 0 THEN PRINT "You hand the ruby to the abishai.  He says to you, 'That'll be enough to buy"
IF MID$(A$, 6) = "money" AND RM = 19 AND Abishai1 = 0 THEN PRINT "You hand the money to the abishai.  He says to you, 'That'll be enough to buy"
PRINT "a service.  What'll it be?'": PRINT
IF Ruby = 1 THEN Ruby = 2
IF Money = 1 THEN Money = 1
Abishai1 = 3
PRINT "You say:": PRINT
PRINT "1.  'Can you take me to the other side of the pit?'"
PRINT "2.  'Can you take me over the pit?'"
PRINT "3.  'Can you drop me off at the other side of the pit?'"
PRINT "4.  'Let me think about it.'"
IF Guide = 1 THEN PRINT : PRINT "Fury whispers in your ear, 'Be careful what you say.  Fiends love to pervent": PRINT "commands.  They follow the letter of the law, just not the spirit.'"
ABAsk: PRINT : INPUT ">", A: PRINT
IF A > 4 OR A <= 0 THEN PRINT "'Huh?'": GOTO ABAsk
IF A = 1 THEN PRINT "The abishai nods.  With that, he lifts you up in its claws and carries you over": PRINT "the maggot pool and then flies you back around.  With that, he drops you back": PRINT "where you started.": PRINT "'Service completed,' says the abishai.": Abishai1 = 0: ReturnTo940 = 2: GOTO Inputs1
IF A = 2 THEN PRINT "The abishai nods.  With that, he lifts you up in its claws and flies you over": PRINT "the pit, until he's reached the middle of it.  Then he drops you.  You can hear": PRINT "him cackle from above, 'Service completed!'": RM = 25: Abishai1 = 0: Pool = 2: ReturnTo940 = 2: GOTO Inputs1
IF A = 3 THEN
PRINT "Grudgingly, the abishai nods.  He lifts you up in its claws and carries you over": PRINT "the pit, to the other side, and drops you off (not too gently, I might add).": Hp = Hp - 10: Abishai1 = 0: RM = 20
IF Hp <= 0 THEN Killer = 3: Killer$ = "a bad fall": Dead
ReturnTo940 = 2: GOTO Inputs1
END IF
IF A = 4 THEN PRINT "'Okay,' the abishai says.  'Just let me know what you want, and when.'": ReturnTo940 = 1: GOTO Inputs1
END IF
IF RM = 2 AND Ruby = 1 AND Cornugon1 = 0 THEN Cornugon1 = 3: PRINT "You hand the ruby to the cornugon.  He says to you, 'Okay, sod.  Here's your": PRINT "pass to Baator.  Have a pleasant day.'": Ruby = 2: Pass = 1: ReturnTo940 = 1: GOTO Inputs1
IF RM = 3 AND Ruby = 1 AND Guide = 0 THEN Guide = 1: PRINT "You hand the ruby to Fury.  He says to you, 'Okay, cutter.  I can help you": PRINT "pass through Baator.  The fiends know me, and they won't ask any questions.'": Ruby = 2: ReturnTo940 = 1: GOTO Inputs1
END IF
IF A$ = "s" AND RM = 22 AND DoorOpen = 0 THEN PRINT "There is a closed iron door there.": ReturnTo940 = 1: GOTO Inputs1
IF MID$(A$, 1, 4) = "talk" AND RM = 3 AND Guide = 0 THEN PRINT "You step up to the human in white.  'Hello,' you venture.": PRINT "'Hello, cutter.  I'm Fury, the best guide to this entire stinking plane.": PRINT "Need help?  I don't doubt it.  I'll help you.... for a price.  I'm currently": PRINT "looking for a large ruby.  That'll buy my services for as long as you live -": PRINT "which, with me, will be a lot longer.'": ReturnTo940 = 1: GOTO Inputs1
IF (A$ = "fight" OR MID$(A$, 1, 5) = "break") AND RM = 1 THEN
IF CabinetOpen = 1 OR CabinetOpen = 2 THEN PRINT "You've done enough damage.": ReturnTo940 = 1: GOTO Inputs1
IF CabinetOpen = 0 THEN PRINT "You slash out at the cabinet's lock, breaking it.": CabinetOpen = 1: ReturnTo940 = 1: GOTO Inputs1
END IF
IF MID$(A$, 1, 5) = "close" THEN
IF CabinetOpen = 2 AND RM = 1 THEN PRINT "The cabinet closes easily.": CabinetOpen = 1: ReturnTo940 = 1: GOTO Inputs1
IF CabinetOpen <= 1 AND RM = 1 THEN PRINT "You have lost your mind.": ReturnTo940 = 1: GOTO Inputs1
END IF
IF MID$(A$, 1, 4) = "open" THEN
IF RM = 1 THEN
IF CabinetOpen = 0 THEN PRINT "The cabinet is locked.": ReturnTo940 = 1: GOTO Inputs1
IF CabinetOpen = 1 THEN
PRINT "The cabinet opens easily, seeing how there's no lock.  ";
IF Ruby = 0 THEN PRINT "There is a large ruby": PRINT "inside."
IF Ruby <> 0 THEN PRINT "It's empty."
CabinetOpen = 2: ReturnTo940 = 1: GOTO Inputs1
END IF
IF CabinetOpen = 2 THEN PRINT "You have lost your mind.": ReturnTo940 = 1: GOTO Inputs1
END IF
IF RM = 22 THEN
IF DoorOpen = 0 THEN PRINT "You pull on the door, and it swings open.": DoorOpen = 1: ReturnTo940 = 1: GOTO Inputs1
IF DoorOpen = 1 THEN PRINT "You have lost your mind.": ReturnTo940 = 1: GOTO Inputs1
END IF
END IF
IF A$ = "fight" AND Cornugon1 = 0 AND RM = 2 THEN ReturnTo940 = 3: GOTO Inputs1
IF A$ = "fight" AND Cornugon1 = 1 THEN ReturnTo940 = 3: GOTO Inputs1
IF A$ = "fight" AND Abishai1 = 0 AND RM = 19 THEN ReturnTo940 = 4: GOTO Inputs1
IF A$ = "fight" AND Abishai1 = 1 THEN ReturnTo940 = 4: GOTO Inputs1
IF A$ = "se" AND SeenThis = 0 AND RM = 6 THEN
PRINT "As you are about to walk south, a patrol of abishai march by the southeast"
PRINT "street.  ";
IF Guide = 0 THEN
PRINT "They notice you, and walk up to you.": CantRun = 1
PRINT "'Hey, sod.  Do you have a pass?'"
SeenThis = 1
ReturnTo940 = 1: GOTO Inputs1
ELSE
PRINT "Seeing you with a guide, they ignore you."
SeenThis = 2: ReturnTo940 = 1: GOTO Inputs1
END IF
END IF
IF SeenThis = 1 AND Abishais = 0 THEN
IF A$ = "fight" THEN PRINT "You draw your sword.  Suddenly, the patrol leader says, 'Men!  Attack!'": Abishais = 4: ReturnTo940 = 4: GOTO Inputs1
IF MID$(A$, 1, 4) = "talk" THEN
PRINT "You say:": PRINT
PRINT "1.  'Uh... It's at home.'"
PRINT "2.  'Uh... It was stolen.'"
PRINT "3.  'Uh... Uh... Uh..."
PRINT "4.  'Here it is, my good fiend.'"
PRINT "5.  'I don't have one.'"
PRINT "6.  'Hello, I'm the Elf.  I killed Zaebos.'"
PRINT "7.  'Would you like a very large ruby?'"
PRINT "8.  'Well, bye.'"
AbiAsk: PRINT : INPUT ">", A: PRINT
IF A > 8 OR A <= 0 THEN GOTO AbiAsk
IF A = 1 OR A = 2 OR A = 3 THEN PRINT "'You think that I am a fool!' says the abishai.  'Men!  Attack!'": Abishais = 4: ReturnTo940 = 1: GOTO Inputs1
IF A = 6 THEN PRINT "'Sure, yeah.  Look, Elf, Zaebos isn't dead.  You may have heard rumors, but we": PRINT "baatezu guard Baator too well.  Nobody could make it to Nessus to assassinate": PRINT "Zaebos unless they were super-powerful.'": ReturnTo940 = 1: GOTO Inputs1
IF A = 4 AND Pass = 1 THEN A$ = "give"
IF A = 4 AND Pass <> 1 THEN PRINT "'You think that I am a fool!' says the abishai.  'Men!  Attack!'": Abishais = 4: ReturnTo940 = 1: GOTO Inputs1
IF A = 5 THEN PRINT "'You are a fool!  Prepare to die!' says the patrol leader.  'Men!  Attack!'": Abishais = 4: ReturnTo940 = 1: GOTO Inputs1
IF A = 8 THEN PRINT "'Support your constabulary,' says the abishai.": ReturnTo940 = 1: GOTO Inputs1
IF A = 7 THEN
PRINT "'Yes, I would,' says the abishai."
IF Ruby = 0 OR Ruby = 2 THEN PRINT "'So would I,' you say.": ReturnTo940 = 1: GOTO Inputs1
IF Ruby = 1 THEN PRINT "You hand the ruby to the abishai.  'Here you go, my good fiend,' you say.": PRINT "'Okay, here's a pass, sod.  Have a nice day!  Men!  Let's move on!'": PRINT "The patrol marches out of sight.": Ruby = 2: Pass = 1: SeenThis = 2: CantRun = 0: ReturnTo940 = 1: GOTO Inputs1
END IF
END IF
IF (MID$(A$, 1, 4) = "give" OR MID$(A$, 1, 1) = "y") AND Pass = 1 THEN PRINT "You hand the pass to the patrol leader.  The leader looks at it, nods its head,": PRINT "hands it back, and says, 'He's okay, soldiers!  Let's move on!'": SeenThis = 2: CantRun = 0: ReturnTo940 = 1: GOTO Inputs1
END IF
IF (A$ = "s" AND RM = 13) OR (A$ = "n" AND RM = 17) THEN PRINT "A marraenoloth guards the river here.": ReturnTo940 = 1: GOTO Inputs1
IF A$ = "s" AND RM = 14 THEN PRINT "You jump into the river.  Instantly, you have to start to keep up with the": PRINT "current.": RM = 26: ReturnTo940 = 2: GOTO Inputs1
IF A$ = "n" AND RM = 18 THEN PRINT "You jump into the river.  Instantly, you have to start to keep up with the": PRINT "current.": RM = 26: ReturnTo940 = 2: GOTO Inputs1
IF A$ = "e" AND RM = 26 THEN
IF Cur = 1 THEN PRINT "You follow the current along, to a land where your fate is est lest undescribed.": Killer = 5: Dead
IF Cur = 2 THEN PRINT "You fight against the current boldy and strongly, and manage to stay where you": PRINT "are for the moment.": StyxDead = 0: ReturnTo940 = 1: GOTO Inputs1
END IF
IF A$ = "w" AND RM = 26 THEN
IF Cur = 1 THEN PRINT "You fight against the current boldy and strongly, and manage to stay where you": PRINT "are for the moment.": StyxDead = 0: ReturnTo940 = 1: GOTO Inputs1
IF Cur = 2 THEN PRINT "You follow the current along, to a land where your fate is est lest undescribed.": Killer = 5: Dead
END IF
IF (A$ = "n" OR A$ = "s") AND Cur = 0 AND RM = 26 THEN
PRINT "You drag yourself out of the river."
IF A$ = "n" THEN RM = 14: ReturnTo940 = 2: GOTO Inputs1
IF A$ = "s" THEN RM = 18: ReturnTo940 = 2: GOTO Inputs1
END IF
IF A$ = "s" AND RM = 2 AND Cornugon1 < 2 AND Guide = 0 THEN PRINT "The cornugon guard stops you.  'Pass, please?'": ReturnTo940 = 1: GOTO Inputs1
IF A$ = "n" AND RM = 21 AND Crawling = 1 THEN PRINT "You stand up first.": Crawling = 0: ReturnTo940 = 1: GOTO Inputs1
IF A$ = "s" AND (RM = 24 OR RM = 23 OR RM = 22) THEN RM = RM - 1: ReturnTo940 = 2: GOTO Inputs1
IF A$ = "n" AND (RM = 21 OR RM = 23 OR RM = 22) THEN RM = RM + 1: ReturnTo940 = 2: GOTO Inputs1
IF A$ = "n" AND RM >= 6 AND RM <> 7 AND RM <> 9 AND RM <> 10 AND RM <> 11 AND RM <> 14 AND RM <> 19 AND RM <> 20 AND RM <> 21 AND RM <> 22 AND RM <> 23 AND RM <= 24 THEN RM = RM - 4: ReturnTo940 = 2: GOTO Inputs1
IF A$ = "s" AND RM <> 1 AND RM <> 3 AND RM <> 5 AND RM <> 6 AND RM <> 7 AND RM <> 1 AND RM <> 15 AND RM <> 16 AND RM <> 17 AND RM <> 18 AND RM <> 19 AND RM <= 20 THEN RM = RM + 4: ReturnTo940 = 2: GOTO Inputs1
IF A$ = "e" AND RM <> 3 AND RM <> 4 AND RM <> 5 AND RM <> 6 AND RM <> 8 AND RM <> 9 AND RM <> 11 AND RM <> 12 AND RM <> 16 AND RM <= 19 THEN RM = RM + 1: ReturnTo940 = 2: GOTO Inputs1
IF A$ = "w" AND RM <> 1 AND RM <> 4 AND RM <> 5 AND RM <> 6 AND RM <> 7 AND RM <> 9 AND RM <> 10 AND RM <> 12 AND RM <> 13 AND RM <> 17 AND RM <= 20 THEN RM = RM - 1: ReturnTo940 = 2: GOTO Inputs1
IF A$ = "se" AND (RM = 5 OR RM = 9 OR RM = 6) THEN RM = RM + 5: ReturnTo940 = 2: GOTO Inputs1
IF A$ = "nw" AND (RM = 10 OR RM = 11 OR RM = 14) THEN RM = RM - 5: ReturnTo940 = 2: GOTO Inputs1
IF (A$ = "e" OR A$ = "w") AND (RM = 23 OR RM = 24) THEN PRINT "A great wave of fear prevents you from going in that direction.": ReturnTo940 = 1: GOTO Inputs1
IF A$ = "crawl" AND RM = 21 AND Crawling = 0 THEN Crawling = 1: PRINT "You get down on your knees.": ReturnTo940 = 1: GOTO Inputs1
IF A$ = "s" AND RM = 21 AND Crawling = 0 THEN PRINT "As you walk down the tunnel, a nearby boulder calls out, 'Those who would enter": PRINT "Dis must crawl!'": ReturnTo940 = 2: GOTO Inputs1
IF A$ = "s" AND RM = 21 AND Crawling = 1 THEN PRINT "You crawl through the tunnel.  Suddenly, the tunnel flares up in a reddish": PRINT "light and when you open your eyes, you are somewhere else.": Crawling = 0: RM = 1: Level = 2: ReturnTo940 = 2: GOTO Inputs1
Inputs1:
END SUB

SUB Level2Inputs
IF A$ = "n" AND (Cons = 9 OR Cons = 1 OR Cons = 5 OR Cons = 9) THEN PRINT "The street in that direction is currently being constructed on.": ReturnTo940 = 1: GOTO Inputs2
IF A$ = "s" AND (Cons = 2 OR Cons = 6 OR Cons = 8 OR Cons = 9) THEN PRINT "The street in that direction is currently being constructed on.": ReturnTo940 = 1: GOTO Inputs2
IF A$ = "e" AND (Cons = 3 OR Cons = 8 OR Cons = 6 OR Cons = 5) THEN PRINT "The street in that direction is currently being constructed on.": ReturnTo940 = 1: GOTO Inputs2
IF A$ = "w" AND (Cons = 4 OR Cons = 7) THEN PRINT "The street in that direction is currently being constructed on.": ReturnTo940 = 1: GOTO Inputs2
IF A$ = "s" AND RM = 2 AND Guide <> 1 AND Cornugon2 < 2 THEN PRINT "The cornugon is blocking the entrance to the city.": ReturnTo940 = 1: GOTO Inputs2
IF A$ = "fight" AND RM = 1 AND Abishai2 <> 2 THEN ReturnTo940 = 4: GOTO Inputs2
IF A$ = "fight" AND RM = 2 AND Cornugon2 <> 2 THEN ReturnTo940 = 3: GOTO Inputs2
IF A$ = "fight" AND RM = 10 AND Osyluth1 <> 2 THEN ReturnTo940 = 5: GOTO Inputs2
IF A$ = "fight" AND RM = 11 AND Barbazu1 <> 2 THEN ReturnTo940 = 6: GOTO Inputs2
IF A$ = "d" AND RM = 1 AND Guide <> 1 AND Abishai2 < 2 THEN PRINT "The abishai blocks the way down.": ReturnTo940 = 1: GOTO Inputs2
IF A$ = "u" AND RM = 11 AND Barbazu1 < 2 THEN PRINT "The barbazu blocks the way up.": ReturnTo940 = 1: GOTO Inputs2
IF A$ = "u" AND RM = 11 THEN PRINT "You climb up the stairs.  Suddenly, the tower surrounds you and you are suddenly": PRINT "somewhere else.": RM = 17: ReturnTo940 = 2: GOTO Inputs2
IF A$ = "d" AND RM = 1 THEN RM = 3: ReturnTo940 = 2: GOTO Inputs2
IF A$ = "u" AND RM = 3 THEN RM = 1: ReturnTo940 = 2: GOTO Inputs2
IF A$ = "n" AND RM = 2 THEN RM = 3: ReturnTo940 = 2: GOTO Inputs2
IF A$ = "s" AND RM = 3 THEN RM = 2: ReturnTo940 = 2: GOTO Inputs2
IF ClosedEyes <> 1 THEN
IF A$ = "n" AND RM = 14 THEN ReturnTo940 = 2: GOTO Inputs2
IF A$ = "s" AND RM = 8 THEN ReturnTo940 = 2: GOTO Inputs2
IF A$ = "e" AND RM = 10 THEN ReturnTo940 = 2: GOTO Inputs2
IF A$ = "w" AND RM = 12 THEN ReturnTo940 = 2: GOTO Inputs2
IF A$ = "ne" AND RM = 13 THEN ReturnTo940 = 2: GOTO Inputs2
IF A$ = "se" AND RM = 7 THEN ReturnTo940 = 2: GOTO Inputs2
IF A$ = "sw" AND RM = 9 THEN ReturnTo940 = 2: GOTO Inputs2
IF A$ = "nw" AND RM = 15 THEN ReturnTo940 = 2: GOTO Inputs2
END IF
IF ClosedEyes = 1 THEN
IF A$ = "ne" AND RM = 13 THEN RM = 11: ReturnTo940 = 2: GOTO Inputs2
IF A$ = "se" AND RM = 7 THEN RM = 11: ReturnTo940 = 2: GOTO Inputs2
IF A$ = "sw" AND RM = 9 THEN RM = 11: ReturnTo940 = 2: GOTO Inputs2
IF A$ = "nw" AND RM = 15 THEN RM = 11: ReturnTo940 = 2: GOTO Inputs2
END IF
IF A$ = "sw" AND RM = 11 THEN RM = 13: ReturnTo940 = 2: GOTO Inputs2
IF A$ = "nw" AND RM = 11 THEN RM = 7: ReturnTo940 = 2: GOTO Inputs2
IF A$ = "ne" AND RM = 11 THEN RM = 9: ReturnTo940 = 2: GOTO Inputs2
IF A$ = "se" AND RM = 11 THEN RM = 15: ReturnTo940 = 2: GOTO Inputs2
IF A$ = "s" AND RM = 14 THEN RM = 8: ReturnTo940 = 2: GOTO Inputs2
IF A$ = "close eyes" AND ClosedEyes = 0 THEN ClosedEyes = 1: PRINT "You close your eyes.": ReturnTo940 = 1: GOTO Inputs2
IF A$ = "n" AND (RM = 4 OR RM = 6) THEN RM = RM + 9: ReturnTo940 = 2: GOTO Inputs2
IF A$ = "s" AND (RM = 13 OR RM = 14 OR RM = 15) THEN RM = RM - 9: ReturnTo940 = 2: GOTO Inputs2
IF A$ = "e" AND (RM = 6 OR RM = 9 OR RM = 12 OR RM = 15) THEN RM = RM - 2: ReturnTo940 = 2: GOTO Inputs2
IF A$ = "w" AND (RM = 4 OR RM = 7 OR RM = 10 OR RM = 13) THEN RM = RM + 2: ReturnTo940 = 2: GOTO Inputs2
IF A$ = "n" AND RM >= 5 AND RM <> 6 AND RM <= 15 THEN RM = RM - 3: ReturnTo940 = 2: GOTO Inputs2
IF A$ = "s" AND RM >= 2 AND RM <> 3 AND RM <= 12 AND RM <= 15 THEN RM = RM + 3: ReturnTo940 = 2: GOTO Inputs2
IF A$ = "e" AND RM >= 4 AND RM <= 15 THEN RM = RM + 1: ReturnTo940 = 2: GOTO Inputs2
IF A$ = "w" AND RM >= 5 AND RM <= 15 THEN RM = RM - 1: ReturnTo940 = 2: GOTO Inputs2
IF A$ = "u" OR A$ = "d" AND RM = 19 THEN ReturnTo940 = 2: GOTO Inputs2
IF (A$ = "n" OR A$ = "enter portal") AND RM = 21 THEN PRINT "You enter the portal.  The light surrounds and covers you.  When the light dies": PRINT "away, you are somewhere else.": ReturnTo940 = 2: RM = 2: Level = 3: GOTO Inputs2
IF MID$(A$, 1, 5) = "break" AND Break <> 0 THEN
PRINT "You struggle with your steel chains, trying to break free."
Break = Break - 1
IF Break = 0 AND Guide <> 1 THEN PRINT "Finally, the chains snap.  You shake off the manacles, and stand up."
IF Break = 0 AND Guide = 1 THEN PRINT "Finally, the chains snap.  You shake off the manacles, and stand up.  You help": PRINT "Fury up as well."
ReturnTo940 = 1: GOTO Inputs2
END IF
IF MID$(A$, 1, 4) = "take" AND RM = 18 AND Book = 0 THEN PRINT "You pick up the book from the shelf.": Book = 1: ReturnTo940 = 1: GOTO Inputs2
IF MID$(A$, 1, 5) = "touch" THEN
IF Break <> 0 THEN PRINT "You're kind of tied up right now.": ReturnTo940 = 1: GOTO Inputs2
IF MID$(A$, 7) = "red orb" THEN
IF RM = 16 THEN PRINT "You touch the red orb.  Suddenly and instantly, you are somewhere else.": PRINT : RM = 17: PRINT : ReturnTo940 = 2: GOTO Inputs2
IF RM = 17 THEN PRINT "You touch the red orb.  Suddenly and instantly, you are somewhere else.": PRINT : RM = 18: PRINT : ReturnTo940 = 2: GOTO Inputs2
IF RM = 18 THEN PRINT "You touch the red orb.  Suddenly and instantly, you are somewhere else.": PRINT : RM = 20: PRINT : ReturnTo940 = 2: GOTO Inputs2
IF RM = 19 THEN PRINT "You touch the red orb.  Suddenly and instantly, you are somewhere else.": PRINT : RM = 16: PRINT : ReturnTo940 = 2: GOTO Inputs2
IF RM = 20 THEN PRINT "You touch the red orb.  Suddenly and instantly, you are somewhere else.": PRINT : RM = 19: PRINT : ReturnTo940 = 2: GOTO Inputs2
IF RM = 21 THEN PRINT "You touch the red orb.  Suddenly and instantly, you are somewhere else.": PRINT : RM = 19: PRINT : ReturnTo940 = 2: GOTO Inputs2
END IF
IF MID$(A$, 7) = "blue orb" THEN
IF RM = 16 THEN PRINT "You touch the blue orb.  Suddenly and instantly, you are somewhere else.": PRINT : RM = 19: PRINT : ReturnTo940 = 2: GOTO Inputs2
IF RM = 17 THEN PRINT "You touch the blue orb.  Suddenly and instantly, you are somewhere else.": PRINT : RM = 16: PRINT : ReturnTo940 = 2: GOTO Inputs2
IF RM = 18 THEN PRINT "You touch the blue orb.  Suddenly and instantly, you are somewhere else.": PRINT : RM = 17: PRINT : ReturnTo940 = 2: GOTO Inputs2
IF RM = 19 THEN PRINT "You touch the blue orb.  Suddenly and instantly, you are somewhere else.": PRINT : RM = 20: PRINT : ReturnTo940 = 2: GOTO Inputs2
IF RM = 20 THEN PRINT "You touch the blue orb.  Suddenly and instantly, you are somewhere else.": PRINT : RM = 18: PRINT : ReturnTo940 = 2: GOTO Inputs2
IF RM = 21 THEN PRINT "You touch the blue orb.  Suddenly and instantly, you are somewhere else.": PRINT : RM = 16: PRINT : ReturnTo940 = 2: GOTO Inputs2
END IF
IF MID$(A$, 7) = "green orb" THEN
IF RM = 16 THEN PRINT "You touch the green orb.  Suddenly and instantly, you are somewhere else.": PRINT : RM = 18: PRINT : ReturnTo940 = 2: GOTO Inputs2
IF RM = 17 THEN
IF Barbazu1 = 0 THEN PRINT "You touch the orb.  Suddenly and instantly, you are somewhere else.": RM = 11: Barbazu1 = 1: PRINT : PRINT "A barbazu screams out at you, 'Escaped prisoner!' and attacks!": PRINT : ReturnTo940 = 2: GOTO Inputs2
IF Barbazu1 = 2 THEN PRINT "You touch the orb.  Suddenly and instantly, you are somewhere else.": RM = 11: PRINT : ReturnTo940 = 2: GOTO Inputs2
IF Barbazu1 = 3 THEN PRINT "You touch the orb.  Suddenly and instantly, you are somewhere else.": RM = 11: Barbazu1 = 0: PRINT : PRINT "The barbazu says to you, 'Have fun?'": PRINT : ReturnTo940 = 2: GOTO Inputs2
END IF
IF RM = 18 THEN PRINT "You touch the green orb.  Suddenly and instantly, you are somewhere else.": PRINT : RM = 16: PRINT : ReturnTo940 = 2: GOTO Inputs2
IF RM = 19 THEN PRINT "You touch the green orb.  Suddenly and instantly, you are somewhere else.": PRINT : RM = 21: PRINT : ReturnTo940 = 2: GOTO Inputs2
IF RM = 20 THEN PRINT "You touch the green orb.  Suddenly and instantly, you are somewhere else.": PRINT : RM = 21: PRINT : ReturnTo940 = 2: GOTO Inputs2
IF RM = 21 THEN PRINT "You touch the green orb.  Suddenly and instantly, you are somewhere else.": PRINT : RM = 20: PRINT : ReturnTo940 = 2: GOTO Inputs2
END IF
END IF
IF MID$(A$, 1, 4) = "give" THEN
IF Abishai2 = 0 AND RM = 1 AND MID$(A$, 6) = "ruby" AND Ruby = 1 THEN PRINT "You slip the abishai the ruby.  He nods, and slips you an official-looking pass": PRINT "to Baator.": Pass = 1: Ruby = 2: Abishai2 = 3: ReturnTo940 = 1: GOTO Inputs2
IF Abishai2 = 0 AND RM = 1 AND MID$(A$, 6) = "money" AND Money = 1 THEN PRINT "You slip the abishai the sack of money.  He nods, and slips you an": PRINT "official-looking pass to Baator.": Pass = 1: Money = 2: Abishai2 = 3: ReturnTo940 = 1: GOTO Inputs2
IF Abishai2 = 0 AND RM = 1 AND MID$(A$, 6) = "pass" AND Pass = 1 THEN PRINT "You show the pass to the abishai.  The abishai nods, and says, 'You may pass.'": Abishai2 = 3: ReturnTo940 = 1: GOTO Inputs2
IF Cornugon2 = 0 AND RM = 2 AND MID$(A$, 6) = "pass" AND Pass = 1 THEN PRINT "You show the pass to the abishai.  The abishai nods, and says, 'You may pass.'": Abishai2 = 3: ReturnTo940 = 1: GOTO Inputs2
END IF
Inputs2:
END SUB

SUB Minauros
IF Sinking = 5 THEN
PRINT "In the Swamp": PRINT
PRINT "You are in the swamp.  Above you is light, but you are falling into the swamp"
PRINT "quickly!  If you don't make it to light, you'll drown!"
IF RM = 9 AND Arcanoloth = 1 THEN PRINT "There seems to be a portal here, emitting a reddish light that is illuminating": PRINT "the swamp."
GOTO MinaurosEndDesc
END IF
ON RM GOTO SinkingBariaurInn, SwampyStreets, Alley1, Alley2, SwampyStreets, Alley3, SwampyGates, Swamp, Swamp, Swamp, Swamp, GatesToJanglingHiter, Street2, InGates, Street2, DeadEnd, Street2, Street2, Street2, Street2, Street2, DeadEnd, Street2, DeadEnd
SwampyStreets: PRINT "Swampy Streets of Minauros": PRINT
PRINT "You are on the street of Minauros, the sinking city.  The ground here is"
PRINT "actually parts of a marsh.  The marsh itself seems to be swallowing the city."
PRINT "Nearby houses are totally submerged.  You assume that you are on the highest"
PRINT "ground in the city.  From here, you may go ";
IF RM = 2 THEN PRINT "west and east.  To the west is the": PRINT "Sinking Scheming Bariaur Inn.  To the east is a sinking alley."
IF RM = 5 THEN PRINT "north, east, and southwest.  To the": PRINT "east is a sinking alley."
GOTO MinaurosEndDesc
SinkingBariaurInn: PRINT "Sinking Bariaur Inn": PRINT
PRINT "You are in the Sinking Bariaur Inn.  There is a sign of a bariaur here, looking"
PRINT "his crafty little scheming look.  However, the bariaur doesn't seem to notice"
PRINT "that it's up to it's neck in a swamp.  From here, you may go east."
IF PitFiend = 0 OR PitFiend = 1 THEN
PRINT "There is a man in white here.  He is sitting down at a table, drinking some sort"
PRINT "of drink.  ";
IF Guide = 1 THEN PRINT "He somewhat resembles Fury." ELSE PRINT ""
END IF
IF PitFiend = 2 AND Guide <> 0 THEN PRINT "There is a man in white here.  He is talking to Fury."
GOTO MinaurosEndDesc
Alley1:
IF Alley1Seen = 0 THEN
AlleySeen = AlleySeen + 1
Alley1Seen = AlleySeen
END IF
IF Alley1Seen = 1 THEN PRINT "Sinking Alley": PRINT
IF Alley1Seen = 2 THEN PRINT "Another Sinking Alley": PRINT
IF Alley1Seen = 3 THEN PRINT "Yet Another Sinking Alley": PRINT : YetAnotherAlley = 1
PRINT "This alley is slowly sinking into the swamp.  The walls around you weren't built"
PRINT "on stable ground, so it is slowly sinking down into the marshy lands around it."
PRINT "From here, you may go west."
GOTO MinaurosEndDesc
Alley2:
IF Alley2Seen = 0 THEN
AlleySeen = AlleySeen + 1
Alley2Seen = AlleySeen
END IF
IF Alley2Seen = 1 THEN PRINT "Sinking Alley": PRINT
IF Alley2Seen = 2 THEN PRINT "Another Sinking Alley": PRINT
IF Alley2Seen = 3 THEN PRINT "Yet Another Sinking Alley": PRINT : YetAnotherAlley = 1
PRINT "This alley is slowly sinking into the swamp.  The walls around you weren't built"
PRINT "on stable ground, so it is slowly sinking down into the marshy lands around it."
IF RM <> 4 THEN PRINT "From here, you may go west."
IF RM = 4 THEN PRINT "From here, you may go south."
GOTO MinaurosEndDesc
Alley3:
IF Alley3Seen = 0 THEN
AlleySeen = AlleySeen + 1
Alley3Seen = AlleySeen
END IF
IF Alley3Seen = 1 THEN PRINT "Sinking Alley": PRINT
IF Alley3Seen = 2 THEN PRINT "Another Sinking Alley": PRINT
IF Alley3Seen = 3 THEN PRINT "Yet Another Sinking Alley": PRINT : YetAnotherAlley = 1
PRINT "This alley is slowly sinking into the swamp.  The walls around you weren't built"
PRINT "on stable ground, so it is slowly sinking down into the marshy lands around it."
PRINT "From here, you may go west."
GOTO MinaurosEndDesc
SwampyGates: PRINT "Gates of Minauros": PRINT
PRINT "You are standing inside of the gates of Minauros, the sinking city.  From here,"
PRINT "there is an alley to the north, while to the south is the exit to the city - and"
PRINT "into the swamp.  The swamp looks pretty dangerous.  A street also goes northeast"
PRINT "from here.  ";
IF Hamatula1 = 0 OR Hamatula1 = 3 THEN PRINT "There is a bored-looking hamatula guard here."
IF Hamatula1 = 1 THEN PRINT "A hamatula guard is here, attacking you!"
IF Hamatula1 = 2 THEN PRINT ""
GOTO MinaurosEndDesc
Swamp: PRINT "Swamp": PRINT
PRINT "You are in a large swamp.  The land around you is unstable.  You are currently"
PRINT "sinking into it as well, with your ";
IF Sinking = 0 THEN PRINT "feet sunk into the swamp."
IF Sinking = 1 THEN PRINT "ankles sunk into the swamp."
IF Sinking = 2 THEN PRINT "knees sunk into the swamp."
IF Sinking = 3 THEN PRINT "waist sunk into the swamp."
IF Sinking = 4 THEN PRINT "neck suck into the swamp."
IF Sinking < 0 OR Sinking > 4 THEN PRINT "error in the sinking function."
PRINT "You may go ";
IF RM = 8 THEN PRINT "south and southeast."
IF RM = 9 THEN PRINT "south and southwest."
IF RM = 10 THEN PRINT "north and east."
IF RM = 11 THEN PRINT "north, west, and northeast."
GOTO MinaurosEndDesc
GatesToJanglingHiter: PRINT "Gates to Jangling Hiter": PRINT
PRINT "You are standing at the gates to Jangling Hiter, city of chains.  The city"
PRINT "itself is to the south of here, while bleak desolate swamp surrounds you to the"
PRINT "north and northwest."
GOTO MinaurosEndDesc
Street2: PRINT "Streets of Jangling Hiter": PRINT
PRINT "You are walking along the streets of Jangling Hiter.  Chains of all sorts"
PRINT "surround you here, all of them seemingly tied to the street.  The chains reach"
PRINT "all of the way up to the sky.  What they are attached to is unknown.  You may go"
IF RM = 13 THEN PRINT "south, east, and southeast."
IF RM = 15 THEN PRINT "south and southwest."
IF RM = 17 THEN PRINT "north, northwest, northeast, southeast, and southwest."
IF RM = 18 OR RM = 21 THEN PRINT "north, south, southwest, and northwest."
IF RM = 19 THEN PRINT "northeast, east, and southeast."
IF RM = 20 THEN PRINT "south, west, southwest, and northeast."
IF RM = 23 THEN PRINT "in all northern directions."
IF RM = 23 AND Arcanoloth = 0 THEN PRINT "There is a man dressed all in grey leaning against a wall here."
IF (RM = 15 OR RM = 19 OR RM = 21) AND Kyton = 0 THEN PRINT "A humanoid figure wrapped all in chains is here, looking around.  It's a kyton."
GOTO MinaurosEndDesc
DeadEnd:
IF Kyton = 1 THEN
PRINT "Dead End": PRINT
PRINT "When we say, 'dead end,' we mean, 'dead end.'  The kyton that's been pursuing"
PRINT "you stops at you, blocking the exit to the alley."
ELSE
PRINT "Alley": PRINT
PRINT "You are in an alley.  A large section of chains covers the sky here, causing"
PRINT "the rain to roll off of the chains and not fall on your head.  You may go"
IF RM = 22 THEN PRINT "northeast."
IF RM = 24 OR RM = 16 THEN PRINT "north."
END IF
GOTO MinaurosEndDesc
InGates: PRINT "Inside the Gates of Jangling Hiter": PRINT
PRINT "The gates to Jangling Hiter are to the north from here.  The gates themselves"
PRINT "are made entirely of various barbed chains sewn together and bound by strong"
PRINT "steel.  From here, streets go off to the west, south, and southeast."
IF Kyton = 0 THEN PRINT "A humanoid figure wrapped all in chains is here, looking around.  It's a kyton."
GOTO MinaurosEndDesc
MinaurosEndDesc:
IF PitFiend = 3 THEN PRINT "Before you is a floating scroll - actually a contract."
IF PitFiend = 5 THEN PRINT "Before you is a floating scroll - actually a contract.  In your hand is a pen."
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
IF Level = 1 THEN
IF RM = 2 AND Cornugon1 <> 1 AND Cornugon1 <> 2 THEN
PRINT "You walk up to the cornugon.  'Hello!' you say cheerfully to it."
PRINT "'Go away,' it says.": PRINT
PRINT "You say:": PRINT
PRINT "1.  'Hello.  I'm here to kill you.'"
PRINT "2.  'Hello, would you like a very large ruby?'"
PRINT "3.  'Hello.  Can I pass here?'"
PRINT "4.  'Hello.  I'm the Elf.  I killed Zaebos.'"
PRINT "5.  'Goodbye!  See you soon!'"
CAsk: PRINT : INPUT ">", A: PRINT
IF A > 5 OR A <= 0 THEN PRINT "'Excuse me?'": GOTO CAsk
IF A = 1 THEN PRINT "'WHAT?' the cornugon says, as he readies its whip.": Cornugon1 = 1: ReturnTo940 = 1: GOTO EndTalking
IF A = 2 THEN
PRINT "'Yes, I would,' says the cornugon."
IF Ruby = 0 OR Ruby = 2 THEN PRINT "'So would I,' you say.": ReturnTo940 = 1: GOTO EndTalking
A$ = "give"
END IF
IF A = 3 AND Guide = 0 THEN PRINT "'No,' he says.  'Only if you have an offical pass may you pass here.'": ReturnTo940 = 1: GOTO EndTalking
IF A = 3 AND Guide = 1 THEN PRINT "'Go right ahead,' says the cornugon.": ReturnTo940 = 1: GOTO EndTalking
IF A = 4 THEN PRINT "'And I killed Prince Talisid.  Look, kid, if you want to impress me, show me": PRINT "jink.  Got it?  Good.'": ReturnTo940 = 1: GOTO EndTalking
IF A = 5 THEN PRINT "'Don't come back,' he says.": ReturnTo940 = 1: GOTO EndTalking
END IF
IF RM = 13 OR RM = 17 THEN
PRINT "'Hello, sir,' you say cheerfully."
PRINT "'What is it, mortal worm?' the marraenoloth replies.": PRINT
PRINT "You say:": PRINT
PRINT "1.  'Hello, I'm here to kill you.'"
PRINT "2.  'Hello, who are you?'"
PRINT "3.  'Hello, have you seen a Book of Forbidden Lore?'"
PRINT "4.  'Hello, I'm the Elf.  I killed Zaebos.'"
PRINT "5.  'Hello, would you like a very large ruby?'"
PRINT "6.  'Hello, would you like a sack of money?'"
PRINT "7.  'Hello.  I have this pass here, and it gives me the right to travel through"
PRINT "     Baator.'"
PRINT "8.  'So, what's up?'"
PRINT "9.  'Never mind.'"
TalkMarr: PRINT : INPUT ">", A: PRINT
IF A = 1 THEN PRINT "'Good.  Have fun,' says the marraenoloth.": ReturnTo940 = 1: GOTO EndTalking
IF A = 2 THEN
PRINT "'My name is unimportant,' the marraenoloth.": PRINT
PRINT "You say:": PRINT
PRINT "1.  'What a strange name!'"
PRINT "2.  'I'm not touching that one.'"
TalkMarr2: PRINT : INPUT ">", A: PRINT
IF A = 1 THEN PRINT "'Isn't it, though?' says the marraenoloth.": ReturnTo940 = 1: GOTO EndTalking
IF A = 2 THEN PRINT "'Good.  I'm not here to be made fun of,' says the marraenoloth.": ReturnTo940 = 1: GOTO EndTalking
GOTO TalkMarr2
END IF
IF A = 3 THEN PRINT "'No.  Shut up, okay?' says the marraenoloth.": ReturnTo940 = 1: GOTO EndTalking
IF A = 4 THEN PRINT "'Good.  I'm proud of you,' says the marraenoloth.": ReturnTo940 = 1: GOTO EndTalking
IF A = 5 OR A = 6 THEN
PRINT "'That would be a satisfactory payment,' says the marraenoloth."
IF (A = 5 AND Ruby <> 1) OR (A = 6 AND Money <> 1) THEN PRINT "'Too bad that I don't have one,' you say.": ReturnTo940 = 1: GOTO EndTalking
IF A = 5 THEN A$ = "give ruby"
IF A = 6 THEN A$ = "give money"
END IF
IF A = 7 THEN PRINT "'I'm proud of you.  Did you know that I don't honor passes from the baatezu?": PRINT "It's jink or you'll be swimming, berk.'": ReturnTo940 = 1: GOTO EndTalking
IF A = 8 THEN PRINT "'I'm a marraenoloth, a boatman of the River Styx.  Pay me right, and I'll get": PRINT "you across.'": ReturnTo940 = 1: GOTO EndTalking
IF A = 9 THEN PRINT "'Good.  Go away now.  Don't come back.  And, if you do come back, be sure to": PRINT "have some sort of currency.'": ReturnTo940 = 1: GOTO EndTalking
IF A > 9 OR A <= 0 THEN GOTO TalkMarr
END IF
IF Abishai1 <> 3 AND Abishai1 <> 2 AND RM = 19 THEN
PRINT "'Hello,' you venture."
PRINT "'Yes, what is it?' asks the abishai.": PRINT
PRINT "You say:": PRINT
PRINT "1.  'Hello, I'm here to kill you.'"
PRINT "2.  'Hello, who are you?'"
PRINT "3.  'Hello, have you seen a Book of Forbidden Lore?'"
PRINT "4.  'Hello, I'm the Elf.  I killed Zaebos.'"
PRINT "5.  'Hello, would you like a very large ruby?'"
PRINT "6.  'Hello, would you like a sack of money?'"
PRINT "7.  'Hello.  I have this pass here, and it gives me the right to travel through"
PRINT "     Baator.'"
PRINT "8.  'Never mind.'"
ABAsk3: PRINT : INPUT ">", A: PRINT
IF A = 1 THEN PRINT "'Wonderful,' says the abishai.  'Well, I guess a little fight would be": PRINT "interesting.  Mortals.... <sigh>'": Abishai1 = 1: ReturnTo940 = 1: GOTO EndTalking
IF A = 2 THEN PRINT "'I'm Nacyl Angelbane.  I guard the Pit of Maggots.  I also provide": PRINT "rides.... for a price.'": ReturnTo940 = 1: GOTO EndTalking
IF A = 3 THEN PRINT "'No.  And, I might add, you are under arrest for asking too much.  Prepare for": PRINT "sentance to be administered.'": Abishai1 = 1: ReturnTo940 = 1: GOTO EndTalking
IF A = 4 THEN PRINT "'Yes, and I'm Nacyl Angelbane.  I killed Hereg–l.  A small challenge.  Then I": PRINT "killed Charles Conigra, and Vita, and then Sinthus, and then Dking....'": ReturnTo940 = 1: GOTO EndTalking
IF A = 5 OR A = 6 THEN
PRINT "'Would I!' the abishai excitedly exclaims."
IF A = 5 AND Ruby <> 1 THEN PRINT "'So would I,' you say.": ReturnTo940 = 1: GOTO EndTalking
IF A = 6 AND Money <> 1 THEN PRINT "'So would I,' you say.": ReturnTo940 = 1: GOTO EndTalking
IF A = 5 THEN A$ = "give ruby"
IF A = 6 THEN A$ = "give money"
END IF
IF A = 7 THEN
IF Pass <> 1 THEN PRINT "'Yeah, right.  Don't try to fool me, Elf.  Were I to be one of my patrolling": PRINT "brothers, I would exclaim, 'You think I am a fool!' and attack you.  But I'm": PRINT "nicer than that.  Remember that.'": ReturnTo940 = 1: GOTO EndTalking
A$ = "give pass"
END IF
IF A = 8 THEN PRINT "'Good.  Go away.  Don't come back.'": ReturnTo940 = 1: GOTO EndTalking
IF A > 8 OR A <= 0 THEN GOTO ABAsk3
END IF
IF Abishai1 = 3 AND RM = 19 THEN
PRINT "'I owe you a service,' says the abishai.  'What'll it be?'": PRINT
PRINT "You say:": PRINT
PRINT "1.  'Can you take me to the other side of the pit?'"
PRINT "2.  'Can you take me over the pit?'"
PRINT "3.  'Can you drop me off at the other side of the pit?'"
PRINT "4.  'Let me think about it.'"
IF Guide = 1 THEN PRINT : PRINT "Fury whispers in your ear, 'Be careful what you say.  Fiends love to pervent": PRINT "commands.  They follow the letter of the law, just not the spirit.'"
ABAsk2: PRINT : INPUT ">", A: PRINT
IF A > 4 OR A <= 0 THEN PRINT "'Huh?'": GOTO ABAsk2
IF A = 1 THEN PRINT "The abishai nods.  With that, he lifts you up in its claws and carries you over": PRINT "the maggot pool and then flies you back around.  With that, he drops you back": PRINT "where you started.": PRINT "'Service completed,' says the abishai.": Abishai1 = 0: ReturnTo940 = 2: GOTO EndTalking
IF A = 2 THEN PRINT "The abishai nods.  With that, he lifts you up in its claws and flies you over": PRINT "the pit, until he's reached the middle of it.  Then he drops you.  You can hear": PRINT "him cackle from above, 'Service completed!'": RM = 25: Abishai1 = 0: Pool = 2: ReturnTo940 = 2: GOTO EndTalking
IF A = 3 THEN
PRINT "Grudgingly, the abishai nods.  He lifts you up in its claws and carries you over": PRINT "the pit, to the other side, and drops you off (not too gently, I might add).": Hp = Hp - 10: Abishai1 = 0: RM = 20
IF Hp <= 0 THEN Killer = 3: Killer$ = "a bad fall": Dead
ReturnTo940 = 2: GOTO EndTalking
END IF
IF A = 4 THEN PRINT "'Okay,' the abishai says.  'Just let me know what you want, and when.'": ReturnTo940 = 1: GOTO EndTalking
END IF
IF RM = 9 THEN
PRINT "You walk up to the Pillar of Skulls."
PRINT "'Hello!' you say."
PRINT "'Look, an elf!' says a dwarven skull."
PRINT "'Let's flay his hide!' says a human skull."
PRINT "'Pike that!' says an elven skull.  'Let's add him to the pillar!'": PRINT
PRINT "You say:": PRINT
PRINT "1.  'Hello, I'm the Elf.  I killed Zaebos.'"
PRINT "2.  'Hello, I'm here to kill you all.'"
PRINT "3.  'Hello.  Goodbye.'"
SkullTalk: PRINT : INPUT ">", A: PRINT
IF A = 1 THEN PRINT "'Listen to him!' says the dwarf skull.  'He killed Zaebos!'": PRINT "'Yeah, right,' says a gnome skull.": PRINT "'Actually, I have heard that Zaebos hasn't been seen publicly for a while,' says": PRINT "a halfling skull.  'Maybe he's right.'": PRINT "'No, he isn't, sod,' shouts out an orcish skull from above the halfling skull.": PRINT "'Now don't you make me come down there!' it adds.": PRINT "'Pike it!' says an elven skull.  'Shut UP!'": ReturnTo940 = 1: GOTO EndTalking
IF A = 2 THEN PRINT "'Listen to him!' says the dwarf skull.  'He's here to kill us!'  There is": PRINT "resounding mocking laughter through the area, and then it dies down.": ReturnTo940 = 1: GOTO EndTalking
IF A = 3 THEN PRINT "'Goodbye,' says a halfling skull, 'Please never come back here again.'": ReturnTo940 = 1: GOTO EndTalking
IF A > 3 OR A <= 0 THEN GOTO SkullTalk
END IF
END IF
IF Level = 2 THEN
IF RM = 1 AND Abishai2 <> 1 AND Abishai2 <> 2 THEN
PRINT "You walk up to the abishai.  'Hello!' you say cheerfully."
PRINT "'What do you want?' asks the abishai in a flat voice."
PRINT : PRINT "You say:": PRINT
PRINT "1.  'Hello, I'd like to pass here.'"
PRINT "2.  'Hello, I'm here to kill you.'"
PRINT "3.  'Hello, I'm the Elf.  I killed Zaebos.'"
PRINT "4.  'How would you like a large ruby?'"
PRINT "5.  'How would you like a sack of money?'"
PRINT "6.  'You know, I really think that this sky is the wrong color.  Green is too"
PRINT "    hostile.'"
PRINT "7.  'You baatezu are all wimps.'"
PRINT "8.  'Hello.  I'm happy.  Are you?'"
PRINT "9.  'Hello, I have this pass here, and it allows me free travel throughout"
PRINT "    Baator.'"
PRINT "10.  'Nice talking to you.'"
Abi3Talk: PRINT : INPUT ">", A: PRINT
IF A > 10 OR A <= 0 THEN GOTO Abi3Talk
IF A = 1 THEN PRINT "'Wouldn't we all like to pass.  Do you have a pass?'": ReturnTo940 = 1: GOTO EndTalking
IF A = 2 THEN PRINT "'That's nice.  Have fun.'": ReturnTo940 = 1: GOTO EndTalking
IF A = 3 THEN PRINT "The abishai turns red (although how you can tell under its red scaly hide is a": PRINT "mystery.  'Uh... Zaebos is still alive.  How dare you insinuate otherwise!'": ReturnTo940 = 1: GOTO EndTalking
IF A = 4 OR A = 5 THEN
PRINT "'Would I!' the abishai excitedly exclaims."
IF A = 4 AND Ruby <> 1 THEN PRINT "'So would I,' you say.": ReturnTo940 = 1: GOTO EndTalking
IF A = 5 AND Money <> 1 THEN PRINT "'So would I,' you say.": ReturnTo940 = 1: GOTO EndTalking
IF A = 4 THEN A$ = "give ruby"
IF A = 5 THEN A$ = "give money"
END IF
IF A = 6 THEN PRINT "'Well, I actually wanted a purple sky.  Sort of paint the Iron City against a": PRINT "purple sky, but Dispater said no.'": ReturnTo940 = 1: GOTO EndTalking
IF A = 7 GOTO Hi
IF A = 8 THEN PRINT "'No, I'm cynical, jaded, and depressed.  Go away.'": ReturnTo940 = 1: GOTO EndTalking
IF A = 10 THEN PRINT "'Never come back,' says the abishai.": ReturnTo940 = 1: GOTO EndTalking
IF A = 9 THEN
IF Abishai2 = 3 THEN PRINT "'I've seen that!' says the abishai.": ReturnTo940 = 1: GOTO EndTalking
IF Pass = 1 THEN A$ = "give pass"
IF Pass <> 1 THEN
PRINT "'Sure you do.  And I'm Baalzephon, member of the Dark Eight.'"
PRINT "You say:": PRINT
PRINT "1.  'YOU!!  You stole the Book of Forbidden Lore from me!  It's payback time!'"
PRINT "2.  'Sure you are.  Yeah, right.  I'm sooooo scared.'"
PRINT "3.  'Hello, Mr. Baalzephon.  I really need to pass here."
Abi4Talk: PRINT : INPUT ">", A: PRINT
IF A > 3 OR A <= 0 THEN GOTO Abi4Talk
IF A = 1 THEN PRINT "'Sarcasm is wasted on mortals,' comments the abishai.": ReturnTo940 = 1: GOTO EndTalking
IF A = 3 THEN PRINT "'Baalzephon is a she,' says the abishai.  'Sarcasm is wasted on mortals.'": ReturnTo940 = 1: GOTO EndTalking
IF A = 2 THEN
Hi: PRINT "'I'm scary!' says the abishai insistently.  'See?' the abishai bares it's teeth."
PRINT "You say:": PRINT
PRINT "1.  'Horrors!  An abishai!  Whatever will I do?'"
PRINT "2.  'Eek.'"
PRINT "3.  'Okay, you are scary.'"
PRINT "4.  'HA!  I laugh at your pathetic attempts to scare me!  You couldn't scare a"
PRINT "    kitten!'"
Abi5Talk: PRINT : INPUT ">", A: PRINT
IF A > 4 OR A <= 0 THEN GOTO Abi5Talk
IF A = 1 THEN PRINT "'Okay, mortal.  That's it!  It's time to meet your match!' screams the abishai,": PRINT "attacking you!": Abishai2 = 1: ReturnTo940 = 1: GOTO EndTalking
IF A = 2 THEN
PRINT "'That's it?  That's all?  Just, 'Eek.'  Nothing more?'"
PRINT "You say:": PRINT
PRINT "1.  'Oh.  I am so...  frighted.'"
PRINT "2.  'AAAAAA!!!  An abishai!!!  Save me!!'"
PRINT "3.  'Eek.'"
PRINT "4.  'You're just not scary.'"
Abi6Talk: PRINT : INPUT ">", A: PRINT
IF A > 4 OR A <= 0 THEN GOTO Abi6Talk
IF A = 1 THEN PRINT "'Okay, mortal.  That's it!  It's time to meet your match!  You will pay dearly": PRINT "for your sarcasm!'": PRINT "It leaps to the attack!": Abishai2 = 1: ReturnTo940 = 1: GOTO EndTalking
IF A = 2 THEN PRINT "'That's more like it, mortal,' says the abishai.": ReturnTo940 = 1: GOTO EndTalking
IF A = 3 OR A = 4 THEN PRINT "'Okay, mortal.  That's it!  You will pay dearly for not treating me with": PRINT "respect!'": PRINT "The abishai leaps to the attack!": Abishai2 = 1: ReturnTo940 = 1: GOTO EndTalking
END IF
IF A = 3 THEN PRINT "'That's more like it, mortal,' says the abishai.'": ReturnTo940 = 1: GOTO EndTalking
IF A = 4 THEN PRINT "'Yes, I could!' says the abishai.  He holds out a clawed hand, and a kitten": PRINT "appears in it.  It bares it's teeth at the kitten, and growls at it.  In": PRINT "response, the kitten takes a swipe at the abishai with its claw.  The abishai": PRINT "curses, but says nothing more.": ReturnTo940 = 1: GOTO EndTalking
END IF
END IF
END IF
END IF
IF RM = 2 AND Cornugon2 <> 1 AND Cornugon2 <> 2 THEN
PRINT "'Hello!' you say to the cornugon."
PRINT "'What do you want?' asks the cornugon."
PRINT "You say:": PRINT
PRINT "1.  'Hello!  I'm the Elf.  I killed Zaebos.'"
PRINT "2.  'Hello!  Would you like a large ruby?'"
PRINT "3.  'Hello!  Would you like a sack of money?'"
PRINT "4.  'Hello!  I have this pass here, and it gives me the right for free travel"
PRINT "    throughout this plane.'"
PRINT "5.  'Hello.  Can I pass here?'"
PRINT "6.  'Bye.  Can't say is hasn't been fun talking to you... because... well.."
PRINT "    it hasn't!'"
CorAsk: PRINT : INPUT ">", A: PRINT
IF A = 1 THEN PRINT "'That's nice, mortal,' says the cornugon.": ReturnTo940 = 1: GOTO EndTalking
IF A = 2 OR A = 3 THEN PRINT "'No,' says the cornugon.": ReturnTo940 = 1: GOTO EndTalking
IF A = 4 AND Pass = 1 THEN PRINT "'Let's see that,' says the cornugon.  'Well... okay.  Everything checks out, so": PRINT "I'm inclined to let you past.'": Cornugon2 = 3: ReturnTo940 = 1: GOTO EndTalking
IF A = 4 AND Pass <> 1 THEN PRINT "'You think that I am a fool!' says the cornugon, attacking you!": Cornugon2 = 1: ReturnTo940 = 1: GOTO EndTalking
IF A = 5 THEN PRINT "'Do you have an official-looking pass to Baator?'": ReturnTo940 = 1: GOTO EndTalking
IF A = 6 THEN PRINT "'The feeling's mutual,' says the cornugon.  'Have a nice day.  May the barbazu": PRINT "feast on your flesh.'": ReturnTo940 = 1: GOTO EndTalking
IF A > 6 OR A <= 0 THEN GOTO CorAsk
END IF
END IF
IF Osyluth1 <> 1 AND Osyluth1 <> 2 AND RM = 10 AND Level = 2 THEN
PRINT "You walk up to the osyluth."
PRINT "'Hello!' you say cheerfully to it."
PRINT "'What do you want, mortal?' asks the osyluth."
PRINT "You say:": PRINT
PRINT "1.  'Hello.  I'm here to kill you.'"
PRINT "2.  'Hello.  I'm the Elf.  I killed Zaebos.'"
PRINT "3.  'Hello.  What's that large tower there?'"
PRINT "4.  'Carry on, officer.'"
PRINT "5.  'Never mind.'"
OsyTalk: PRINT : INPUT ">", A: PRINT
IF A = 1 THEN PRINT "'I'm putting you under arrest for the threatening of the killing of a law": PRINT "enforcement officer.  Come with me, sod.'": PRINT "You are held by the osyluth as you suddenly vanish from one place, and appear": PRINT "somewhere else.": RM = 16: ReturnTo940 = 2: Break = 3: GOTO EndTalking
IF A = 2 THEN PRINT "'I'm putting you under arrest for spreading false rumors.  Come with me, sod.'": PRINT "You are held by the osyluth as you suddenly vanish from one place, and appear": PRINT "somewhere else.": ReturnTo940 = 2: RM = 16: Break = 3: GOTO EndTalking
IF A = 3 THEN PRINT "'I'm putting you under arrest because I just very well feel like it,' say the": PRINT "osyluth.  'Come with me, sod.'": PRINT "You are held by the osyluth as you suddenly vanish from one place, and appear": PRINT "somewhere else.": Break = 3: ReturnTo940 = 2: RM = 16: GOTO EndTalking
IF A = 4 THEN PRINT "'I'm putting you under arrest for calling me an officer when you do not have": PRINT "proper authority to call me that.  Come with me, sod.'": PRINT "You are held by the osyluth as you suddenly vanish from one place, and appear": PRINT "somewhere else.": Break = 3: RM = 16: ReturnTo940 = 2: GOTO EndTalking
IF A = 5 THEN ReturnTo940 = 1: GOTO EndTalking
IF A > 5 OR A <= 0 THEN GOTO OsyTalk
END IF
IF Level = 2 AND Barbazu1 <> 1 AND Barbazu1 <> 2 AND RM = 11 THEN
PRINT "You walk up to the barbazu.  'Hello!' you say cheerfully."
PRINT "'What is it?' says the barbazu, with a wild look in its eye."
PRINT "You say:": PRINT
PRINT "1.  'You baatezu are all wimps.'"
PRINT "2.  'I want to pick a fight with you.'"
PRINT "3.  'Hello.  I'm the Elf.  I killed Zaebos.'"
PRINT "4.  'Hello.  Can I get into the tower?'"
PRINT "5.  'Would you take a bribe?'"
PRINT "6.  'Well, bye.'"
TalkBarb: PRINT : INPUT ">", A: PRINT
IF A > 6 OR A <= 0 THEN GOTO TalkBarb
IF A = 6 THEN ReturnTo940 = 1: GOTO EndTalking
IF A = 1 OR A = 2 OR A = 3 THEN PRINT "'WHAT?' says the barbazu, and it draws its glaive and attacks!": ReturnTo940 = 1: Barbazu1 = 1: GOTO EndTalking
IF A = 4 THEN PRINT "'No, you can't.'": ReturnTo940 = 1: GOTO EndTalking
IF A = 5 THEN
PRINT "'A bribe?' says the barbazu, with its eyes perking up and looking at you"
PRINT "intently."
IF Money <> 1 AND Ruby <> 1 THEN PRINT "You say, 'Just checking.'  The barbazu gets very angry, and attacks!": Barbazu1 = 1: ReturnTo940 = 1: GOTO EndTalking
IF Money = 1 THEN PRINT "You hand him the sack of money.": PRINT "He accepts it eagerly.  'Okay, sod.  You may pass.'": Barbazu1 = 3: ReturnTo940 = 1: GOTO EndTalking
IF Ruby = 1 THEN PRINT "You hand him the large ruby.": PRINT "He accepts it eagerly.  'Okay, sod.  You may pass.'": Barbazu1 = 3: ReturnTo940 = 1: GOTO EndTalking
END IF
END IF
IF Level = 3 THEN
IF YetAnotherAlley = 1 AND (PitFiend = 3 OR PitFiend = 5) THEN
PRINT "'Hello,' you say to the man in white."
PRINT "'What is it?' he asks impatiently."
PRINT "You say:": PRINT
PRINT "1.  'I'm the Elf.  I killed Zaebos.'"
PRINT "2.  'I'm the Elf.  I'm here to kill you.'"
PRINT "3.  'So, what's the deal with this contract?'"
PRINT "4.  'Never mind.'"
PitFiendTalk: PRINT : INPUT ">", A: PRINT
IF A = 1 THEN PRINT "'I know that.  I really couldn't care less.'": ReturnTo940 = 1: GOTO EndTalking
IF A = 2 THEN PRINT "'You - kill me?  I don't think so, mortal.'": ReturnTo940 = 1: GOTO EndTalking
IF A = 3 THEN PRINT "'It's quite simple, really.  Just sign on the dotted line.'": ReturnTo940 = 1: GOTO EndTalking
IF A = 4 THEN PRINT "'Please sign on the dotted line.'": ReturnTo940 = 1: GOTO EndTalking
IF A > 4 OR A < 1 THEN GOTO PitFiendTalk
END IF
IF RM = 7 AND (Hamatula1 = 0 OR Hamatula1 = 3) THEN
PRINT "'Hello,' you say to the hamatula."
PRINT "'What is it?' he asks in a flat monotone."
PRINT "You say:": PRINT
PRINT "1.  'Hello.  I'm the Elf.  I killed Zaebos.'"
PRINT "2.  'What are you doing?'"
PRINT "3.  'What's out in the swamp?'"
PRINT "4.  'I'm here to kill you.'"
PRINT "5.  'Hello, I have this pass here and it gives me free travel throughout"
PRINT "     Baator.'"
PRINT "6.  'Never mind.'"
TalkHam: PRINT : INPUT ">", A: PRINT
IF A = 1 THEN PRINT "'Huh?  Oh, that's nice,' says the hamatula, who is dozing off to sleep.": ReturnTo940 = 1: GOTO EndTalking
IF A = 2 THEN PRINT "'I'm... uh... I think that I'm supposed to be guarding the swamp from": PRINT "intruders.'": ReturnTo940 = 1: GOTO EndTalking
IF A = 3 THEN PRINT "'Uh... I think that there's some sort of city out there, but I'm not too sure.'": ReturnTo940 = 1: GOTO EndTalking
IF A = 4 THEN PRINT "'WHAT?' shouts the hamatula.  'Prepare to die, mortal!' He leaps to the attack!": Hamatula1 = 1: ReturnTo940 = 1: GOTO EndTalking
IF A = 5 AND Pass = 1 THEN A$ = "give pass": GOTO EndTalking
IF A = 5 AND Pass = 0 THEN PRINT "'You think that I am a fool!' shouts out the hamatula, leaping to the attack.": Hamatula1 = 1: ReturnTo940 = 1: GOTO EndTalking
IF A = 6 THEN ReturnTo940 = 1: GOTO EndTalking
END IF
IF (RM = 14 OR RM = 15 OR RM = 19 OR RM = 21) AND Kyton = 0 THEN
PRINT "You walk up to the kyton."
PRINT "'Hello!' you say."
PRINT "The kyton doesn't respond."
PRINT "You say:": PRINT
PRINT "1.  'Hello.  I'm the Elf.  I killed Zaebos.'"
PRINT "2.  'Hello.  I'm here to kill you.'"
PRINT "3.  'Nice weather we're having.'"
PRINT "4.  'I killed a tanar'ri high-up.'"
PRINT "5.  'Never mind.'"
TalkKyt: PRINT : INPUT ">", A: PRINT
IF A > 5 OR A < 1 THEN GOTO TalkKyt
PRINT "The kyton is silent.": ReturnTo940 = 1: GOTO EndTalking
END IF
IF RM = 23 AND Kyton = 0 AND Arcanoloth = 0 AND Guide <> 1 THEN
PRINT "You walk up to the man in grey."
PRINT "'Hello,' you say to him."
PRINT "'Hello, cutter,' he says to you.  'I'll bet you need some information about"
PRINT "the gate to the next layer of Baator.  I'm L'Ther.'": PRINT
PRINT "You say:": PRINT
PRINT "1.  'I don't need your help!  Sod off!'"
PRINT "2.  'Thanks, but no thanks.'"
PRINT "3.  'I might.'"
PRINT "4.  'WHOA!  Information!  On a gate?  Tell me; please do!'"
PRINT "5.  'I killed Zaebos.'"
PRINT "6.  'I don't need you.  I have my guide friend here.'"
PRINT "7.  'Never mind.'"
TalkMan: PRINT : INPUT ">", A: PRINT
IF A > 7 OR A < 1 THEN GOTO TalkMan
IF A = 1 OR A = 2 THEN PRINT "'Your loss,' says L'Ther, and he retreats into the shadows.": Arcanoloth = 1: ReturnTo940 = 1: GOTO EndTalking
IF A = 5 THEN PRINT "'Talk's cheap, sod,' says L'Ther.": ReturnTo940 = 1: GOTO EndTalking
IF A = 6 AND (Guide = 1 OR Guide = 3) THEN PRINT "'I know things that your guide doesn't,' says L'Ther.": ReturnTo940 = 1: GOTO EndTalking
IF A = 6 AND (Guide = 2 OR Guide = 0) THEN PRINT "'Yes, and my imaginary friend here would be delighted to spill the dark of the": PRINT "gate to you,' says L'Ther.": ReturnTo940 = 1: GOTO EndTalking
IF A = 7 THEN ReturnTo940 = 1: GOTO EndTalking
IF A = 3 THEN PRINT "'Make up your mind, sod.  The information's cheap.  Very cheap.'": ReturnTo940 = 1: GOTO EndTalking
IF A = 4 THEN
PRINT "'The information's cheap, really.  All I need from you is a single strand of"
PRINT "your hair.  So, what do you say?'"
PRINT "You say:": PRINT
PRINT "1.  'Sure!'"
PRINT "2.  'What?  Give up my hair?  NEVER!'"
PRINT "3.  'Let me think about it.'"
TalkMan2: PRINT : INPUT ">", A: PRINT
IF A = 1 THEN PRINT "L'Ther takes out a pair of scissors.  He cuts a piece of your hair off and puts": PRINT "it into a pouch of his.  'Okay, sod.  Listen up, 'cause I'm only going to tell": PRINT "you this once.  The gate is deep beneath the swamp.  Directly to the north of": PRINT "the gates to Jangling Hiter is a gate buried in the swamp.  If you can get down": PRINT "to it, you're home free.  Otherwise... you drown.'  With that, L'Ther just": PRINT "vanishes into the shadows.": Arcanoloth = 1: EvilTwinHp = EvilTwinHp + 5: ReturnTo940 = 1: GOTO EndTalking
IF A = 2 THEN PRINT "'Fine,' says L'Ther.  'Be that way.  Goodbye, sod.'  With that, L'Ther vanishes": PRINT "into the shadows.": Arcanoloth = 0: ReturnTo940 = 1: GOTO EndTalking
IF A = 3 THEN PRINT "'Make up your mind, sod.  It's the cheapest price you'll ever get.'": ReturnTo940 = 1: GOTO EndTalking
END IF
END IF
IF RM = 23 AND Kyton = 0 AND Arcanoloth = 0 AND Guide = 1 THEN
PRINT "You walk up to the man in grey."
PRINT "'Hello,' you say to him."
PRINT "'Hello.  I see you've gotten a guide.  I knew him - that is, before he shoved"
PRINT "me in the swamp.  I'm L'Ther.'": PRINT
PRINT "You say:": PRINT
PRINT "1.  'Why do you think that he shoved you into the swamp?'"
PRINT "2.  'I don't care what you say - my guide is trustworthy and would never betray"
PRINT "     me.'"
PRINT "3.  'He did WHAT?'"
PRINT "4.  'Tell me about it.'"
PRINT "5.  'But he said that you tried to kill him first.'"
PRINT "6.  'So, I hear that you deal in information.'"
PRINT "7.  'Never mind.'"
TalkMan4: PRINT : INPUT ">", A: PRINT
IF A > 7 OR A < 1 THEN GOTO TalkMan4
IF A = 1 THEN PRINT "'He's a cross-trading berk from Carceri, that's why!' says L'Ther.  'He guides": PRINT "foolish sods like you into traps so that he can kill you for the sheer pleasure": PRINT "of killing you.'": ReturnTo940 = 1: GOTO EndTalking
IF A = 2 THEN PRINT "'Okay.  But if I were you,' says L'Ther, 'I'd watch your back.'": PRINT "With that, L'Ther vanishes into the shadows.": Arcanoloth = 1: ReturnTo940 = 1: GOTO EndTalking
IF A = 3 THEN PRINT "'He pushed me into the swamp when I wasn't looking,' he says.  'Lucky thing I": PRINT "can hold my breath,' says L'Ther.": ReturnTo940 = 1: GOTO EndTalking
IF A = 4 THEN PRINT "'I had hired him on while I was in Darkspine.  He said he could help, and he": PRINT "did - for a while.  When I reached Minauros, he pointed to the swamp to the": PRINT "north of Jangling Hiter - he said that he saw something in the murky waters.  I": PRINT "looked at the water, and then he pushed me in.  By some miracle, there was a": PRINT "gate to the next layer of Baator there.  I worked my way back here, and I've": PRINT "gained a new understanding for this plane.  In fact, I could do a better job": PRINT "as a guide than he could,' says L'Ther.": ReturnTo940 = 1: GOTO EndTalking
IF A = 5 THEN PRINT "'He's from Carceri.  He can never tell the truth.  He's a cross-trading liar!'": ReturnTo940 = 1: GOTO EndTalking
IF A = 6 THEN
PRINT "'I do,' he says.  'I can tell you where the nearest gate to the next layer of"
PRINT "Baator is.'": PRINT
PRINT "You say:": PRINT
PRINT "1.  'I don't need your help!  Sod off!'"
PRINT "2.  'Thanks, but no thanks.'"
PRINT "3.  'I might.'"
PRINT "4.  'WHOA!  Information!  On a gate?  Tell me; please do!'"
PRINT "5.  'I don't need to pay; I killed Zaebos.'"
PRINT "6.  'I don't need you.  I have my guide friend here.'"
PRINT "7.  'Never mind.'"
TalkMan3: PRINT : INPUT ">", A: PRINT
IF A > 7 OR A < 1 THEN GOTO TalkMan3
IF A = 1 OR A = 2 THEN PRINT "'Your loss,' says L'Ther, and he retreats into the shadows.": Arcanoloth = 1: ReturnTo940 = 1: GOTO EndTalking
IF A = 5 THEN PRINT "'Talk's cheap, sod,' says L'Ther.": ReturnTo940 = 1: GOTO EndTalking
IF A = 6 THEN PRINT "'Your guide is a cross-trading lair!' shouts of L'Ther.": ReturnTo940 = 1: GOTO EndTalking
IF A = 7 THEN ReturnTo940 = 1: GOTO EndTalking
IF A = 3 THEN PRINT "'Make up your mind, sod.  The information's cheap.  Very cheap.'": ReturnTo940 = 1: GOTO EndTalking
IF A = 4 THEN
PRINT "'The information's cheap, really.  All I need from you is a single strand of"
PRINT "your hair.  So, what do you say?'"
PRINT "You say:": PRINT
PRINT "1.  'Sure!'"
PRINT "2.  'What?  Give up my hair?  NEVER!'"
PRINT "3.  'Let me think about it.'"
TalkMan5: PRINT : INPUT ">", A: PRINT
IF A = 1 THEN PRINT "L'Ther takes out a pair of scissors.  He cuts a piece of your hair off and puts": PRINT "it into a pouch of his.  'Okay, sod.  Listen up, 'cause I'm only going": PRINT "to tell you this once.  The gate is deep beneath the swamp.  Directly to the": PRINT "north of the gates to Jangling Hiter is a gate buried in the swamp.  If you": PRINT "can get down to it, you're home free.  Otherwise... you drown.'  With that, the": PRINT "man just vanishes into the shadows.": Arcanoloth = 1: EvilTwinHp = EvilTwinHp + 5: ReturnTo940 = 1: GOTO EndTalking
IF A = 2 THEN PRINT "'Fine,' says L'Ther.  'Be that way.  Goodbye, sod.'  With that, L'Ther vanishes": PRINT "into the shadows.": Arcanoloth = 1: ReturnTo940 = 1: GOTO EndTalking
IF A = 3 THEN PRINT "'Make up your mind, sod.  It's the cheapest price you'll ever get.'": ReturnTo940 = 1: GOTO EndTalking
END IF
END IF
IF A = 7 THEN ReturnTo940 = 1: GOTO EndTalking
END IF
END IF
EndTalking:
END SUB

