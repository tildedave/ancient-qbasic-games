CLS
KEY 10, "fight": KEY 9, "look"
RANDOMIZE TIMER
BUTLERRM = 27: WOLFHP = 30: WOLFMAXHP = 30
HP = 30: MAXHP = 30: RM = 7
GOSUB 5: GOTO 940
1 TIME = TIME + 1
IF WOLFHP < 30 THEN
WHEALING = WHEALING + 1
IF WHEALING >= 3 THEN WHEALING = 0: WOLFHP = WOLFHP + 1
END IF
IF HP < MAXHP THEN
HEALING = HEALING + 1
IF HEALING >= 5 THEN HEALING = 0: HP = HP + 1: PRINT "You feel better."
END IF
IF HP > MAXHP THEN HP = MAXHP
IF EATING > 0 THEN
EATING = EATING - 1
EATINGDEER = 1
IF FORM = 1 AND RM = WRM THEN PRINT "There is a wolf here, hunched over a dead deer.  It is feasting on its kill."
IF FORM = 3 AND RM = WRM THEN PRINT "There is a half-wolf, half-man creature here, hunched over a dead deer.  It": PRINT "is feasting on its kill."
IF EATING = 0 THEN ATEDEER = 1
END IF
IF RM = WRM AND EATING > 0 THEN
IF FORM = 1 THEN PRINT "The wolf leaps up from the dead deer and attacks you!"
IF FORM = 3 THEN PRINT "The half-wolf, half-man creature leaps up from the dead deer and attacks you!"
EATING = 0: PRINT "The deer is hauled away by two little deer undertakers."
END IF
IF RM = 26 THEN INN = 1
IF RM = 25 OR RM = 27 OR RM = 20 THEN INN = 2
IF INN = 1 AND FIGHT <= 0 THEN
4562 ACTION = INT(RND * 4) + 1
IF ACTION = 1 AND FIGHT = 0 THEN PRINT "A man with a long beard and unkempt hair walks up to another man and pushes": PRINT "him.  The other man pushes back, and soon both men are rolling around on the": PRINT "floor.": FIGHT = 4
IF ACTION = 1 AND FIGHT = -1 THEN PRINT "A low murmer fills the bar concerning the recent fight."
IF ACTION = 2 THEN PRINT "A man nearby you picks up a mug of ale and downs it with one gulp."
IF ACTION = 3 AND SEEN = 0 THEN PRINT "In the corner, you can see a gaunt and haggard man, dressed all in grey.  He": PRINT "looks as if he hasn't slept all night.  He sits by himself, alone, forgottten,": PRINT "and forsaken.  However, your eye soon wanders from him to other things.": SEEN = 1
IF ACTION = 3 AND SEEN = 1 THEN GOTO 4562
IF ACTION = 4 THEN PRINT "A serving maid comes into the room and serves a group of travellers a few mugs": PRINT "of ale."
END IF
IF INN = 2 THEN
PRINT "You can hear to the sounds of merrymaking off to the ";
IF RM = 25 THEN PRINT "east."
IF RM = 27 THEN PRINT "west."
IF RM = 20 THEN PRINT "south."
END IF
RANDOMI:
DIR = INT(RND * 5) + 1
IF DIR = 1 AND BUTLERRM <> 25 THEN GOTO BMOVE
IF DIR = 2 AND BUTLERRM <> 27 THEN GOTO BMOVE
IF DIR = 3 AND BUTLERRM = 25 THEN GOTO BMOVE
IF DIR = 4 AND BUTLERRM = 26 THEN GOTO BMOVE
IF DIR = 5 AND BUTLERRM = 27 THEN GOTO BMOVE
GOTO RANDOMI
BMOVE:
IF DIR = 1 AND BUTLERRM = RM THEN PRINT "There is a barmaid here.  She holds in one hand a plate filled with mugs of": PRINT "ale.  She walks west."
IF DIR = 2 AND BUTLERRM = RM THEN PRINT "There is a barmaid here.  She holds in one hand a plate filled with mugs of": PRINT "ale.  She walks east."
IF DIR = 1 THEN BUTLERRM = BUTLERRM - 1
IF DIR = 2 THEN BUTLERRM = BUTLERRM + 1
IF DIR = 3 AND BUTLERRM = RM THEN PRINT "There is a barmaid here.  She is vigorously scrubbing a table."
IF DIR = 4 AND BUTLERRM = RM THEN PRINT "There is a barmaid here.  She is handing out mugs of ale."
IF DIR = 5 AND BUTLERRM = RM THEN PRINT "There is a barmaid here.  She is filling her mugs of ale at the tap."
IF WRM = RM AND FORM <> 2 THEN
HIT = INT(RND * 2) + 1
IF HIT = 1 AND LEAVE <> 1 AND EATING = 0 THEN
DMG1 = INT(RND * 4) + 1
DMG2 = INT(RND * 4) + 1
DMG = DMG1 + DMG2
IF FORM = 1 THEN PRINT "The dire wolf leaps at you, tearing you with it's sharp teeth and drawing": PRINT "blood!": HP = HP - DMG
IF FORM = 3 THEN PRINT "The half-wolf, half-man creature leaps at you, tearing you with it's sharp": PRINT "teeth and claws, drawing blood!": HP = HP - DMG
PERCENT = PERCENT + (DMG * 2)
IF PERCENT > 100 THEN PERCENT = 100
IF HP <= 0 AND FORM = 1 THEN KILLER$ = "a dire wolf": GOTO DEAD
IF HP <= 0 AND FORM = 3 THEN KILLER$ = "a half-man, half-wolf creature": GOTO DEAD
END IF
IF HIT = 2 AND LEAVE <> 1 AND EATING = 0 THEN
IF FORM = 1 THEN PRINT "The dire wolf leaps at you, but misses!"
IF FORM = 3 THEN PRINT "The half-wolf, half-man creature leaps at you, but you duck aside!"
END IF
END IF
IF NONEED = 0 THEN GOSUB WOLFMOVE
NONEED = 0
IF FIGHT > 0 THEN
FIGHT = FIGHT - 1
IF INN = 1 THEN
IF FIGHT = 3 THEN PRINT "The man with unkempt hair is in a fight with another man with a dark beard.": PRINT "Patrons surround the fight, watching intently."
IF FIGHT = 2 THEN PRINT "The dark-bearded man is pinned to the ground by the man with unkempt hair.": PRINT "You can almost feel the tension in the room mount."
IF FIGHT = 1 THEN PRINT "The dark-bearded man throws the man with the unkempt hair to the ground.  The": PRINT "patrons of the bar yell in encouragment as the dark-bearded man raises his": PRINT "fist to finish off the man with the unkempt hair."
IF FIGHT = 0 THEN PRINT "The dark-bearded man brings down his fist on the man with the unkempt hair.": PRINT "The man with the unkempt hair sinks down to the ground, and is carried out of": PRINT "the room.  The man with the dark beard drops a few coins onto the bar and": PRINT "walks north, out of the bar.": FORM = 2
END IF
IF FIGHT = 0 THEN FIGHT = -1: WRM = 20
END IF
IF WRM = RM AND WOLFHP < 5 THEN
IF FORM = 1 THEN PRINT "The dire wolf vanishes through the underbrush.": WRM = 42
IF FORM = 3 THEN PRINT "The half-wolf, half-man creature vanished through the underbrush.": WRM = 42
END IF
PRINT "The moon shines down on you."
WARNING = INT(MAXHP / 5)
IF HP < WARNING THEN PRINT "Blood clots and sticks in your hair, matting it.  On the fringes of your": PRINT "vision you can see darkness creeping in.  Your sense of direction is": PRINT "disoriented, and your sense of balance is nil.  You are dying."
DEAD: IF HP <= 0 THEN PRINT "Pain explodes all around in your head as blood clots your vision.  You scream": PRINT "one final, agonizing sream as you fall to the ground, dead.": GOTO DEAD2
LASTRM = RM
RETURN
940 LEAVE = 0: INN = 0: GOSUB 1: PRINT : INPUT "Hunt>", A$: PRINT
IF A$ = "" THEN GOTO 940
IF A$ = "health" AND HP <> MAXHP THEN PRINT "You have"; HP; "hit points remaining out of"; MAXHP; "maximum.": GOTO 940
IF A$ = "health" AND HP = MAXHP THEN PRINT "You are in perfect condition, with"; HP; "hit points.": GOTO 940
IF A$ = "z" THEN
HEALING = HEALING + 1
PRINT "Time passes....."
GOTO 940
END IF
IF A$ = "w" AND RM = 7 THEN PRINT "You don't need to venture off to the west, onto that never-ending road.": GOTO 940
IF A$ = "l" OR A$ = "look" THEN GOSUB 5: GOTO 940
IF A$ = "i" THEN GOTO I
IF RM = 39 THEN
IF A$ = "w" OR A$ = "n" THEN
PRINT "You take a step off of the cliff, and plummet down, down, down, to your death."
KILLER$ = "a fatal jump"
GOTO DEAD2
END IF
IF A$ = "nw" THEN
PRINT "You take a step off of the cliff, and plummet down, down, down, down, and"
PRINT "land in a thorn bush with a satisfying 'crunch.'"
RM = 32: GOSUB 5: GOTO 940
END IF
END IF
IF A$ = "e" AND WRM = RM AND FORM <> 2 THEN
IF RM = 4 OR RM = 23 THEN
IF FORM = 1 THEN PRINT "The large dire wolf growls at you as you start to move east, and you stay put."
IF FORM = 3 THEN PRINT "The half-wolf, half-man growls at you as you start to move east, and you stay": PRINT "put."
GOTO 940
END IF
END IF
IF A$ = "w" AND WRM = RM AND FORM <> 2 AND RM = 38 THEN
IF FORM = 1 THEN PRINT "The large dire wolf growls at you as you start to move east, and you stay put."
IF FORM = 3 THEN PRINT "The half-wolf, half-man growls at you as you start to move east, and you stay": PRINT "put."
GOTO 940
END IF
IF A$ = "n" AND RM >= 8 AND RM <> 10 AND RM <> 12 AND RM <> 13 AND RM <> 23 AND RM <> 25 AND RM <> 27 AND RM <> 29 AND RM <> 30 AND RM <> 31 AND RM <> 32 AND RM <> 34 AND RM <> 36 AND RM <> 35 AND RM <> 38 AND RM <> 39 AND RM <> 41 THEN
RM = RM - 6:
IF RM = WRM AND FORM <> 2 AND EATING = 0 THEN
IF FORM = 1 THEN PRINT "The dire wolf follows you with a look of hunger on its face."
IF FORM = 3 THEN PRINT "The man-wolf follows you with a look of hunger on its face."
WRM = RM
END IF
GOSUB 5: GOTO 940
END IF
IF A$ = "s" AND RM <> 4 AND RM <> 7 AND RM <> 17 AND RM <> 19 AND RM <> 21 AND RM <> 22 AND RM <> 23 AND RM <> 24 AND RM <> 25 AND RM <> 26 AND RM <> 27 AND RM <> 29 AND RM <> 30 AND RM <> 32 AND RM <= 34 THEN
RM = RM + 6:
IF RM = WRM AND FORM <> 2 AND EATING = 0 THEN
IF FORM = 1 THEN PRINT "The dire wolf follows you with a look of hunger on its face."
IF FORM = 3 THEN PRINT "The man-wolf follows you with a look of hunger on its face."
WRM = RM
END IF
GOSUB 5: GOTO 940
END IF
IF A$ = "e" AND RM <> 3 AND RM <> 5 AND RM <> 10 AND RM <> 11 AND RM <> 12 AND RM <> 13 AND RM <> 15 AND RM <> 16 AND RM <> 17 AND RM <> 18 AND RM <> 21 AND RM <> 22 AND RM <> 24 AND RM <> 27 AND RM <> 30 AND RM <> 32 AND RM <> 34 AND RM <> 36 AND RM <> 38 AND RM <> 41 THEN
RM = RM + 1:
IF RM = WRM AND FORM <> 2 AND EATING = 0 THEN
IF FORM = 1 THEN PRINT "The dire wolf follows you with a look of hunger on its face."
IF FORM = 3 THEN PRINT "The man-wolf follows you with a look of hunger on its face."
WRM = RM
END IF
GOSUB 5: GOTO 940
END IF
IF A$ = "w" AND RM <> 2 AND RM <> 4 AND RM <> 7 AND RM <> 11 AND RM <> 12 AND RM <> 13 AND RM <> 14 AND RM <> 16 AND RM <> 17 AND RM <> 18 AND RM <> 19 AND RM <> 22 AND RM <> 23 AND RM <> 25 AND RM <> 29 AND RM <> 31 AND RM <> 34 AND RM <> 35 AND RM <> 37 AND RM <> 39 THEN
RM = RM - 1:
IF RM = WRM AND FORM <> 2 AND EATING = 0 THEN
IF FORM = 1 THEN PRINT "The dire wolf follows you with a look of hunger on its face."
IF FORM = 3 THEN PRINT "The man-wolf follows you with a look of hunger on its face."
WRM = RM
END IF
GOSUB 5: GOTO 940
END IF
IF A$ = "u" AND RM = 32 THEN
PRINT "You scale the cliff.": RM = 39: GOSUB 5: GOTO 940
END IF
IF A$ = "ne" THEN
IF RM = 7 OR RM = 8 OR RM = 19 OR RM = 14 OR RM = 15 OR RM = 29 OR RM = 35 OR RM = 41 THEN
RM = RM - 5:
IF RM = WRM AND FORM <> 2 AND EATING = 0 THEN
IF FORM = 1 THEN PRINT "The dire wolf follows you with a look of hunger on its face."
IF FORM = 3 THEN PRINT "The man-wolf follows you with a look of hunger on its face."
WRM = RM
END IF
GOSUB 5: GOTO 940
END IF
END IF
IF A$ = "nw" THEN
IF RM = 9 OR RM = 10 OR RM = 12 OR RM = 15 OR RM = 17 OR RM = 24 THEN
RM = RM - 7:
IF RM = WRM AND FORM <> 2 AND EATING = 0 THEN
IF FORM = 1 THEN PRINT "The dire wolf follows you with a look of hunger on its face."
IF FORM = 3 THEN PRINT "The man-wolf follows you with a look of hunger on its face."
WRM = RM
END IF
GOSUB 5: GOTO 940
END IF
END IF
IF A$ = "se" THEN
IF RM = 2 OR RM = 3 OR RM = 5 OR RM = 8 OR RM = 10 OR RM = 17 THEN
RM = RM + 7:
IF RM = WRM AND FORM <> 2 AND EATING = 0 THEN
IF FORM = 1 THEN PRINT "The dire wolf follows you with a look of hunger on its face."
IF FORM = 3 THEN PRINT "The man-wolf follows you with a look of hunger on its face."
WRM = RM
END IF
GOSUB 5: GOTO 940
END IF
END IF
IF A$ = "sw" THEN
IF RM = 2 OR RM = 3 OR RM = 9 OR RM = 10 OR RM = 14 OR RM = 24 OR RM = 30 OR RM = 36 THEN
RM = RM + 5:
IF RM = WRM AND FORM <> 2 AND EATING = 0 THEN
IF FORM = 1 THEN PRINT "The dire wolf follows you with a look of hunger on its face."
IF FORM = 3 THEN PRINT "The man-wolf follows you with a look of hunger on its face."
WRM = RM
END IF
GOSUB 5: GOTO 940
END IF
END IF
IF A$ = "fight" AND RM = WRM AND FORM <> 2 THEN GOTO FIGHT
PRINT "You can't do that.": GOTO 940
I: PRINT "You have:": PRINT
PRINT "  A blood-stained sword."
PRINT
GOTO 940
DEAD2: INPUT "[MORE]", K$: CLS
PRINT "Gates to the Underworld": PRINT
PRINT "You rub your eyes, and you can see huge black gates in front of you.  A", "demon is here, wearing glasses and holding a pen in its hand.  On his shirt", "is a tag saying, 'HELLO, MY NAME IS David.'  He holds a calculator close at", "hand and it currently calculating the exact probability that you would have", "survived that last encounter.", "His eyes bulge, and he looks up and you.  'Never had a chance,' he says in a", "smug voice."
IF SEEN1 = 1 THEN PRINT "'I told you that you would inevitably die.  I guess I was right.'"
CODE = INT(RND * 1000) + 1
PRINT "'Greetings, adventurer.  You just died, so, according to code"; CODE; "of"
BOOK = INT(RND * 100) + 1
PRINT "book"; BOOK; "of Ravenloftian Law, I have to record your name for posterity.'"
NAMED: INPUT "'What is your name?'", N$
IF N$ = "" THEN PRINT "David looks at you, and frowns.  You decide to answer him next time.": GOTO NAMED
OPEN N$ FOR OUTPUT AS #1
PRINT #1, N$; " was killed by "; KILLER$; " in the Ravenloftian realm of Kartakass."
PRINT #1, N$; " had"; HP; "hit points out of"; MAXHP; "maximum when he/she died."
IF KILLER$ = "a fatal jump" THEN PRINT #1, "Afternote:  Jumping off of cliffs isn't the most smart action."
IF KILLER$ = "a dire wolf" THEN PRINT #1, "Afternote:  You're the main course for tonight."
IF KILLER$ = "a half-man, half-wolf creature" THEN PRINT #1, "Afternote:  You're the main course for tonight."
CLOSE #1
PRINT "'Very good.  Your name has been filed in my 'Kartakass' file.  Please", "proceed into your after-life.'", "You begin to ask him what is going on, but before you know it, you are being", "swept through the gates of the underworld.", "'Oh, well,' grins David the Demon.  'Better luck next time......'"
END
5 IF INN = 1 AND WRM = RM AND FORM <> 2 THEN PRINT "Your oppressor slinks back outside.": WRM = 20
ON RM GOTO D, NEARRAZED, BURNEDAREA, DEADEND, FORK, D, ROAD, ROAD, CLEARING, BROKE, TRAIL, TRAIL, STABLE, ROAD, CROSSROADS, TRAIL, TRAIL, TRAIL, NEARSTABLE, NEARINN, ROAD, TRAIL, DEADEND, FOOTHILLS, DINING, DRINKING, KITCHEN, D, SWB, SWB, OUTCABIN, INCANYON, D, SUMMIT, SWB, SWB, INCABIN, BEDROOM, CLIFF, MOUTRAIL, MOUTRAIL
D: PRINT "You shouldn't be here."
RETURN
NEARRAZED: PRINT "Near Razed Area": PRINT
PRINT "To the east, you can see where wildfire swept through the brush.  Cleared"
PRINT "areas are to your southeast and east.  You can see a distinct road to your"
PRINT "south and southwest."
RETURN
BURNEDAREA: PRINT "Razed Area": PRINT
PRINT "This area has been razed to the ground by a wild brushfire.  To the south, the"
PRINT "fire did a better job; no stumps or the like seem to be poking through the"
PRINT "ground.  Here, however, there are the charred remains of stumps and dead"
PRINT "grass.  You may go in all southern directions and west."
RETURN
DEADEND: PRINT "Dead End": PRINT
PRINT "The trees here form a dead end.  The only way out of here is a worn trail to"
PRINT "the east."
IF WRM <> RM AND FORM <> 2 THEN
WOLFHERE = INT(RND * 5) + 1
IF WOLFHERE = 1 THEN
PRINT "Out of the grim blackness steps a ";
IF FORM = 1 THEN PRINT "large dire wolf.  ";
IF FORM = 3 THEN PRINT "man-wolf.  ";
PRINT "It growls at you, and then charges!"
WRM = RM: EATING = 0
END IF
END IF
RETURN
FORK: PRINT "Fork in Trail": PRINT
PRINT "The trail forks here.  You may go to the west and to the southeast.  To the"
PRINT "south is one united trail.  None of the trails seem very well worn, though"
PRINT "if you had to choose, the trail to the southeast looks to most worn."
RETURN
ROAD: PRINT "Road": PRINT
PRINT "You are going along a road.  A cool breeze brushes against your cheek.  You"
PRINT "may go ";
IF RM = 7 THEN PRINT "northeast and east."
IF RM = 8 THEN PRINT "north, south, east, west, northeast, and southeast."
IF RM = 14 THEN PRINT "north, south, east, northeast, and southwest."
IF RM = 21 THEN PRINT "north and west."
PRINT "The road here seems pretty well worn."
RETURN
CLEARING: PRINT "Clearing": PRINT
PRINT "This is a clearing.  Wildfire seems to have erradicated all trace of any"
PRINT "life in this clearing.  You may go north, south, east, west, northwest, and"
PRINT "southwest.  There is a faint acrid odor in the air."
RETURN
BROKE: PRINT "Broken Trees": PRINT
PRINT "The trees here are snapped and blackened, probably due to some sort of"
PRINT "brushfire.  You can see, off to the northwest and west, the effects of the"
PRINT "broken trees.  You may go in all westernly directions, as well as to the south"
PRINT "and southeast.  A few trails begin here, but none of them seem very well"
PRINT "worn."
RETURN
TRAIL: PRINT "Trail": PRINT
PRINT "This trail isn't very well worn.  Your guess is that few travel these roads at"
PRINT "all.  You may go ";
IF RM = 11 OR RM = 16 OR RM = 18 THEN PRINT "north and south."
IF RM = 12 THEN PRINT "northwest and south."
IF RM = 17 THEN PRINT "north, southeast, and northwest."
IF RM = 22 THEN PRINT "north."
RETURN
STABLE: PRINT "Stable": PRINT
PRINT "You are in an empty stable.  This stable obviously is for the inn, but none"
PRINT "of the guests seem to have had horses.  You may go south."
RETURN
CROSSROADS: PRINT "Crossroads": PRINT
PRINT "These are the crossroads that divide the roads and trails that are scattered"
PRINT "throughout this realm.  You may go north, south, west, northwest, and"
PRINT "northeast."
RETURN
NEARSTABLE: PRINT "Near Stable": PRINT
PRINT "You are near the inn's stable.  The stable is to the north.  To the east is"
PRINT "the outside of the inn.  You may go north, northeast, and east."
RETURN
NEARINN: PRINT "Near Inn": PRINT
PRINT "You are near the inn.  Inside of the inn you can hear the hustle and bustle"
PRINT "of happy patrons.  You may go north, south, east, and west.  The inn is to the"
PRINT "south."
RETURN
FOOTHILLS: PRINT "Foothills": PRINT
PRINT "You are among the foothills of a mountain that towers over this part of"
PRINT "Kartakass to the south.  The trees end here, although they can still be seen"
PRINT "here to the west.  You may go north and in all westernly directions."
RETURN
DINING: PRINT "Dining Hall": PRINT
PRINT "Oddly, though it is about dinner time, no patrons grave this room.  Empty"
PRINT "tables sit here.  The odd waiter moves around here, cleaning up tables.  You"
PRINT "may go east."
IF FIGHT = -1 THEN PRINT "There is an unconsious man with unkempt orange hair here.  People are trying": PRINT "to wake him up by throwing water in his face."
RETURN
DRINKING: PRINT "Drinking Room": PRINT
PRINT "This is the drinking room.  Lowlifes of all sort surround you."
IF FIGHT = 0 THEN PRINT "There is a dark-bearded man here, standing in the corner."
IF FIGHT = 0 THEN PRINT "A man with unkempt orange hair moves around here, acting like a general bully."
IF FIGHT > 0 THEN PRINT "There is a fight going on here.  A man with unkempt orange hair is beating up": PRINT "on a man with a dark beard."
PRINT "You may go west, east, and north.  To the north you can feel the chill night"
PRINT "air."
RETURN
KITCHEN: PRINT "Kitchen": PRINT
PRINT "This is the kitchen of the inn.  There is a tap for ale here.  You may go"
PRINT "to the west."
RETURN
SWB: PRINT "Switchbacks": PRINT
PRINT "You are climbing up a mountain, going around switchback after switchback in"
PRINT "an exhausting hike."
IF RM = 29 OR RM = 35 THEN PRINT "You may go northeast and east."
IF RM = 30 OR RM = 36 THEN PRINT "You may go southwest and west."
RETURN
OUTCABIN: PRINT "Outside Cabin": PRINT
PRINT "There is a cabin to the south here.  There is a darkened canyon to the east."
PRINT "You may go south and east."
RETURN
INCANYON: PRINT "In Canyon": PRINT
PRINT "There is a thorn bush here, in which you landed so nicely.  You may go west."
PRINT "There is a series of footholds that lead up the cliff here that you could"
PRINT "use to climb up."
RETURN
SUMMIT: PRINT "Summit of the Mountain": PRINT
PRINT "Well, you've made it.  Congratulations.  You may go south."
RETURN
INCABIN: PRINT "Inside Cabin": PRINT
PRINT "You are inside a plainly decorated log cabin.  Over the fireplace here is"
PRINT "the head of a stag.  You may go north and east, into the bedroom."
RETURN
BEDROOM: PRINT "Bedroom": PRINT
PRINT "This is the bedroom of the log cabin.  There is a simple cot in the corner."
PRINT "You may go west."
RETURN
CLIFF: PRINT "Cliff": PRINT
PRINT "You are on the top of a cliff.  Below you, you can make out a valley.  However,"
PRINT "there doesn't seem any way to get there other than hurling yourself off of the"
PRINT "cliff.  You can see a thornbush down below you that you could probably leap"
PRINT "into, but you can't tell if it lies to the north, west, or northwest.  You"
PRINT "may go east, north, west, or northwest.  You're pretty sure that a fall into"
PRINT "the canyon here would be fatal."
RETURN
MOUTRAIL: PRINT "Mountain Trail": PRINT
PRINT "You are on a mountain trail.  You may go ";
IF RM = 40 THEN PRINT "north, east, and west."
IF RM = 41 THEN PRINT "west and northeast."
RETURN
FIGHT:
YOUHIT = INT(RND * 2) + 1
IF FORM = 1 THEN
DMG = INT(RND * 8) + 3
IF YOUHIT = 1 THEN PRINT "You slash your sword at the wolf and it howls in pain!": WOLFHP = WOLFHP - DMG
IF YOUHIT = 2 THEN PRINT "You slash your sword at the wolf, but it dodges your blow!"
IF YOUHIT = 1 THEN
LEAVEPREY = INT(RND * 4) + 1
IF WOLFHP < 10 THEN LEAVEPREY = 1
IF LEAVEPREY = 1 THEN GOSUB WOLFMOVE: NONEED = 1
END IF
IF WOLFHP < 0 THEN
PRINT "You slash your sword into the half-wolf, half-man creature, and it gives"
PRINT "one final shriek of agony before it slumps to the ground, dead."
GOTO WON
END IF
END IF
IF FORM = 3 THEN
DMG = INT(RND * 12) + 3
IF YOUHIT = 1 THEN PRINT "You slash your sword at the half-man, half-wolf creature.  It howls in pain!": WOLFHP = WOLFHP - DMG
IF YOUHIT = 2 THEN PRINT "You slash your sword at the half-man, half-wolf, but it dodges your blow!"
IF YOUHIT = 1 THEN
LEAVEPREY = INT(RND * 4) + 1
IF WOLFHP < 10 THEN LEAVEPREY = 1
IF LEAVEPREY = 1 THEN GOSUB WOLFMOVE: NONEED = 1
END IF
IF WOLFHP < 0 THEN
PRINT "You slash your sword into the half-wolf, half-man creature, and it gives"
PRINT "one final shriek of agony before it slumps to the ground, dead."
GOTO WON
END IF
END IF
GOTO 940
WON:
PRINT "Suddenly, the mists surround you and you scream as you notice that they are"
PRINT "blood red, and that they are encompassing you, carrying you away...."
INPUT "[MORE]", K$: CLS
PRINT "Mists": PRINT
PRINT "You rub your eyes, and you can see the mists all around you.  A"
PRINT "demon is here, wearing glasses and holding a pen in its hand.  On his shirt"
PRINT "is a tag saying, 'HELLO, MY NAME IS David.'"
PRINT "'Congratulations,' he says in a slightly bitter tone.  'You won.  You hunted"
PRINT "the werewolf down, and finally made the kill.  A difficult task.'"
PRINT "'For other games in this particular genre, try Castles Forlorn, which is a"
PRINT "much larger game than this,' says the demon, pointing to a computer diskette"
PRINT "he takes out from one pocket."
PRINT "'But before you run off, let's record your name for posterity.  They need a "
PRINT "good example.'"
NAMED2: INPUT "'What is your name?'", N$
IF N$ = "" THEN PRINT "David looks at you, and frowns.  You decide to answer him next time.": GOTO NAMED2
OPEN N$ FOR OUTPUT AS #1
PRINT #1, N$; " won in the Ravenloftian realm of Kartakass and killed the werewolf."
PRINT #1, N$; " had"; HP; "hit points out of"; MAXHP; "maximum when he/she won the game."
END
WOLFMOVE: IF FIGHT = -1 AND EATING = 0 THEN
CAUGHTSOMETHING = INT(RND * 10) + 1
IF CAUGHTSOMETHING = 1 AND FORM <> 2 THEN
IF RM = WRM AND FORM = 1 THEN PRINT "A lone deer bounces into the open.  Suddenly, the large dire wolf goes for the": PRINT "deer, pouncing upon it.  The deer slumps to the ground, dead.  The wolf begins": PRINT "to eat the deer."
IF RM = WRM AND FORM = 3 THEN PRINT "A lone deer bounces into the open.  Suddenly, the wolf creature goes for the": PRINT "deer, pouncing upon it.  The deer slumps to the ground, dead.  The wolf creature": PRINT "begins to eat the deer."
EATINGDEER = 1
DEERRM = WRM
EATING = 5
GOTO ENDMOVE
END IF
IF RM = WRM AND HIT = 1 AND FORM <> 2 THEN GOTO ENDMOVE
IF RM = WRM AND HIT = 2 AND FORM <> 2 AND ATEDEER = 0 THEN GOTO ENDMOVE
IF RM = WRM AND HIT = 2 AND FORM <> 2 AND ATEDEER = 1 THEN
STAY = INT(RND * 3) + 1
IF STAY = 1 THEN GOTO ENDMOVE
END IF
CHANGEFORM = INT(RND * 25) + 1
IF RM = WRM AND FORM = 2 THEN CHANGEFORM = INT(RND * 5) + 1
IF CHANGEFORM = 1 AND FORM <> 1 AND INN = 0 THEN
IF WRM = RM AND FORM = 2 THEN PRINT "Suddenly, the dark-bearded man begins to change.  He throws back his head as": PRINT "if in intense joy.  Then, suddenly, his form shifts to that of a large dire": PRINT "wolf."
IF WRM = RM AND FORM = 3 THEN PRINT "Suddenly, the half-wolf, half-man beast begins to change.  He throws back his": PRINT "head as if in intense joy.  Then, suddenly, his form shifts to that of a large": PRINT "dire wolf."
FORM = 1
IF WOLFHP < 30 THEN
PERC = 30 - WOLFHP
RAN = ((INT(RND * 6) + 1) * 10) / 100
WOLFHP = WOLFHP + INT(PERC * RAN)
IF WOLFHP > 30 THEN WOLFHP = 30
END IF
GOTO ENDMOVE
END IF
IF CHANGEFORM = 2 AND FORM <> 2 AND INN = 0 THEN
IF WRM = RM AND FORM = 1 THEN PRINT "Suddenly, the wolf begins to change.  It throws back its head as if in intense": PRINT "joy.  Then, suddenly, its form shifts to that of a dark-bearded man."
IF WRM = RM AND FORM = 3 THEN PRINT "Suddenly, the half-wolf, half-man beast begins to change.  He throws back his": PRINT "head as if in intense joy.  Then, suddenly, his form shifts to that of a": PRINT "dark-bearded man."
FORM = 2
GOTO ENDMOVE
END IF
IF CHANGEFORM = 3 AND FORM <> 3 AND INN = 0 THEN
IF WRM = RM AND FORM = 1 THEN PRINT "Suddenly, the wolf begins to change.  It throws back its head as if in intense": PRINT "joy.  Then, suddenly, its form shifts to that of a half-man, half-wolf": PRINT "creature."
IF WRM = RM AND FORM = 2 THEN PRINT "Suddenly, the dark-bearded man beast begins to change.  He throws back his": PRINT "head as if in intense joy.  Then, suddenly, his form shifts to that of a": PRINT "half-man, half-wolf creature."
IF WOLFHP < 30 THEN
PERC = 30 - WOLFHP
RAN = ((INT(RND * 6) + 1) * 10) / 100
WOLFHP = WOLFHP + INT(PERC * RAN)
IF WOLFHP > 30 THEN WOLFHP = 30
END IF
FORM = 3
GOTO ENDMOVE
END IF
DIRE: W = INT(RND * 9) + 1
DIRECT: IF W = 1 AND WRM >= 8 AND WRM <> 10 AND WRM <> 12 AND WRM <> 13 AND WRM <> 23 AND WRM <> 25 AND WRM <> 27 AND WRM <> 29 AND WRM <> 30 AND WRM <> 31 AND WRM <> 32 AND WRM <> 34 AND WRM <> 36 AND WRM <> 35 AND WRM <> 38 AND WRM <> 39 AND WRM <> 41 THEN GOTO MOVE
IF W = 1 THEN W = 2
IF W = 2 AND WRM = 20 AND FORM = 1 THEN GOTO DIRE
IF W = 2 AND WRM = 20 AND FORM = 3 THEN GOTO DIRE
IF W = 2 AND WRM <> 4 AND WRM <> 7 AND WRM <> 17 AND WRM <> 19 AND WRM <> 21 AND WRM <> 22 AND WRM <> 23 AND WRM <> 24 AND WRM <> 25 AND WRM <> 26 AND WRM <> 27 AND WRM <> 29 AND WRM <> 30 AND WRM <> 32 AND WRM <= 34 THEN GOTO MOVE
IF W = 2 THEN GOTO DIRE
IF W = 3 AND WRM <> 3 AND WRM <> 5 AND WRM <> 10 AND WRM <> 11 AND WRM <> 12 AND WRM <> 13 AND WRM <> 15 AND WRM <> 16 AND WRM <> 17 AND WRM <> 18 AND WRM <> 21 AND WRM <> 22 AND WRM <> 24 AND WRM <> 27 AND WRM <> 30 AND WRM <> 32 AND WRM <> 34 AND WRM <> 36 AND WRM <> 38 AND WRM <> 41 THEN GOTO MOVE
IF W = 3 THEN W = 4
IF W = 4 AND WRM <> 2 AND WRM <> 4 AND WRM <> 7 AND WRM <> 11 AND WRM <> 12 AND WRM <> 13 AND WRM <> 14 AND WRM <> 16 AND WRM <> 17 AND WRM <> 18 AND WRM <> 19 AND WRM <> 22 AND WRM <> 23 AND WRM <> 25 AND WRM <> 29 AND WRM <> 31 AND WRM <> 34 AND WRM <> 35 AND WRM <> 37 AND WRM <> 39 THEN GOTO MOVE
IF W = 4 THEN GOTO DIRE
IF W = 5 AND WRM = 32 AND FOWRM <> 1 THEN GOTO MOVE
IF W = 5 THEN GOTO DIRE
IF W = 6 THEN
IF WRM = 7 OR WRM = 8 OR WRM = 19 OR WRM = 14 OR WRM = 15 OR WRM = 29 OR WRM = 35 OR WRM = 41 THEN GOTO MOVE
END IF
IF W = 6 THEN W = 9
IF W = 7 AND WRM = 39 THEN GOTO MOVE
IF W = 7 THEN
IF WRM = 9 OR WRM = 10 OR WRM = 12 OR WRM = 15 OR WRM = 17 OR WRM = 24 THEN GOTO MOVE
END IF
IF W = 7 THEN W = 8
IF W = 8 THEN
IF WRM = 2 OR WRM = 3 OR WRM = 5 OR WRM = 8 OR WRM = 10 OR WRM = 17 THEN GOTO MOVE
END IF
IF W = 8 THEN GOTO DIRE
IF W = 9 THEN
IF WRM = 2 OR WRM = 3 OR WRM = 9 OR WRM = 10 OR WRM = 14 OR WRM = 24 OR WRM = 30 OR WRM = 36 THEN GOTO MOVE
END IF
IF W = 9 THEN GOTO DIRE
GOTO DIRE
MOVE:
IF WRM = RM AND FORM = 1 THEN
IF W = 1 THEN PRINT "A wolf is here.  It runs north."
IF W = 2 THEN PRINT "A wolf is here.  It runs south."
IF W = 3 THEN PRINT "A wolf is here.  It runs east."
IF W = 4 THEN PRINT "A wolf is here.  It runs west."
IF W = 6 THEN PRINT "A wolf is here.  It runs northeast."
IF W = 7 AND RM = 39 THEN PRINT "A wolf is here.  It throws itself northwest, off of the cliff.": WRM = 32: GOTO ENDMOVE
IF W = 7 AND RM <> 39 THEN PRINT "A wolf is here.  It runs northwest."
IF W = 8 THEN PRINT "A wolf is here.  It runs southeast."
IF W = 9 THEN PRINT "A wolf is here.  It runs southwest."
END IF
IF WRM = RM AND FORM = 2 THEN
IF W = 1 THEN PRINT "A man in a dark beard is here.  He walks north."
IF W = 2 THEN PRINT "A man in a dark beard is here.  He walks south."
IF W = 3 THEN PRINT "A man in a dark beard is here.  He walks east."
IF W = 4 THEN PRINT "A man in a dark beard is here.  He walks west."
IF W = 5 THEN PRINT "A man in a dark beard is here.  He ascends the cliff with interesting agility."
IF W = 6 THEN PRINT "A man in a dark beard is here.  He walks northeast."
IF W = 7 AND RM = 39 THEN PRINT "A man in a dark beard is here.  He jumps northwest, off of the cliff.": WRM = 32: GOTO ENDMOVE
IF W = 7 AND RM <> 39 THEN PRINT "A man in a dark beard is here.  He walks northwest."
IF W = 8 THEN PRINT "A man in a dark beard is here.  He walks southeast."
IF W = 9 THEN PRINT "A man in a dark beard is here.  He walks southwest."
END IF
IF WRM = RM AND FORM = 3 THEN
IF W = 1 THEN PRINT "A half-wolf, half-man beast is here.  It runs north."
IF W = 2 THEN PRINT "A half-wolf, half-man beast is here.  It runs south."
IF W = 3 THEN PRINT "A half-wolf, half-man beast is here.  It runs east."
IF W = 4 THEN PRINT "A half-wolf, half-man beast is here.  It runs west."
IF W = 5 THEN PRINT "A half-wolf, half-man beast is here.  It ascends the cliff with interesting agility."
IF W = 6 THEN PRINT "A half-wolf, half-man beast is here.  It runs northeast."
IF W = 7 AND RM = 39 THEN PRINT "A half-wolf, half-man beast is here.  It jumps northwest, off of the cliff.": WRM = 32: GOTO ENDMOVE
IF W = 7 AND RM <> 39 THEN PRINT "A half-wolf, half-man beast is here.  It runs northwest."
IF W = 8 THEN PRINT "A half-wolf, half-man beast is here.  It runs southeast."
IF W = 9 THEN PRINT "A half-wolf, half-man beast is here.  It runs southwest."
END IF
IF W = 1 THEN WRM = WRM - 6
IF W = 2 THEN WRM = WRM + 6
IF W = 3 THEN WRM = WRM + 1
IF W = 4 THEN WRM = WRM - 1
IF W = 5 THEN WRM = 39
IF W = 6 THEN WRM = WRM - 5
IF W = 7 THEN WRM = WRM - 7
IF W = 8 THEN WRM = WRM + 7
IF W = 9 THEN WRM = WRM + 5
ENDMOVE:
END IF
RETURN



