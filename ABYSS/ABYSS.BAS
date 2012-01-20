DECLARE SUB LAYERS ()
COMMON SHARED BEAT
COMMON SHARED VROCK
COMMON SHARED CHAOSKILLED
COMMON SHARED REACH
COMMON SHARED KOSTKILLED
COMMON SHARED GRAZZTKILLED
COMMON SHARED PORTAL
COMMON SHARED MANES
COMMON SHARED MARILITH
COMMON SHARED BALOR
COMMON SHARED WELL
COMMON SHARED RM
COMMON SHARED Level
COMMON SHARED CHARGE
COMMON SHARED HP
CLS
ON ERROR GOTO ERRORS
KEY ON
PRINT "Enter your skill level:": PRINT
PRINT "1.  Easy --- Kill one Abyssal Lord"
PRINT "2.  Medium --- Kill four Abyssal Lords"
PRINT "3.  Hard --- Kill all eight of the Abyssal Lords"
PRINT : INPUT ">", DIFF: PRINT
IF DIFF <= 0 OR DIFF >= 4 THEN RUN
INPUT "Would you like the game to monitor your health every turn?", A$
IF MID$(A$, 1, 1) = "y" THEN MONITOR = 1
IF MID$(A$, 1, 1) <> "y" THEN PRINT "If you wish to turn on the health status at any time in the game, type": PRINT "'monitor'."
PRINT "[MORE]", K$
2 K$ = INKEY$
IF LEN(K$) = 0 THEN GOTO 2
CLS
START: MANESHP = 5
RANDOMIZE TIMER
KEY 8, "enter portal"
KEY 7, "health"
KEY 6, "z"
HEZHP = 30
RUTHP = 16
ALUHP = 8
ESHEBHP = 30
DIINKHP = 70
DEMOHP = 55
LORDOFFLIESHP = 45
ARACHHP = 45
MOLYHP = 25
VROCKHP = 20
SONAHP = 35
BALORHP = 45
MOLYDEUS = 10
CHASMEHP = 15
ABYSSANTHP = 6
GRAZHP = 60
WASTHP = 30
MARIHP = 35
KEY 9, "look"
HP = 50
MAXHP = 50
INPUT "Do you want to import a character from another game?", A$
IF MID$(A$, 1, 1) = "y" THEN
INPUT "Enter load filename:", N$
OPEN N$ FOR INPUT AS #1
INPUT #1, HP
INPUT #1, MAXHP
CLOSE #1
END IF
RESTART: CLS : KOSTHP = 70: GRAZHP = 60: CHAOSHP = 50: KEY ON: Level = 1: KEY 10, "fight": GOTO BEGIN
1 REM ROUTINES, ROUTINES, ROUTINES......
KEY 5, A$
IF Level <> 1 AND RM <> 75 THEN REACH = 0
TROUBLE = INT(MAXHP / 5)
IF HP <= TROUBLE THEN PRINT "Your body is covered in your own blood.  You are in intense pain, and can": PRINT "barely move without hurting yourself."
TIME = TIME + 1
IF DIFF = 2 AND LORDKILLED >= 4 THEN PRINT "Suddenly, a door opens before you.  You open it, and are instantly transported": PRINT "somewhere else.....": WINNER = 1: GOTO YOUWIN
IF DIFF = 3 AND LORDKILLED >= 8 THEN PRINT "Suddenly, a door opens before you.  You open it, and are instantly transported": PRINT "somewhere else.....": WINNER = 1: GOTO YOUWIN
IF HP <> MAXHP AND Level <> 5 AND MANES <> 1 AND MOLDEUS <> 1 AND Level <> 2 AND Level <> 47 THEN
HEALING = HEALING + 1
IF HEALING >= 5 THEN
HEALING = HEALING - 5
PRINT "You are feeling better."
HP = HP + 1
END IF
END IF
IF Level = 23 OR Level = 12 OR Level = 45 THEN
IF VROCK <> 1 THEN
VROCK = INT(RND * 12) + 1
IF VROCK = 1 THEN PRINT "Suddenly, out of the sky swoops a vrock, which is a vulture with a human": PRINT "torso.  The vrock instantly attacks!"
END IF
END IF
DEMON = INT(RND * 200) + 1
IF DEMON = 1 AND DEMONSHOWED = 0 THEN PRINT "Suddenly, out of nowhere appears a demon, with a pentagram inscribed in it's": PRINT "head and it is carrying a book labelled, 'Forbidden Lore.'  On it's chest is": PRINT "a name tag ing, 'HELLO MY NAME IS David.'  He looks at you, and hands you": PRINT "the book.  'Here, I think you lost this,' he says, and then he is gone.": DEMONSHOWED = 1
IF Level = 5 AND ALU <> 1 AND MANES <> 1 AND RUT <> 1 AND REACH <> 1 THEN
RUT = INT(RND * 12) + 1
IF RUT = 1 THEN PRINT "A rutterkin, which looks like a tall and gaunt human with blue skin, walks": PRINT "into the area, and, looking at you balefully, attacks!"
END IF
IF Level = 66 AND SPIDER <> 1 AND ARACHNOS <> 1 THEN
SPIDER = INT(RND * 3) + 1
IF SPIDER = 1 THEN PRINT "Out of the nearby webs, a spider climbs out, oozing ichor and poison.  It": PRINT "attacks!"
END IF
IF SPIDER = 1 THEN
HIT = INT(RND * 2) + 1
IF HIT = 1 THEN PRINT "The spider climbs over you, oozing poison on you!": HP = HP - 3
IF HIT = 2 THEN PRINT "The spider leaps at you, but you dodge it!"
IF HP <= 0 THEN KILLER$ = "a spider"
END IF
IF RUT = 1 THEN
HIT = INT(RND * 4) + 1
IF HIT = 1 THEN PRINT "The rutterkin pulls out a long polearm and impales you with it!": HP = HP - 3
IF HIT = 2 THEN PRINT "The rutterkin pulls out a long polearm, but you manage to parry the blow!"
IF HIT = 3 THEN PRINT "The rutterkin pulls out a whip and whips you with it!  The sharp tongs carry": PRINT "deep into your skin!": HP = HP - 2
IF HIT = 4 THEN PRINT "The rutterkin pulls out a whip and whips it at you, but you parry the blow!"
IF HP <= 0 THEN KILLER$ = "a rutterkin"
END IF
IF VROCK = 1 THEN
HIT = INT(RND * 2) + 1
IF HIT = 1 THEN PRINT "The vrock hits you with its claws!": HP = HP - 4
IF HIT = 2 THEN PRINT "The vrock misses you!"
IF HP <= 0 THEN KILLER$ = "a vrock": GOTO DEAD
END IF
IF Level = 12 THEN PRINT "You can hear frantic screams of tortured beings coming from all around you."
IF Level = 2 THEN
ANT = ANT + 1
IF ANT >= 250 THEN
PRINT "You can feel the planes overwhelming nature taking over your body as you die"
PRINT "and mutate into an Abyssal Ant, doomed to live out the rest of your immortal"
PRINT "life doing drugery."
KILLER$ = "the Driller's Hive": GOTO DEAD
GOTO ENDING
END IF
END IF
IF Level = 723 AND SONA <> 1 THEN
SONA = INT(RND * 18) + 1
IF SONA = 1 THEN PRINT "A Son of Chaos with blue claws and wings, but a humanoid runs in, and attacks!"
END IF
IF Level = 3 OR Level = 4 OR Level = 10 OR Level = 377 OR Level = 8 THEN
IF CHASME <> 1 THEN
CHASME = INT(RND * 12) + 1
IF CHASME = 1 THEN PRINT "A chasme, a dragonfly with a human's head, swarms into the area at attacks!"
END IF
END IF
IF CHASME <> 1 AND WASTRILITH <> 1 AND VROCK <> 1 AND MANES <> 1 AND RUT <> 1 AND ALU <> 1 AND BALOR <> 1 AND MARILITH <> 1 AND LORDOFTHEFLIES <> 1 AND DIINK <> 1 AND DEMO <> 1 AND SONA <> 1 AND REACH <> 1 THEN
ALU = INT(RND * 15) + 1
IF ALU = 1 THEN PRINT "An alu-fiend, which sort of looks like a human woman except she has tiny wings": PRINT "growing out of her back, runs into the area, wielding a weapon.  She looks": PRINT "at you and immediatley attacks!"
END IF
IF ALU = 1 THEN
HIT = INT(RND * 2) + 1
IF HIT = 1 THEN PRINT "The alu-fiend hits you with her sword.  You stagger back in pain!": HP = HP - 2
IF HIT = 2 THEN PRINT "The alu-fiend swings her sword at you, but you parry the blow!"
IF HP <= 0 THEN KILLER$ = "an alu-fiend": GOTO DEAD
END IF
IF Level = 88 OR Level = 9 THEN
IF WASTRILITH <> 1 THEN
WASTRILITH = INT(RND * 15) + 1
IF WASTRILITH = 1 THEN PRINT "A wastrilith, which looks sort of like a snake, only it's much, much bigger,": PRINT "swims into the area and attacks!"
END IF
END IF
IF Level = 80 AND DIINK <> 1 AND DIINKKILLED = 0 THEN
DIINK = INT(RND * 10) + 1
IF DIINK = 1 THEN PRINT "Out of nowhere appears a floating throne, on which sits a tall, guant derro": PRINT "with a staring, insane face.  He laughs maniacally, and breaks free of": PRINT "his throne.  He rushes at you, desperate to kill you!  He shrieks at you,": PRINT "'I am Diinkarazan!  DIE!'"
END IF
IF Level = 72 AND ESHEB <> 1 AND ESHEBKILLED = 0 THEN
ESHEB = INT(RND * 10) + 1
IF ESHEB = 1 THEN PRINT "Out of the desolate plain appears a werefox.  She looks at you, and then says,": PRINT "'I am Eshebala.  You will die!'  She then lunges for your throat, bent on your": PRINT "death!"
END IF
IF ESHEB = 1 THEN
HIT = INT(RND * 2) + 1
IF HIT = 1 THEN PRINT "Eshebala swings at your throat with her claws, and hits!": HP = HP - 4
IF HIT = 2 THEN PRINT "Eshebala swings at your throat, but you dodge her!"
IF HP <= 0 THEN KILLER$ = "Eshebala": GOTO DEAD
END IF
IF Level = 73 AND HEZ <> 1 THEN
HEZ = INT(RND * 8) + 1
IF HEZ = 1 THEN PRINT "A hezrou, which looks like a frog on hind legs, rushes into the area and": PRINT "attacks!"
END IF
IF HEZ = 1 THEN
HIT = INT(RND * 7) + 1
IF HIT = 1 THEN PRINT "The hezrou grabs you and squeezes you in it's powerful arms!": HP = HP - 10
IF HIT = 2 THEN PRINT "The hezrou bites you with it's powerful teeth!": HP = HP - 6
IF HIT = 3 THEN PRINT "The hezrou slashes you with both of it's claws!": HP = HP - 4
IF HIT >= 4 THEN PRINT "The hezrou misses you!"
IF HP <= 0 THEN KILLER$ = "a hezrou": GOTO DEAD
END IF
IF DIINK = 1 AND DIINKKILLED = 0 THEN
HIT = INT(RND * 8) + 1
IF HIT = 1 THEN PRINT "Out of the sky (if there is a sky) comes a huge bolt of chaotic, swirling": PRINT "energy.  However, instead of hitting you, it hits Diinkarazan!": DIINKHP = DIINKHP - 9
IF HIT = 2 THEN PRINT "Out of the sky (if there is a sky) comes a huge bolt of chaotic, swirling": PRINT "energy.  It hits you straight on!": HP = HP - 9
IF HIT = 3 THEN PRINT "Diinkarazan rushes at you, desperate for your death.  He hits you with his": PRINT "fists.  You barely feel it.": HP = HP - 2
IF HIT = 4 THEN PRINT "Diinkarazan casts some sort of spell and a burst of fire flows from his hand,": PRINT "and leaps at you.  You stagger back, hurt.": HP = HP - 6
IF HIT = 5 THEN PRINT "Diinkarazan casts some sort of spell and a burst of fire flows from his hand,": PRINT "but it hits him square on the chest!": DIINKHP = DIINKHP - 6
IF HIT = 6 THEN PRINT "Diinkarazan casts a spell and a form of chaotic energy in the form of wind": PRINT "flies through the area, hitting both of you and causing both of you to stagger": PRINT "back!": DIINKHP = DIINKHP - 5: HP = HP - 5
IF HIT = 7 THEN PRINT "Suddenly, out of nowhere appears a burst of chaotic energy, striking you": PRINT "straight on in the chest.  You stagger back, hurt.": HP = HP - 5
IF HIT = 8 THEN PRINT "Suddenly, out of nowhere appears a burst of chaotic energy, but instead": PRINT "of hitting you, it hits Diinkarazan!": DIINKHP = DIINKHP - 5
END IF
IF RM = 63 AND Level = 723 AND CHAOSKILLED = 0 THEN
CHAOSHIT = INT(RND * 100) + 1
IF CHAOSHIT = 1 THEN PRINT "You can hear music playing 'Swan Lake' as your body is torn apart...": KILLER$ = "Chaos's Rending Ability": GOTO ENDING
IF CHAOSHIT >= 2 AND CHAOSHIT <= 50 THEN PRINT "Chaos, evil Abyssal Lord, swings at you with her claws.": HP = HP - 4
IF CHAOSHIT >= 51 THEN PRINT "Chaos, foul Lord of Utter Blackness, swipes at you with her claws, but": PRINT "misses!"
IF HP <= 0 THEN KILLER$ = "Abyssal Lord Chaos": PRINT "Chaos laughs as you fall, dead.": GOTO ENDING
END IF
IF Level = 3 THEN
MEMORIES = MEMORIES + 1
IF MEMORIES = 250 THEN
PRINT "You suddenly feel your memories vanishing as you begin to wander the"
PRINT "Forgotten Land forever."
KILLER$ = "the Forgotten Land"
GOTO ENDING
END IF
END IF
IF Level = 5 THEN
ROT = ROT + 1
IF ROT >= 10 THEN
HP = HP - 1
MAXHP = MAXHP - 1
PRINT "You can feel your flesh decaying..."
ROT = ROT - 10
IF HP <= 0 THEN
KILLER$ = "The Plane Wormblood"
PRINT "You can feel your body finally shrivelling up and dying from the rotting": PRINT "influence of Wormblood."
GOTO DEAD
END IF
END IF
END IF
IF Level = 11 AND BALOR <> 1 THEN
SNIFF = INT(RND * 8) + 1
IF SNIFF = 1 THEN PRINT "A dark form enters the area.  It appears to be smelling something.": PRINT "It leaps for you, and you suddenly realize that its a Balor!": BALOR = 1
END IF
IF Level = 8 THEN
ALIGNMENT = ALIGNMENT + 1
IF ALIGNMENT = 250 THEN
PRINT "You can feel your alignment shifting from the bounds of good to that": PRINT "of Evil......."
KILLER$ = "The Plane Skin-Shredder"
GOTO DEAD
END IF
END IF
IF LORDOFTHEFLIES = 1 THEN
LORDHIT = INT(RND * 10) + 1
IF LORDHIT = 1 THEN PRINT "The Lord of the Flies raises his hand, and out of the swarm of flies descends": PRINT "a swarm larger than any flies you have ever seen.  The flies surround you,": PRINT "drawing your blood and severely wounding you.": HP = HP - 7: IF HP <= 0 THEN KILLER$ = "Lord of the Flies": GOTO DEAD
IF LORDHIT >= 2 AND LORDHIT <= 5 THEN PRINT "The Lord of the Flies raises his hand, and a sword made entirely of insects": PRINT "appears in his hand.  He swings it at you, wounding you, as the insects on the": PRINT "blade bite through your skin.": HP = HP - 3: IF HP <= 0 THEN KILLER$ = "Lord of the Flies": GOTO DEAD
IF LORDHIT >= 6 AND LORDHIT <= 9 THEN PRINT "The Lord of the Flies raises his hand, and a sword made entirely of insects": PRINT "appears in his hands.  He swings at you, but you clash at the blade with your": PRINT "our blood-stained sword, and the insect sword disappates."
IF LORDHIT = 10 THEN PRINT "The Lord of the Flies raises his hand, and out of the swarm of flies descends": PRINT "a swarm larger than any flies you have ever seen.  The flies swoop down at": PRINT "you, but you duck and the swarm of flies disappates."
END IF
IF Level = 23 AND RM = 28 AND KOSTKILLED = 0 THEN
GRAZHIT = INT(RND * 2) + 1
IF GRAZHIT = 1 THEN PRINT "Kostchtchie, evil Abyssal Lord, swings at your with her claws.": HP = HP - 3
IF GRAZHIT = 2 THEN PRINT "Kostchtchie, foul Lord of Utter Blackness, swipes at you with her claws, but": PRINT "misses!"
IF HP <= 0 THEN KILLER$ = "Abyssal Lord Kostchtchie": GOTO DEAD
END IF
IF Level = 47 AND RM = 26 AND GRAZZTKILLED = 0 THEN
GRAZHIT = INT(RND * 2) + 1
IF GRAZHIT = 1 THEN PRINT "Graz'zt, evil Abyssal Lord, swings at you with his claws, and hits!": HP = HP - 4
IF GRAZHIT = 2 THEN PRINT "Graz'zt, foul Lord of Utter Blackness, swipes at you with his claws, but": PRINT "misses!"
IF HP <= 0 THEN KILLER$ = "Abyssal Lord Graz'zt": GOTO DEAD
END IF
IF Level = 9 THEN
PRINT "The acid burns your skin as you struggle to stay afloat.": HP = HP - 2
IF HP <= 0 THEN KILLER$ = "The Plane Burning Water": GOTO DEAD
END IF
IF Level = 47 AND RM <> 26 THEN
PRINT "Blue Flames singe you."
HP = HP - 1
IF HP <= 0 THEN KILLER$ = "The Third Realm of Azzagrat": GOTO DEAD
END IF
MOVES = MOVES + 1
IF MANES = 1 THEN
HIT = INT(RND * 3) + 1
IF HIT = 1 THEN PRINT "The Manes hits you!": HP = HP - 2
IF HIT <> 1 THEN PRINT "The Manes misses you!"
IF HP <= 0 THEN KILLER$ = "a Manes": GOTO DEAD
END IF
IF SONA = 1 THEN
HIT = INT(RND * 3) + 1
IF HIT = 1 THEN PRINT "The Son of Chaos hits you!": HP = HP - 2
IF HIT <> 1 THEN PRINT "The Son of Chaos misses you!"
IF HP <= 0 THEN KILLER$ = "a Son of Chaos, Type A": GOTO DEAD
END IF
IF CHASME = 1 THEN
HIT = INT(RND * 3) + 1
IF HIT = 1 THEN PRINT "The Chasme hits you!": HP = HP - 4
IF HIT <> 1 THEN PRINT "The Chasme misses you!"
IF HP <= 0 THEN KILLER$ = "a Chasme": GOTO DEAD
END IF
IF Level = 10 THEN
PRINT "A horde of fiends sets upon you, intent on eating you alive!"
PRINT "They bite at exposed skin, ravenous for food!": HP = HP - 3
IF HP <= 0 THEN KILLER$ = "a Horde of Hungry Fiends": GOTO DEAD
END IF
IF BALOR = 1 THEN
HIT = INT(RND * 50) + 1
IF HIT = 1 THEN PRINT "The Balor severs your head!": KILLER$ = "Balor's Vorpal Sword": GOTO ENDING
IF HIT >= 2 AND HIT <= 49 THEN PRINT "The Balor hits you!": HP = HP - 7
IF HIT >= 50 THEN PRINT "The Balor misses you!"
IF HP <= 0 THEN KILLER$ = "a Balor": GOTO DEAD
END IF
IF MARILITH = 1 THEN
HIT = INT(RND * 3) + 1
IF HIT = 1 THEN PRINT "The Marilith hits you!": HP = HP - 5
IF HIT <> 1 THEN PRINT "The Marilith misses you!"
IF HP <= 0 THEN KILLER$ = "a Marilith": GOTO DEAD
END IF
IF WASTRILITH = 1 THEN
HIT = INT(RND * 20) + 1
IF HIT = 1 THEN PRINT "The Wastrilith breathes a cone of super-heated fire at you!": HP = HP - 15
IF HIT <= 10 THEN PRINT "The Wastrilith hits you!": HP = HP - 6
IF HIT >= 11 THEN PRINT "The Wastrilith misses you!"
IF HP <= 0 THEN KILLER$ = "a Wastrilith": GOTO DEAD
END IF
IF MOLYDEUS >= 1 AND RM = 75 AND Level = 1 THEN
HIT = INT(RND * 4) + 1
IF HIT = 1 THEN PRINT "The Molydeus hits you!": HP = HP - 2
IF HIT <> 1 THEN PRINT "The Molydeus misses you!"
IF HP <= 0 THEN KILLER$ = "a Molydeus": GOTO DEAD
END IF
IF Level = 222 AND MOLD <> 1 THEN
MOLD = INT(RND * 2) + 1
IF MOLD = 1 THEN PRINT "Suddenly, out of a nearby pit creeps a slime mold.  It oozes toward you."
END IF
IF MOLD = 1 THEN
HIT = INT(RND * 3) + 1
IF HIT = 1 THEN PRINT "The slime mold climbs all over you.  You scream in pain as the acid seeps into": PRINT "your skin.": HP = HP - 8
IF HIT >= 2 THEN PRINT "The slime mold creeps around you, and climbs on you, but you toss it aside!"
IF HP <= 0 THEN KILLER$ = "a slime mold": GOTO DEAD
END IF
IF Level = 69 THEN
BREATH = BREATH + 1
IF BREATH >= 30 THEN
PRINT "You can feel the breath being forced out of you as the horde of fiends"
PRINT "buries you under them...."
KILLER$ = "a Horde of Fiends": GOTO ENDING
GOTO ENDING
ELSE
PRINT "The horde of fiends is crawling over you, making it hard for you to breathe!"
END IF
END IF
IF Level = 2 THEN
HIT = INT(RND * 2) + 1
IF HIT = 1 THEN
PRINT "The Abyssal Ant bites your toes!": HP = HP - 2
IF HP <= 0 THEN KILLER$ = "Abyssal Ant": GOTO DEAD
END IF
IF HIT = 2 THEN PRINT "The Abyssal Ant misses you with its deadly bite!"
END IF
IF Level = 12 OR Level = 45 AND RM <> 71 THEN
HIT = INT(RND * 2) + 1
IF HIT = 1 THEN
PRINT "The Viper Tree bites your toes!": HP = HP - 1
IF HP <= 0 THEN KILLER$ = "Viper Tree": GOTO DEAD
END IF
IF HIT = 2 THEN PRINT "The Viper Tree misses you!"
END IF
IF Level = 452 THEN
PRINT "A huge swarm of flies swarms around you, crazed for blood.  They bite you!": HP = HP - 1
IF HP <= 0 THEN KILLER$ = "Swarm of Flies": GOTO DEAD
END IF
IF XP >= 20 THEN
XP = XP - 20
HP = HP + 5
MAXHP = MAXHP + 5
END IF
IF Level = 72 THEN PRINT "Your shadow is shining like the sun."
IF ARACHNOS = 1 THEN
HIT = INT(RND * 6) + 1
IF HIT = 1 THEN PRINT "Arachnos hits you with two of her four claws!": HP = HP - 3
IF HIT = 2 THEN PRINT "Arachnos hits you with all of her four claws!": HP = HP - 6
IF HIT = 3 THEN PRINT "Arachnos lowers her scythe and swings at you, hitting you!": HP = HP - 10
IF HIT >= 4 THEN PRINT "Arachnos swings at you, but you duck out of the way!"
IF HP <= 0 THEN KILLER$ = "The Evil Arachnos": GOTO DEAD
END IF
IF Level = 88 AND DEMO <> 1 AND DEMOKILLED = 0 THEN
DEMO = INT(RND * 10) + 1
IF DEMO = 1 THEN PRINT "Suddenly, out of the sea rises a double-headed reptailian with babboolike": PRINT "heads, scaly blue-green skin, and powerful lizard-like legs.  It has a thick,": PRINT "forked tail.  He looks at you and intones, 'I am Demogorgon.  You are doomed.'": PRINT "'Now it is time to destroy you!'  Demogorgon rushes to the attack!"
END IF
IF DEMO = 1 THEN
HIT = INT(RND * 2) + 1
IF HIT = 1 THEN PRINT "Demogorgon's forked tail swings around at you, hitting you.  You suddenly": PRINT "feel much weaker.": MAXHP = MAXHP - 2: HP = HP - 2
IF HIT = 2 THEN PRINT "Demogorgon's sweeping tail sweeps over to you, but you manage to dive under the": PRINT "sea to avoid the tail.  You resurface."
IF HP <= 0 THEN KILLER$ = "Demogorgon": GOTO DEAD
END IF
IF Level = 66 AND ARACHNOS <> 1 AND ARACHNOSKILLED = 0 THEN
ARACHNOS = INT(RND * 15) + 1
IF ARACHNOS = 1 THEN PRINT "Out of the surrounding webs a being of utter evil appears.  She looks at you,": PRINT "and laughs.  The being appears to have six arms and holds a scythe in two.": PRINT "'I am the Arachnos.  You have no chance of harming me,' laughs the demon, who": PRINT "swoops to the attack!"
END IF
IF Level = 452 AND LORDOFTHEFLIES <> 1 AND LORDOFFLIESKILLED = 0 THEN
LORDOFTHEFLIES = INT(RND * 10) + 1
IF LORDOFTHEFLIES = 1 THEN PRINT "Suddenly, out of the multitidinous swarms of flies comes a human, covered in": PRINT "flies and other plague-carrying insects.  He raises his hand, and moves in for": PRINT "the kill."
END IF
IF MONITOR = 1 THEN PRINT "You have"; HP; "hit points out of"; MAXHP; "maximum."
DEAD:  IF HP <= 0 THEN PRINT "You can feel the pain engulf your body as you lay down on the plain of the": PRINT "Abyss, dead.": GOTO ENDING
RETURN
5 LAYERS
940 GOSUB 1: PRINT : INPUT "Abyss>", A$: PRINT
IF A$ = "q" THEN COLOR 0: END
IF A$ = "" THEN A$ = "fight"
IF A$ = "save" THEN GOTO SAVEGAME
IF A$ = "restore" THEN GOTO LOADGAME
IF A$ = "i" THEN
PRINT "You have:": PRINT
PRINT "  A blood-stained sword."
PRINT "  A brooch given to you by the Sensates of Arborea."
IF DEMONSHOWED = 1 THEN PRINT "  A book of forbidden lore."
PRINT : GOTO 940
END IF
IF A$ = "score" THEN
PRINT "You have killed:": PRINT
PRINT LORDKILLED; "Abyssal Lords, "; MANESKILLED; "Manes,"; MOLYKILLED; "Molydeus,"
PRINT ALKILLED; "Alu-Fiends,"; RUTKILLED; "Rutterkin,"; CHASKILLED; "Chasme,"
PRINT SONAKILLED; "Sons of Chaos (Type A),"; WASTKILLED; "Wastrilith,"; MOLDKILLED; "Slime Molds,"
PRINT ANTKILLED; "Abyssal Ants,"; MARKILLED; "Marilith,"; BALKILLED; "Balor,"
PRINT SPIDERKILLED; "Spiders, "; HEZKILLED; "Hezrou, and"; VROCKKILLED; "Vrock."
GOTO 940
END IF
IF A$ = "monitor" AND MONITOR = 0 THEN MONITOR = 1: PRINT "Health monitor is now on.": GOTO 940
IF A$ = "monitor" AND MONITOR = 1 THEN MONITOR = 0: PRINT "Health monitor is now off.": GOTO 940
IF A$ = "cheat" THEN PRINT "Through some odd miracle of modern technology, you are suddenly completely": PRINT "healed!": HP = MAXHP: GOTO 940
IF A$ = "n" AND RM >= 12 THEN RM = RM - 11: GOSUB 5: GOTO 940
IF A$ = "n" THEN PRINT "You can't go north.": GOTO 940
IF A$ = "portal" THEN PORTAL = 1: GOTO 940
IF A$ = "s" AND RM <= 77 THEN RM = RM + 11: GOSUB 5: GOTO 940
IF A$ = "s" THEN PRINT "You can't go south.": GOTO 940
IF A$ = "e" AND RM <> 11 AND RM <> 22 AND RM <> 33 AND RM <> 44 AND RM <> 55 AND RM <> 66 AND RM <> 77 AND RM <> 88 THEN RM = RM + 1: GOSUB 5: GOTO 940
IF A$ = "e" THEN PRINT "You can't go east.": GOTO 940
IF A$ = "w" AND RM <> 1 AND RM <> 12 AND RM <> 23 AND RM <> 34 AND RM <> 45 AND RM <> 56 AND RM <> 67 AND RM <> 78 THEN RM = RM - 1: GOSUB 5: GOTO 940
IF A$ = "w" THEN PRINT "You can't go west.": GOTO 940
IF A$ = "trouble" THEN PRINT "Your 'trouble' stage of Hit Points is when you are reduced to"; TROUBLE; "Hit": PRINT "Points.": GOTO 940
IF A$ = "room" THEN PRINT "You are on room"; RM; "of the"; Level; "level of the Abyss.": GOTO 940
IF A$ = "fight" AND ESHEB = 1 THEN GOTO FIGHTESHEB
IF A$ = "fight" AND DIINK = 1 THEN GOTO FIGHTDIINK
IF A$ = "fight" AND GRAZZTKILLED = 0 AND Level = 47 AND RM = 26 THEN GOTO FIGHTGRAZZT
IF A$ = "fight" AND KOSTKILLED = 0 AND Level = 23 AND RM = 28 THEN GOTO FIGHTKOST
IF A$ = "fight" AND CHAOSKILLED = 0 AND Level = 723 AND RM = 63 THEN GOTO FIGHTCHAOS
IF A$ = "fight" AND LORDOFTHEFLIES = 1 THEN GOTO FIGHTLORDOFFLIES
IF A$ = "fight" AND ARACHNOS = 1 THEN GOTO FIGHTARACHNOS
IF A$ = "fight" AND DEMO = 1 THEN GOTO FIGHTDEMO
IF A$ = "fight" AND ALU = 1 THEN GOTO FIGHTALU
IF A$ = "fight" AND MOLD = 1 THEN GOTO FIGHTMOLD
IF A$ = "fight" AND SPIDER = 1 THEN GOTO FIGHTSPIDER
IF A$ = "fight" AND MANES = 1 THEN GOTO 1000
IF A$ = "fight" AND MOLYDEUS >= 1 AND Level = 1 AND RM = 75 THEN GOTO 1001
IF A$ = "fight" AND Level = 2 THEN GOTO 1005
IF A$ = "fight" AND RUT = 1 THEN GOTO FIGHTRUT
IF A$ = "fight" AND VROCK = 1 THEN GOTO 1002
IF A$ = "fight" AND CHASME = 1 THEN GOTO 1004
IF A$ = "fight" AND Level = 12 THEN PRINT "You slash out at the viper tree, but your sword just bounces off its 'bark.'": GOTO 940
IF A$ = "fight" AND HEZ = 1 THEN GOTO FIGHTHEZ
IF A$ = "fight" AND SONA = 1 THEN GOTO FIGHTSONA
IF A$ = "fight" AND Level = 45 THEN PRINT "You slash out at the viper tree, but your sword just bounces off its 'bark.'": GOTO 940
IF A$ = "fight" AND Level = 452 THEN PRINT "You manage to disperse the fly swarm for a little bit.": HP = HP + 1: GOTO 940
IF A$ = "fight" AND BALOR = 1 THEN 1003
IF A$ = "fight" AND MARILITH = 1 THEN GOTO 1006
IF A$ = "fight" AND WASTRILITH = 1 THEN GOTO 1007
IF A$ = "look" OR A$ = "l" THEN GOSUB 5: GOTO 940
IF MID$(A$, 1, 1) = "z" THEN PRINT "Time Passes....": GOSUB ZZZZ: GOTO 940
IF A$ = "enter town" AND RM = 75 AND Level = 1 AND BEAT = 1 THEN PRINT "You asre prepared to enter town, when another horde of Molydeus appears": PRINT "on the top of the Battlements.": BEAT = 0: MOLYDEUS = 1: GOTO 940
IF A$ = "xp" THEN
PRINT "You have"; XP; "Experience Points."
PRINT "This is"; 20 - XP; "points away from gaining 5 more hit points."
GOTO 940
END IF
IF A$ = "health" THEN PRINT "You have"; HP; "Hit Points out of"; MAXHP; "Maximum.": GOTO 940
IF A$ = "enter portal" AND PORTAL = 1 THEN GOTO PORTALS
PRINT "You can't do that.": GOTO 940
1000 YOUHIT = INT(RND * 2) + 1
IF YOUHIT = 1 THEN PRINT "You slash at the Manes, severely hurting it!": MANESHP = MANESHP - 3
IF YOUHIT = 2 THEN PRINT "You slash at the Manes, but you miss by a good inch!"
IF MANESHP <= 0 THEN
MANESKILLED = MANESKILLED + 1
MANESHP = 5
XP = XP + 5
PRINT "You kill the Manes!"
BEEP
MANES = 0
END IF
GOTO 940
1001 YOUHIT = INT(RND * 2) + 1
IF YOUHIT = 1 THEN PRINT "You slash at the Molydeus, severely hurting it!": MOLYHP = MOLYHP - 3
IF YOUHIT = 2 THEN PRINT "You slash at the Molydeus, but you miss by a good inch!"
IF MOLYHP <= 0 THEN
MOLYHP = 25
BEEP
PRINT "You kill the Molydeus!"
XP = XP + 15
MOLYDEUS = MOLYDEUS - 1
MOLYKILLED = MOLYKILLED + 1
IF MOLYDEUS <= 0 THEN PRINT "You think you have killed all the guards.": BEAT = 1
IF MOLYDEUS <> 0 THEN PRINT "Another Molydeus, attracted by the sounds of the fight, rushes in!"
END IF
GOTO 940
1002 YOUHIT = INT(RND * 2) + 1
IF YOUHIT = 1 THEN PRINT "You slash at the Vrock, severely hurting it!": VROCKHP = VROCKHP - 3
IF YOUHIT = 2 THEN PRINT "You slash at the Vrock, but you miss by a good inch!"
IF VROCKHP <= 0 THEN
BEEP
PRINT "You kill the Vrock!"
VROCKKILLED = VROCKKILLED + 1
VROCKHP = 20
VROCK = 0
IF RM = 71 AND Level = 12 THEN PRINT "Another Vrock leaps down from the Ship of Chaos to kill you!": VROCK = 1
XP = XP + 10
END IF
GOTO 940
1003 YOUHIT = INT(RND * 2) + 1
IF YOUHIT = 1 THEN PRINT "You slash at the Balor, severely hurting it!": BALORHP = BALORHP - 5
IF YOUHIT = 2 THEN PRINT "You slash at the Balor, but you miss by a good inch!"
IF BALORHP <= 0 THEN
PRINT "You kill the Balor!"
BEEP
BALORHP = 45
BALKILLED = BALKILLED + 1
PRINT "But as the balor's body slumps to the ground, dead, the body explodes in"
PRINT "flames!  The flames swing over the terrain, hitting you!"
HP = HP - 10
IF HP <= 0 THEN KILLER$ = "the death throes of a Balor": GOTO DEAD
XP = XP + 45
BALOR = 0
END IF
GOTO 940
1004 YOUHIT = INT(RND * 2) + 1
IF YOUHIT = 1 THEN PRINT "You slash at the Chasme, severely hurting it!": CHASMEHP = CHASMEHP - 3
IF YOUHIT = 2 THEN PRINT "You slash at the Chasme, but you miss by a good inch!"
IF CHASMEHP <= 0 THEN
CHASMEHP = 15
BEEP
PRINT "You kill the Chasme!"
CHASKILLED = CHASKILLED + 1
XP = XP + 10
CHASME = 0
END IF
GOTO 940
1006 YOUHIT = INT(RND * 2) + 1
IF YOUHIT = 1 THEN PRINT "You slash at the Marilith, severely hurting it!": MARIHP = MARIHP - 3
IF YOUHIT = 2 THEN PRINT "You slash at the Marilith, but you miss by a good inch!"
IF MARIHP <= 0 THEN
MARKILLED = MARKILLED + 1
MARIHP = 35
PRINT "You kill the Marilith!"
BEEP
XP = XP + 40
MARILITH = 0
END IF
GOTO 940
1007 YOUHIT = INT(RND * 2) + 1
IF YOUHIT = 1 THEN PRINT "You slash at the Wastrilith, severely hurting it!": WASTHP = WASTHP - 3
IF YOUHIT = 2 THEN PRINT "You slash at the Wastrilith, but you miss by a good inch!"
IF WASTHP <= 0 THEN
WASTHP = 35
WASTKILLED = WASTKILLED + 1
PRINT "You kill the Wastrilith!"
BEEP
XP = XP + 25
WASTRILITH = 0
END IF
GOTO 940
BEGIN:  PRINT "After days and days of climbing the endless stairs, you finally reach a door."
PRINT "It is painted in blood red colors, and almost radiates Evil."
PRINT "Disregarding your better judgement, you open it, and step inside."
RM = 6: Level = 1: GOSUB 5: GOTO 940
ZZZZ: IF HP <> MAXHP THEN
HEALING = HEALING + 1
IF HEALING >= 5 THEN
HEALING = HEALING - 5
PRINT "You are feeling better."
HP = HP + 1
END IF
END IF
RETURN
ENDING: IF WINNER = 0 THEN GOTO DEADSAVING
IF WINNER = 1 THEN GOTO WONSAVING
END
DEADSAVING: INPUT "What is your name?", N$
IF N$ = "" THEN N$ = "the_elf"
SAV$ = N$ + ".aby"
OPEN SAV$ FOR OUTPUT AS #1
PRINT #1, N$; " killed by "; KILLER$; " on Abyssal Layer"; Level; "out of 723."
PRINT #1, N$; " had"; HP; "Hit Points out of"; MAXHP; "maximum."
PRINT #1, N$; " made"; MOVES; "moves before his/her untimely death."
PRINT #1, N$; " killed:": PRINT
PRINT #1, LORDKILLED; "Abyssal Lords, "; MANESKILLED; "Manes,"; MOLYKILLED; "Molydeus,"
PRINT #1, ALKILLED; "Alu-Fiends,"; RUTKILLED; "Rutterkin,"; CHASKILLED; "Chasme,"
PRINT #1, SONAKILLED; "Sons of Chaos (Type A),"; WASTKILLED; "Wastrilith,"; MOLDKILLED; "Slime Molds,"
PRINT #1, ANTKILLED; "Abyssal Ants,"; MARKILLED; "Marilith,"; BALKILLED; "Balor,"
PRINT #1, SPIDERKILLED; "Spiders, "; HEZKILLED; "Hezrou, and"; VROCKKILLED; "Vrock."
CLOSE #1
END
WONSAVING: INPUT "What is your name?", N$
IF N$ = "" THEN N$ = "the_elf"
SAV$ = N$ + ".aby"
OPEN SAV$ FOR OUTPUT AS #1
IF DIFF = 1 THEN
PRINT #1, N$; " defeated the evil Lord "; KILLED$; " on Abyssal"
PRINT #1, "Layer"; Level; "out of 723."
PRINT #1, N$; " had"; HP; "Hit Points out of"; MAXHP; "maximum."
PRINT #1, N$; " made"; MOVES; "moves before completing the game."
PRINT #1, N$; " killed:": PRINT
PRINT #1, LORDKILLED; "Abyssal Lords, "; MANESKILLED; "Manes,"; MOLYKILLED; "Molydeus,"
PRINT #1, ALKILLED; "Alu-Fiends,"; RUTKILLED; "Rutterkin,"; CHASKILLED; "Chasme,"
PRINT #1, SONAKILLED; "Sons of Chaos (Type A),"; WASTKILLED; "Wastrilith,"; MOLDKILLED; "Slime Molds,"
PRINT #1, ANTKILLED; "Abyssal Ants,"; MARKILLED; "Marilith,"; BALKILLED; "Balor,"
PRINT #1, SPIDERKILLED; "Spiders, "; HEZKILLED; "Hezrou, and"; VROCKKILLED; "Vrock."
END IF
IF DIFF = 3 THEN
PRINT #1, N$; " won the game on Abyssal Layer"; Level; "out of 723."
PRINT #1, N$; " killed all of the evil and despotic Abyssal Lords."
PRINT #1, N$; " had"; HP; "Hit Points out of"; MAXHP; "maximum."
PRINT #1, N$; " made"; MOVES; "moves before completing the game."
PRINT #1, N$; " killed:": PRINT
PRINT #1, LORDKILLED; "Abyssal Lords, "; MANESKILLED; "Manes,"; MOLYKILLED; "Molydeus,"
PRINT #1, ALKILLED; "Alu-Fiends,"; RUTKILLED; "Rutterkin,"; CHASKILLED; "Chasme,"
PRINT #1, SONAKILLED; "Sons of Chaos (Type A),"; WASTKILLED; "Wastrilith,"; MOLDKILLED; "Slime Molds,"
PRINT #1, ANTKILLED; "Abyssal Ants,"; MARKILLED; "Marilith,"; BALKILLED; "Balor,"
PRINT #1, SPIDERKILLED; "Spiders, "; HEZKILLED; "Hezrou, and"; VROCKKILLED; "Vrock."
END IF
IF DIFF = 2 THEN
PRINT #1, N$; " won the game on Abyssal Layer"; Level; "out of 723."
PRINT #1, N$; " killed four of the evil and despotic Abyssal Lords."
PRINT #1, N$; " had"; HP; "Hit Points out of"; MAXHP; "maximum."
PRINT #1, N$; " made"; MOVES; "moves before completing the game."
PRINT #1, N$; " killed:": PRINT
PRINT #1, LORDKILLED; "Abyssal Lords, "; MANESKILLED; "Manes,"; MOLYKILLED; "Molydeus,"
PRINT #1, ALKILLED; "Alu-Fiends,"; RUTKILLED; "Rutterkin,"; CHASKILLED; "Chasme,"
PRINT #1, SONAKILLED; "Sons of Chaos (Type A),"; WASTKILLED; "Wastrilith,"; MOLDKILLED; "Slime Molds,"
PRINT #1, ANTKILLED; "Abyssal Ants,"; MARKILLED; "Marilith,"; BALKILLED; "Balor,"
PRINT #1, SPIDERKILLED; "Spiders, "; HEZKILLED; "Hezrou, and"; VROCKKILLED; "Vrock."
END IF
CLOSE #1
PRINT "Do you want to save this character's hitpoints for use in further PLANES"
INPUT "games?", A$
IF MID$(A$, 1, 1) = "y" THEN GOSUB 5002
END
5002 INPUT "Enter filename to save character's hit points in:", N$
OPEN N$ FOR OUTPUT AS #1
PRINT #1, HP
PRINT #1, MAXHP
RETURN
END
1005 YOUHIT = INT(RND * 2) + 1
IF YOUHIT = 1 THEN PRINT "You slash at the Abyssal Ant, severely hurting it!": ABYSSANTHP = ABYSSANTHP - 3
IF YOUHIT = 2 THEN PRINT "You slash at the Abyssal Ant, but you miss by a good inch!"
IF ABYSSANTHP <= 0 THEN
ABYSSANTHP = 6
ANTKILLED = ANTKILLED + 1
XP = XP + 5
PRINT "Another ant scurries in!"
END IF
GOTO 940
PORTALS:
LAYER = INT(RND * 22) + 1
IF LAYER = 22 AND Level <> 80 THEN Level = 80: GOTO PAST
IF LAYER = 1 AND Level <> 1 THEN Level = 1: GOTO PAST
IF LAYER = 2 AND Level <> 2 THEN Level = 2: GOTO PAST
IF LAYER = 3 AND Level <> 3 THEN Level = 3: GOTO PAST
IF LAYER = 4 AND Level <> 5 THEN Level = 5: GOTO PAST
IF LAYER = 5 AND Level <> 8 THEN Level = 8: GOTO PAST
IF LAYER = 6 AND Level <> 12 THEN Level = 12: GOTO PAST
IF LAYER = 7 AND Level <> 45 THEN Level = 45: GOTO PAST
IF LAYER = 8 AND Level <> 46 THEN Level = 46: GOTO PAST
IF LAYER = 9 AND Level <> 66 THEN Level = 66: GOTO PAST
IF LAYER = 10 AND Level <> 72 THEN Level = 72: GOTO PAST
IF LAYER = 11 AND Level <> 73 THEN Level = 73: GOTO PAST
IF LAYER = 12 AND Level <> 88 THEN Level = 88: GOTO PAST
IF LAYER = 13 AND Level <> 222 THEN Level = 222: GOTO PAST
IF LAYER = 14 AND Level <> 377 THEN Level = 377: GOTO PAST
IF LAYER = 15 AND Level <> 452 THEN Level = 452: GOTO PAST
IF LAYER = 16 AND Level <> 69 THEN Level = 69: GOTO PAST
IF LAYER = 17 AND Level <> 10 THEN Level = 10: GOTO PAST
IF LAYER = 18 AND Level <> 9 THEN Level = 9: GOTO PAST
IF LAYER = 19 AND Level <> 11 THEN Level = 11: GOTO PAST
IF LAYER = 20 AND Level <> 23 THEN Level = 23: GOTO PAST
IF LAYER = 21 AND Level <> 723 THEN Level = 723: GOTO PAST
GOTO PORTALS
PAST:
SONA = 0
ALU = 0
HEZ = 0
MOLD = 0
SPIDER = 0
RUT = 0
LORDOFTHEFLIES = 0
WASTRILITH = 0
BREATH = 0
ARACHNOS = 0
MANES = 0
MARILITH = 0
BALOR = 0
ABYSSANT = 0
CHASME = 0
DIINK = 0
VROCK = 0
PRINT "You step through the portal....."
GOSUB 5: GOTO 940
ERRORS:  PRINT "Invalid filename.  Please enter an 8 or less letter name.": CLOSE #1
GOTO DEADSAVING
ERRORS2:  PRINT "Invalid filename.  Please enter an 8 or less letter name.": CLOSE #1
GOTO WONSAVING
FIGHTGRAZZT:
HIT = INT(RND * 2) + 1
IF HIT = 1 THEN PRINT "You swing your sword and hit Graz'zt, Evil Foul Lord of the Pitch Black!": GRAZHP = GRAZHP - 6
IF HIT = 2 THEN PRINT "You swing, but miss the Evil Foul Lord of Utter Blackness, Graz'zt!"
IF GRAZHP <= 0 AND DIFF <> 1 THEN BEEP: PRINT "Graz'zt is battered beyond endurance;  He dies.": LORDKILLED = LORDKILLED + 1: GRAZZTKILLED = 1
IF GRAZHP <= 0 AND DIFF = 1 THEN
BEEP
PRINT "You swing your sword one last time, bringing it down upon Graz'zt.  He"
PRINT "looks at you with a sneer, and waves his hands.  You are suddenly far, far"
PRINT "away...."
KILLED$ = "Grazzt"
INPUT "[MORE]", K$: CLS
GOTO YOUWIN
END IF
GOTO 940
FIGHTKOST:
HIT = INT(RND * 2) + 1
IF HIT = 1 THEN PRINT "You swing your sword and hit Kostchtchie, Evil Foul Lord of the Pitch Black!": KOSTHP = KOSTHP - 6
IF HIT = 2 THEN PRINT "You swing, but miss the Evil Foul Lord of Utter Blackness, Kostchtchie!"
IF KOSTHP <= 0 AND DIFF <> 1 THEN BEEP: PRINT "Kostchtchie is battered beyond endurance;  She dies.": LORDKILLED = LORDKILLED + 1: KOSTKILLED = 1
IF KOSTHP <= 0 AND DIFF = 1 THEN
BEEP
KILLED$ = "Kostchtchie"
PRINT "You swing your sword one last time, bringing it down upon Kostchtchie.  She"
PRINT "looks at you with a sneer, and waves her hands.  You are suddenly far, far"
PRINT "away...."
INPUT "[MORE]", K$: CLS
GOTO YOUWIN
END IF
GOTO 940
YOUWIN: PRINT "Landing": PRINT
PRINT "This is a landing on the Endless Staircase."
PRINT "There is a door painted in blood red here.  It almost radiates evil."
INPUT "Do you want to open it again?", A$
IF MID$(A$, 1, 1) = "y" THEN PRINT "You are a brave soul.....": MAXHP = MAXHP + 20: HP = HP + 15: INPUT "[MORE]", K$: CLS : GOTO RESTART
PRINT "You decide that discresion is the greater part of valor, and that if you"
PRINT "are not careful, you'll end up dead, like so many other poor souls."
INPUT "[MORE]", K$: CLS
GOTO WONSAVING
FIGHTSONA:
YOUHIT = INT(RND * 2) + 1
IF YOUHIT = 1 THEN PRINT "You slash at the Son of Chaos, severely hurting it!": SONAHP = SONAHP - 3
IF YOUHIT = 2 THEN PRINT "You slash at the Son of Chaos, but you miss by a good inch!"
IF SONAHP <= 0 THEN
SONAKILLED = SONAKILLED + 1
SONAHP = 35
BEEP
PRINT "You kill the Son of Chaos.  It's dormant spirit rises up from the body and": PRINT "flies to another locale."
XP = XP + 25
SONA = 0
END IF
GOTO 940
FIGHTCHAOS:
HIT = INT(RND * 2) + 1
IF HIT = 1 THEN PRINT "You swing your sword and hit Chaos, Evil Foul Lord of the Pitch Black!": CHAOSHP = CHAOSHP - 6
IF HIT = 2 THEN PRINT "You swing, but miss the Evil Foul Lord of Utter Blackness, Chaos!"
IF CHAOSHP <= 0 AND DIFF <> 1 THEN BEEP: PRINT "Chaos vanishes through the walls of her citadel, leaving a track of ichor": PRINT "behind.": LORDKILLED = LORDKILLED + 1: CHAOS = 0: CHAOSKILLED = 1
IF CHAOSHP <= 0 AND DIFF = 1 THEN
BEEP
PRINT "You swing your sword one last time, bringing it down upon Chaos.  She"
PRINT "looks at you with a sneer, and waves her hands.  The portal behind you is"
PRINT "getting larger, larger, and larger......."
KILLED$ = "Chaos"
INPUT "[MORE]", K$: CLS
GOTO CHAOS
END IF
GOTO 940
CHAOS:  PRINT "You fall through the portal, into unending Chaos."
PRINT : PRINT "Limbo": PRINT
PRINT "This is sheer Limbo.  You find that you can barely move, let alone breathe."
PRINT "'So this is the punishment for defeating Chaos,' You think."
PRINT "'If only I had been more careful......'"
PRINT "You have little time before you run out of air."
PRINT : INPUT "LIMBO>", A$: PRINT
IF A$ = "home" THEN PRINT "You utter in your last breath the word 'Home,' and you are instantly": PRINT "somewhere else....": GOTO YOUWIN
PRINT "You suffocate in unrelenting Limbo."
KILLER$ = "Limbo": GOTO DEADSAVING
FIGHTLORDOFFLIES:
HIT = INT(RND * 2) + 1
IF HIT = 1 THEN PRINT "You raise your sword and swing at the Lord of Flies, hitting his skin, and": PRINT "he shrieks in pain!": LORDOFFLIESHP = LORDOFFLIESHP - 5
IF HIT = 2 THEN PRINT "You raise your sword, but the Lord of Flies lifts his hand, and suddenly": PRINT "a swarm of flies descends upon you, wounding you severely!": HP = HP - 1: IF HP <= 0 THEN KILLER$ = "Lord of the Flies": GOTO DEAD
IF LORDOFFLIESHP >= 1 AND LORDOFFLIESHP <= 10 THEN PRINT "The Lord of the Flies is hurt.  He is apparently dying."
IF LORDOFFLIESHP <= 0 AND DIFF <> 1 THEN BEEP: PRINT "The Lord of the Flies is battered beyond endurance;  He dies.": LORDKILLED = LORDKILLED + 1: LORDOFTHEFLIES = 0: LORDOFFLIESKILLED = 1
IF LORDOFFLIESHP <= 0 AND DIFF = 1 THEN
BEEP
KILLED$ = "Lord of the Flies"
PRINT "The Lord of the Flies is battered beyond endurance.  With one last breath he"
PRINT "lifts his hand, and a swarm of flies lifts you up, out of the Abyss, and free"
PRINT "from it's evil lands...."
INPUT "[MORE]", K$: CLS
GOTO YOUWIN
END IF
GOTO 940
FIGHTARACHNOS:
HIT = INT(RND * 2) + 1
IF HIT = 1 THEN PRINT "You raise your sword and swing at Arachnos.  The sword hits home, but Arachnos": PRINT "does not appear to be harmed.  She does slow down for a bit, though.": ARACHHP = ARACHHP - 5
IF HIT = 2 THEN PRINT "You raise your sword, but Arachnos parries the blow with her scythe.  Suddenly": PRINT "the scythe is at your neck.  You back off from Arachnos."
IF ARACHHP >= 1 AND ARACHHP <= 10 THEN PRINT "Arachnos is now very slow.  One of her rib bones falls to the ground as she": PRINT "attempts to move.  She is finally dying."
IF ARACHHP <= 0 AND DIFF <> 1 THEN BEEP: PRINT "Arachnos is battered beyond endurance;  She dies.": LORDKILLED = LORDKILLED + 1: ARACHNOS = 0: ARACHNOSKILLED = 1
IF ARACHHP <= 0 AND DIFF = 1 THEN
BEEP
KILLED$ = "Arachnos"
PRINT "Arachnos is battered beyond endurance.  With one last breath she lifts her"
PRINT "hand, and a flock of swans carries you out of the Abyss, out of the Abyss and"
PRINT "far from it's evil lands...."
INPUT "[MORE]", K$: CLS
GOTO YOUWIN
END IF
GOTO 940
FIGHTMOLD:
HIT = INT(RND * 2) + 1
IF HIT = 1 THEN BEEP: PRINT "You hit the slime mold with your sword.   The slime mold seeps into the": PRINT "ground, defeated.": MOLD = 0: MOLDKILLED = MOLDKILLED + 1: XP = XP + 5
IF HIT = 2 THEN PRINT "You swing at the slime mold, but miss."
GOTO 940
FIGHTDIINK:
HIT = INT(RND * 2) + 1
IF HIT = 1 THEN PRINT "You raise your sword and swing at Diinkzaran.  The sword hits home, but": PRINT "Diinkzaran does not seem harmed.  In fact, he laughs.  The wounds you": PRINT "inflicted upon him vanish.": DIINKHP = DIINKHP - 4
IF HIT = 2 THEN
BLOCK = INT(RND * 3) + 1
IF BLOCK = 1 THEN PRINT "A swirling shield of chaos surrounds Diinkzaran, shielding him from your blow."
IF BLOCK = 2 THEN PRINT "A swirling shield of chaos surrounds Diinkzaran, shielding him from your blow.": PRINT "However, the shield fires chaotic energy upon him, hurting him.": DIINKHP = DIINKHP - 2
IF BLOCK = 3 THEN PRINT "A swirling shield of chaos surrounds Diinkzaran, shielding him from your blow.": PRINT "From the shield burst bolts of chaotic energy, striking you.": HP = HP - 2: IF HP <= 0 THEN KILLER$ = "Diinkzaran's chaos shield": GOTO DEAD
END IF
IF DIINKHP >= 1 AND DIINKHP <= 10 THEN PRINT "Diinkzaran is now very slow.  He is obviously dying."
IF DIINKHP <= 0 AND DIFF <> 1 THEN BEEP: PRINT "Diinkzaran is battered beyond endurance;  He dies.": LORDKILLED = LORDKILLED + 1: DIINK = 0: DIINKKILLED = 1
IF DIINKHP <= 0 AND DIFF = 1 THEN
BEEP
KILLED$ = "Diinkzaran"
PRINT "Diinkzaran is battered beyond endurance.  Suddenly, out of the Chaos"
PRINT "surrounding you appears a throne, and it catches Diinkzaran.  Suddenly,"
PRINT "with a half-crazed laugh, he is gone, and you are somewhere else, far, far"
PRINT "away....."
INPUT "[MORE]", K$: CLS
GOTO YOUWIN
END IF
GOTO 940
FIGHTDEMO:
HIT = INT(RND * 2) + 1
IF HIT = 1 THEN PRINT "You raise your sword and swing at Demogorgon.  The sword hits home, but": PRINT "Demogorgon does not seem harmed.  In fact, he laughs.  The wounds you": PRINT "inflicted upon him vanish.": DEMOHP = DEMOHP - 8
IF HIT = 2 THEN PRINT "You raise your sword, but Demogorgon parries the blow with his tail."
IF DEMOHP >= 1 AND DEMOHP <= 10 THEN PRINT "Demogorgon is now very slow.  His tail in punctured by many wounds and he is": PRINT "obviously dying."
IF DEMOHP <= 0 AND DIFF <> 1 THEN BEEP: PRINT "Demogorgon is battered beyond endurance;  He dies.": LORDKILLED = LORDKILLED + 1: DEMO = 0: DEMOKILLED = 1
IF DEMOHP <= 0 AND DIFF = 1 THEN
BEEP
KILLED$ = "Demogorgon"
PRINT "Demogorgon is battered beyond endurance.  With one last breath he lifts his"
PRINT "hand, and you are suddenly far, far away....."
INPUT "[MORE]", K$: CLS
GOTO YOUWIN
END IF
GOTO 940
FIGHTESHEB:
HIT = INT(RND * 2) + 1
IF HIT = 1 THEN PRINT "You raise your sword and swing at Eshebala.  The sword hits home, but": PRINT "Eshebala does not seem harmed.  In fact, she laughs.  The wounds you": PRINT "inflicted upon her vanish.": ESHEBHP = ESHEBHP - 4
IF HIT = 2 THEN PRINT "You raise your sword, but Eshebala parries the blow with her tail."
IF ESHEBHP >= 1 AND ESHEBHP <= 10 THEN PRINT "Eshebala is now very slow.  Her coat is covered with many scars, and she is": PRINT "obviously close to death."
IF ESHEBHP <= 0 AND DIFF <> 1 THEN BEEP: PRINT "Eshebala is battered beyond endurance;  She dies.": LORDKILLED = LORDKILLED + 1: ESHEB = 0: ESHEBKILLED = 1
IF ESHEBHP <= 0 AND DIFF = 1 THEN
BEEP
KILLED$ = "Eshebala"
PRINT "Eshebala is battered beyond endurance.  With one last breath she lifts her"
PRINT "hand, and you are suddenly far, far away..... "
INPUT "[MORE]", K$: CLS
GOTO YOUWIN
END IF
GOTO 940
FIGHTALU:
HIT = INT(RND * 2) + 1
IF HIT = 1 THEN PRINT "You swing your sword at the alu-fiend, and hit her square on the chest.  She": PRINT "howls in rage!": ALUHP = ALUHP - 4
IF HIT = 2 THEN PRINT "You swing your sword at the alu-fiend, but she meets the blow with her own": PRINT "sword!"
IF ALUHP <= 0 THEN BEEP: PRINT "The alu-fiend has taken too many hits; she dies.": ALKILLED = ALKILLED + 1: XP = XP + 15: ALUHP = 8: ALU = 0
GOTO 940
FIGHTRUT:
HIT = INT(RND * 2) + 1
IF HIT = 1 THEN PRINT "You swing your sword at the rutterkin, and hit it square on the chest.  It": PRINT "howls in rage!": RUTHP = RUTHP - 3
IF HIT = 2 THEN PRINT "You swing your sword at the rutterkin, but it meets the blow with a long": PRINT "polearm!"
IF RUTHP <= 0 THEN BEEP: PRINT "The rutterkin has taken too many hits; it dies.": RUTKILLED = RUTKILLED + 1: XP = XP + 15: RUTHP = 16: RUT = 0
GOTO 940
FIGHTHEZ:
HIT = INT(RND * 2) + 1
IF HIT = 1 THEN PRINT "You swing your sword at the hezrou, and hit it square on the chest.  It": PRINT "howls in rage!": HEZHP = HEZHP - 5
IF HIT = 2 THEN PRINT "You swing your sword at the hezrou, but it leaps out of the way!"
IF HEZHP <= 0 THEN BEEP: PRINT "The hezrou has taken too many hits; it dies.": HEZKILLED = HEZKILLED + 1: XP = XP + 30: HEZHP = 30: HEZ = 0
GOTO 940
FIGHTSPIDER:
HIT = INT(RND * 2) + 1
IF HIT = 1 THEN BEEP: PRINT "You slash at the spider and it dies instantly.": SPIDER = 0: XP = XP + 10: SPIDERKILLED = SPIDERKILLED + 1
IF HIT = 2 THEN PRINT "The spider scurries off to one side, avoiding your blow."
GOTO 940
SAVEGAME: INPUT "Enter filename:", N$
IF N$ = "" THEN N$ = "the_elf"
SAV$ = N$ + ".asv"
OPEN SAV$ FOR OUTPUT AS #1
PRINT #1, RM
PRINT #1, Level
PRINT #1, HP
PRINT #1, MAXHP
PRINT #1, MOVES
PRINT #1, DIFF
PRINT #1, MONITOR
PRINT #1, CHAOSKILLED
PRINT #1, GRAZZTKILLED
PRINT #1, KOSTKILLED
PRINT #1, DIINKKILLED
PRINT #1, LORDOFFLIESKILLED
PRINT #1, DEMOKILLED
PRINT #1, ESHEBKILLED
PRINT #1, ARACHNOSKILLED
PRINT #1, MANES
PRINT #1, CHASME
PRINT #1, HEZ
PRINT #1, ESHEB
PRINT #1, DIINK
PRINT #1, LORDOFTHEFLIES
PRINT #1, ARACHNOS
PRINT #1, DEMO
PRINT #1, LORDKILLED
PRINT #1, MANESKILLED
PRINT #1, MOLYKILLED
PRINT #1, ALKILLED
PRINT #1, RUTKILLED
PRINT #1, CHASKILLED
PRINT #1, SONAKILLED
PRINT #1, WASTKILLED
PRINT #1, MOLDKILLED
PRINT #1, ANTKILLED
PRINT #1, MARKILLED
PRINT #1, BALKILLED
PRINT #1, SPIDERKILLED
PRINT #1, HEZKILLED
PRINT #1, VROCKKILLED
PRINT #1, ALU
PRINT #1, RUT
PRINT #1, SONA
PRINT #1, BALOR
PRINT #1, MARILITH
PRINT #1, HEZHP
PRINT #1, RUTHP
PRINT #1, CHAOSHP
PRINT #1, KOSTHP
PRINT #1, ALUHP
PRINT #1, ESHEBHP
PRINT #1, DIINKHP
PRINT #1, DEMOHP
PRINT #1, LORDOFFLIESHP
PRINT #1, ARACHHP
PRINT #1, MOLYHP
PRINT #1, VROCKHP
PRINT #1, SONAHP
PRINT #1, BALORHP
PRINT #1, MOLYDEUS
PRINT #1, CHASMEHP
PRINT #1, ABYSSANTHP
PRINT #1, GRAZHP
PRINT #1, WASTHP
PRINT #1, MARIHP
PRINT #1, PORTAL
PRINT #1, DEMONSHOWED
CLOSE #1
GOTO 940
LOADGAME:
INPUT "Enter filename to load:", N$
IF N$ = "" THEN N$ = "the_elf"
SAV$ = N$ + ".asv"
OPEN SAV$ FOR INPUT AS #1
INPUT #1, RM
INPUT #1, Level
INPUT #1, HP
INPUT #1, MAXHP
INPUT #1, MOVES
INPUT #1, DIFF
INPUT #1, MONITOR
INPUT #1, CHAOSKILLED
INPUT #1, GRAZZTKILLED
INPUT #1, KOSTKILLED
INPUT #1, DIINKKILLED
INPUT #1, LORDOFFLIESKILLED
INPUT #1, DEMOKILLED
INPUT #1, ESHEBKILLED
INPUT #1, ARACHNOSKILLED
INPUT #1, MANES
INPUT #1, CHASME
INPUT #1, HEZ
INPUT #1, ESHEB
INPUT #1, DIINK
INPUT #1, LORDOFTHEFLIES
INPUT #1, ARACHNOS
INPUT #1, DEMO
INPUT #1, LORDKILLED
INPUT #1, MANESKILLED
INPUT #1, MOLYKILLED
INPUT #1, ALKILLED
INPUT #1, RUTKILLED
INPUT #1, CHASKILLED
INPUT #1, SONAKILLED
INPUT #1, WASTKILLED
INPUT #1, MOLDKILLED
INPUT #1, ANTKILLED
INPUT #1, MARKILLED
INPUT #1, BALKILLED
INPUT #1, SPIDERKILLED
INPUT #1, HEZKILLED
INPUT #1, VROCKKILLED
INPUT #1, ALU
INPUT #1, RUT
INPUT #1, SONA
INPUT #1, BALOR
INPUT #1, MARILITH
INPUT #1, HEZHP
INPUT #1, RUTHP
INPUT #1, CHAOSHP
INPUT #1, KOSTHP
INPUT #1, ALUHP
INPUT #1, ESHEBHP
INPUT #1, DIINKHP
INPUT #1, DEMOHP
INPUT #1, LORDOFFLIESHP
INPUT #1, ARACHHP
INPUT #1, MOLYHP
INPUT #1, VROCKHP
INPUT #1, SONAHP
INPUT #1, BALORHP
INPUT #1, MOLYDEUS
INPUT #1, CHASMEHP
INPUT #1, ABYSSANTHP
INPUT #1, GRAZHP
INPUT #1, WASTHP
INPUT #1, MARIHP
INPUT #1, PORTAL
INPUT #1, DEMONSHOWED
CLOSE #1
GOTO 940

SUB LAYERS
IF Level = 1 THEN ON RM GOTO 10, 20, 20, 20, 20, 20, 20, 20, 20, 20, 30, 40, 45, 45, 45, 45, 45, 45, 45, 45, 45, 50, 40, 45, 45, 45, 45, 45, 45, 45, 45, 45, 50, 40, 45, 45, 45, 45, 45, 45, 45, 45, 45, 50, 40, 45, 45, 45, 45, 45, 45, 45, 45, 45, 50, 40, 45, 45, 45, 45, 45, 45, 45, 45, 45, 50, 40, 45, 45, 45, 45, 45, 45, 45, 90, 45, 50, 60, 70, 70, 70, 70, 70, 70, 70, 70, 70, 80
IF Level = 2 THEN ON RM GOTO 500, 510, 510, 510, 510, 510, 510, 510, 510, 510, 520, 530, 540, 540, 540, 540, 540, 540, 540, 540, 540, 550, 530, 540, 540, 540, 540, 540, 540, 540, 540, 540, 550, 530, 540, 540, 540, 540, 540, 540, 540, 540, 540, 550, 530, 540, 540, 540, 540, 540, 540, 540, 540, 540, 550, 530, 540, 540, 540, 540, 540, 540, 540, 540, 540, 550, 530, 540, 540, 540, 540, 540, 540, 540, 540, 540, 550, 560, 570, 570, 570, 570, 570, 570, 570, 570, 570, 580
IF Level = 3 THEN ON RM GOTO 1010, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1030, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1060, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1080
IF Level = 5 THEN ON RM GOTO 1010, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1030, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1060, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1080
IF Level = 8 THEN ON RM GOTO 1010, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1030, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1060, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1080
IF Level = 9 THEN ON RM GOTO 1010, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1030, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1060, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1080
IF Level = 10 THEN ON RM GOTO 1010, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1030, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1060, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1080
IF Level = 11 THEN ON RM GOTO 1010, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1030, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1060, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1080
IF Level = 12 THEN ON RM GOTO 1010, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1030, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1100, 1040, 1040, 1040, 1040, 1040, 1055, 1060, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1080
IF Level = 23 THEN ON RM GOTO 1010, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1030, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1130, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1060, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1080
IF Level = 45 THEN ON RM GOTO 1010, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1030, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1060, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1080
IF Level = 46 THEN ON RM GOTO 1010, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1030, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1060, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1080
IF Level = 47 THEN ON RM GOTO 1010, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1030, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1110, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1060, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1080
IF Level = 66 THEN ON RM GOTO 1010, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1030, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1120, 1040, 1040, 1040, 1040, 1040, 1055, 1060, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1080
IF Level = 69 THEN ON RM GOTO 1010, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1030, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1060, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1080
IF Level = 72 THEN ON RM GOTO 1010, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1030, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1060, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1080
IF Level = 73 THEN ON RM GOTO 1010, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1030, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1060, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1080
IF Level = 88 THEN ON RM GOTO 1010, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1030, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1060, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1080
IF Level = 222 THEN ON RM GOTO 1010, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1030, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1060, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1080
IF Level = 377 THEN ON RM GOTO 1010, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1030, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1060, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1080
IF Level = 452 THEN ON RM GOTO 1010, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1030, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1060, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1080
IF Level = 80 THEN ON RM GOTO 1010, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1030, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1060, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1080
IF Level = 723 THEN ON RM GOTO 1010, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1020, 1030, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1140, 1040, 1040, 1055, 1050, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1040, 1055, 1060, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1070, 1080
1140 PRINT "Palace of Chaos": PRINT
PRINT "This is a huge palace."
PRINT "You may go in all directions."
IF CHAOSKILLED = 0 THEN PRINT "Chaos, ruler of all that is Evil, sits on a throne here, brooding."
IF CHAOSKILLED = 0 THEN PRINT "A portal is behind Chaos.  Chaos is seemingly gathering energy from it."
GOTO ABYSS
1130 PRINT "Crystaline Palace": PRINT
PRINT "This is a huge palace."
PRINT "You may go in all directions."
IF KOSTKILLED = 0 THEN PRINT "Kostchtchie, evil Tanar'ri lord is here, sitting on her throne."
GOTO ABYSS
1110 PRINT "Palace of Graz'zt": PRINT
PRINT "This is a huge palace."
PRINT "You may go in all directions."
PRINT "The blue flame does not extend to here."
IF GRAZZTKILLED = 0 THEN PRINT "The Foul and Evil Abyssal Lord Graz'zt is here, looking smug."
GOTO ABYSS
1010 IF Level = 3 THEN PRINT "Dusty Plain": PRINT
IF Level = 5 THEN PRINT "Rotting Plain": PRINT
IF Level = 10 THEN PRINT "Plain": PRINT
IF Level = 23 THEN PRINT "Iron Wastes": PRINT
IF Level = 11 THEN PRINT "Dark": PRINT
IF Level = 72 THEN PRINT "Darklight": PRINT
IF Level = 723 THEN PRINT "Chaos": PRINT
IF Level = 80 THEN PRINT "Utter Limbo": PRINT
IF Level = 377 THEN PRINT "Dirty Plain": PRINT
IF Level = 452 THEN PRINT "Flies": PRINT
IF Level = 88 OR Level = 9 THEN PRINT "Vast Ocean": PRINT
IF Level = 73 THEN PRINT "Wells of Darkness": PRINT
IF Level = 69 THEN PRINT "Crushing Plain": PRINT
IF Level = 8 THEN PRINT "Plain": PRINT
IF Level = 46 THEN PRINT "Darkened Plain": PRINT
IF Level = 47 THEN PRINT "Plain of Fire": PRINT
IF Level = 12 OR Level = 45 THEN PRINT "Forest": PRINT
IF Level = 66 THEN PRINT "Webs": PRINT
IF Level = 222 THEN PRINT "Slime Pits": PRINT
IF Level = 66 THEN PRINT "This is a huge expanse of webs."
IF Level <> 12 AND Level <> 45 AND Level <> 66 AND Level <> 88 AND Level <> 222 THEN PRINT "This is a plain that seems to stretch on forever."
IF Level = 69 THEN PRINT "A horde of Lemures, Chasme, and Manes is here, crawling over each other.": PRINT "They are crawling all over you!"
IF Level = 11 THEN PRINT "You can barely see a thing."
IF Level = 723 THEN PRINT "Sprawing, beautiful Chaos surrounds you."
IF Level = 12 OR Level = 45 THEN PRINT "This is a forest of living, swarming viper trees."
IF Level = 88 OR Level = 9 THEN PRINT "This is a huge, vast expanse of water.  Rocky outcroppings are sparse."
IF Level = 9 THEN PRINT "But it's not water, its acid!"
IF Level = 222 THEN PRINT "This is a plain of huge, bubbling slime pits.  You lurch with disgust at the": PRINT "thought of the foul creatures living in them."
IF Level = 23 THEN PRINT "A cold wind swoops past you, chilling you to the bone.  Snow covers": PRINT "everything here."
IF Level = 377 THEN
CHARGE = INT(RND * 20) + 1
IF CHARGE = 1 THEN
PRINT "A herd of Armanites charges right by you, knocking you down and in the dirt."
HP = HP - 10
IF HP <= 0 THEN KILLER$ = "Charge of the Armanites"
PRINT "You dust yourself off after getting up."
END IF
END IF
IF Level = 72 THEN
BALOR = INT(RND * 10) + 1
IF BALOR = 1 THEN PRINT "There is a Balor here, laughing cruel laughs.  He looks at your shadow,": PRINT "yells a cry of anger, and charges for you!"
IF BALOR <> 1 THEN
MARILITH = INT(RND * 10) + 1
IF MARILITH = 1 THEN PRINT "There is a Marilith here, planning the Blood War.  She looks up at your shadow,": PRINT "and slithers near you, y to strike!"
END IF
END IF
IF Level = 46 THEN PRINT "Sunlight shines upward from the ground, into a darkened sky."
IF Level = 47 THEN PRINT "Blue Fire dances around you."
IF Level = 73 THEN
WELL = INT(RND * 5) + 1
IF WELL = 1 THEN PRINT "There is a well here.  Inside it, you can only see darkness black as the": PRINT "darkest night."
END IF
PRINT "You may go south and east."
GOTO ABYSS
1020 IF Level = 3 THEN PRINT "Dusty Plain": PRINT
IF Level = 723 THEN PRINT "Chaos": PRINT
IF Level = 23 THEN PRINT "Iron Wastes": PRINT
IF Level = 11 THEN PRINT "Dark": PRINT
IF Level = 377 THEN PRINT "Dirty Plain": PRINT
IF Level = 10 THEN PRINT "Plain": PRINT
IF Level = 46 THEN PRINT "Darkened Plain": PRINT
IF Level = 47 THEN PRINT "Plain of Fire": PRINT
IF Level = 5 THEN PRINT "Rotting Plain": PRINT
IF Level = 8 THEN PRINT "Plain": PRINT
IF Level = 73 THEN PRINT "Wells of Darkness": PRINT
IF Level = 452 THEN PRINT "Flies": PRINT
IF Level = 69 THEN PRINT "Crushing Plain": PRINT
IF Level = 88 OR Level = 9 THEN PRINT "Vast Ocean": PRINT
IF Level = 80 THEN PRINT "Utter Limbo": PRINT
IF Level = 222 THEN PRINT "Slime Pits": PRINT
IF Level = 72 THEN PRINT "Darklight": PRINT
IF Level = 12 OR Level = 45 THEN PRINT "Forest": PRINT
IF Level = 66 THEN PRINT "Webs": PRINT
IF Level = 66 THEN PRINT "This is a huge expanse of webs."
IF Level <> 12 AND Level <> 45 AND Level <> 66 AND Level <> 88 AND Level <> 222 THEN PRINT "This is a plain that seems to stretch on forever."
IF Level = 11 THEN PRINT "You can barely see a thing."
IF Level = 23 THEN PRINT "A cold wind swoops past you, chilling you to the bone.  Snow covers": PRINT "everything here."
IF Level = 222 THEN PRINT "This is a plain of huge, bubbling slime pits.  You lurch with disgust at the": PRINT "thought of the foul creatures living in them."
IF Level = 69 THEN PRINT "A horde of Lemures, Chasme, and Manes is here, crawling over each other.": PRINT "They are crawling all over you!"
IF Level = 88 OR Level = 9 THEN PRINT "This is a huge, vast expanse of water.  Rocky outcroppings are sparse."
IF Level = 723 THEN PRINT "Sprawing, beautiful Chaos surrounds you."
IF Level = 9 THEN PRINT "But it's not water, its acid!"
IF Level = 12 OR Level = 45 THEN PRINT "This is a forest of living, swarming viper trees."
IF Level = 377 THEN
CHARGE = INT(RND * 20) + 1
IF CHARGE = 1 THEN
PRINT "A herd of Armanites charges right by you, knocking you down and in the dirt."
HP = HP - 10
IF HP <= 0 THEN KILLER$ = "Charge of the Armanites"
PRINT "You dust yourself off after getting up."
END IF
END IF
IF Level = 72 THEN
BALOR = INT(RND * 10) + 1
IF BALOR = 1 THEN PRINT "There is a Balor here, laughing cruel laughs.  He looks at your shadow,": PRINT "yells a cry of anger, and charges for you!"
IF BALOR <> 1 THEN
MARILITH = INT(RND * 10) + 1
IF MARILITH = 1 THEN PRINT "There is a Marilith here, planning the Blood War.  She looks up at your shadow,": PRINT "and slithers near you, y to strike!"
END IF
END IF
IF Level = 46 THEN PRINT "Sunlight shines upward from the ground, into a darkened sky."
IF Level = 47 THEN PRINT "Blue Fire dances around you."
IF Level = 73 THEN
WELL = INT(RND * 5) + 1
IF WELL = 1 THEN PRINT "There is a well here.  Inside it, you can only see darkness black as the": PRINT "darkest night."
END IF
PRINT "You may go south, east, and west."
GOTO ABYSS
1030 IF Level = 3 THEN PRINT "Dusty Plain": PRINT
IF Level = 73 THEN PRINT "Wells of Darkness": PRINT
IF Level = 10 THEN PRINT "Plain": PRINT
IF Level = 46 THEN PRINT "Darkened Plain": PRINT
IF Level = 222 THEN PRINT "Slime Pits": PRINT
IF Level = 47 THEN PRINT "Plain of Fire": PRINT
IF Level = 5 THEN PRINT "Rotting Plain": PRINT
IF Level = 69 THEN PRINT "Crushing Plain": PRINT
IF Level = 72 THEN PRINT "Darklight": PRINT
IF Level = 8 THEN PRINT "Plain": PRINT
IF Level = 12 OR Level = 45 THEN PRINT "Forest": PRINT
IF Level = 88 OR Level = 9 THEN PRINT "Vast Ocean": PRINT
IF Level = 452 THEN PRINT "Flies": PRINT
IF Level = 723 THEN PRINT "Chaos": PRINT
IF Level = 23 THEN PRINT "Iron Wastes": PRINT
IF Level = 222 THEN PRINT "This is a plain of huge, bubbling slime pits.  You lurch with disgust at the": PRINT "thought of the foul creatures living in them."
IF Level = 11 THEN PRINT "Dark": PRINT
IF Level = 377 THEN PRINT "Dirty Plain": PRINT
IF Level = 66 THEN PRINT "Webs": PRINT
IF Level = 66 THEN PRINT "This is a huge expanse of webs."
IF Level <> 12 AND Level <> 45 AND Level <> 66 AND Level <> 88 AND Level <> 222 THEN PRINT "This is a plain that seems to stretch on forever."
IF Level = 80 THEN PRINT "Utter Limbo": PRINT
IF Level = 723 THEN PRINT "Sprawing, beautiful Chaos surrounds you."
IF Level = 23 THEN PRINT "A cold wind swoops past you, chilling you to the bone.  Snow covers": PRINT "everything here."
IF Level = 11 THEN PRINT "You can barely see a thing."
IF Level = 12 OR Level = 45 THEN PRINT "This is a forest of living, swarming viper trees."
IF Level = 69 THEN PRINT "A horde of Lemures, Chasme, and Manes is here, crawling over each other.": PRINT "They are crawling all over you!"
IF Level = 88 OR Level = 9 THEN PRINT "This is a huge, vast expanse of water.  Rocky outcroppings are sparse."
IF Level = 9 THEN PRINT "But it's not water, its acid!"
IF Level = 377 THEN
CHARGE = INT(RND * 20) + 1
IF CHARGE = 1 THEN
PRINT "A herd of Armanites charges right by you, knocking you down and in the dirt."
HP = HP - 10
IF HP <= 0 THEN KILLER$ = "Charge of the Armanites":
PRINT "You dust yourself off after getting up."
END IF
END IF
IF Level = 72 THEN
BALOR = INT(RND * 10) + 1
IF BALOR = 1 THEN PRINT "There is a Balor here, laughing cruel laughs.  He looks at your shadow,": PRINT "yells a cry of anger, and charges for you!"
IF BALOR <> 1 THEN
MARILITH = INT(RND * 10) + 1
IF MARILITH = 1 THEN PRINT "There is a Marilith here, planning the Blood War.  She looks up at your shadow,": PRINT "and slithers near you, y to strike!"
END IF
END IF
IF Level = 46 THEN PRINT "Sunlight shines upward from the ground, into a darkened sky."
IF Level = 47 THEN PRINT "Blue Fire dances around you."
IF Level = 73 THEN
WELL = INT(RND * 5) + 1
IF WELL = 1 THEN PRINT "There is a well here.  Inside it, you can only see darkness black as the": PRINT "darkest night."
END IF
PRINT "You may go south and west."
GOTO ABYSS
1040 IF Level = 3 THEN PRINT "Dusty Plain": PRINT
IF Level = 222 THEN PRINT "Slime Pits": PRINT
IF Level = 10 THEN PRINT "Plain": PRINT
IF Level = 5 THEN PRINT "Rotting Plain": PRINT
IF Level = 46 THEN PRINT "Darkened Plain": PRINT
IF Level = 47 THEN PRINT "Plain of Fire": PRINT
IF Level = 72 THEN PRINT "Darklight": PRINT
IF Level = 723 THEN PRINT "Chaos": PRINT
IF Level = 377 THEN PRINT "Dirty Plain": PRINT
IF Level = 8 THEN PRINT "Plain": PRINT
IF Level = 23 THEN PRINT "Iron Wastes": PRINT
IF Level = 69 THEN PRINT "Crushing Plain": PRINT
IF Level = 80 THEN PRINT "Utter Limbo": PRINT
IF Level = 222 THEN PRINT "This is a plain of huge, bubbling slime pits.  You lurch with disgust at the": PRINT "thought of the foul creatures living in them."
IF Level = 73 THEN PRINT "Wells of Darkness": PRINT
IF Level = 11 THEN PRINT "Dark": PRINT
IF Level = 12 OR Level = 45 THEN PRINT "Forest": PRINT
IF Level = 88 OR Level = 9 THEN PRINT "Vast Ocean": PRINT
IF Level = 452 THEN PRINT "Flies": PRINT
IF Level = 66 THEN PRINT "Webs": PRINT
IF Level = 66 THEN PRINT "This is a huge expanse of webs."
IF Level <> 12 AND Level <> 45 AND Level <> 66 AND Level <> 88 AND Level <> 222 THEN PRINT "This is a plain that seems to stretch on forever."
IF Level = 11 THEN PRINT "You can barely see a thing."
IF Level = 723 THEN PRINT "Sprawing, beautiful Chaos surrounds you."
IF Level = 69 THEN PRINT "A horde of Lemures, Chasme, and Manes is here, crawling over each other.": PRINT "They are crawling all over you!"
IF Level = 88 OR Level = 9 THEN PRINT "This is a huge, vast expanse of water.  Rocky outcroppings are sparse."
IF Level = 9 THEN PRINT "But it's not water, its acid!"
IF Level = 23 THEN PRINT "A cold wind swoops past you, chilling you to the bone.  Snow covers": PRINT "everything here."
IF Level = 12 OR Level = 45 THEN PRINT "This is a forest of living, swarming viper trees."
IF Level = 377 THEN
CHARGE = INT(RND * 20) + 1
IF CHARGE = 1 THEN
PRINT "A herd of Armanites charges right by you, knocking you down and in the dirt."
HP = HP - 10
IF HP <= 0 THEN KILLER$ = "Charge of the Armanites":
PRINT "You dust yourself off after getting up."
END IF
END IF
IF Level = 72 THEN
BALOR = INT(RND * 10) + 1
IF BALOR = 1 THEN PRINT "There is a Balor here, laughing cruel laughs.  He looks at your shadow,": PRINT "yells a cry of anger, and charges for you!"
IF BALOR <> 1 THEN
MARILITH = INT(RND * 10) + 1
IF MARILITH = 1 THEN PRINT "There is a Marilith here, planning the Blood War.  She looks up at your shadow,": PRINT "and slithers near you, y to strike!"
END IF
END IF
IF Level = 46 THEN PRINT "Sunlight shines upward from the ground, into a darkened sky."
IF Level = 47 THEN PRINT "Blue Fire dances around you."
IF Level = 73 THEN
WELL = INT(RND * 5) + 1
IF WELL = 1 THEN PRINT "There is a well here.  Inside it, you can only see darkness black as the": PRINT "darkest night."
END IF
PRINT "You may go in all directions."
PORTAL = INT(RND * 5) + 1
IF PORTAL = 1 THEN PRINT "There is a portal here."
GOTO ABYSS
1050 IF Level = 3 THEN PRINT "Dusty Plain": PRINT
IF Level = 10 THEN PRINT "Plain": PRINT
IF Level = 377 THEN PRINT "Dirty Plain": PRINT
IF Level = 23 THEN PRINT "Iron Wastes": PRINT
IF Level = 5 THEN PRINT "Rotting Plain": PRINT
IF Level = 222 THEN PRINT "Slime Pits": PRINT
IF Level = 46 THEN PRINT "Darkened Plain": PRINT
IF Level = 47 THEN PRINT "Plain of Fire": PRINT
IF Level = 66 THEN PRINT "Webs": PRINT
IF Level = 11 THEN PRINT "Dark": PRINT
IF Level = 73 THEN PRINT "Wells of Darkness": PRINT
IF Level = 69 THEN PRINT "Crushing Plain": PRINT
IF Level = 88 OR Level = 9 THEN PRINT "Vast Ocean": PRINT
IF Level = 222 THEN PRINT "This is a plain of huge, bubbling slime pits.  You lurch with disgust at the": PRINT "thought of the foul creatures living in them."
IF Level = 72 THEN PRINT "Darklight": PRINT
IF Level = 66 THEN PRINT "This is a huge expanse of webs."
IF Level = 8 THEN PRINT "Plain": PRINT
IF Level = 80 THEN PRINT "Utter Limbo": PRINT
IF Level = 723 THEN PRINT "Chaos": PRINT
IF Level = 452 THEN PRINT "Flies": PRINT
IF Level = 69 THEN PRINT "A horde of Lemures, Chasme, and Manes is here, crawling over each other.": PRINT "They are crawling all over you!"
IF Level = 88 OR Level = 9 THEN PRINT "This is a huge, vast expanse of water.  Rocky outcroppings are sparse."
IF Level = 9 THEN PRINT "But it's not water, its acid!"
IF Level = 12 OR Level = 45 THEN PRINT "Forest": PRINT
IF Level <> 12 AND Level <> 45 AND Level <> 66 AND Level <> 88 AND Level <> 222 THEN PRINT "This is a plain that seems to stretch on forever."
IF Level = 723 THEN PRINT "Sprawing, beautiful Chaos surrounds you."
IF Level = 23 THEN PRINT "A cold wind swoops past you, chilling you to the bone.  Snow covers": PRINT "everything here."
IF Level = 11 THEN PRINT "You can barely see a thing."
IF Level = 12 OR Level = 45 THEN PRINT "This is a forest of living, swarming viper trees."
IF Level = 377 THEN
CHARGE = INT(RND * 20) + 1
IF CHARGE = 1 THEN
PRINT "A herd of Armanites charges right by you, knocking you down and in the dirt."
HP = HP - 10
IF HP <= 0 THEN KILLER$ = "Charge of the Armanites":
PRINT "You dust yourself off after getting up."
END IF
END IF
IF Level = 72 THEN
BALOR = INT(RND * 10) + 1
IF BALOR = 1 THEN PRINT "There is a Balor here, laughing cruel laughs.  He looks at your shadow,": PRINT "yells a cry of anger, and charges for you!"
IF BALOR <> 1 THEN
MARILITH = INT(RND * 10) + 1
IF MARILITH = 1 THEN PRINT "There is a Marilith here, planning the Blood War.  She looks up at your shadow,": PRINT "and slithers near you, y to strike!"
END IF
END IF
IF Level = 46 THEN PRINT "Sunlight shines upward from the ground, into a darkened sky."
IF Level = 73 THEN
WELL = INT(RND * 5) + 1
IF WELL = 1 THEN PRINT "There is a well here.  Inside it, you can only see darkness black as the": PRINT "darkest night."
END IF
IF Level = 47 THEN PRINT "Blue Fire dances around you."
PRINT "You may go north, south, and east."
GOTO ABYSS
1055 IF Level = 3 THEN PRINT "Dusty Plain": PRINT
IF Level = 23 THEN PRINT "Iron Wastes": PRINT
IF Level = 10 THEN PRINT "Plain": PRINT
IF Level = 5 THEN PRINT "Rotting Plain": PRINT
IF Level = 377 THEN PRINT "Dirty Plain": PRINT
IF Level = 222 THEN PRINT "Slime Pits": PRINT
IF Level = 73 THEN PRINT "Wells of Darkness": PRINT
IF Level = 11 THEN PRINT "Dark": PRINT
IF Level = 46 THEN PRINT "Darkened Plain": PRINT
IF Level = 47 THEN PRINT "Plain of Fire": PRINT
IF Level = 66 THEN PRINT "Webs": PRINT
IF Level = 723 THEN PRINT "Chaos": PRINT
IF Level = 222 THEN PRINT "This is a plain of huge, bubbling slime pits.  You lurch with disgust at the": PRINT "thought of the foul creatures living in them."
IF Level = 66 THEN PRINT "This is a huge expanse of webs."
IF Level = 69 THEN PRINT "Crushing Plain": PRINT
IF Level = 88 OR Level = 9 THEN PRINT "Vast Ocean": PRINT
IF Level = 72 THEN PRINT "Darklight": PRINT
IF Level = 452 THEN PRINT "Flies": PRINT
IF Level = 69 THEN PRINT "A horde of Lemures, Chasme, and Manes is here, crawling over each other.": PRINT "They are crawling all over you!"
IF Level = 8 THEN PRINT "Plain": PRINT
IF Level = 12 OR Level = 45 THEN PRINT "Forest": PRINT
IF Level = 88 OR Level = 9 THEN PRINT "This is a huge, vast expanse of water.  Rocky outcroppings are sparse."
IF Level = 9 THEN PRINT "But it's not water, its acid!"
IF Level = 80 THEN PRINT "Utter Limbo": PRINT
IF Level <> 12 AND Level <> 45 AND Level <> 66 AND Level <> 88 AND Level <> 222 THEN PRINT "This is a plain that seems to stretch on forever."
IF Level = 23 THEN PRINT "A cold wind swoops past you, chilling you to the bone.  Snow covers": PRINT "everything here."
IF Level = 723 THEN PRINT "Sprawing, beautiful Chaos surrounds you."
IF Level = 11 THEN PRINT "You can barely see a thing."
IF Level = 12 OR Level = 45 THEN PRINT "This is a forest of living, swarming viper trees."
IF Level = 377 THEN
CHARGE = INT(RND * 20) + 1
IF CHARGE = 1 THEN
PRINT "A herd of Armanites charges right by you, knocking you down and in the dirt."
HP = HP - 10
IF HP <= 0 THEN KILLER$ = "Charge of the Armanites":
PRINT "You dust yourself off after getting up."
END IF
END IF
IF Level = 72 THEN
BALOR = INT(RND * 10) + 1
IF BALOR = 1 THEN PRINT "There is a Balor here, laughing cruel laughs.  He looks at your shadow,": PRINT "yells a cry of anger, and charges for you!"
IF BALOR <> 1 THEN
MARILITH = INT(RND * 10) + 1
IF MARILITH = 1 THEN PRINT "There is a Marilith here, planning the Blood War.  She looks up at your shadow,": PRINT "and slithers near you, y to strike!"
END IF
END IF
IF Level = 46 THEN PRINT "Sunlight shines upward from the ground, into a darkened sky."
IF Level = 47 THEN PRINT "Blue Fire dances around you."
IF Level = 73 THEN
WELL = INT(RND * 5) + 1
IF WELL = 1 THEN PRINT "There is a well here.  Inside it, you can only see darkness black as the": PRINT "darkest night."
END IF
PRINT "You may go north, south, and west."
GOTO ABYSS
1060 IF Level = 3 THEN PRINT "Dusty Plain": PRINT
IF Level = 10 THEN PRINT "Plain": PRINT
IF Level = 46 THEN PRINT "Darkened Plain": PRINT
IF Level = 23 THEN PRINT "Iron Wastes": PRINT
IF Level = 72 THEN PRINT "Darklight": PRINT
IF Level = 723 THEN PRINT "Chaos": PRINT
IF Level = 11 THEN PRINT "Dark": PRINT
IF Level = 377 THEN PRINT "Dirty Plain": PRINT
IF Level = 222 THEN PRINT "Slime Pits": PRINT
IF Level = 47 THEN PRINT "Plain of Fire": PRINT
IF Level = 5 THEN PRINT "Rotting Plain": PRINT
IF Level = 88 OR Level = 9 THEN PRINT "Vast Ocean": PRINT
IF Level = 80 THEN PRINT "Utter Limbo": PRINT
IF Level = 222 THEN PRINT "This is a plain of huge, bubbling slime pits.  You lurch with disgust at the": PRINT "thought of the foul creatures living in them."
IF Level = 73 THEN PRINT "Wells of Darkness": PRINT
IF Level = 66 THEN PRINT "Webs": PRINT
IF Level = 66 THEN PRINT "This is a huge expanse of webs."
IF Level = 69 THEN PRINT "Crushing Plain": PRINT
IF Level = 8 THEN PRINT "Plain": PRINT
IF Level = 452 THEN PRINT "Flies": PRINT
IF Level = 69 THEN PRINT "A horde of Lemures, Chasme, and Manes is here, crawling over each other.": PRINT "They are crawling all over you!"
IF Level = 88 OR Level = 9 THEN PRINT "This is a huge, vast expanse of water.  Rocky outcroppings are sparse."
IF Level = 9 THEN PRINT "But it's not water, its acid!"
IF Level = 12 OR Level = 45 THEN PRINT "Forest": PRINT
IF Level <> 12 AND Level <> 45 AND Level <> 66 AND Level <> 88 AND Level <> 222 THEN PRINT "This is a plain that seems to stretch on forever."
IF Level = 23 THEN PRINT "A cold wind swoops past you, chilling you to the bone.  Snow covers": PRINT "everything here."
IF Level = 723 THEN PRINT "Sprawing, beautiful Chaos surrounds you."
IF Level = 11 THEN PRINT "You can barely see a thing."
IF Level = 12 OR Level = 45 THEN PRINT "This is a forest of living, swarming viper trees."
IF Level = 377 THEN
CHARGE = INT(RND * 20) + 1
IF CHARGE = 1 THEN
PRINT "A herd of Armanites charges right by you, knocking you down and in the dirt."
HP = HP - 10
IF HP <= 0 THEN KILLER$ = "Charge of the Armanites":
PRINT "You dust yourself off after getting up."
END IF
END IF
IF Level = 72 THEN
BALOR = INT(RND * 10) + 1
IF BALOR = 1 THEN PRINT "There is a Balor here, laughing cruel laughs.  He looks at your shadow,": PRINT "yells a cry of anger, and charges for you!"
IF BALOR <> 1 THEN
MARILITH = INT(RND * 10) + 1
IF MARILITH = 1 THEN PRINT "There is a Marilith here, planning the Blood War.  She looks up at your shadow,": PRINT "and slithers near you, y to strike!"
END IF
END IF
IF Level = 46 THEN PRINT "Sunlight shines upward from the ground, into a darkened sky."
IF Level = 47 THEN PRINT "Blue Fire dances around you."
IF Level = 73 THEN
WELL = INT(RND * 5) + 1
IF WELL = 1 THEN PRINT "There is a well here.  Inside it, you can only see darkness black as the": PRINT "darkest night."
END IF
PRINT "You may go north and east."
GOTO ABYSS
1070 IF Level = 3 THEN PRINT "Dusty Plain": PRINT
IF Level = 723 THEN PRINT "Chaos": PRINT
IF Level = 10 THEN PRINT "Plain": PRINT
IF Level = 23 THEN PRINT "Iron Wastes": PRINT
IF Level = 11 THEN PRINT "Dark": PRINT
IF Level = 73 THEN PRINT "Wells of Darkness": PRINT
IF Level = 222 THEN PRINT "Slime Pits": PRINT
IF Level = 452 THEN PRINT "Flies": PRINT
IF Level = 46 THEN PRINT "Darkened Plain": PRINT
IF Level = 47 THEN PRINT "Plain of Fire": PRINT
IF Level = 5 THEN PRINT "Rotting Plain": PRINT
IF Level = 377 THEN PRINT "Dirty Plain": PRINT
IF Level = 66 THEN PRINT "Webs": PRINT
IF Level = 66 THEN PRINT "This is a huge expanse of webs."
IF Level = 222 THEN PRINT "This is a plain of huge, bubbling slime pits.  You lurch with disgust at the": PRINT "thought of the foul creatures living in them."
IF Level = 88 OR Level = 9 THEN PRINT "Vast Ocean": PRINT
IF Level = 8 THEN PRINT "Plain": PRINT
IF Level = 72 THEN PRINT "Darklight": PRINT
IF Level = 69 THEN PRINT "Crushing Plain": PRINT
IF Level = 80 THEN PRINT "Utter Limbo": PRINT
IF Level = 12 OR Level = 45 THEN PRINT "Forest": PRINT
IF Level <> 12 AND Level <> 45 AND Level <> 66 AND Level <> 88 AND Level <> 222 THEN PRINT "This is a plain that seems to stretch on forever."
IF Level = 723 THEN PRINT "Sprawing, beautiful Chaos surrounds you."
IF Level = 23 THEN PRINT "A cold wind swoops past you, chilling you to the bone.  Snow covers": PRINT "everything here."
IF Level = 11 THEN PRINT "You can barely see a thing."
IF Level = 69 THEN PRINT "A horde of Lemures, Chasme, and Manes is here, crawling over each other.": PRINT "They are crawling all over you!"
IF Level = 88 OR Level = 9 THEN PRINT "This is a huge, vast expanse of water.  Rocky outcroppings are sparse."
IF Level = 9 THEN PRINT "But it's not water, its acid!"
IF Level = 12 OR Level = 45 THEN PRINT "This is a forest of living, swarming viper trees."
IF Level = 377 THEN
CHARGE = INT(RND * 20) + 1
IF CHARGE = 1 THEN
PRINT "A herd of Armanites charges right by you, knocking you down and in the dirt."
HP = HP - 10
IF HP <= 0 THEN KILLER$ = "Charge of the Armanites":
PRINT "You dust yourself off after getting up."
END IF
END IF
IF Level = 72 THEN
BALOR = INT(RND * 10) + 1
IF BALOR = 1 THEN PRINT "There is a Balor here, laughing cruel laughs.  He looks at your shadow,": PRINT "yells a cry of anger, and charges for you!"
IF BALOR <> 1 THEN
MARILITH = INT(RND * 10) + 1
IF MARILITH = 1 THEN PRINT "There is a Marilith here, planning the Blood War.  She looks up at your shadow,": PRINT "and slithers near you, y to strike!"
END IF
END IF
IF Level = 46 THEN PRINT "Sunlight shines upward from the ground, into a darkened sky."
IF Level = 47 THEN PRINT "Blue Fire dances around you."
IF Level = 73 THEN
WELL = INT(RND * 5) + 1
IF WELL = 1 THEN PRINT "There is a well here.  Inside it, you can only see darkness black as the": PRINT "darkest night."
END IF
PRINT "You may go north, west, and east."
GOTO ABYSS
1080 IF Level = 3 THEN PRINT "Dusty Plain": PRINT
IF Level = 11 THEN PRINT "Dark": PRINT
IF Level = 10 THEN PRINT "Plain": PRINT
IF Level = 222 THEN PRINT "Slime Pits": PRINT
IF Level = 5 THEN PRINT "Rotting Plain": PRINT
IF Level = 377 THEN PRINT "Dirty Plain": PRINT
IF Level = 72 THEN PRINT "Darklight": PRINT
IF Level = 80 THEN PRINT "Utter Limbo": PRINT
IF Level = 46 THEN PRINT "Darkened Plain": PRINT
IF Level = 452 THEN PRINT "Flies": PRINT
IF Level = 47 THEN PRINT "Plain of Fire": PRINT
IF Level = 66 THEN PRINT "Webs": PRINT
IF Level = 69 THEN PRINT "Crushing Plain": PRINT
IF Level = 23 THEN PRINT "Iron Wastes": PRINT
IF Level = 723 THEN PRINT "Chaos": PRINT
IF Level = 88 OR Level = 9 THEN PRINT "Vast Ocean": PRINT
IF Level = 222 THEN PRINT "This is a plain of huge, bubbling slime pits.  You lurch with disgust at the": PRINT "thought of the foul creatures living in them."
IF Level = 66 THEN PRINT "This is a huge expanse of webs."
IF Level = 73 THEN PRINT "Wells of Darkness": PRINT
IF Level = 8 THEN PRINT "Plain": PRINT
IF Level = 12 OR Level = 45 THEN PRINT "Forest": PRINT
IF Level <> 12 AND Level <> 45 AND Level <> 66 AND Level <> 88 AND Level <> 222 THEN PRINT "This is a plain that seems to stretch on forever."
IF Level = 723 THEN PRINT "Sprawing, beautiful Chaos surrounds you."
IF Level = 23 THEN PRINT "A cold wind swoops past you, chilling you to the bone.  Snow covers": PRINT "everything here."
IF Level = 11 THEN PRINT "You can barely see a thing."
IF Level = 12 OR Level = 45 THEN PRINT "This is a forest of living, swarming viper trees."
IF Level = 69 THEN PRINT "A horde of Lemures, Chasme, and Manes is here, crawling over each other.": PRINT "They are crawling all over you!"
IF Level = 88 OR Level = 9 THEN PRINT "This is a huge, vast expanse of water.  Rocky outcroppings are sparse."
IF Level = 9 THEN PRINT "But it's not water, its acid!"
IF Level = 377 THEN
CHARGE = INT(RND * 20) + 1
IF CHARGE = 1 THEN
PRINT "A herd of Armanites charges right by you, knocking you down and in the dirt."
HP = HP - 10
IF HP <= 0 THEN KILLER$ = "Charge of the Armanites":
PRINT "You dust yourself off after getting up."
END IF
END IF
IF Level = 72 THEN
BALOR = INT(RND * 10) + 1
IF BALOR = 1 THEN PRINT "There is a Balor here, laughing cruel laughs.  He looks at your shadow,": PRINT "yells a cry of anger, and charges for you!"
IF BALOR <> 1 THEN
MARILITH = INT(RND * 10) + 1
IF MARILITH = 1 THEN PRINT "There is a Marilith here, planning the Blood War.  She looks up at your shadow,": PRINT "and slithers near you, y to strike!"
END IF
END IF
IF Level = 73 THEN
WELL = INT(RND * 5) + 1
IF WELL = 1 THEN PRINT "There is a well here.  Inside it, you can only see darkness black as the": PRINT "darkest night."
END IF
IF Level = 46 THEN PRINT "Sunlight shines upward from the ground, into a darkened sky."
IF Level = 47 THEN PRINT "Blue Fire dances around you."
PRINT "You may go north and west."
GOTO ABYSS
1100 PRINT "Ship of Chaos": PRINT
PRINT "This is the site where the Doomguard and the Tanar'ri are working on their": PRINT "ded Ship of Chaos."
VROCK = 1
PRINT "A Vrock sees you, and leaps from the ship to the ground to kill you!"
GOTO ABYSS
1120 PRINT "Lloth's Palace": PRINT
PRINT "This is the Center of the Demonweb Pits, where the Spider Queen Lloth rules."
PRINT "You can see a huge statue of the Spider Queen here."
PRINT "You may go in all directions."
GOTO ABYSS
500 PRINT "Hives": PRINT
PRINT "This is a large insect hive in which many ants are living in."
PRINT "You may go south and east."
PRINT "There is an Abyssal Ant here.  It looks at you hungriliy."
GOTO ABYSS
510 PRINT "Hives": PRINT
PRINT "This is a large insect hive in which many ants are living in."
PRINT "You may go south, east, and west."
PRINT "There is an Abyssal Ant here.  It looks at you hungriliy."
GOTO ABYSS
520 PRINT "Hives": PRINT
PRINT "This is a large insect hive in which many ants are living in."
PRINT "You may go south and west."
PRINT "There is an Abyssal Ant here.  It looks at you hungriliy."
GOTO ABYSS
530 PRINT "Hives": PRINT
PRINT "This is a large insect hive in which many ants are living in."
PRINT "You may go north, south, and east."
PRINT "There is an Abyssal Ant here.  It looks at you hungriliy."
GOTO ABYSS
540 PRINT "Hives": PRINT
PRINT "This is a large insect hive in which many ants are living in."
PRINT "You may go in all directions."
PRINT "There is an Abyssal Ant here.  It looks at you hungriliy."
PORTAL = INT(RND * 4) + 1
IF PORTAL = 1 THEN PRINT "There is a Portal here, hovering in mid-air."
GOTO ABYSS
550 PRINT "Hives": PRINT
PRINT "This is a large insect hive in which many ants are living in."
PRINT "You may go north, south, and west."
PRINT "There is an Abyssal Ant here.  It looks at you hungriliy."
GOTO ABYSS
560 PRINT "Hives": PRINT
PRINT "This is a large insect hive in which many ants are living in."
PRINT "You may go north and east."
PRINT "There is an Abyssal Ant here.  It looks at you hungriliy."
GOTO ABYSS
570 PRINT "Hives": PRINT
PRINT "This is a large insect hive in which many ants are living in."
PRINT "You may go north, east, and west."
PRINT "There is an Abyssal Ant here.  It looks at you hungriliy."
GOTO ABYSS
580 PRINT "Hives": PRINT
PRINT "This is a large insect hive in which many ants are living in."
PRINT "You may go north and west."
PRINT "There is an Abyssal Ant here.  It looks at you hungriliy."
GOTO ABYSS
10 PRINT "Plain of Infinite Portals": PRINT
PRINT "This is the plain of infinite portals in the Abyss."
PRINT "You can see chasms to the north and to the west."
MANES = INT(RND * 2) + 1
IF MANES = 1 THEN PRINT "There is a Manes here, looking vengefully at you."
GOTO ABYSS
20 PRINT "Plain of Infinite Portals": PRINT
PRINT "This is the plain of Infinite Portals in the Abyss."
PRINT "You can see a deep chasm to the north."
MANES = INT(RND * 2) + 1
IF MANES = 1 THEN PRINT "There is a Manes here, looking vengefully at you."
GOTO ABYSS
30 PRINT "Plain of Infinite Portals": PRINT
PRINT "The is the plain of Infinite Portals in the Abyss."
PRINT "You can see a chasm to the north and to the east."
MANES = INT(RND * 2) + 1
IF MANES = 1 THEN PRINT "There is a Manes here, looking vengefully at you."
GOTO ABYSS
40 PRINT "Plain of Infinite Portals": PRINT
PRINT "This is the plain of infinite Portals."
PRINT "You can see a deep chasm to the west."
MANES = INT(RND * 2) + 1
IF MANES = 1 THEN PRINT "There is a Manes here, looking vengefully at you."
GOTO ABYSS
45 PRINT "Plane of Infinite Portals": PRINT
PRINT "This is the plain of Infinite Portals."
PRINT "You may go in all directions."
PORTAL = INT(RND * 5) + 1
IF PORTAL = 1 THEN PRINT "There is a portal here, hovering in mid-air."
MANES = INT(RND * 2) + 1
IF MANES = 1 THEN PRINT "There is a Manes here, looking vengefully at you."
GOTO ABYSS
50 PRINT "Plain of Infinite Portals": PRINT
PRINT "This is the plain of Infinite Portals."
PRINT "You can see a deep chasm to the east."
MANES = INT(RND * 2) + 1
IF MANES = 1 THEN PRINT "There is a Manes here, looking vengefully at you."
GOTO ABYSS
60 PRINT "Plain of Infinite Portals": PRINT
PRINT "This is the Plain of Infinite Portals."
PRINT "You can see deep chasms to the south and to the west."
MANES = INT(RND * 2) + 1
IF MANES = 1 THEN PRINT "There is a Manes here, looking vengefully at you."
GOTO ABYSS
70 PRINT "Plain of Infinite Portals": PRINT
PRINT "This is the Plain of Infinite Portals."
PRINT "You can see a chasm to the south."
MANES = INT(RND * 2) + 1
IF MANES = 1 THEN PRINT "There is a Manes here, looking vengefully at you."
GOTO ABYSS
80 PRINT "Plain of Infinite Portals"
PRINT "This is the plain of infinite Portals."
PRINT "There are deep chasms to the south and east."
MANES = INT(RND * 2) + 1
IF MANES = 1 THEN PRINT "There is a Manes here, looking vengefully at you."
GOTO ABYSS
90 PRINT "Broken Reach": PRINT
REACH = 1
PRINT "This is a town.  You can see a militia of Molydei marching the streets,"
PRINT "enforcing the will of their evil mistress, Red Shroud."
IF BEAT = 0 THEN
PRINT "You cannot enter the town without being struck dead by the Molydeus."
PRINT "A guard notices you and charges toward you, intent on destroying you!"
END IF
PRINT "You may go in all directions."
GOTO ABYSS
ABYSS:
END SUB

