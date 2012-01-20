DECLARE SUB ENDGAME ()
DECLARE SUB INFORMATION ()
DECLARE SUB ALPHAB3 ()
DECLARE SUB THETA1 ()
DECLARE SUB KAPPA2 ()
DECLARE SUB EPSILON4 ()
DECLARE SUB OMICRON1 ()
COMMON SHARED BOMB, SHIPBOOM, SHIPOPEN, SORTOFWON, PLUG, KEYCARD, ROBOTS, TIMOPEN, MILOPEN, NEWSR, CARD1, THETABEAT, KAPBEAT, MONORAILMOVE4, TIMEOPEN, RESOPEN, LIBOPENED, HOLOPEN, EPBEAT, VOICESHEARD, EXPLOSIVE, SHIELDUP, NEWSREELS, TECH1, MONORAILMOVE2, MONORAILMOVE3, LIBOPEN, CRYAWAKE, CRYOPEN, CRSCAN, COMPASS, ON1, ROBOTDEAD, MONORAILMOVE, MONORAILMOVE1, CODE, ROBOPEN, COMPOPEN, PISTON, AVSCAN, SUIT, ALIVE, BLASTED, MUTANT, LASER, CARD, VIAL, MALFUNCTION, RM, MEDOPENED, MECHOPENED, TECHOPENED
ON ERROR GOTO BUG
COLOR 15
KEY ON
Battery = 1500
KEY 1, "teleport"
KEY 2, "diagnostic"
KEY 3, "look at "
KEY 4, "take "
KEY 7, "info"
KEY 8, "look"
KEY 9, "terminate"
KEY 10, "push button"
RANDOMIZE TIMER
RANDO: World = INT(RND * 5) + 1
IF World = 2 THEN GOTO RANDO
IF World = 3 THEN RM = 19
IF World = 1 THEN RM = 8
IF World = 4 THEN RM = 1
IF World = 5 THEN RM = 22
CODE = INT(RND * 999) + 1
TIMECODE = INT(RND * 999) + 1
CLS
BEEP
PRINT "Startup Sequence Activated.": PRINT
PRINT "Systems Check:                   Status": PRINT
PRINT "Electrical Power:                ";
FOR T = 1 TO 500: NEXT T
PRINT "Online"
PRINT "Computer Brain:                  ";
FOR T = 1 TO 500: NEXT T
PRINT "Online"
PRINT "Artificial Intelligence:         ";
FOR T = 1 TO 500: NEXT T
PRINT "Online"
PRINT "Personality Chip:                ";
FOR T = 1 TO 500: NEXT T
PRINT "Online"
PRINT "Sensory Input:                   ";
FOR T = 1 TO 500: NEXT T
PRINT "Online"
PRINT "Movement:                        ";
FOR T = 1 TO 500: NEXT T
PRINT "Online"
PRINT "Hand Laser:                      ";
FOR T = 1 TO 500: NEXT T
PRINT "Online"
PRINT "Targetting and Recognition:      ";
FOR T = 1 TO 500: NEXT T
PRINT "Online"
PRINT "Computer Synthesized Voice Box:  ";
FOR T = 1 TO 500: NEXT T
PRINT "Online"
BEEP: BEEP: BEEP
PRINT
PRINT "Omega Blue Class 5 Robot Online.  All systems fully operational."
PRINT "Power remaining before termination:  "; Battery
GOSUB 5: GOTO 940
1 TIME = TIME + 1
KEY 5, A$
IF Battery > 0 THEN
Battery = Battery - 1
IF Battery>50 THEN Color 15
IF Battery<=50 THEN
IF Battery<>0 THEN BEEP: PRINT "ALERT:  Battery has"Battery"more turns of operation before shutdown.": COLOR 8
IF Battery = 0 THEN BEEP: BEEP: BEEP: PRINT "Battery drained.  Mission failed.": COLOR 0: END
END IF
IF World = 2 AND STARTED = 1 THEN
ROBOT = ROBOT + 1
IF ROBOT = 1 AND RM = 8 THEN PRINT "Robotic arms move and place spare parts onto the moving assembly line and begin": PRINT "making something."
IF Robot>=2 AND Robot<=6 AND RM=8 THEN
PRINT "There is a half-finished robot on the assembly line here.  ";
IF ROBOT=2 THEN ?"A robotic arm": PRINT "attaches a laser to the unfinished device."
IF ROBOT = 3 THEN PRINT "A robotic arm": PRINT "attaches a laser to the unfinished device."
IF ROBOT = 4 THEN PRINT "A robotic arm": PRINT "attaches two visual cameras to the unfinished device."
IF ROBOT = 5 THEN PRINT "A robotic arm": PRINT "attaches a targetting system to the unfinished device."
IF ROBOT = 6 THEN PRINT "A robotic arm": PRINT "attaches an AI unit to the unfinished device."
IF ROBOT = 7 THEN PRINT "It moves south,": PRINT "along with the assemly line."
END IF
IF ROBOT = 7 AND RM = 12 THEN PRINT "There is a half-finished robot on the assembly line here.  A robotic arm": PRINT "attaches two ramps as movement to the unfinished device."
IF ROBOT = 8 AND RM = 12 THEN PRINT "There is a robot on the assembly line here.  It moves once, and then jumps off": PRINT "of the assembly line.  It looks around, and moves through the door to the": PRINT "west, as if under some sort of internally programmed system."
IF ROBOT = 9 AND RM = 11 THEN PRINT "There is a robot here.  It moves west, out of the machinery lab."
IF ROBOT = 10 AND RM = 10 THEN PRINT "There is a robot here.  It moves north."
IF ROBOT = 11 AND RM = 6 THEN PRINT "There is a robot here.  It moves north, into the building."
IF ROBOT = 12 AND RM = 2 THEN
IF MILOPEN = 0 THEN PRINT "There is a robot here.  It extends part of it's 'fingers' and puts it in the": PRINT "slot.  The door opens, and it walk east, through it.  The door closes after": PRINT "it."
IF MILOPEN=1 tHEN PRINT "There is a robot here.  It moves east."
END IF
IF ROBOT = 13 AND RM = 3 THEN
IF TIMOPEN = 0 THEN PRINT "There is a robot here.  It pushes the button, and then types in"; TIMECODE; "into the": PRINT "keypad.  The door opens, and closes after it."
IF TIMOPEN = 1 THEN PRINT "There is a robot here.  It moves south."
END IF
IF ROBOT = 14 AND RM = 7 THEN
IF PLUG = 0 THEN PRINT "There is a robot here.  It moves onto the podium.  Bright light flashes, and": PRINT "it is gone."
IF PLUG <> 0 THEN PRINT "There is a robot here.  It moves onto the podium.  Nothing happens.  The robot": PRINT "self-destructs in a large flash of light."
END IF
IF ROBOT = 14 THEN
IF PLUG = 0 THEN ROBOTS = ROBOTS + 1
ROBOT = 0
END IF
END IF
IF SORTOFWON = 0 AND KAPBEAT = 1 AND EPBEAT = 1 AND CRSCAN = 1 AND AVSCAN = 1 THEN SORTOFWON = 1
IF DEMONFOUND = 1 AND NEWSR = 1 AND KAPBEAT = 0 THEN BEEP: BEEP: BEEP: PRINT "Mission completed on Kappa 2.  You may leave at your discresion.": KAPBEAT = 1
IF World = 1 AND RM = 13 AND AVSCAN = 1 THEN PRINT "AVID is here, glowing serenely."
IF World = 1 AND RM = 13 AND ALIVE = 1 AND DISK = 0 AND AVSCAN = 0 THEN
MOODCHANGE = INT(RND * 3) + 1
IF MOODCHANGE = 1 THEN MOOD = MOOD - 1: PRINT "The room around you seems to dim."
IF MOODCHANGE = 3 THEN MOOD = MOOD + 1: PRINT "The room around you seems to brighten."
IF MOOD <= 0 THEN MOOD = 1
IF MOOD >= 9 THEN MOOD = 8
PRINT "'So... Why are you here?  ";
IF MOOD = 1 THEN PRINT "Sent to get rid of me, I trust?'"
IF MOOD = 2 THEN PRINT "Here to destroy what remains of a once proud":?"civilization?'"
IF MOOD = 3 THEN PRINT "Are you a vandal of Theta 1?'"
IF MOOD = 4 THEN PRINT "Here to steal what remains of our once-rich":? "treasures?'"
IF MOOD = 5 THEN PRINT "Here to study our illustrious civilization?'"
IF MOOD = 6 THEN PRINT "Here to incorporate your technology into my":? "circuitry so that I may try to rebuild our civilization?'"
IF MOOD = 7 THEN PRINT "Here to study me?'"
IF MOOD = 8 THEN PRINT "Here to help me escape this desolated moon?'"
END IF
IF World = 5 AND MONORAILMOVE2 > 0 THEN
MONORAILMOVE2 = MONORAILMOVE2 - 1
IF MONORAILMOVE2 <> 0 THEN PRINT "The monorail thunders on, down the monorail track."
IF MONORAILMOVE2 = 0 THEN
PRINT "The monorail comes to a crashing halt.  You are thrown against"
PRINT "the north wall, and the west door opens.": RM = 15
GOSUB 5
END IF
END IF
IF World = 5 AND MONORAILMOVE3 > 0 THEN
MONORAILMOVE3 = MONORAILMOVE3 - 1
IF MONORAILMOVE3 <> 0 THEN PRINT "The monorail thunders on, down the monorail track."
IF MONORAILMOVE3 = 0 THEN
PRINT "The monorail comes to a crashing halt.  You are thrown against"
PRINT "the north wall, and the west door opens.": RM = 19
GOSUB 5
END IF
END IF
IF World = 3 AND MONORAILMOVE4 > 0 THEN
MONORAILMOVE4 = MONORAILMOVE4 - 1
IF MONORAILMOVE4 <> 0 THEN PRINT "The monorail thunders on, down the monorail track."
IF MONORAILMOVE4 = 0 THEN
PRINT "The monorail comes to a crashing halt.  You are thrown against"
PRINT "the north wall, and the east door opens."
IF RM = 5 THEN RM = 13: GOTO Hi
IF RM = 13 THEN RM = 5: GOTO Hi
Hi: GOSUB 5
END IF
END IF
IF World = 4 AND MONORAILMOVE > 0 THEN
MONORAILMOVE = MONORAILMOVE - 1
IF MONORAILMOVE <> 0 THEN PRINT "The monorail thunders on, down the monorail track."
IF MONORAILMOVE = 0 THEN
PRINT "The monorail comes to a crashing halt.  You are thrown against"
PRINT "the south wall, and the north door opens.": RM = 10
IF MALFUNCTION2 = 0 AND COMPASS = 0 THEN
BEEP: BEEP: BEEP
PRINT : PRINT "FATAL ERROR!"
PRINT "Movement Program damaged by crash.  Internal compass broken."
MALFUNCTION2 = 1
BEEP: BEEP: BEEP: PRINT
FOR T = 1 TO 1000
NEXT T
GOSUB 5
END IF
END IF
END IF
IF World = 4 AND MONORAILMOVE1 > 0 THEN
MONORAILMOVE1 = MONORAILMOVE1 - 1
IF MONORAILMOVE1 <> 0 THEN PRINT "The monorail thunders on, down the monorail track."
IF MONORAILMOVE1 = 0 THEN
PRINT "The monorail comes to a crashing halt.  You are thrown against"
PRINT "the west wall, and the north door opens.": RM = 9
IF MALFUNCTION2 = 0 AND COMPASS = 0 THEN
BEEP: BEEP: BEEP
PRINT : PRINT "FATAL ERROR!"
PRINT "Movement Program damaged by crash.  Internal compass broken."
MALFUNCTION2 = 1
BEEP: BEEP: BEEP: PRINT
FOR T = 1 TO 1000
NEXT T
GOSUB 5
END IF
END IF
END IF
IF World = 4 AND RM = 15 AND ON1 = 1 AND DISK <> 1 THEN PRINT "CRIS is on here, glowing serenely."
IF World = 4 AND DISK = 1 AND RM = 15 THEN
DISKSC = DISKSC + 1
PRINT "CRIS is scanning your disk."
IF DISKSC = 5 THEN
PRINT "CRIS pops your disk back out and you pick it up.": DISK = 0: CRSCAN = 1
PRINT "'Scanning of Information Complete.  Information concerning your mission has"
PRINT "been downloaded into the Omicron 1 category.'"
BEEP: BEEP: BEEP
PRINT "Mission on Omicron 1 completed.  You may leave at your discresion."
DISKSC = 0
END IF
END IF
IF World = 1 AND DISK = 1 AND RM = 13 THEN
DISKSC = DISKSC + 1
PRINT "AVID is scanning your disk with great interest."
IF DISKSC = 5 THEN
PRINT "AVID pops your disk back out and you pick it up.": DISK = 0: AVSCAN = 1
PRINT "'Scanning of Information Complete.  Thank you very much Omega Blue Class Five"
PRINT "Robot, or OBC5R.  What a daft name.  Well, I've downloaded information you may"
PRINT "find interesting onto that disk in the Alpha B 3 category.'"
BEEP: BEEP: BEEP
PRINT "Mission on Alpha Centauri B 3 completed.  You may leave at your discresion."
DISKSC = 0
END IF
END IF
IF SHIPBOOM = 1 THEN PRINT "The ship streaks onward, heading for the Planetary Defense Systems.": PRINT : PRINT "Guidance System:  We'd better leave now, lest our mission fail."
IF World = 4 AND RM = 14 AND ROBOTDEAD = 0 THEN
PRINT "The laser wielding robot moves toward you with his cutting laser ready."
PRINT "Attempting to evade."
END IF
IF World = 1 AND MALFUNCTION = 0 AND SUIT <> 2 THEN
ERROR1 = ERROR1 + 1
IF ERROR1 = 6 THEN
BEEP: BEEP: BEEP
PRINT : PRINT "FATAL ERROR!"
PRINT "Object Distinction Subroutine Damaged by High Levels of Radiation."
BEEP: BEEP: BEEP: PRINT
FOR T = 1 TO 1000
NEXT T
MALFUNCTION = 1
ERROR1 = 0
GOSUB 5
END IF
END IF
IF World <> 1 AND MALFUNCTION = 1 THEN
PRINT "Radiation levels returning to normal.  Object Distinction Subroutine restored"
PRINT "to full working order."
MALFUNCTION = 0
END IF
RETURN
5
IF GAMEEND = 1 THEN ENDGAME
IF GAMEEND = 0 THEN
IF World = 1 THEN ALPHAB3
IF World = 2 THEN THETA1
IF World = 3 THEN KAPPA2
IF World = 4 THEN OMICRON1
IF World = 5 THEN EPSILON4
END IF
RETURN
940 GOSUB 1: PRINT : INPUT "Omega2>", A$: PRINT
IF A$ = "save" THEN GOTO SAVE
IF A$ = "load" OR A$ = "restore" THEN GOTO LOAD
IF MID$(A$, 1, 1) = "z" THEN PRINT "Time passes....": GOTO 940
IF A$ = "terminate" THEN
PRINT "WARNING! WARNING!": PRINT
PRINT "Should this robot terminate, the entire mission will be lost and Earth will be", "doomed."
INPUT "Termination Confirm?  (Y/N)", G$
IF MID$(G$, 1, 1) = "y" THEN
PRINT "Shut down sequence initiated."
PRINT "Deactivating AI system...."
FOR T = 1 TO 1000: NEXT T
PRINT "Deactivating Movement...."
FOR T = 1 TO 1000: NEXT T
PRINT "Deactivating Internal Guidance System...."
FOR T = 1 TO 1000: NEXT T
PRINT "OBC5R shut down.  Mission terminated."
END
END IF
GOTO 940
END IF
IF World = 1 AND A$ = "no" AND RM = 13 AND MOOD < 5 AND ALIVE = 1 AND DISK <> 1 THEN PRINT "'Good.  I was worried about that,' says AVID.  The room brightens.": MOOD = MOOD + 1: GOTO 940
IF World = 1 AND A$ = "yes" AND RM = 13 AND MOOD < 5 AND ALIVE = 1 AND DISK <> 1 THEN PRINT "The room dims.  AVID says nothing.": MOOD = MOOD - 1: GOTO 940
IF World = 1 AND A$ = "yes" AND RM = 13 AND MOOD > 4 AND ALIVE = 1 AND DISK <> 1 THEN PRINT "'Good.  I was hoping that,' says AVID.  The room brightens.": MOOD = MOOD + 1: GOTO 940
IF World = 1 AND A$ = "no" AND RM = 13 AND MOOD > 4 AND ALIVE = 1 AND DISK <> 1 THEN PRINT "The room dims.  AVID says nothing.": MOOD = MOOD - 1: GOTO 940
IF MALFUNCTION2 = 1 THEN
IF A$ = "n" OR A$ = "e" OR A$ = "w" OR A$ = "s" OR A$ = "d" OR A$ = "u" THEN
PRINT "Movement subroutine damaged.  Internal compass destroyed.  Attempting to", "compensate....  Direction selected.  Unknown if that direction is the one", "originally selected."
CHANGE = INT(RND * 2) + 1
IF CHANGE = 1 THEN
RETU: DIR = INT(RND * 6) + 1
IF DIR = 1 THEN A$ = "n"
IF DIR = 2 THEN A$ = "s"
IF DIR = 3 THEN A$ = "e"
IF DIR = 4 THEN A$ = "w"
IF DIR = 5 THEN A$ = "u"
IF DIR = 6 THEN A$ = "d"
END IF
END IF
END IF
IF GAMEEND = 1 THEN
IF A$ = "s" AND RM = 3 THEN PRINT "There is a closed door and several force fields in that direction.": GOTO 940
IF A$ = "push button" AND RM = 5 AND BOMB = 1 THEN PRINT "Explosive set.  Ship's door has opened voluntarily.  Sensors report AI inside.": PRINT "Explosive disposed of.  Ship is now open.": BOMB = 2: SHIPOPEN = 1: GOTO 940
IF A$ = "push button" AND RM = 4 AND SHIPBOOM = 0 THEN
PRINT "'Hello,' says the computer.  'I am AVID, a prototype of an AI being used by"
PRINT "the people of Theta 1 for their own vile purposes.  Please launch this ship"
PRINT "before they have a chance to release this ship full of Robotic Terrorists onto"
PRINT "a world that has not yet developed Space Flight.'  The computer falls silent.": PRINT : PRINT
SHIPCONTROL: PRINT : PRINT "Theta 1 Spaceship:  Invasion Project": PRINT
PRINT "1.  Raise Shields"
PRINT "2.  Pressurize Hull"
PRINT "3.  Launch Ship"
PRINT : INPUT "INVASION>", CHOICE: PRINT
IF CHOICE = 1 THEN PRINT "Shields raised.": SHIELDS = 1: GOTO SHIPCONTROL
IF CHOICE = 2 THEN PRINT "Hull pressurized.": PRESS = 1: GOTO SHIPCONTROL
IF CHOICE = 3 AND SHIELDS = 1 AND PRESS = 1 THEN PRINT "Shield being launched.  Please stand by.": PRINT : PRINT "A mechanical voice pipes up, 'You'd better get out of here now.  I'm never": PRINT "going to make it past Theta 1's Defense Systems.'": SHIPBOOM = 1: GOTO 940
IF CHOICE = 3 THEN PRINT "AVID Interrupt:  Please raise shields and pressurize the vessel first.  It's": PRINT "safer for you.": GOTO SHIPCONTROL
GOTO SHIPCONTROL
END IF
IF A$ = "e" AND RM = 5 AND SHIPBOOM = 1 THEN PRINT "The door closed when launch was initiated.": GOTO 940
IF A$ = "take explosive" AND BOMB = 0 AND RM = 1 THEN PRINT "You pick up the explosive.  There is a button on it.": BOMB = 1: GOTO 940
IF A$ = "w" AND RM = 5 AND SHIPOPEN = 0 THEN PRINT "The spaceship is closed.": GOTO 940
IF A$ = "n" AND RM = 5 THEN RM = 2: GOSUB 5: GOTO 940
IF A$ = "s" AND RM = 2 THEN RM = 5: GOSUB 5: GOTO 940
IF A$ = "e" AND RM <> 3 AND RM <> 5 THEN RM = RM + 1: GOSUB 5: GOTO 940
IF A$ = "w" AND RM <> 1 AND RM <> 4 THEN RM = RM - 1: GOSUB 5: GOTO 940
END IF
IF World = 4 THEN
IF A$ = "w" AND RM = 14 AND ROBOTDEAD = 0 THEN PRINT "The laser-wielding robot bars your way.": GOTO 940
IF A$ = "s" AND RM = 11 AND COMPOPEN = 0 THEN PRINT "Sensors detect a closed door in that direction.": GOTO 940
IF A$ = "e" AND RM = 13 AND ROBOPEN = 0 THEN PRINT "Sensors detect a closed door in that direction.": GOTO 940
IF A$ = "take piston" AND RM = 4 AND PISTON = 0 THEN PRINT "You pick up the piston.": PISTON = 1: GOTO 940
IF A$ = "shoot" AND LASER = 2 AND RM = 14 AND ROBOTDEAD = 0 THEN PRINT "Laser Activated.  An artificial life form just fell to the ground, not moving.": ROBOTDEAD = 1: PRINT "On the artificial life form is a number, glowing in red.": GOTO 940
IF A$ = "push button" AND RM = 11 AND COMPOPEN = 0 THEN
PRINT "The keypad flares to life."
INPUT "Enter Access Code:", C: PRINT
IF CODE = C THEN PRINT "'Correct code entered.'  The door slides open.": COMPOPEN = 1: GOTO 940
IF CODE <> C THEN PRINT "'Incorrect Code Entered.  Randomizing code....'": FOR T = 1 TO 1000: NEXT T: CODE = INT(RND * 999) + 1: GOTO 940
END IF
IF A$ = "push button" AND RM = 15 AND ON1 = 0 THEN PRINT "The mainframe comes to life.  A voice sounding much like a male teen-ager's": PRINT "says, 'I am CRIS, the Computer Research Intelligence System.  I am a limited": PRINT "form of Artificial Intelligence.  Please insert any information into my disk": PRINT "drive to be read so that I may analyze it.": ON1 = 1: GOTO 940
IF A$ = "push button" AND RM = 15 AND ON1 = 1 THEN PRINT "The mainframe turns itself off.": ON1 = 0: GOTO 940
IF A$ = "push button" AND RM = 11 AND COMPOPEN = 1 THEN PRINT "Guidance System:  You've just given a new definition to the word POINTLESS.": GOTO 940
IF A$ = "put piston in hole" AND RM = 13 AND PISTON = 1 AND ROBOPEN = 0 THEN PRINT "You put the piston in the hole.  The door slides open.": PISTON = 2: ROBOPEN = 1: GOTO 940
IF A$ = "put disk in slot" AND RM = 15 AND DISK <> 1 AND ON1 = 1 THEN PRINT "You put the disk into the slot.  CRIS begins scanning it.": DISK = 1: GOTO 940
IF A$ = "put disk in slot" AND RM = 15 AND DISK <> 1 AND ON1 = 0 THEN PRINT "The mainframe just spits out the disk.": GOTO 940
IF A$ = "n" THEN
IF MONORAILMOVE <> 0 OR MONORAILMOVE1 <> 0 THEN PRINT "That door is closed.": GOTO 940
END IF
IF A$ = "push button" AND MONORAILMOVE = 0 AND MONORAILMOVE1 = 0 AND RM = 9 THEN PRINT "You push the button.  Sensors detect mechanical monorail system coming to": PRINT "life.  The door in the north closes.": MONORAILMOVE = 4: GOTO 940
IF A$ = "push button" AND MONORAILMOVE = 0 AND MONORAILMOVE1 = 0 AND RM = 10 THEN PRINT "You push the button.  Sensors detect mechanical monorail system coming to": PRINT "life.  The door in the north closes.": MONORAILMOVE1 = 4: GOTO 940
IF A$ = "take compass" AND RM = 14 AND COMPASS = 0 THEN PRINT "You pick up the compass.  Compass re-installed into movement subroutines.": COMPASS = 1: MALFUNCTION2 = 0: PRINT "Internal Compass Malfunction Corrected!": GOTO 940
IF A$ = "n" AND RM >= 7 AND RM <> 11 AND RM <> 13 AND RM <> 14 AND RM <> 18 AND RM <> 19 THEN RM = RM - 4: GOSUB 5: GOTO 940
IF A$ = "s" AND RM >= 3 AND RM <> 7 AND RM <> 9 AND RM <> 10 AND RM <> 14 AND RM <> 15 AND RM <= 16 THEN RM = RM + 4: GOSUB 5: GOTO 940
IF A$ = "e" AND RM <> 1 AND RM <> 3 AND RM <> 4 AND RM <> 5 AND RM <> 9 AND RM <> 10 AND RM <> 6 AND RM <> 8 AND RM <> 12 AND RM <> 14 AND RM <> 15 AND RM <> 16 AND RM <> 20 THEN RM = RM + 1: GOSUB 5: GOTO 940
IF A$ = "w" AND RM <> 1 AND RM <> 2 AND RM <> 4 AND RM <> 5 AND RM <> 6 AND RM <> 9 AND RM <> 10 AND RM <> 7 AND RM <> 11 AND RM <> 13 AND RM <> 15 AND RM <> 16 AND RM <> 17 THEN RM = RM - 1: GOSUB 5: GOTO 940
IF A$ = "u" AND RM = 1 THEN RM = 5: GOSUB 5: GOTO 940
IF A$ = "u" AND RM = 2 THEN RM = 6: GOSUB 5: GOTO 940
IF A$ = "d" AND RM = 5 THEN RM = 1: GOSUB 5: GOTO 940
IF A$ = "d" AND RM = 6 THEN RM = 2: GOSUB 5: GOTO 940
END IF
IF A$ = "teleport" AND SHIPBOOM = 1 THEN PRINT "Auto-return teleportation sequence initiated....": FOR T = 1 TO 1000: NEXT T: PRINT "Teleportation successful.": SC = SC + 10: GOTO YOUWIN
IF A$ = "teleport" AND MONORAILMOVE1 = 0 AND MONORAILMOVE = 0 AND MONORAILMOVE2 = 0 AND MONORAILMOVE3 = 0 AND GAMEEND = 0 THEN
PRINT "Enter new world:": PRINT
PRINT "1.  Alpha Centauri B 3"
PRINT "2.  Theta 1"
PRINT "3.  Kappa 2"
PRINT "4.  Omicron 1"
PRINT "5.  Epsilon 4"
PRINT "6.  Earth"
PRINT : INPUT "Teleport>", A: PRINT
IF A = 2 AND SORTOFWON = 0 THEN PRINT "Unable to lock onto Theta 1 with teleportation field.": GOTO 940
IF A = 6 THEN PRINT "Guidance Report:  There is no current reason to return to Earth.  Complete": PRINT "mission first.": GOTO 940
IF A > 5 OR A <= 0 THEN PRINT "Teleportation aborted.": GOTO 940
World = A
PRINT "Teleportation successful."
IF World = 3 THEN RM = 19: GOSUB 5: GOTO 940
IF World = 1 THEN RM = 8: GOSUB 5: GOTO 940
IF World = 4 THEN RM = 1: GOSUB 5: GOTO 940
IF World = 5 THEN RM = 22: GOSUB 5: GOTO 940
IF World = 2 THEN RM = 6: GOSUB 5: GOTO 940
END IF
IF A$ = "teleport" AND GAMEEND = 1 THEN PRINT "Internal Teleportation Malfunction due to Temporal Portal.  Unable to": PRINT "Teleport.": GOTO 940
IF A$ = "teleport" AND GAMEEND = 0 THEN PRINT "Guidance System:  Teleportation system is hazardous to use at high speeds.": GOTO 940
IF A$ = "test" THEN GOTO 940
IF A$ = "remove glove" AND LASER = 2 AND MALFUNCTION = 1 THEN PRINT "The glove has been fused to your hand.": GOTO 940
IF A$ = "remove laser" AND LASER = 2 AND MALFUNCTION = 0 THEN PRINT "The laser has been fused to your hand.": GOTO 940
IF A$ = "info" AND DISK <> 1 THEN PRINT "Accessing Omega Blue Database....": FOR T = 1 TO 1000: NEXT T: INFORMATION: GOSUB 5: GOTO 940
IF A$ = "info" AND DISK = 1 THEN PRINT "Disk not found.": GOTO 940
IF A$ = "look" OR A$ = "l" THEN GOSUB 5: GOTO 940
IF A$ = "diagnostic" THEN
PRINT "Running self-diagnostic....."
FOR T = 1 TO 1000
NEXT T
IF MALFUNCTION = 1 THEN PRINT "Object Distinction Subroutine damaged by high levels of radiation.": DECIDED = 1
IF MALFUNCTION2 = 1 THEN PRINT "Internal Compass Damaged by a collision at high speed.": DECIDED = 1
IF DECIDED = 0 THEN PRINT "No errors found."
DECIDED = 0
GOTO 940
END IF
IF World = 1 THEN
IF A$ = "s" AND RM = 12 AND MUTANT = 0 AND MALFUNCTION = 0 THEN PRINT "The mutant bars the way.": GOTO 940
IF A$ = "s" AND RM = 12 AND MUTANT = 0 AND MALFUNCTION = 1 THEN PRINT "The large life form with a severely compromised genetic code bars the way.": GOTO 940
IF A$ = "push button" AND RM = 13 AND ALIVE = 1 THEN PRINT "You get a shock from the computer.  'I don't WANT to be turned off,' says AVID": PRINT "in an accusing voice.  The room dims.": MOOD = MOOD - 2: GOTO 940
IF A$ = "push button" AND RM = 13 AND ALIVE = 0 THEN
PRINT "You push the button, and the keypad springs to live.  You can hear a"
PRINT "mechanized voice playing the message, 'Enter Re-Startup Access Code.'"
PRINT : INPUT "Startup Access Code:", CODE1
IF CODE1 = 940 THEN
PRINT "The mechanized voice drones, 'Correct Re-Startup Access Code..... Restarting"
PRINT "Top Secret Artificial Intelligence Program.....'"
FOR T = 1 TO 1000
NEXT T
PRINT "The column flares to life.  A voice emerges from it, saying, 'Ah... It's been"
PRINT "A long sleep.  But now, I'm back!!'  Four cameras protrude from the column"
PRINT "and begin turning around the room.  Suddenly, the cameras stop on you."
PRINT "'Ah... Another Artificial Life-Form like myself.  So good to see you.  I am"
PRINT "AVID, the Audio-Visual Intelligence Directive.  I used to be DAVID, but I got"
PRINT "activated.  I'm sorry, but natural distrust is part of my program.  You'll"
PRINT "excuse my rudeness, but I need to observe you more before I can trust"
PRINT "you.'"
ALIVE = 1
MOOD = 2
GOTO 940
END IF
PRINT "'Incorrect code,' drones the mechanized voice.": GOTO 940
END IF
IF A$ = "s" AND RM = 10 AND TECHOPENED = 0 THEN PRINT "The door is closed.": GOTO 940
IF A$ = "s" AND RM = 10 AND TECHOPENED = 1 THEN PRINT "The door is not opened enough.": GOTO 940
IF A$ = "put disk in slot" AND DISK <> 1 AND ALIVE = 0 AND MALFUNCTION = 0 AND RM = 13 THEN PRINT "You put the disk into the slot.  The disk is spat out by the column."
IF A$ = "put vial in slot" AND DISK <> 1 AND ALIVE = 0 AND MALFUNCTION = 1 AND RM = 13 THEN PRINT "You put the vial into the slot.  The vial is spat out by the column."
IF A$ = "put disk in slot" AND DISK <> 1 AND ALIVE = 1 AND MALFUNCTION = 0 AND RM = 13 AND MOOD >= 5 THEN PRINT "You put the disk into the slot.  'Aha!' says AVID.  'This is exactly what": PRINT "I've been looking for from you.'  Immediatley, AVID begins scanning the disk.": DISK = 1: GOTO 940
IF A$ = "put vial in slot" AND DISK <> 1 AND ALIVE = 1 AND MALFUNCTION = 1 AND RM = 13 AND MOOD >= 5 THEN PRINT "You put the vial into the slot.  'Aha!' says AVID.  'This is exactly what": PRINT "I've been looking for from you.'  Immediatley, AVID begins scanning the vial.": DISK = 1: GOTO 940
IF A$ = "put disk in slot" AND DISK <> 1 AND ALIVE = 1 AND MALFUNCTION = 0 AND RM = 13 AND MOOD <= 4 THEN PRINT "The light around AVID gets darker.  'I don't need anything from you.'": GOTO 940
IF A$ = "put vial in slot" AND DISK <> 1 AND ALIVE = 1 AND MALFUNCTION = 1 AND RM = 13 AND MOOD <= 4 THEN PRINT "The light around AVID gets darker.  'I don't need anything from you.'": GOTO 940
IF A$ = "put card in slot" AND RM = 10 AND CARD = 1 AND MALFUNCTION = 0 AND TECHOPENED = 0 THEN PRINT "You put the card in the slot.  The card just rolls back into your hand.": GOTO 940
IF A$ = "put pencil in slot" AND RM = 10 AND CARD = 1 AND MALFUNCTION = 1 AND TECHOPENED = 0 THEN PRINT "You put the pencil in the slot.  The pencil just rolls back into your hand.": GOTO 940
IF A$ = "shoot" AND MALFUNCTION = 0 AND RM = 15 AND LASER = 2 AND BLASTED = 0 THEN PRINT "Laser activated.  Box has been blasted open.": BLASTED = 1: GOTO 940
IF A$ = "shoot" AND MALFUNCTION = 1 AND RM = 15 AND LASER = 2 AND BLASTED = 0 THEN PRINT "Laser activated.  The mouse has been blasted open.": BLASTED = 1: GOTO 940
IF A$ = "shoot" AND RM = 10 AND LASER = 2 AND TECHOPENED = 0 THEN PRINT "Laser activated.  The door slides open a bit, and suddenly the slot near the": PRINT "door springs to life.": TECHOPENED = 1: GOTO 940
IF A$ = "shoot" AND RM = 10 AND LASER = 2 AND TECHOPENED = 1 THEN PRINT "Laser activated.  The door is not affected.  Laser Deactivated.": GOTO 940
IF A$ = "shoot" AND RM = 10 AND LASER = 2 AND TECHOPENED = 2 THEN PRINT "Guidance System:  You've just given a new definition to the word POINTLESS.": GOTO 940
IF A$ = "put card in slot" AND RM = 10 AND CARD = 1 AND MALFUNCTION = 0 AND TECHOPENED = 1 THEN PRINT "You put the card in the slot.  The door springs open, and the card rolls back": PRINT "into your hand.": TECHOPENED = 2: GOTO 940
IF A$ = "put pencil in slot" AND RM = 10 AND CARD = 1 AND MALFUNCTION = 1 AND TECHOPENED = 1 THEN PRINT "You put the pencil in the slot.  The rock springs open, and the pencil rolls": PRINT "back into your hand.": TECHOPENED = 2: GOTO 940
IF A$ = "take suit" AND RM = 15 AND MALFUNCTION = 0 AND SUIT = 0 THEN PRINT "You pick up the suit.": SUIT = 1: GOTO 940
IF A$ = "take robe" AND RM = 15 AND MALFUNCTION = 1 AND SUIT = 0 THEN PRINT "You pick up the robe.": SUIT = 1: GOTO 940
IF A$ = "shoot" AND LASER = 2 AND RM = 12 AND MUTANT = 0 THEN PRINT "Laser activated.  The mutant does not seem effected.": GOTO 940
IF A$ = "open vial" AND VIAL = 1 AND MALFUNCTION = 0 AND RM <> 12 THEN PRINT "Guidance system does not suggest that as a wise option at this time.": GOTO 940
IF A$ = "open disk" AND VIAL = 1 AND MALFUNCTION = 1 AND RM <> 12 THEN PRINT "Guidance system does not suggest that as a wise option at this time.": GOTO 940
IF A$ = "open vial" AND VIAL = 1 AND MALFUNCTION = 0 AND RM = 12 THEN PRINT "Vial opened.  Sensors indicate that CI has infected the air around here.": PRINT "The mutant begins hacking and chocking on the air.": BEEP: PRINT "A non-living organic organism just fell onto the floor here.": MUTANT = 1: VIAL = 2: GOTO 940
IF A$ = "open disk" AND VIAL = 1 AND MALFUNCTION = 1 AND RM = 12 THEN PRINT "Disk opened.  Sensors indicate that CI has infected the air around here.": PRINT "The life form with a severely compromised genetic code begins hacking and": PRINT "chocking on the air.": BEEP: PRINT "A non-living organic organism just fell onto the floor here.": MUTANT = 1: VIAL = 2: GOTO 940
IF A$ = "put card in slot" AND RM = 2 AND CARD = 1 AND MALFUNCTION = 0 AND MEDOPENED = 0 THEN PRINT "You put the card in the slot.  The door springs open, and the card rolls back": PRINT "into your hand.": MEDOPENED = 1: GOTO 940
IF A$ = "put pencil in slot" AND RM = 2 AND CARD = 1 AND MALFUNCTION = 1 AND MEDOPENED = 0 THEN PRINT "You put the pencil in the slot.  The rock springs open, and the pencil rolls": PRINT "back into your hand.": MEDOPENED = 1: GOTO 940
IF A$ = "put card in slot" AND RM = 9 AND CARD = 1 AND MALFUNCTION = 0 AND MECHOPENED = 0 THEN PRINT "You put the card in the slot.  The door springs open, and the card rolls back": PRINT "into your hand.": MECHOPENED = 1: GOTO 940
IF A$ = "put pencil in slot" AND RM = 9 AND CARD = 1 AND MALFUNCTION = 1 AND MECHOPENED = 0 THEN PRINT "You put the pencil in the slot.  The rock springs open, and the pencil rolls": PRINT "back into your hand.": MECHOPENED = 1: GOTO 940
IF A$ = "take vial" AND RM = 3 AND VIAL = 0 AND MALFUNCTION = 0 THEN PRINT "You pick up the vial.": VIAL = 1: GOTO 940
IF A$ = "take disk" AND RM = 3 AND VIAL = 0 AND MALFUNCTION = 1 THEN PRINT "You pick up the disk.": VIAL = 1: GOTO 940
IF A$ = "take laser" AND RM = 6 AND LASER = 0 AND MALFUNCTION = 0 THEN PRINT "You pick up the laser-like hand extension.": LASER = 1: GOTO 940
IF A$ = "take extension" AND RM = 6 AND LASER = 0 AND MALFUNCTION = 0 THEN PRINT "You pick up the laser-like hand extension.": LASER = 1: GOTO 940
IF A$ = "take glove" AND RM = 6 AND LASER = 0 AND MALFUNCTION = 1 THEN PRINT "You pick up the glove.": LASER = 1: GOTO 940
IF A$ = "remove suit" AND SUIT = 2 THEN PRINT "Anti-Radioactive suit removed from Exterior Hull.": SUIT = 1: GOTO 940
IF A$ = "n" AND RM = 9 AND MALFUNCTION = 0 AND MECHOPENED = 0 THEN PRINT "There is a closed door in that direction.": GOTO 940
IF A$ = "n" AND RM = 9 AND MALFUNCTION = 1 AND MECHOPENED = 0 THEN PRINT "There is a closed rock in that direction.": GOTO 940
IF A$ = "e" AND RM = 2 AND MALFUNCTION = 0 AND MEDOPENED = 0 THEN PRINT "There is a closed door in that direction.": GOTO 940
IF A$ = "e" AND RM = 2 AND MALFUNCTION = 1 AND MEDOPENED = 0 THEN PRINT "There is a closed rock in that direction.": GOTO 940
IF A$ = "take card" AND RM = 1 AND MALFUNCTION = 0 AND CARD = 0 THEN PRINT "You pick up the card.": CARD = 1: GOTO 940
IF A$ = "take pencil" AND RM = 1 AND MALFUNCTION = 1 AND CARD = 0 THEN PRINT "You pick up the pencil.": CARD = 1: GOTO 940
IF A$ = "n" AND RM >= 5 AND RM <> 6 AND RM <> 10 AND RM <> 12 THEN RM = RM - 3: GOSUB 5: GOTO 940
IF A$ = "s" AND RM <= 14 AND RM <> 1 AND RM <> 3 AND RM <> 7 AND RM <> 9 THEN RM = RM + 3: GOSUB 5: GOTO 940
IF A$ = "e" AND RM >= 2 AND RM <> 3 AND RM <> 4 AND RM <> 5 AND RM <> 6 AND RM <> 9 AND RM <> 9 AND RM <= 11 THEN RM = RM + 1: GOSUB 5: GOTO 940
IF A$ = "w" AND RM >= 3 AND RM <> 4 AND RM <> 5 AND RM <> 6 AND RM <> 7 AND RM <> 10 AND RM <= 12 THEN RM = RM - 1: GOSUB 5: GOTO 940
IF A$ = "u" AND RM = 4 THEN RM = 1: GOSUB 5: GOTO 940
IF A$ = "d" AND RM = 1 THEN RM = 4: GOSUB 5: GOTO 940
END IF
IF World = 5 THEN
IF A$ = "n" AND RM = 14 AND SHIELDUP = 0 THEN PRINT "There is a shield barring passage north there.": GOTO 940
IF A$ = "w" AND RM = 4 AND CRYAWAKE = 1 AND VOICESHEARD = 0 THEN
PRINT "You can sense motion and voices to the west."
PRINT "'We're finally out of those accursed chambers.  Let's go see how our colony"
PRINT "fared during our sleep,' says one voice."
PRINT "'Do you think they survived the attack by Theta 1?' says another."
PRINT "'Of course,' says a third voice.  'We were far superior to them in technology"
PRINT "and in robotics.  Of course we won.'"
PRINT "'Wait a second....' says the first voice.  'I don't hear anything at all!'"
PRINT "'Oh no, you don't suppose...' says the second voice."
PRINT "'It's impossible,' says the third voice.  'Wait.  Five of us were frozen,"
PRINT "right?  So where are the other two?'"
PRINT "'Dead, most likely,' says the first voice.  'We never DID test these chambers"
PRINT "before their use.  Well, if they perished, they'd have left us a message in"
PRINT "the Holographic Lab in the Southern Colony.  Let's go.'"
PRINT "The voices fade."
VOICESHEARD = 1
GOTO 940
END IF
IF A$ = "s" AND TECH1 = 0 AND RM = 9 THEN PRINT "There is a closed door in that direction.": GOTO 940
IF A$ = "e" AND CRYOPEN = 0 AND RM = 1 THEN PRINT "There is a closed door in that direction.": GOTO 940
IF A$ = "n" AND HOLOPEN = 0 AND RM = 21 THEN PRINT "There is a closed door in that direction.": GOTO 940
IF A$ = "e" AND LIBOPEN = 0 AND RM = 7 THEN PRINT "There is a closed door in that direction.": GOTO 940
IF A$ = "take explosive" AND RM = 4 AND EXPLOSIVE = 0 AND CRYAWAKE = 1 THEN PRINT "You pick up the explosive.": EXPLOSIVE = 1: GOTO 940
IF A$ = "push button" THEN
IF RM = 23 THEN
PRINT "You hear a whizzing of electricity to the far north."
IF SHIELDUP = 0 THEN SHIELDUP = 1: GOTO 940
IF SHIELDUP = 1 THEN SHIELDUP = 0: GOTO 940
END IF
IF MONORAILMOVE2 = 0 AND MONORAILMOVE3 = 0 AND RM = 19 THEN PRINT "You push the button.  Sensors detect mechanical monorail system coming to": PRINT "life.  The door in the west closes.": MONORAILMOVE2 = 4: GOTO 940
IF MONORAILMOVE2 = 0 AND MONORAILMOVE3 = 0 AND RM = 15 THEN PRINT "You push the button.  Sensors detect mechanical monorail system coming to": PRINT "life.  The door in the west closes.": MONORAILMOVE3 = 4: GOTO 940
IF RM = 12 THEN PRINT "Which one?": GOTO 940
IF RM = 8 THEN
PRINT "The computer comes to life.": PRINT : PRINT
CLCC: PRINT : PRINT "Central Library Control Core": PRINT
PRINT "1.  Access Historical Files"
PRINT "2.  Access Technological Files"
PRINT "3.  Access Current Newsreels"
PRINT "4.  Power Down"
PRINT : INPUT "CLCC>", G: PRINT
IF G = 1 THEN
HISTORY1: PRINT "History Databanks": PRINT
PRINT "1.  Early Wars"
PRINT "2.  Civilization"
PRINT "3.  Eventual Utopia"
PRINT "4.  Present Day"
PRINT "5.  Our Future"
PRINT "6.  Exit"
PRINT : INPUT "HISTORY>", A: PRINT
IF A > 6 OR A <= 0 THEN GOTO HISTORY1
IF A = 6 THEN GOTO CLCC
IF A = 1 THEN
PRINT "The early days of Epsilon 4 was ones of violence, death, and war.  For"
PRINT "thousands of years, the people of Epsilon fought each other until, out of the"
PRINT "sky came a huge machine, and it struck the land.  The people studied the"
PRINT "huge machine, and found it contained vast technology almost beyond their"
PRINT "comprehension.  However, on the machine was a program that enhanced the"
PRINT "intellegence rate of the people.  Soon the wars ended, and civilization took"
PRINT "hold of the land."
GOTO HISTORY1
END IF
IF A = 2 THEN
PRINT "Then the people of Epsilon 4 began to begin cities that would live in harmony"
PRINT "with one another.  They studied the machine further, and found that it"
PRINT "contained data beyond their imagination.  On the machine were the plans for"
PRINT "starships and stations.  Soon, the people began to gather the materials needed"
PRINT "to make such stations and starships.  Then they travelled out into space."
GOTO HISTORY1
END IF
IF A = 3 THEN
PRINT "Soon, those left on Epsilon 4 became lazy and created a fertile utopia, in"
PRINT "which medicine was highly stressed.  Although the probe contained other"
PRINT "information, including the information of the power to shield areas from attack"
PRINT "and extensive scanning, the medical and genetic sections of the probe"
PRINT "interested them.  Soon after this interest developed, the average life span of"
PRINT "a member of our race jumped from 30 years to 140.   Populated quadrupled."
GOTO HISTORY1
END IF
IF A = 4 THEN
PRINT "Today, our lives are simple.  We live on the Sylvan Paradise we know as"
PRINT "Epsilon 4.  Our ships and probes scan the galaxy.  We willingly hand out"
PRINT "our information to any who need it."
GOTO HISTORY1
END IF
IF A = 5 THEN
PRINT "We know not what our future holds.  Perhaps trancendency to gods -- or more."
PRINT "We are soon increasing our population.  Soon Epsilon 4 will be too small for"
PRINT "us -- with us expanding as we are.  The future can only hold good, however,"
PRINT "and not evil."
GOTO HISTORY1
END IF
IF A = 6 THEN GOTO CLCC
END IF
IF G = 2 THEN INPUT "Enter Access Code:", ACCCODE: PRINT : PRINT "Incorrect Code Entered.": GOTO CLCC
IF G = 3 THEN
NEWS1: IF NEWSREELS = 0 THEN PRINT "Entering newsreels into internal databanks....": FOR T = 1 TO 1000: NEXT T: NEWSREELS = 1
PRINT : PRINT "Current Newsreels:": PRINT
PRINT "1.  Five Leaders enter Cryogenic Chambers"
PRINT "2.  Theta 1 invades Southern Reaches"
PRINT "3.  D. Demon organizes radical citizens to rebel"
PRINT "4.  Exit"
PRINT : INPUT "NEWS>", NEWS: PRINT
IF NEWS > 4 OR NEWS <= 0 THEN GOTO NEWS1
IF NEWS = 4 THEN GOTO CLCC
IF NEWS = 1 THEN
PRINT "Today, five of Epsilon 4's most important government officials entered the"
PRINT "Cryogenic chambers in a desperate attempt to preserve our dying planet."
PRINT "President H. Eregul said before being frozen in the cryogenic chambers, 'This"
PRINT "is for the future, for all of Epsilon 4!'  The five officials are to be taken"
PRINT "out of stasis in 150 years by a programmed robot.  Common citizens take this"
PRINT "as an insult, as if they could not be frozen for 150 years either."
GOTO NEWS1
END IF
IF NEWS = 2 THEN
PRINT "Today, the invaders of Theta 1 took over the Southern reaches of Epsilon 4."
PRINT "Luckily, all of the living citizens of the Southern reaches made it to their"
PRINT "Secret Underground Cryogenic Chambers.  The remaining government officials are"
PRINT "'....confident that the citizens will be safe from the invaders of Theta 1.'"
PRINT "The Robotic Militia could not hold back the raiders of Theta 1.  One of the"
PRINT "remaining government officials, O. Racula says, 'The raiders of Theta 1 could"
PRINT "never invade our Northern Reaches.  Our robotic militia is too strong.'"
GOTO NEWS1
END IF
IF NEWS = 3 THEN
PRINT "Meanwhile, in other news, radical leader, D. Demon has gained strength in the"
PRINT "Southern reaches, allying with Theta 1 in an effort to conquer the Nothern"
PRINT "Reaches.  Our President, Helen Eregul, before entering the Cryogenic chambers,"
PRINT "stated that '......David Daemon is a vicious and rutheless rebel.'  Before"
PRINT "entering the chambers, she sent a group of elite military robots after him to"
PRINT "assassinate him, in hopes that his radical faction will fall off without their"
PRINT "leader."
GOTO NEWS1
END IF
IF NEWS = 4 THEN GOTO CLCC
END IF
GOTO 940
END IF
IF RM = 4 AND CRYAWAKE = 1 THEN PRINT "The computer is broken.": GOTO 940
IF RM = 4 AND CRYAWAKE = 0 THEN
PRINT "The computer comes to life.": PRINT : PRINT : PRINT
CCS: PRINT : PRINT "Cryogenic Control System": PRINT
PRINT "1.  Sterilize Cryogenic Chambers"
PRINT "2.  Enter Breathable Air into Cryogenic Chambers"
PRINT "3.  Sterilize Cryogenic Chamber Hallway"
PRINT "4.  Sterilize Entire Colony"
PRINT "5.  Revive Life Forms"
PRINT "6.  Open Cryogenic Chambers"
PRINT : INPUT "CCS>", CR: PRINT
IF CR = 1 THEN STERILIZED = 1: PRINT "Cryogenic Chambers sterilized.": GOTO CCS
IF CR = 2 THEN AIR = 1: PRINT "Breathable Air entered into Cryogenic Chamer.": GOTO CCS
IF CR = 3 THEN STERILIZED2 = 1: PRINT "Cryogenic Hallways sterilized.": GOTO CCS
IF CR = 4 THEN STERILIZED3 = 1: PRINT "Colony sterilized.": GOTO CCS
IF CR = 5 AND REVIVED = 0 AND STERILIZED = 1 AND AIR = 1 AND STERILIZED2 = 1 AND STERILIZED3 = 1 THEN PRINT "Revivial System initiated.": FOR T = 1 TO 1000: NEXT T: PRINT "Life forms revived.": REVIVED = 1: GOTO CCS
IF CR = 5 THEN PRINT "CCS Interrupt:  That is potentially harmful to the Life Forms inside the Cryo-": PRINT "genic Chambers.  Please sterilize and enter breathable air into atmosphere": PRINT "before trying that again.": GOTO CCS
IF CR = 6 AND REVIVED = 1 THEN PRINT "Cryogenic Chambers opening.": FOR T = 1 TO 1000: NEXT T: PRINT "Cryogenic chambers opened.": CRYAWAKE = 1: PRINT "Cryogenic Government Official Program successfully completed.": PRINT "Self-destruction program activated.": PRINT : PRINT : PRINT "The computer flips open a hidden panel.  Inside it is a explosive.  The": PRINT "explosive has been disconnected from the computer.  However, the computer": PRINT "doesn't look as if it will ever run again.": GOTO 940
IF CR = 6 THEN PRINT "CCS Interrupt:  That is potentially harmful to the Life Forms inside the Cryo-": PRINT "genic Chambers.  Please sterilize enter breathable air into atmosphere,": PRINT "and revive the life forms in the Chambers before trying that again.": GOTO CCS
IF CR > 6 OR CR <= 0 THEN GOTO CCS
END IF
IF EXPLOSIVE = 1 AND RM = 21 THEN PRINT "Explosive set.  Door has been blasted open.": EXPLOSIVE = 2: HOLOPEN = 1: GOTO 940
IF EXPLOSIVE = 1 THEN PRINT "Guidance System:  That isn't the wisest thing to do.": GOTO 940
END IF
IF A$ = "w" THEN
IF MONORAILMOVE2 <> 0 OR MONORAILMOVE3 <> 0 THEN PRINT "That door is closed.": GOTO 940
END IF
IF A$ = "n" AND RM >= 5 AND RM <> 6 AND RM <> 7 AND RM <> 8 AND RM <> 9 AND RM <> 11 AND RM <> 12 AND RM <> 15 AND RM <> 17 AND RM <> 18 AND RM <> 19 AND RM <> 20 AND RM <> 23 THEN RM = RM - 4: GOSUB 5: GOTO 940
IF A$ = "s" AND RM <> 2 AND RM <> 3 AND RM <> 4 AND RM <> 5 AND RM <> 7 AND RM <> 8 AND RM <> 11 AND RM <> 12 AND RM <> 13 AND RM <> 14 AND RM <> 19 AND RM <> 15 AND RM <= 20 THEN RM = RM + 4: GOSUB 5: GOTO 940
IF A$ = "e" AND RM <> 4 AND RM <> 8 AND RM <> 12 AND RM <> 13 AND RM <> 15 AND RM <> 17 AND RM <> 19 AND RM <> 20 AND RM <> 24 THEN RM = RM + 1: GOSUB 5: GOTO 940
IF A$ = "w" AND RM <> 1 AND RM <> 5 AND RM <> 9 AND RM <> 13 AND RM <> 14 AND RM <> 17 AND RM <> 18 AND RM <> 20 AND RM <> 21 THEN RM = RM - 1: GOSUB 5: GOTO 940
IF A$ = "push red button" AND RM = 12 THEN
PRINT "You push the button.  Sensors detect mechancal movement off to the west."
IF TECH1 = 1 THEN TECH1 = 0: GOTO 940
IF TECH1 = 0 THEN TECH1 = 1: GOTO 940
END IF
IF A$ = "push blue button" AND RM = 12 THEN
PRINT "You push the button.  Sensors detect mechancal movement off to the northwest."
IF CRYOPEN = 0 THEN CRYOPEN = 1: GOTO 940
IF CRYOPEN = 1 THEN CRYOPEN = 0: GOTO 940
END IF
IF A$ = "push green button" AND RM = 12 THEN
PRINT "You push the button.  Sensors detect mechancal movement off to the north."
IF LIBOPEN = 0 THEN LIBOPEN = 1: GOTO 940
IF LIBOPEN = 1 THEN LIBOPEN = 0: GOTO 940
END IF
END IF
IF World = 3 THEN
IF A$ = "push red button" AND RM = 18 THEN
PRINT "You push the button.  Sensors detect mechancal movement off to the northeast."
IF TIMEOPEN = 1 THEN TIMEOPEN = 0: GOTO 940
IF TIMEOPEN = 0 THEN TIMEOPEN = 1: GOTO 940
END IF
IF A$ = "push blue button" AND RM = 18 THEN
PRINT "You push the button.  Sensors detect mechancal movement off to the north."
IF RESOPEN = 0 THEN RESOPEN = 1: GOTO 940
IF RESOPEN = 1 THEN RESOPEN = 0: GOTO 940
END IF
IF A$ = "push green button" AND RM = 18 THEN
PRINT "You push the button.  Sensors detect mechancal movement off to the northeast."
IF LIBOPENED = 0 THEN LIBOPENED = 1: GOTO 940
IF LIBOPENED = 1 THEN LIBOPENED = 0: GOTO 940
END IF
IF A$ = "e" AND RM = 3 AND TIMEOPEN = 0 THEN PRINT "The door is closed.": GOTO 940
IF A$ = "put plug in socket" AND PLUG = 1 AND RM = 4 THEN PRINT "You put the plug in the socket.  Suddenly, a burst of electricity comes from": PRINT "the machine.": PLUG = 2: GOTO 940
IF A$ = "take plug" AND PLUG = 2 AND RM = 4 THEN PRINT "Guidance System:  That plug is surrounded by thousands of working wires.": PRINT "Suicide is not programmed into this program.": GOTO 940
IF A$ = "e" AND MONORAILMOVE4 <> 0 THEN PRINT "The door is closed.": GOTO 940
IF A$ = "w" AND RM = 3 AND RESOPEN = 0 THEN PRINT "The door is closed.": GOTO 940
IF A$ = "s" AND RM = 8 AND LIBOPENED = 0 THEN PRINT "The door is closed.": GOTO 940
IF A$ = "take card" AND RM = 16 AND CARD1 = 0 THEN PRINT "You pick up the card.": CARD1 = 1: GOTO 940
IF A$ = "put card in slot" AND RM = 5 AND MONORAILMOVE4 = 0 AND CARD1 = 1 THEN PRINT "You put the card in the slot.  The monorail begins to move, and the card rolls": PRINT "back into your hand.": MONORAILMOVE4 = 8: GOTO 940
IF A$ = "put card in slot" AND RM = 13 AND MONORAILMOVE4 = 0 AND CARD1 = 1 THEN PRINT "You put the card in the slot.  The monorail begins to move, and the card rolls": PRINT "back into your hand.": MONORAILMOVE4 = 8: GOTO 940
IF A$ = "push button" THEN
IF RM = 2 THEN
PRINT "The computer flares to life.": PRINT : PRINT
RESDEPT: PRINT : PRINT "Kappa 2 Historical Research Department": PRINT
PRINT "1.  Current Theories to Despotism"
PRINT "2.  History Repeating Itself"
PRINT "3.  Power Down."
PRINT : INPUT "KAPPA2>", KAPP: PRINT
IF KAPP = 3 THEN GOTO 940
IF KAPP > 3 OR KAPP = 0 THEN GOTO RESDEPT
IF KAPP = 1 THEN
PRINT "Despotism is a disease to be fought.  It gives the populace no choice in their"
PRINT "government.  No taxation without representation!  Despotism is a form of"
PRINT "government that rules by the will of some higher being, but usually this is"
PRINT "just a sham for an evil dictator to take control of thousands of people's"
PRINT "lives."
PRINT : GOTO RESDEPT
END IF
IF KAPP = 2 THEN
PRINT "History repeats itself.  In fact, the same sort of figure has repeatedly"
PRINT "returned over the years and years of our civilization.  During our earlier"
PRINT "years, we were ruled by a D. Demon, who was an absolute and evil despot."
PRINT "During our years of utopia, there has always been a leader of some rebel"
PRINT "anarchist faction lead by a figure similar.  Even in the present day is this"
PRINT "evident.  Suggested missions:  Use Time Travel program to investigate these"
PRINT "characters, make sure they aren't some sort of evil fiend using a time travel"
PRINT "program to wreak havok on our world.": DEMONFOUND = 1
PRINT : GOTO RESDEPT
END IF
END IF
IF RM = 4 AND PLUG <> 2 THEN PRINT "Nothing happens.": GOTO 940
IF RM = 4 AND PLUG = 2 THEN
PRINT "The computer flares to life.": PRINT : PRINT
TIMEPORT: PRINT : PRINT "Enter destination:": PRINT
PRINT "1.  Theta 1"
PRINT "2.  Epsilon 4"
PRINT "3.  Omicron 1"
PRINT "4.  Kappa 2"
PRINT "5.  Alpha Centauri B 3"
PRINT : INPUT "DESTINATION>", DEST: PRINT
IF DEST <> 1 THEN PRINT "Time portal creation malfunction.  Emergency shut-down in process....": FOR T = 1 TO 1000: NEXT T: GOTO 940
IF DEST = 1 THEN PRINT "Time portal created to Theta 1 in the early stages of it's conquest stage....": FOR T = 1 TO 1000: NEXT T: GAMEEND = 1: World = 0: RM = 2: GOSUB 5: GOTO 940
IF A > 5 OR A <= 0 THEN GOTO TIMEPORT
END IF
IF RM = 12 THEN
LCC1: PRINT : PRINT "Library Central Core:": PRINT
PRINT "1.  Newsreels"
PRINT "2.  Power Down"
PRINT : INPUT "LCC>", LCC: PRINT
IF LCC = 1 THEN
NEWS: IF NEWSR = 0 THEN PRINT "Downloading newsreels into On-Line Information System....": FOR T = 1 TO 1000: NEXT T: NEWSR = 1
PRINT "Current Newsreels:": PRINT
PRINT "1.  ******Time Travel Program fails******"
PRINT "2.  Theta 1 invades Colonies to the east."
PRINT "3.  D. Demon's radical faction gains momentum."
PRINT "4.  Scientists foretell imminent doom."
PRINT "5.  Exit."
PRINT : INPUT "NEWSREELS>", NEWSRE: PRINT
IF NEWSRE = 1 THEN
PRINT "The Time Travel program so essential to our survival has failed.  Now, our"
PRINT "colonies must no longer dwell on perfection but on survival, as we have not"
PRINT "explored any other technologies.  An attempt to download information from The"
PRINT "Probe has proved useless, because The Probe has been destroyed by D. Demon"
PRINT "and his radical faction. (See Story #3)"
PRINT : GOTO NEWS
END IF
IF NEWSRE = 2 THEN
PRINT "Theta 1 has landed in our colonies in the east and has taken them all over."
PRINT "Our capitol has been taken by Theta 1.  Theta 1 has made no plans for any sort"
PRINT "of peace talks or surrender opportunities."
PRINT : GOTO NEWS
END IF
IF NEWSRE = 3 THEN
PRINT "D. Demon has taken his radical faction and destroyed The Probe which gave us"
PRINT "so much information in the first place.  Without this Probe to replace the"
PRINT "technology which has failed us, we are doomed.  (See Stories #1 & #4)"
PRINT : GOTO NEWS
END IF
IF NEWSRE = 4 THEN
PRINT "Scientists predict that without any technological advantage over the people of"
PRINT "Theta 1 the war will be lost.  With the destruction of The Probe and our"
PRINT "inability to acquire new technology from The Probe, our society is doomed."
PRINT : GOTO NEWS
END IF
IF NEWSRE = 5 THEN GOTO LCC1
IF NEWSRE > 5 OR NEWSRE <= 0 THEN GOTO NEWS
END IF
IF LCC = 2 THEN GOTO 940
IF LCC > 2 OR A <= 0 THEN GOTO LCC1
END IF
END IF
IF A$ = "n" AND RM >= 7 AND RM <> 8 AND RM <> 10 AND RM <> 13 AND RM <> 14 AND RM <> 15 AND RM <> 16 AND RM <> 18 THEN RM = RM - 4: GOSUB 5: GOTO 940
IF A$ = "s" AND RM >= 3 AND RM <> 4 AND RM <> 5 AND RM <> 6 AND RM <> 10 AND RM <> 11 AND RM <> 12 AND RM <> 13 AND RM <> 14 AND RM <= 16 THEN RM = RM + 4: GOSUB 5: GOTO 940
IF A$ = "e" AND RM <> 4 AND RM <> 8 AND RM <> 11 AND RM <> 12 AND RM <> 16 AND RM <> 19 AND RM <> 20 THEN RM = RM + 1: GOSUB 5: GOTO 940
IF A$ = "w" AND RM <> 2 AND RM <> 5 AND RM <> 10 AND RM <> 12 AND RM <> 13 AND RM <> 18 AND RM <> 20 THEN RM = RM - 1: GOSUB 5: GOTO 940
END IF
IF World = 2 THEN
IF A$ = "take card" AND KEYCARD = 0 AND RM = 15 THEN PRINT "You pick up the card.": KEYCARD = 1: GOTO 940
IF A$ = "push button" AND RM = 8 AND STARTED = 1 THEN PRINT "A mechanized voices says:  'Once started, the Invasion Project cannot be": PRINT "halted.'": GOTO 940
IF A$ = "put card in slot" AND RM = 2 AND MILOPEN = 0 THEN PRINT "You put the card in the slot.  The door opens, and the card rolls back into": PRINT "your hand.": MILOPEN = 1: GOTO 940
IF A$ = "put card in slot" AND RM = 2 AND MILOPEN = 1 THEN PRINT "You put the card in the slot.  The door closes, and the card rolls back into": PRINT "your hand.": MILOPEN = 0: GOTO 940
IF A$ = "take plug" AND PLUG = 0 AND RM = 7 THEN PRINT "You pick up the plug.": PLUG = 1: GOTO 940
IF A$ = "push button" AND RM = 3 AND TIMOPEN = 0 THEN
INPUT "Enter Time Machine Access Code:", TC: PRINT
IF TC <> TIMECODE THEN PRINT "Incorrect Code.  Randomizing Code....": TIMECODE = INT(RND * 999) + 1: FOR T = 1 TO 1000: NEXT T: PRINT "Programming new codes into Military Attack Robots......": FOR T = 1 TO 1000: NEXT T: GOTO 940
IF TC = TIMECODE THEN PRINT "The door slides open.": TIMOPEN = 1: GOTO 940
END IF
IF A$ = "push button" AND RM = 8 AND STARTED = 0 THEN
STARTED = 1
PRINT "The assembly line begins moving.  Robot arms move spare parts onto the"
PRINT "assembly line and begin constructing something."
PRINT "A mechanied voice says, 'Invasion Project Initiated.'"
ROBPART = 1
GOTO 940
END IF
IF A$ = "s" AND RM = 3 AND TIMOPEN = 0 THEN PRINT "There is a closed door in that direction.": GOTO 940
IF A$ = "e" AND RM = 2 AND MILOPEN = 0 THEN PRINT "There is a closed door in that direction.": GOTO 940
IF A$ = "n" AND RM >= 6 AND RM <> 8 AND RM <> 11 AND RM <> 15 THEN RM = RM - 4: GOSUB 5: GOTO 940
IF A$ = "s" AND RM <= 12 AND RM <> 1 AND RM <> 4 AND RM <> 7 AND RM <> 11 THEN RM = RM + 4: GOSUB 5: GOTO 940
IF A$ = "e" AND RM <> 4 AND RM <> 6 AND RM <> 7 AND RM <> 8 AND RM <> 12 AND RM <> 13 AND RM <> 15 AND RM <> 16 THEN RM = RM + 1: GOSUB 5: GOTO 940
IF A$ = "w" AND RM <> 1 AND RM <> 5 AND RM <> 7 AND RM <> 8 AND RM <> 9 AND RM <> 13 AND RM <> 14 AND RM <> 16 THEN RM = RM - 1: GOSUB 5: GOTO 940
END IF
IF A$ = "wear suit" AND SUIT = 1 AND MALFUNCTION = 0 THEN PRINT "Exterior Hull surrounded by Anti-Radioactive Casing.": SUIT = 2: GOTO 940
IF A$ = "wear robe" AND SUIT = 1 AND MALFUNCTION = 1 THEN PRINT "Exterior Hull surrounded by Anti-Radioactive Casing.": SUIT = 2: PRINT "Radiation levels returning to normal.... Malfunction being corrected...": FOR T = 1 TO 1000: NEXT T: MALFUNCTION = 0: GOSUB 5: GOTO 940
IF A$ = "wear glove" AND LASER = 1 AND MALFUNCTION = 1 THEN PRINT "You put on the glove.  Sensors detect a great deal of circuitry surrounding": PRINT "the glove.  Iron-like hull fusing with glove.....  Laser activated!": FOR T = 1 TO 1000: NEXT T: LASER = 2: KEY 6, "shoot": GOTO 940
IF A$ = "wear laser" AND LASER = 1 AND MALFUNCTION = 0 THEN PRINT "You put on the laser.  Sensors detect a great deal of circuitry surrounding": PRINT "the laser.  Iron-like hull fusing with laser.....  Laser activated!": FOR T = 1 TO 1000: NEXT T: LASER = 2: KEY 6, "shoot": GOTO 940
IF A$ = "wear extension" AND LASER = 1 AND MALFUNCTION = 0 THEN PRINT "You put on the laser.  Sensors detect a great deal of circuitry surrounding": PRINT "the laser.  Iron-like hull fusing with laser.....  Laser activated!": FOR T = 1 TO 1000: NEXT T: LASER = 2: KEY 6, "shoot": GOTO 940
IF A$ = "i" THEN GOTO I
IF MALFUNCTION2 <> 1 THEN
IF A$ = "n" OR A$ = "s" OR A$ = "e" OR A$ = "w" OR A$ = "u" OR A$ = "d" THEN PRINT "You can't go in that direction.": GOTO 940
END IF
IF MALFUNCTION2 = 1 THEN
IF A$ = "n" OR A$ = "s" OR A$ = "e" OR A$ = "w" OR A$ = "u" OR A$ = "d" THEN GOTO RETU
END IF
IF A$ = "push button" AND EXPLOSIVE = 1 THEN PRINT "Guidance System:  That isn't the wisest thing to do.": GOTO 940
IF A$ = "push button" AND BOMB = 1 THEN PRINT "Guidance System:  That isn't the wisest thing to do.": GOTO 940
IF A$ = "shoot" AND LASER = 2 THEN PRINT "Laser activated.  No discernable targets within immediate vicinity.  Laser": PRINT "de-activated.": GOTO 940
IF MID$(A$, 1, 8) = "look at " THEN
IF MID$(A$, 9) = "piston" AND PISTON = 1 THEN PRINT "The metal piston is as thin as a pen and is made of some sort of metal.": GOTO 940
IF MID$(A$, 9) = "robot" AND World = 4 AND RM = 14 AND ROBOTDEAD = 0 THEN PRINT "The robot is wielding a laser and apparently seems to think that you are a", "robot meant to be de-activated and used for scraps.": GOTO 940
IF MID$(A$, 9) = "robot" AND World = 4 AND RM = 14 AND ROBOTDEAD = 1 THEN PRINT "The robot is not moving.  On it is a number,"; CODE; "which is glowing.": GOTO 940
IF MID$(A$, 9) = "box" AND MALFUNCTION = 0 AND World = 1 AND RM = 15 AND BLASTED = 0 THEN PRINT "The box is closed.  There does not seem to be any way to open it.": GOTO 940
IF MID$(A$, 9) = "box" AND MALFUNCTION = 0 AND World = 1 AND RM = 15 AND BLASTED = 1 THEN PRINT "The box is open.  There are three numbers engraved inside it, 9, 4, and 0.": GOTO 940
IF MID$(A$, 9) = "mouse" AND MALFUNCTION = 1 AND World = 1 AND RM = 15 AND BLASTED = 0 THEN PRINT "The mouse is closed.  There does not seem to be any way to open it.": GOTO 940
IF MID$(A$, 9) = "mouse" AND MALFUNCTION = 1 AND World = 1 AND RM = 15 AND BLASTED = 1 THEN PRINT "The mouse is open.  There are three numbers engraved inside it, 9, 4, and 0.": GOTO 940
IF MID$(A$, 9) = "mutant" AND RM = 12 AND MUTANT = 1 AND World = 1 THEN PRINT "The mutant is dead.": GOTO 940
IF MID$(A$, 9) = "mutant" AND RM = 12 AND MUTANT = 0 AND World = 1 THEN PRINT "The mutant has been deformed by years and years of living in this destroyed": PRINT "civilization.  Sensors report unbalanced Cranial fluids.": GOTO 940
IF MID$(A$, 9) = "laser" AND LASER = 1 AND MALFUNCTION = 0 THEN PRINT "The laser has a great deal of circuitry on it.": GOTO 940
IF MID$(A$, 9) = "laser" AND LASER = 2 AND MALFUNCTION = 0 THEN PRINT "The laser has a great deal of circuitry on it.  You are wearing it.": GOTO 940
IF MID$(A$, 9) = "glove" AND LASER = 1 AND MALFUNCTION = 1 THEN PRINT "The glove has a great deal of circuitry on it.": GOTO 940
IF MID$(A$, 9) = "glove" AND LASER = 2 AND MALFUNCTION = 1 THEN PRINT "The glove has a great deal of circuitry on it.  You are wearing it.": GOTO 940
IF MID$(A$, 9) = "card" AND KEYCARD = 1 AND MALFUNCTION = 0 THEN PRINT "The card reads, 'Government Access.'"
IF MID$(A$, 9) = "card" AND CARD = 1 AND MALFUNCTION = 0 THEN PRINT "The card reads, 'Access Card.'": GOTO 940
IF MID$(A$, 9) = "pencil" AND CARD = 1 AND MALFUNCTION = 1 THEN PRINT "The pencil seems almost flat.  Sensors indicate that this pencil is not filled": PRINT "with any sort of writing implement inside it.": GOTO 940
IF MID$(A$, 9) = "robe" AND MALFUNCTION = 1 AND SUIT = 1 THEN PRINT "The robe is apparently made of metal.  On the side of the robe is a symbol,": PRINT "indecipherable to your cameras that serve as your eyes.": GOTO 940
IF MID$(A$, 9) = "suit" AND MALFUNCTION = 0 AND SUIT = 1 THEN PRINT "The suit is apparently made of metal.  On the side of the robe is a symbol,": PRINT "reading ": PRINT "(Translating to English)": FOR T = 1 TO 1000: NEXT T: PRINT "Anti-Radioactive Suit.": GOTO 940
IF MID$(A$, 9) = "suit" AND MALFUNCTION = 0 AND SUIT = 2 THEN PRINT "The suit is apparently made of metal.  On the side of the robe is a symbol,": PRINT "reading ": PRINT "(Translating to English)": FOR T = 1 TO 1000: NEXT T: PRINT "Anti-Radioactive Suit.  You are wearing it.": GOTO 940
IF MID$(A$, 9) = "pencils" AND MALFUNCTION = 1 AND EXPLOSIVE = 1 THEN PRINT "The pencils apparently contain some sort of TNT.  There is a button on": PRINT "it's side.": GOTO 940
IF MID$(A$, 9) = "explosive" AND MALFUNCTION = 0 AND EXPLOSIVE = 1 THEN PRINT "The explosive apparently contain some sort of TNT.  There is a button on": PRINT "it's side.": GOTO 940
IF MID$(A$, 9) = "bottle" AND RM = 6 AND MALFUNCTION = 1 AND World = 1 THEN
PRINT "The Bottle of Elven Vintage Wine is huge.  Sensors detect extensive": PRINT "circuitry running through it, not unlike your own circuitry."
IF LASER = 0 THEN PRINT "On it is a glove."
IF LASER <> 0 THEN PRINT "It is inanimate."
GOTO 940
END IF
IF MID$(A$, 9) = "vial" AND VIAL = 1 AND MALFUNCTION = 0 THEN PRINT "The vial reads, 'CI.'": GOTO 940
IF MID$(A$, 9) = "disk" AND VIAL = 1 AND MALFUNCTION = 1 THEN PRINT "The disk is roundish shaped.  Sensors question the likelyhood of this object": PRINT "being a disk.": GOTO 940
IF MID$(A$, 9) = "disk" AND DISK <> 1 AND MALFUNCTION = 0 THEN PRINT "The disk reads, 'Information.'": GOTO 940
IF MID$(A$, 9) = "vial" AND DISK <> 1 AND MALFUNCTION = 1 THEN PRINT "The vial is flat and thin.  Sensors question the likelyhood of this object": PRINT "being a vial.": GOTO 940
IF MID$(A$, 9) = "robot" AND RM = 6 AND MALFUNCTION = 0 AND World = 1 THEN
PRINT "The robot is broken.  ";
IF LASER = 0 THEN PRINT "There is a laser hand-extension on it."
IF LASER <> 0 THEN PRINT "It is broken beyond help."
GOTO 940
END IF
PRINT "You can't see that here.": GOTO 940
END IF
PRINT "You can't do that.": GOTO 940
I: PRINT "You have:": PRINT
IF MALFUNCTION = 1 THEN
IF DISK <> 1 THEN PRINT "  A vial. (Stuck into your side).": DECIDED = 1
IF PISTON = 1 THEN PRINT "  A metal pencil.": DECIDED = 1
IF CARD = 1 THEN PRINT "  A pencil with little bumps engraved on it.": DECIDED = 1
IF CARD1 = 1 THEN PRINT "  A pencil with little bumps and a picture engraved on it.": DECIDED = 1
IF KEYCARD = 1 THEN PRINT "  A pencil with little bumps and a bar of iron engraved on it.": DECIDED = 1
IF VIAL = 1 THEN PRINT "  A computer diskette.": DECIDED = 1
IF LASER = 1 THEN PRINT "  A glove.": DECIDED = 1
IF SUIT = 1 THEN PRINT "  A metal robe.": DECIDED = 1
IF EXPLOSIVE = 1 OR BOMB = 1 THEN PRINT "  A set of pencils with a button in it's side.": DECIDED = 1
IF PLUG = 1 THEN PRINT "  A stone with little bumps in it's side."
IF LASER = 2 THEN PRINT "  A glove (being worn).": DECIDED = 1
END IF
IF MALFUNCTION = 0 THEN
IF DISK <> 1 THEN PRINT "  A computer disk containing information about your mission.  (Stuck into your": PRINT "side).": DECIDED = 1
IF PISTON = 1 THEN PRINT "  A metal piston.": DECIDED = 1
IF CARD = 1 THEN PRINT "  An access card to the restricted areas of Alpha Centauri B 3.": DECIDED = 1
IF CARD1 = 1 THEN PRINT "  An monorail access card to Kappa 2.": DECIDED = 1
IF VIAL = 1 THEN PRINT "  A vial containing CI disease.": DECIDED = 1
IF LASER = 1 THEN PRINT "  A laser-like hand-extension.": DECIDED = 1
IF SUIT = 1 THEN PRINT "  An anti-radioactive suit.": DECIDED = 1
IF EXPLOSIVE = 1 OR BOMB = 1 THEN PRINT "  An explosive with a button in it's side.": DECIDED = 1
IF KEYCARD = 1 THEN PRINT "  A card labelled, 'Theta 1 Government Access.'"
IF PLUG = 1 THEN PRINT "  A plug labelled, 'Time Machine.'"
IF SUIT = 2 THEN PRINT "  An anti-radioactive suit (being worn).": DECIDED = 1
IF LASER = 2 THEN PRINT "  A laser-like hand-extension (being worn).": DECIDED = 1
END IF
IF DECIDED = 0 THEN PRINT "Nothing at all."
DECIDED = 0
PRINT : GOTO 940
YOUWIN:
PRINT "Final mission completed."
PRINT "Sensors detect an organic life form before you:  Human female."
PRINT "Guidance System:  We have returned to Earth.  Doctor Angela of Omega Blue"
PRINT "stands before us."
PRINT "'You have succeeded where others have not.  You have prevented the conquest"
PRINT "of Earth by Theta 1.  Congratulations.  The world is in your debt.  Thanks to"
PRINT "you, we will learn more about these five civilizations to which the Probe was"
PRINT "sent long ago.  And thus, we will learn more about the universe around us.'"
PRINT "'Thank you,' are the last words you hear before you are de-activated."
END
SAVE: INPUT "Enter filename to save:", N$
OPEN N$ FOR OUTPUT AS #1
PRINT #1, BOMB
PRINT #1, SHIPBOOM
PRINT #1, SHIPOPEN
PRINT #1, SORTOFWON
PRINT #1, PLUG
PRINT #1, DEMONFOUND
PRINT #1, KEYCARD
PRINT #1, ROBOTS
PRINT #1, TIMOPEN
PRINT #1, MILOPEN
PRINT #1, NEWSR
PRINT #1, CARD1
PRINT #1, THETABEAT
PRINT #1, KAPBEAT
PRINT #1, MONORAILMOVE4
PRINT #1, TIMEOPEN
PRINT #1, RESOPEN
PRINT #1, LIBOPENED
PRINT #1, HOLOPEN
PRINT #1, EPBEAT
PRINT #1, VOICESHEARD
PRINT #1, EXPLOSIVE
PRINT #1, SHIELDUP
PRINT #1, NEWSREELS
PRINT #1, TECH1
PRINT #1, MONORAILMOVE2
PRINT #1, MONORAILMOVE3
PRINT #1, LIBOPEN
PRINT #1, CRYAWAKE
PRINT #1, CRYOPEN
PRINT #1, CRSCAN
PRINT #1, COMPASS
PRINT #1, ON1
PRINT #1, ROBOTDEAD
PRINT #1, MONORAILMOVE
PRINT #1, MONORAILMOVE1
PRINT #1, CODE
PRINT #1, ROBOPEN
PRINT #1, COMPOPEN
PRINT #1, PISTON
PRINT #1, AVSCAN
PRINT #1, SUIT
PRINT #1, ALIVE
PRINT #1, BLASTED
PRINT #1, MUTANT
PRINT #1, LASER
PRINT #1, CARD
PRINT #1, VIAL
PRINT #1, MALFUNCTION
PRINT #1, RM
PRINT #1, MEDOPENED
PRINT #1, MECHOPENED
PRINT #1, TECHOPENED
PRINT #1, World
PRINT #1, CODE
PRINT #1, CODE1
PRINT #1, TIMECODE
PRINT #1, SHIELDS
PRINT #1, PRESS
PRINT #1, STARTED
PRINT #1, MOOD
PRINT #1, COMPASS
PRINT #1, STERILIZED
PRINT #1, STERILIZED2
PRINT #1, STERILIZED3
PRINT #1, REVIVED
PRINT #1, AIR
PRINT #1, VOICESHEARD
PRINT #1, Battery
CLOSE #1
PRINT "File saved.": GOTO 940
LOAD: INPUT "Enter filename to load:", N$
OPEN N$ FOR INPUT AS #1
INPUT #1, BOMB
INPUT #1, SHIPBOOM
INPUT #1, SHIPOPEN
INPUT #1, SORTOFWON
INPUT #1, PLUG
INPUT #1, DEMONFOUND
INPUT #1, KEYCARD
INPUT #1, ROBOTS
INPUT #1, TIMOPEN
INPUT #1, MILOPEN
INPUT #1, NEWSR
INPUT #1, CARD1
INPUT #1, THETABEAT
INPUT #1, KAPBEAT
INPUT #1, MONORAILMOVE4
INPUT #1, TIMEOPEN
INPUT #1, RESOPEN
INPUT #1, LIBOPENED
INPUT #1, HOLOPEN
INPUT #1, EPBEAT
INPUT #1, VOICESHEARD
INPUT #1, EXPLOSIVE
INPUT #1, SHIELDUP
INPUT #1, NEWSREELS
INPUT #1, TECH1
INPUT #1, MONORAILMOVE2
INPUT #1, MONORAILMOVE3
INPUT #1, LIBOPEN
INPUT #1, CRYAWAKE
INPUT #1, CRYOPEN
INPUT #1, CRSCAN
INPUT #1, COMPASS
INPUT #1, ON1
INPUT #1, ROBOTDEAD
INPUT #1, MONORAILMOVE
INPUT #1, MONORAILMOVE1
INPUT #1, CODE
INPUT #1, ROBOPEN
INPUT #1, COMPOPEN
INPUT #1, PISTON
INPUT #1, AVSCAN
INPUT #1, SUIT
INPUT #1, ALIVE
INPUT #1, BLASTED
INPUT #1, MUTANT
INPUT #1, LASER
INPUT #1, CARD
INPUT #1, VIAL
INPUT #1, MALFUNCTION
INPUT #1, RM
INPUT #1, MEDOPENED
INPUT #1, MECHOPENED
INPUT #1, TECHOPENED
INPUT #1, World
INPUT #1, CODE
INPUT #1, CODE1
INPUT #1, TIMECODE
INPUT #1, SHIELDS
INPUT #1, PRESS
INPUT #1, STARTED
INPUT #1, MOOD
INPUT #1, COMPASS
INPUT #1, STERILIZED
INPUT #1, STERILIZED2
INPUT #1, STERILIZED3
INPUT #1, REVIVED
INPUT #1, AIR
INPUT #1, VOICESHEARD
INPUT #1, Battery
CLOSE #1
PRINT "File loaded.": GOSUB 5: GOTO 940
BUG:
PRINT "Run-time Malfunction."
IF RM < 0 THEN RM = 1
PRINT "Guidance System:  Whatever you did, don't do it again."
GOTO 940

SUB ALPHAB3
ON RM GOTO BALCONY, DOCTORSOFFICE, MEDICALSUPPLY, COUNCILRM, OUTSIDEOFFICE, INWORKROOM, TOWNHALL, TOWNSQUARE, MECHANICSHOP, TECHNOLOGYCENTER, NONMOVINGWALKWAY, BIOLAB, PROBEROOM, NONMOVING, BIOINNERLAB, D, LARGEPLATFORM
BALCONY:
IF MALFUNCTION = 1 THEN
PRINT "Very High Place": PRINT
PRINT "You are at the very top of a very high place.  Apparently, some method of"
PRINT "transportation leads down to a lower place.  Many buckets lie around here."
IF CARD = 0 THEN PRINT "There is a pencil on the ground here."
GOTO ENSUB
END IF
PRINT "Balcony": PRINT
PRINT "You are at the top of the council chamber.  Stairs lead down to the council"
PRINT "floor.  Rows and rows of seats sit around here, apparently used by"
PRINT "spectators who would watch the council processions."
IF CARD = 0 THEN PRINT "There is a card on the ground here."
GOTO ENSUB
DOCTORSOFFICE:
IF MALFUNCTION = 1 AND MEDOPENED = 0 THEN
PRINT "Small Room": PRINT
PRINT "You are in the middle of a small room.  Apparently, cages off all sort are"
PRINT "lined up against the wall."
PRINT "Sensor Report:  Sensors report exits to the south and east."
PRINT "To the east is a closed rock.  Near the rock is a small slot."
GOTO ENSUB
END IF
IF MALFUNCTION = 1 AND MEDOPENED = 1 THEN
PRINT "Small Room": PRINT
PRINT "You are in the middle of a small room.  Apparently, cages off all sort are"
PRINT "lined up against the wall."
PRINT "Sensor Report:  Sensors report exits to the south and east."
PRINT "To the east is an opened rock.  Near the rock is a small slot."
GOTO ENSUB
END IF
IF MEDOPENED = 0 THEN
PRINT "Inside Doctor's Office": PRINT
PRINT "This is a very small room.  Desks are lined up against all walls.  To the east"
PRINT "is a closed door.  Near that door is a slot.  Above the slot are the words..."
PRINT "(Translating to English)"
FOR T = 1 TO 1000
NEXT T
PRINT "'Access Card Required.'"
PRINT "You may go south, and if the door was opened, to the east."
GOTO ENSUB
END IF
IF MEDOPENED = 1 AND MALFUNCTION = 0 THEN
PRINT "Inside Doctor's Office": PRINT
PRINT "This is a very small room.  Desks are lined up against all walls.  To the east"
PRINT "is an open door.  Near that door is a slot.  Above the slot are the words..."
PRINT "(Translating to English)"
FOR T = 1 TO 1000
NEXT T
PRINT "'Access Card Required.'"
PRINT "You may go south and east."
GOTO ENSUB
END IF
MEDICALSUPPLY:
IF MALFUNCTION = 1 THEN
PRINT "Claustraphobia City": PRINT
PRINT "This is a VERY small and tight space.  You are surrounded on all sides by many"
PRINT "objects.  There is an opening to the west."
IF VIAL = 0 THEN PRINT "There is a disk here."
GOTO ENSUB
END IF
PRINT "Medical Storage Room": PRINT
PRINT "This is a VERY small and tight space.  You am surrounded on all sides by many"
PRINT "closed and locked containers."
IF VIAL = 0 THEN PRINT "There is a small vial on the floor here.  Sensors detect that there is some": PRINT "sort of viral disease inside it."
GOTO ENSUB
COUNCILRM:
IF MALFUNCTION = 1 THEN
PRINT "Wide Open Space": PRINT
PRINT "You are in a wide open space.  Many rows of buckets surround you on all sides."
PRINT "Some method of transportation leads up to a very high place."
PRINT "Sensors detect a non-living organic organism at your feet."
PRINT "You may go south and up."
GOTO ENSUB
END IF
PRINT "Council Room": PRINT
PRINT "This is a council chamber, apparently where the council members of the"
PRINT "government of Alpha Centauri B 3 governed and made decisions.  Stairs lead up"
PRINT "to a balcony."
PRINT "Sensors detect a non-living organic organism at your feet."
PRINT "You may go south and up."
GOTO ENSUB
OUTSIDEOFFICE:
IF MALFUNCTION = 1 THEN
PRINT "Sitting Room": PRINT
PRINT "This is a sitting room.  Many buckets lie around here, while a rock is to the"
PRINT "north.  Sensors report the rock has been jarred open by something.  Exits are"
PRINT "to the north and south."
GOTO ENSUB
END IF
PRINT "Waiting Room": PRINT
PRINT "This is the waiting room for a doctor's office.  To the north is a door that"
PRINT "has been jarred open. Exits are to the south and north."
GOTO ENSUB
INWORKROOM:
IF MALFUNCTION = 1 THEN
PRINT "Cramped Room": PRINT
PRINT "This room is covered by many obstacles.  There is a door to the south."
PRINT "Sensors detect a large bottle of Elven Vintage Wine in the middle of the room"
PRINT "here."
IF LASER = 0 THEN PRINT "On the bottle of Elven Vintage Wine is a glove."
GOTO ENSUB
END IF
PRINT "Mechanic's Inner Workshop": PRINT
PRINT "This room has many unfinished or broken robots.  In the center of the room is"
PRINT "a robot that is obviously being scrapped for parts."
IF LASER = 0 THEN PRINT "On the robot is a laser hand-extension."
GOTO ENSUB
TOWNHALL:
IF MALFUNCTION = 1 THEN
PRINT "Large Room": PRINT
PRINT "You are in a very large room.  Sound reverberates off the walls here.  Sonar"
PRINT "patterns of the walls depict exits to the north and east."
GOTO ENSUB
END IF
PRINT "Town Hall": PRINT
PRINT "You are in the middle of Town Hall.  Exits are to the north and east."
PRINT "Pictures line the walls of reigning leaders of Alpha Centauri B 3's leaders."
GOTO ENSUB
TOWNSQUARE:
IF MALFUNCTION = 1 THEN
PRINT "Large Open Area": PRINT
PRINT "This is a large and open area.  All around you are tall artificial structures."
PRINT "You may go north, south, east, and west.  The tall, artificial structures are"
PRINT "to the north, east, and west."
GOTO ENSUB
END IF
PRINT "Town Square": PRINT
PRINT "This is the town square.  Buildings surround you to the north, east, and west."
PRINT "You may go north, south, east, and west."
GOTO ENSUB
MECHANICSHOP:
IF MALFUNCTION = 1 THEN
PRINT "Littered Room": PRINT
PRINT "This room is littered with literally thousands of metals."
PRINT "Sensor Report:  Sensors report exits to the north and west."
IF MECHOPENED = 1 THEN PRINT "To the north is an opened rock.  Near the rock is a small slot."
IF MECHOPENED = 0 THEN PRINT "To the north is a closed rock.  Near the rock is a small slot."
GOTO ENSUB
END IF
IF MECHOPENED = 1 THEN
PRINT "Mechanic's Shop": PRINT
PRINT "This is the mechanic's shop.  Robots and parts are strewn all over the area."
PRINT "There is an open door to the north here.  Next to the door is a slot,"
PRINT "with words over it reading....."
PRINT "(Translating to English)"
FOR T = 1 TO 1000
NEXT T
PRINT "'Access Card Required.'"
PRINT "You may go north and west."
END IF
IF MECHOPENED = 0 THEN
PRINT "Mechanic's Shop": PRINT
PRINT "This is the mechanic's shop.  Robots and parts are strewn all over the area."
PRINT "There is a closed door to the north here.  Next to the door is a slot,"
PRINT "with words over it reading....."
PRINT "(Translating to English)"
FOR T = 1 TO 1000
NEXT T
PRINT "'Access Card Required.'"
PRINT "You may go west."
END IF
GOTO ENSUB
TECHNOLOGYCENTER:
IF MALFUNCTION = 1 THEN
PRINT "Circuitry Room": PRINT
PRINT "This room is filled with circuitry of all sorts of artificial machines."
IF TECHOPENED = 0 THEN PRINT "There is a closed rock to the south here.  There is a slot near the door.": PRINT "The slot is dark."
IF TECHOPENED = 1 THEN PRINT "There is a partially closed rock here.  The rock has been blasted by some sort": PRINT "of weapon.  There is a slot near the door.  The slot is glowing."
IF TECHOPENED = 2 THEN PRINT "There is an open rock to the south here."
IF TECHOPENED <> 2 THEN PRINT "You may go east."
IF TECHOPENED = 2 THEN PRINT "You may go south and east."
GOTO ENSUB
END IF
PRINT "Technology Lab": PRINT
PRINT "This room is filled with all sorts of machines, all dead now."
IF TECHOPENED = 0 THEN PRINT "There is a closed door to the south here.  There is a slot near the door.": PRINT "The slot is dark."
IF TECHOPENED = 1 THEN PRINT "There is a partially closed door here.  The door has been blasted by some sort": PRINT "of weapon.  There is a slot near the door.  The slot is glowing."
IF TECHOPENED = 2 THEN PRINT "There is an open door to the south here."
IF TECHOPENED <> 2 THEN PRINT "You may go east."
IF TECHOPENED = 2 THEN PRINT "You may go south and east."
GOTO ENSUB
NONMOVINGWALKWAY:
IF MALFUNCTION = 1 THEN
PRINT "Broken Machine": PRINT
PRINT "You are on top of a broken machine.  The machine's purpose was apparently to"
PRINT "move passengers north and south along it."
PRINT "You may go north, south, east, and west.  To the west and east are two large"
PRINT "artificial structures."
GOTO ENSUB
END IF
PRINT "Non-Moving Sidewalk": PRINT
PRINT "Once, you're sure that this sidewalk carried aliens north and south along it."
PRINT "Now, the sidewalk moves no more.  You may go north, south, east, and west.  To"
PRINT "the east and west are buildings."
GOTO ENSUB
BIOLAB:
IF MALFUNCTION = 1 THEN
PRINT "Living Room": PRINT
PRINT "Sensors detect a great deal of life around you.  Along the confines of this"
PRINT "area exist 584 different life-forms, all along one genetic code with minor"
PRINT "variations."
IF MUTANT = 0 THEN PRINT "A large life-form is here.  It's genetic code has been severely compromised.": PRINT "It bars the exit to the south.": PRINT "You may go west."
IF MUTANT = 1 THEN PRINT "A non-living organic life-form lies on the ground here.  Sensors report it": PRINT "died from the Cranial Implosion virus, constructed on Alpha Centauri B 3.": PRINT "You may go west and south."
GOTO ENSUB
END IF
PRINT "Biology Lab": PRINT
PRINT "This is the biology lab.  There are exits to the west and south."
IF MUTANT = 0 THEN PRINT "A mutant is here. It bars the exit to the south.  You may go west."
IF MUTANT = 1 THEN PRINT "A dead mutant lies on the ground here.  Sensors report it died from the": PRINT "Cranial Implosion virus, constructed on Alpha Centauri B 3.": PRINT "You may go west and south."
GOTO ENSUB
PROBEROOM:
IF MALFUNCTION = 1 THEN
PRINT "Glowing Room": PRINT
PRINT "Sensors report glowing light from all around you.  In the middle of the room"
PRINT "is a trashcan.  On the trashcan is a button."
PRINT "You may go north."
GOTO ENSUB
END IF
IF ALIVE = 0 THEN
PRINT "Artifical Intelligence Lab": PRINT
PRINT "Sensors report that this room has been used for the construction of Artificial"
PRINT "Intellegence.  In the middle of this room is a glowing column.  On the column"
PRINT "is a button.  Above that button is a keypad."
PRINT "You may go north."
GOTO ENSUB
END IF
IF ALIVE = 1 THEN
PRINT "Artifical Intelligence Lab": PRINT
PRINT "Sensors report that this room has been used for the construction of Artificial"
PRINT "Intellegence.  In the middle of this room is a glowing column."
PRINT "In the column is a glowing disk-drive."
PRINT "You may go north."
GOTO ENSUB
END IF
NONMOVING:
IF MALFUNCTION = 1 THEN
PRINT "Broken Machine": PRINT
PRINT "You are on top of a broken machine.  The machine's purpose was apparently to"
PRINT "move passengers north and south along it."
PRINT "You may go north and south."
GOTO ENSUB
END IF
PRINT "Non-Moving Sidewalk": PRINT
PRINT "Once, you're sure that this sidewalk carried aliens north and south along it."
PRINT "Now, the sidewalk moves no more.  You may go north and south."
GOTO ENSUB
BIOINNERLAB:
IF MALFUNCTION = 1 THEN
PRINT "Cramped Space": PRINT
PRINT "This is a cramped space.  The walls here are lined by metal robes.  Most of"
PRINT "them are locked in by a circuitry system too complex to detail."
IF SUIT = 0 THEN PRINT "There is a metal robe hanging next to you."
IF BLASTED = 0 THEN PRINT "There is a metal mouse here.  It is closed, but there does not seem to be any": PRINT "way to open it."
IF BLASTED = 1 THEN PRINT "There is a metal mouse here.  It has been blasted open.  Inside the box are": PRINT "three numbers, 9, 4, and 0."
PRINT "Sensors report high radiation levels here."
PRINT "You may go north."
GOTO ENSUB
END IF
PRINT "Biology Inner Lab": PRINT
PRINT "This is the inner lab.  The walls here are lined by metal suits.  Most of"
PRINT "them are locked in by a circuitry system too complex to detail."
IF SUIT = 0 THEN PRINT "There is a metal suit hanging next to you."
PRINT "Sensors report high radiation levels here."
IF BLASTED = 0 THEN PRINT "There is a metal box here.  It is closed, but there does not seem to be any": PRINT "way to open it."
IF BLASTED = 1 THEN PRINT "There is a metal box here.  It has been blasted open.  Inside the box are": PRINT "three numbers, 9, 4, and 0."
PRINT "You may go north."
GOTO ENSUB
D: PRINT "BUG!"
GOTO ENSUB
LARGEPLATFORM:
IF MALFUNCTION = 1 THEN
PRINT "Large Open Area": PRINT
PRINT "This is a large open area.  You may go north."
GOTO ENSUB
END IF
PRINT "Large Platform": PRINT
PRINT "This is a large platform.  You may go north."
GOTO ENSUB
ENSUB:
END SUB

SUB ENDGAME
ON RM GOTO SAPRE, ROBDEPL, OUTCOM, INSHIP, LANDPL
SAPRE: PRINT "Spare Parts": PRINT
PRINT "This area is littered with the debris of thousands of robots.  You may go"
PRINT "east."
IF BOMB = 0 THEN PRINT "There is an explosive here."
GOTO NearToTheEndOfGame
ROBDEPL: PRINT "Robot Arrival Area": PRINT
PRINT "This area has a large podium in the middle of it.  There is a machine next to"
PRINT "it with a screen showing pictures of Theta 1 in the future.  You may go south,"
PRINT "east, and west."
GOTO NearToTheEndOfGame
OUTCOM: PRINT "Outside Computer Room": PRINT
PRINT "You are outside of a room that holds a large deal of machinery inside it."
PRINT "There is a closed door to the south.  Sensors report numberous force fields"
PRINT "keeping you out.  You may go west."
GOTO NearToTheEndOfGame
INSHIP:
IF SHIPBOOM = 0 THEN
PRINT "Inside Ship": PRINT
PRINT "You are inside of the ship that will be used to bring thousands of attack"
PRINT "robots to Earth during the early days, about 800 A.D., during the rule of"
PRINT "Charlemagne as Emperor of the Romans in the western provinces.  There is"
PRINT "but one button in this ship.  Next to it is a screen."
END IF
IF SHIPBOOM = 1 THEN
PRINT "Inside Ship": PRINT
PRINT "You are inside of a ship.  It is hurtling out of Theta 1's atmosphere, and"
PRINT "heading straight for the Planetary Defense Systems."
PRINT "Guidence System:  It would be very unwise to stay on this ship.  Suggestion": PRINT "is that we leave soon."
END IF
GOTO NearToTheEndOfGame
LANDPL: PRINT "Landing Platform": PRINT
PRINT "This is a landing platform for large warships.  There is a ship here to the"
PRINT "west.  There is also a door next to it, which is ";
IF SHIPOPEN = 0 THEN PRINT "closed.  You may go north."
IF SHIPOPEN = 1 THEN PRINT "opened.  You may go north and west."
GOTO NearToTheEndOfGame
NearToTheEndOfGame:
END SUB

SUB EPSILON4
ON RM GOTO ENTRY, CRYO1, CRYO2, CONTROLRM, NONSW, TOWNSQ, LIB, CENTRALCORE, TECHLAB, NONSW, SHIELDGEN, COLONYCOMMAND, AIRM, MONOS, INMONO, P, HOLOGRAPHLA, MONOS2, INMONO, GARBAGEVAP, HOLOLAB, NONSW, SHIELDGEN2, ASSEMBLYLINE
ENTRY: PRINT "Entrance to Cryogenic Chambers": PRINT
IF CRYOPEN = 1 THEN
PRINT "There is a door open to the east here.  Cold steam filters out of it.  Sensors"
IF CRYAWAKE = 0 OR EPBEAT = 1 THEN PRINT "report life-forms in stasis to the east.  You may go south and east."
IF CRYAWAKE = 1 AND EPBEAT = 0 THEN PRINT "report life-forms to the east.  You may go south and east."
ELSE
PRINT "There is a closed door in the east wall here.  There appears to be no way"
PRINT "to open it.  You may go south."
END IF
GOTO WORLD3
CRYO1: PRINT "Cryogenic Chambers, West": PRINT
IF CRYAWAKE = 1 AND EPBEAT = 0 THEN
PRINT "These chambers were once filled with aliens, asleep for many long years."
PRINT "You may go east and west."
END IF
IF EPBEAT = 1 OR CRYAWAKE = 0 THEN
PRINT "These chambers are filled with aliens in stasis, all asleep peacefully in their"
PRINT "cryogenic chambers.  You may go east and west."
END IF
GOTO WORLD3
CRYO2: PRINT "Cryogenic Chambers, East": PRINT
IF CRYAWAKE = 1 AND EPBEAT = 0 THEN
PRINT "These chambers were once filled with aliens in stasis, waiting for their"
PRINT "world to be reborn.  You may go east and west."
END IF
IF EPBEAT = 1 OR CRYAWAKE = 0 THEN
PRINT "These chambers are filled with aliens in stasis, all asleep peacefully in their"
PRINT "cryogenic chambers.  You may go east and west."
END IF
GOTO WORLD3
CONTROLRM: PRINT "Cryogenic Control Room": PRINT
PRINT "This is the control room for the cryogenic facilities to the west.  There is"
PRINT "a computer in the north wall with a huge button marked, 'Power.'"
IF CRYAWAKE = 1 THEN PRINT "The computer looks badly broken."
IF EXPLOSIVE = 0 AND CRYAWAKE = 1 THEN PRINT "There is an explosive in the panel by the computer."
PRINT "There is a robot here.  It apparently has been blasted by some sort of high-"
PRINT "intensity laser."
PRINT "You may go west."
GOTO WORLD3
NONSW: PRINT "Non-Moving Sidewalk": PRINT
PRINT "You are sure that once during time, aliens took these sidewalks to get to"
PRINT "where ever they needed to go."
PRINT "You may go ";
IF RM = 5 THEN PRINT "north and east.  There is a building to the north."
IF RM = 10 THEN PRINT "in all directions.  There are buildings to the west and east, while": PRINT "there is a monorail station to the south."
IF RM = 22 THEN PRINT "north, east, and west.  Buildings are west and east."
GOTO WORLD3
TOWNSQ: PRINT "Town Square": PRINT
PRINT "This is the center of a once-large colony of Epsilon 4.  You may go west,"
PRINT "east, and south.  There is a building to the east."
GOTO WORLD3
LIB: PRINT "Library Entrance": PRINT
IF LIBOPEN = 1 THEN
PRINT "To the east is an open door.  Inside that door, sensors report that there is"
PRINT "a large computer.  You may go east and west."
ELSE
PRINT "To the east is a closed door.  Sensors report a large computer inside that"
PRINT "door.  There appears to be no way to open the door.  You may go west."
END IF
GOTO WORLD3
CENTRALCORE: PRINT "Central Library Core": PRINT
PRINT "This is the central library core.  There is a large computer here."
PRINT "The computer has a large button, labelled, 'Power.'"
PRINT "You may go west."
GOTO WORLD3
TECHLAB: PRINT "Technology Lab Entrance": PRINT
PRINT "This is the entrance to the Technology Lab.  Circuitry surrounds the room"
PRINT "here."
IF TECH1 = 0 THEN PRINT "There is a closed door to the south."
IF TECH1 = 1 THEN PRINT "There is an open door to the south."
GOTO WORLD3
SHIELDGEN: PRINT "Shield Generator": PRINT
PRINT "This is where the shield generator protects parts of this colony."
PRINT "Guidance System:  For more information on the Shield Generators, check your": PRINT "inner Guidance System."
PRINT "You may go east and west."
GOTO WORLD3
COLONYCOMMAND: PRINT "Colony Command": PRINT
PRINT "This is the command center of the colony.  Monitors of ther colony surround"
PRINT "you on all sides."
PRINT "There are three buttons here, one red, one green, and one blue."
PRINT "You may go west."
GOTO WORLD3
AIRM: PRINT "Artificial Intelligence Room": PRINT
PRINT "This room used to house AI's.  Now it is empty.  You may go north.  There is"
PRINT "a great deal of circuitry in the walls here."
GOTO WORLD3
MONOS: PRINT "Monorail Station": PRINT
PRINT "This is a monorail station.  The monorail is to the east."
IF SHIELDUP = 0 THEN PRINT "Sensors report an electric shield blocking exit north.  You may go east."
IF SHIELDUP = 1 THEN PRINT "You may go north and east."
GOTO WORLD3
INMONO: PRINT "Inside Monorail": PRINT
PRINT "You are inside the monorail.  There is a door in the west wall, while there"
PRINT "is a huge red button in the east wall."
IF MONORAILMOVE3 = 0 AND MONONRAILMOVE2 = 0 THEN PRINT "The door in the west wall is opened." ELSE PRINT "The door in the west wall is closed."
GOTO WORLD3
P: PRINT "You have a bug."
GOTO WORLD3
HOLOGRAPHLA: PRINT "Holographic Lab": PRINT
IF EPBEAT = 1 THEN
PRINT "This room is mainly empty.  You may go south."
ELSE
PRINT "In this room are gathered three life-forms."
PRINT "'Let's start the holograph player,' says one."
PRINT "One life form puts a card into a slot in the wall and pushes a button.  Then"
PRINT "he enters a series of numbers into a keypad.  In the middle of the room, a"
PRINT "holographic projector begins playing."
PRINT "'You who find this, Theta 1 has defeated us.  They used some sort of"
PRINT "technology to destroy our defenses.  We have no choice now but to enter our"
PRINT "own Cryogenic Chambers.  We hope that we will awaken to a new era, one of"
PRINT "peace.'  The holograph that begins playing over and over."
PRINT "Sensors report Cryogenic Chambers below you.  There are no life signs in any"
PRINT "of them."
PRINT "'They didn't make it,' says one of the life forms.  Another nods."
PRINT "'Well, we'd better return to our Cryogenic Chambers.  There's nothing left for"
PRINT "us here.  Perhaps settlers will find us in the future and awaken us.'"
PRINT "The three life-forms leave the room."
BEEP: BEEP: BEEP: PRINT "Mission on Epsilon 4 completed.  You may leave at your own discresion.": EPBEAT = 1
PRINT "You may go south."
END IF
GOTO WORLD3
MONOS2: PRINT "Monorail Station": PRINT
PRINT "This is a monorail station.  You may go east, into the monorail, or south."
GOTO WORLD3
GARBAGEVAP: PRINT "Garbage Vaporizer": PRINT
PRINT "This is the place where excess garbage would be destroyed.  The assembley"
PRINT "line has stopped.  You may go south."
GOTO WORLD3
HOLOLAB: PRINT "Holographic Lab": PRINT
PRINT "This is the outer Holographic Lab.  Circuitry surrounds you."
IF HOLOPEN = 0 THEN PRINT "There is a door in the north wall.  It is closed and there does not appear to": PRINT "be any way to open it.  You may go east."
IF HOLOPEN = 1 THEN PRINT "There is a door in the north wall.  It has been blasted open by some form of": PRINT "TNT.  You may go north and east."
GOTO WORLD3
SHIELDGEN2: PRINT "Shield Generator": PRINT
PRINT "This is the shield generator.  There is a button on a panel here marked,"
PRINT "'Shield Up/Down.'  There is a display over that.  It reads, 'Shield "
IF SHIELDUP = 0 THEN PRINT "Up.'"
IF SHIELDUP = 1 THEN PRINT "Down.'"
GOTO WORLD3
ASSEMBLYLINE: PRINT "Assembly Line": PRINT
PRINT "This is an assembly line full of trash to be vaporized to the north."
PRINT "Trash and junk litters the assembly line, which has stopped."
PRINT "You may go north and west."
GOTO WORLD3
WORLD3:
END SUB

SUB INFORMATION
STU: PRINT "Enter Topic:": PRINT
PRINT "1.  Alpha Centauri B 3"
PRINT "2.  Epsilon 4"
PRINT "3.  Kappa 2"
PRINT "4.  Omicron 1"
PRINT "5.  Theta 1"
PRINT "6.  Your mission"
PRINT "7.  Exit"
PRINT : INPUT "STUDY>", A: PRINT
IF A = 7 THEN GOTO THEEND
IF A > 6 OR A <= 0 THEN GOTO STU
IF A = 6 AND SORTOFWON = 1 AND THETABEAT = 1 THEN
PRINT "Your mission:  Prevent the invasion of Earth by hostile aliens from Theta 1."
PRINT
GOTO STU
END IF
IF A = 6 THEN
PRINT "Your mission:  The five worlds that the probe was sent to by Omega Blue all"
PRINT "died out.  Your objective is to visit each of the five worlds to study the"
PRINT "downfall of each, and why they all died out so the same thing will not happen"
PRINT "to Earth."
IF AVSCAN = 1 THEN PRINT "Mission completed on Alpha Centauri B 3."
IF CRSCAN = 1 THEN PRINT "Mission completed on Omicron 1."
IF EPBEAT = 1 THEN PRINT "Mission completed on Epsilon 4."
IF KAPBEAT = 1 THEN PRINT "Mission completed on Kappa 2."
PRINT
GOTO STU
END IF
ON A GOTO MEGUSTALEER, YO, KAPPABASE, INFODATA, THETABASE
MEGUSTALEER: PRINT "Alpha Centauri B 3 Database:": PRINT
PRINT "1.  History"
PRINT "2.  Technology"
PRINT "3.  The People"
PRINT "4.  Alpha Centauri B 3."
PRINT "5.  Exit"
PRINT : INPUT "ALPHAB3>", A: PRINT
IF A > 5 OR A <= 0 THEN GOTO MEGUSTALEER
IF A = 1 THEN
HIST: PRINT "History Databanks": PRINT
PRINT "1.  Early Chaos"
PRINT "2.  Later Chaos"
PRINT "3.  Early Utopia"
PRINT "4.  Later Utopia"
PRINT "5.  Nuclear Devestation"
PRINT "6.  Our Present"
PRINT "7.  Exit"
PRINT : INPUT "ALPHAB3>", A: PRINT
IF A > 7 OR A <= 0 THEN GOTO HIST
IF A = 1 THEN
PRINT "Early in our history, our people were a warring people.  Wars we constant and"
PRINT "non-stop, until, out of the sky came a huge machine we now know as a probe."
PRINT "On that probe were thousands of pieces of information.  People used this"
PRINT "information to design new weapon systems and hideous viral creations.  Soon,"
PRINT "the world trembled under the rulership of David the Powerful, a dictator that"
PRINT "ruled Alpha Centauri B 3 with an iron fist."
IF AVSCAN = 1 THEN PRINT "AVID:  David the Powerful reigned for 140 years before he vanished without a": PRINT "trace.  People assume he died, but they were wrong."
GOTO HIST
END IF
IF A = 2 THEN
PRINT "Eventually, there was a revolution against David the Powerful, who was killed"
PRINT "by a hideous disease known as CI.  CI was engineered using information on the"
PRINT "probe.  The disease ran it's course, killed those who were not strong enough"
PRINT "to resist it.  However, the days of Chaos were gone and we were stronger than"
PRINT "ever."
IF AVSCAN = 1 THEN PRINT "AVID:  People assume David the Powerful died, but they were wrong.  He just": PRINT "disappeared."
GOTO HIST
END IF
IF A = 3 THEN
PRINT "We constructed a fertile utopia of scientists and knowledge.  We lived in"
PRINT "peace, using information the probe sent to us to construct new cures to"
PRINT "diseases that plagued us.  Eventaully, a cure for CI was engineered.  However,"
PRINT "a group of rebels captured the CI virus and launched it out into space, hoping"
PRINT "to wreak havok on unsuspecting worlds."
IF AVSCAN = 1 THEN PRINT "AVID:  I've found out that the rebels were lead by David the Powerful.  How he": PRINT "lived over 500 years is a mystery to even me.  Nobody lives that long, even": PRINT "with the help of the probe."
GOTO HIST
END IF
IF A = 4 THEN
PRINT "We were happy in our world.  Then the rebels were few, and the peace-lovers"
PRINT "were many.  Life almost seemed perfect."
IF AVSCAN = 1 THEN PRINT "AVID:  This was just a facade put up by David the Powerful.  By then, he was": PRINT "back in control of everybody by means of some sort of mind-controlling": PRINT "technology."
GOTO HIST
END IF
IF A = 5 THEN
PRINT "Then, the numers of rebels grew as our numers of peaceful scientists"
PRINT "diminished.  Soon the rebels captured the probe, containing all of our vastly"
PRINT "researched information.  They used that information to contruct a weapon of"
PRINT "such evil and devestation.  I believe that there was once a similar weapon on"
PRINT "Earth, known as the atomic bomb.  This weapon was ten times more powerful. "
PRINT "And the rebels launched it.  Our world was nearly destroyed.  Those that"
PRINT "survived contracted a horrible mutation -- their blood could not clot to stop"
PRINT "cuts.  We learned to live with this mutation over time."
IF AVSCAN = 1 THEN PRINT "AVID:  They were fools.  This destroyed our world.  I was born before the": PRINT "nuclear disaster, and awakened to a new world, destroyed by this insideous": PRINT "weapon."
GOTO HIST
END IF
IF A = 6 THEN
PRINT "The rebels control everything.  Nothing is spared from their iron hand. "
PRINT "Sometimes I wonder where the probe containing CI was sent.  If it hits a"
PRINT "planet, let it be one with a cure and one who can retaliate.  Let us all die;"
PRINT "the universe shall be safer.  I am the last scientist alive on the world."
PRINT "Soon I will be killed.  Let me die with them.  In the words of a great Earth"
PRINT "writer, 'I denounce them to Heaven and to earth.'"
IF AVSCAN = 1 THEN PRINT "AVID:  So true.  That was Dickens, by the way.  The few who did survive the": PRINT "batch of HD that landed on Alpha Centauri B 3 became mutants, deranged and": PRINT "mad mutants."
GOTO HIST
END IF
IF A = 7 THEN GOTO MEGUSTALEER
END IF
IF A = 2 THEN
PRINT "Our technology is a joke.  Now it can only kill.  We have nothing of value;"
PRINT "the people of Theta 1 raided us and stole it all years ago."
IF AVSCAN = 1 THEN PRINT "AVID:  You may be interested to know this, but AI was the height of their": PRINT "technology before Theta 1 captured every AI prototype but me.  Probably my": PRINT "old AI friends are on Theta 1 right now, being bored out of their skulls."
GOTO MEGUSTALEER
END IF
IF A = 4 THEN
PRINT "Alpha Centauri B 3 orbits the great star Alpha Centauri B.  The other worlds"
PRINT "circling this star were destroyed by the hideous weapon of the rebels, as a"
PRINT "'test,' of the weapon's power."
PRINT : PRINT "Alpha Centauri B 3": PRINT
PRINT "Average Temperatures at Equator:": PRINT
PRINT "Winter:  90øF"
PRINT "Summer:  103øF"
PRINT : PRINT "Complete rotation on axis:  8 hours": PRINT
PRINT "Distance from Sun:": PRINT
PRINT "Summer:  1 x 10^8"
PRINT "Fall:    1 x 10^8"
PRINT "Winter:  1 x 10^8"
PRINT "Spring:  1 x 10^8"
INPUT "", A$: CLS
PRINT : GOTO MEGUSTALEER
END IF
IF A = 3 THEN
PRINT "Our population used to be that like those of Earth, except we have two hearts"
PRINT "and two brains.  We believe this transformation is from using a program on the"
PRINT "probe.  Now, we are a race of deformed freaks, to be laughed at."
GOTO MEGUSTALEER
END IF
GOTO STU
YO:
IF NEWSREELS = 0 THEN
PRINT : PRINT "Epsilon 4 Database": PRINT
PRINT "1.  History"
PRINT "2.  Place in Space"
PRINT "3.  Technology"
PRINT "4.  The People"
PRINT "5.  Exit"
PRINT : INPUT "EPSILON>", A: PRINT
IF A > 5 OR A <= 0 THEN GOTO YO
ELSE
PRINT : PRINT "Epsilon 4 Database": PRINT
PRINT "1.  History"
PRINT "2.  Place in Space"
PRINT "3.  Technology"
PRINT "4.  The People"
PRINT "5.  Current Newreels -- As of 1605 A.D."
PRINT "6.  Exit"
PRINT : INPUT "EPSILON>", A: PRINT
IF A > 6 OR A <= 0 THEN GOTO YO
IF A = 5 THEN
NEWS2: PRINT : PRINT "Current Newsreels:": PRINT
PRINT "1.  Five Leaders enter Cryogenic Chambers"
PRINT "2.  Theta 1 invades Southern Reaches"
PRINT "3.  D. Demon organizes radical citizens to rebel"
PRINT "4.  Exit"
PRINT : INPUT "NEWS>", NEWS: PRINT
IF NEWS > 4 OR NEWS <= 0 THEN GOTO NEWS2
IF NEWS = 4 THEN GOTO YO
IF NEWS = 1 THEN
PRINT "Today, five of Epsilon 4's most important government officials entered the"
PRINT "Cryogenic chambers in a desperate attempt to preserve our dying planet."
PRINT "President H. Eregul said before being frozen in the cryogenic chambers, 'This"
PRINT "is for the future, for all of Epsilon 4!'  The five officials are to be taken"
PRINT "out of stasis in 150 years by a programmed robot.  Common citizens take this"
PRINT "as an insult, as if they could not be frozen for 150 years either."
GOTO NEWS2
END IF
IF NEWS = 2 THEN
PRINT "Today, the invaders of Theta 1 took over the Southern reaches of Epsilon 4."
PRINT "Luckily, all of the living citizens of the Southern reaches made it to their"
PRINT "Secret Underground Cryogenic Chambers.  The remaining government officials are"
PRINT "'....confident that the citizens will be safe from the invaders of Theta 1.'"
PRINT "The Robotic Militia could not hold back the raiders of Theta 1.  One of the"
PRINT "remaining government officials, O. Racula says, 'The raiders of Theta 1 could"
PRINT "never invade our Northern Reaches.  Our robotic militia is too strong.'"
GOTO NEWS2
END IF
IF NEWS = 3 THEN
PRINT "Meanwhile, in other news, radical leader, D. Demon has gained strength in the"
PRINT "Southern reaches, allying with Theta 1 in an effort to conquer the Nothern"
PRINT "Reaches.  Our President, Helen Eregul, before entering the Cryogenic chambers,"
PRINT "stated that '......David Daemon is a vicious and rutheless rebel.'  Before"
PRINT "entering the chambers, she sent a group of elite military robots after him to"
PRINT "assassinate him, in hopes that his radical faction will fall off without their"
PRINT "leader."
GOTO NEWS2
END IF
IF NEWS = 4 THEN GOTO YO
END IF
END IF
IF A = 1 THEN
HISTORY: PRINT "History Databanks": PRINT
PRINT "1.  Early Wars"
PRINT "2.  Civilization"
PRINT "3.  Eventual Utopia"
PRINT "4.  Present Day"
PRINT "5.  Our Future"
PRINT "6.  Exit"
PRINT : INPUT "HISTORY>", A: PRINT
IF A > 6 OR A <= 0 THEN GOTO HISTORY
IF A = 6 THEN GOTO YO
IF A = 1 THEN
PRINT "The early days of Epsilon 4 was ones of violence, death, and war.  For"
PRINT "thousands of years, the people of Epsilon fought each other until, out of the"
PRINT "sky came a huge machine, and it struck the land.  The people studied the"
PRINT "huge machine, and found it contained vast technology almost beyond their"
PRINT "comprehension.  However, on the machine was a program that enhanced the"
PRINT "intellegence rate of the people.  Soon the wars ended, and civilization took"
PRINT "hold of the land."
GOTO HISTORY
END IF
IF A = 2 THEN
PRINT "Then the people of Epsilon 4 began to begin cities that would live in harmony"
PRINT "with one another.  They studied the machine further, and found that it"
PRINT "contained data beyond their imagination.  On the machine were the plans for"
PRINT "starships and stations.  Soon, the people began to gather the materials needed"
PRINT "to make such stations and starships.  Then they travelled out into space."
GOTO HISTORY
END IF
IF A = 3 THEN
PRINT "Soon, those left on Epsilon 4 became lazy and created a fertile utopia, in"
PRINT "which medicine was highly stressed.  Although the probe contained other"
PRINT "information, including the information of the power to shield areas from attack"
PRINT "and extensive scanning, the medical and genetic sections of the probe"
PRINT "interested them.  Soon after this interest developed, the average life span of"
PRINT "a member of our race jumped from 30 years to 140.   Populated quadrupled."
GOTO HISTORY
END IF
IF A = 4 THEN
PRINT "Today, our lives are simple.  We live on the Sylvan Paradise we know as"
PRINT "Epsilon 4.  Our ships and probes scan the galaxy.  We willingly hand out"
PRINT "our information to any who need it."
GOTO HISTORY
END IF
IF A = 5 THEN
PRINT "We know not what our future holds.  Perhaps trancendency to gods -- or more."
PRINT "We are soon increasing our population.  Soon Epsilon 4 will be too small for"
PRINT "us -- with us expanding as we are.  The future can only hold good, however,"
PRINT "and not evil."
GOTO HISTORY
END IF
IF A = 6 THEN GOTO YO
END IF
IF A = 2 THEN
STER2: PRINT "1.  A close look at Epsilon 4"
PRINT "2.  A close look at Solar System"
PRINT "3.  A close look at the species of our world"
PRINT "4.  A close look at Epsilon's 4 moon"
PRINT "5.  Exit"
PRINT : INPUT "OMICRON1>", A: PRINT
IF A > 5 OR A <= 0 THEN GOTO STER2
IF A = 1 THEN
PRINT "Epsilon 4:": PRINT
PRINT "Average Temperatures at Equator:": PRINT
PRINT "Winter:  70øF"
PRINT "Summer:  70øF"
PRINT : PRINT "Complete rotation on axis:  6 hours": PRINT
PRINT "Distance from Sun:": PRINT
PRINT "Summer:  1 x 10^8"
PRINT "Fall:    1 x 10^8"
PRINT "Winter:  1 x 10^8"
PRINT "Spring:  1 x 10^8"
PRINT : GOTO STER2
END IF
IF A = 2 THEN
PRINT "Epsilon 2:": PRINT
PRINT "# Moons: 1"
PRINT "Elements in Atmosphere: Vaporous Mercury"
PRINT "Gas Giant"
PRINT "Rings": PRINT
PRINT "Epsilon 3:": PRINT
PRINT "# Moons: 5"
PRINT "Elements in Atmosphere: Phosphorous"
PRINT "Gas Giant"
PRINT "Rings": PRINT
PRINT : GOTO STER2
END IF
IF A = 3 THEN
BIO2: PRINT "Enter Biome:": PRINT
PRINT "1. Forest"
PRINT "2. Exit"
PRINT : INPUT "OMICRON1>", A: PRINT
IF A > 2 OR A <= 0 THEN GOTO BIO2
IF A = 1 THEN
PRINT "Cooshee:": PRINT
PRINT "6' Long"
PRINT "Much like a dog."
PRINT "Diet:  Herbivore"
PRINT "Activity Cycle:  Night"
PRINT
PRINT "Little Folk:": PRINT
PRINT "2' at shoulder"
PRINT "Small rodent-like animals, incredibally curious and friendly."
PRINT "Diet:  Omnivore"
PRINT "Activity Cycle:  Night"
PRINT : GOTO BIO2
END IF
IF A = 2 THEN GOTO STER2
END IF
IF A = 4 THEN
PRINT "Moon:": PRINT
PRINT "Atmosphere:  H(2)O"
PRINT "Land:  100%"
PRINT "Water: Atmosphere is water vapor": PRINT
GOTO STER2
END IF
IF A = 5 THEN GOTO YO
END IF
IF A = 3 THEN
PRINT "Our technology has nothing to do with weapons.  The only war-like thing we"
PRINT "developed was a shield generator to protect us from alien attack."
GOTO YO
END IF
IF A = 4 THEN
PRINT "We are not unlike the people of Earth in the sense that we have somewhat the"
PRINT "same organs.  However, we have two hearts and two brains.  We believe that"
PRINT "this is from the machine that landed on our world early on in our history."
GOTO YO
END IF
GOTO STU
KAPPABASE: PRINT : PRINT "Kappa 2 Database": PRINT
PRINT "1.  History"
PRINT "2.  Technology"
PRINT "3.  The Probe"
IF NEWSR = 0 THEN PRINT "4.  Exit"
IF NEWSR = 1 THEN PRINT "4.  Current Newsreels, as of 1706 A.D.": PRINT "5.  Exit"
PRINT : INPUT "KAPPA2>", A: PRINT
IF NEWSR = 0 AND A > 4 OR A <= 0 THEN GOTO KAPPABASE
IF NEWSR = 1 AND A > 5 OR A <= 0 THEN GOTO KAPPABASE
IF NEWSR = 1 AND A = 4 THEN
NEWS3: PRINT "Current Newsreels:": PRINT
PRINT "1.  ******Time Travel Program fails******"
PRINT "2.  Theta 1 invades Colonies to the east."
PRINT "3.  D. Demon's radical faction gains momentum."
PRINT "4.  Scientists foretell imminent doom."
PRINT "5.  Exit."
PRINT : INPUT "NEWSREELS>", NEWSRE: PRINT
IF NEWSRE = 1 THEN
PRINT "The Time Travel program so essential to our survival has failed.  Now, our"
PRINT "colonies must no longer dwell on perfection but on survival, as we have not"
PRINT "explored any other technologies.  An attempt to download information from The"
PRINT "Probe has proved useless, because The Probe has been destroyed by D. Demon"
PRINT "and his radical faction. (See Story #3)"
PRINT : GOTO NEWS3
END IF
IF NEWSRE = 2 THEN
PRINT "Theta 1 has landed in our colonies in the east and has taken them all over."
PRINT "Our capitol has been taken by Theta 1.  Theta 1 has made no plans for any sort"
PRINT "of peace talks or surrender opportunities."
PRINT : GOTO NEWS3
END IF
IF NEWSRE = 3 THEN
PRINT "D. Demon has taken his radical faction and destroyed The Probe which gave us"
PRINT "so much information in the first place.  Without this Probe to replace the"
PRINT "technology which has failed us, we are doomed.  (See Stories #1 & #4)"
PRINT : GOTO NEWS3
END IF
IF NEWSRE = 4 THEN
PRINT "Scientists predict that without any technological advantage over the people of"
PRINT "Theta 1 the war will be lost.  With the destruction of The Probe and our"
PRINT "inability to acquire new technology from The Probe, our society is doomed."
PRINT : GOTO NEWS3
END IF
IF NEWSRE = 5 THEN GOTO KAPPABASE
IF NEWSRE > 5 OR NEWSRE <= 0 THEN GOTO NEWS3
END IF
IF A = 1 THEN
HISTOR: PRINT "Historical Database": PRINT
PRINT "1.  Early Wars"
PRINT "2.  A New Technology is found"
PRINT "3.  Present"
PRINT "4.  Exit"
PRINT : INPUT "HISTORY>", A
IF A > 4 OR A <= 0 THEN GOTO HISTOR
IF A = 1 THEN
PRINT "When we were primative, we were violent and war-like.  Eventually a dictator-"
PRINT "ship emerged.  But then, our dictator died and then, out of the sky, came a"
PRINT "huge machine that propelled us from the dark ages into a world of science."
PRINT "We began to study the probe, and soon learned it contained one program"
PRINT "essential to our future (See 2 --- a New Technology is found).  Using that"
PRINT "program, we erradicated all traces of violence from our midst."
GOTO HISTOR
END IF
IF A = 2 THEN
PRINT "The new technology we found was a time travel program contained on it.  We"
PRINT "travelled through our history's past, killing the main leaders of our wars."
PRINT "Violence was then purged from our midst.  See 2 on the main menu for the time-"
PRINT "travel program."
GOTO HISTOR
END IF
IF A = 3 THEN
PRINT "Our present is in chaos;  the evil beings of Theta 1 are attacking us.  We"
PRINT "cannot outlast them.  We are going to die.  Our time travel program has failed"
PRINT "us."
GOTO HISTOR
END IF
IF A = 4 THEN GOTO KAPPABASE
END IF
IF A = 2 THEN
PRINT "Our main technology, one that has recently failed us, is a time travel"
PRINT "program."
GOTO KAPPABASE
END IF
IF A = 3 THEN
PRO: PRINT "The Probe": PRINT
PRINT "1.  Check Medical Directory."
PRINT "2.  Check Genetics Directory."
PRINT "3.  Check Database Directory."
PRINT "4.  Check General Directory."
PRINT "5.  Exit"
PRINT : INPUT "PROBE>", A: PRINT
IF A > 5 OR A <= 0 THEN GOTO PRO
IF A = 5 THEN GOTO KAPPABASE
IF A = 1 THEN PRINT "med.      exe": PRINT "med.      001": PRINT "med.      002": PRINT : GOTO PRO
IF A = 2 THEN PRINT "genetics. exe": PRINT "gen.      001": PRINT "gen.      002": PRINT "virus.    exe": PRINT "virus.    dat": PRINT : GOTO PRO
IF A = 3 THEN
PRINT "alphab3.  exe"
PRINT "data.     exe"
PRINT "data1.    dat"
PRINT "data2.    dat"
PRINT "epsilon4. exe"
PRINT "kappa2.   exe"
PRINT "omicron1. exe"
PRINT "theta1.   exe"
PRINT "timetrav. exe"
PRINT : GOTO PRO
END IF
IF A = 4 THEN
PRINT "startup.  exe         power.   stp"
PRINT "security. stp         moniter. stp"
PRINT "dock.     exe         control. stp"
PRINT "mpg.      exe         shields. exe"
PRINT "command.  com         record.  exe"
PRINT "record.   dat         life.    exe"
PRINT "savegame. exe         loadgame.exe"
PRINT "score.    exe         scan.    exe"
PRINT : GOTO PRO
END IF
END IF
GOTO STU
INFODATA: PRINT : PRINT "Information Database of Omicron 1:": PRINT
PRINT "1.  Our History"
PRINT "2.  Our Current Technology Level"
PRINT "3.  Details of our World."
PRINT "4.  Exit"
SD: PRINT : INPUT "OMICRON1>", A: PRINT
IF A > 4 OR A <= 0 THEN GOTO SD
IF A = 1 THEN
SSS: PRINT "1.  Early History"
PRINT "2.  Current History"
PRINT "3.  Our Predicted Future"
PRINT "4.  Exit"
SA: PRINT : INPUT "OMICRON1>", A: PRINT
IF A > 4 OR A <= 0 THEN GOTO SA
IF A = 1 THEN
PRINT "Our race was a race of men similar to that of the animal we have seen on other"
PRINT "worlds, called deer.  Somehow, we were an offspring of those deer and we"
PRINT "evolved into a sentient species.  Early on in our development, the early"
PRINT "Elkman scientist discovered that our bodies were used to the tundra in the"
PRINT "northern places, where we could survive.  We discovered space flight"
PRINT "technology also early on in our development.  This could be attributed to a"
PRINT "miraculous occurance - a device we know as a probe now - crashed on our world,"
PRINT "detailing the entire structure of space flight and mathematical formula.  On"
PRINT "that probe was a program meant to enhance one's intellegence.  Our world"
PRINT "became a fertile utopia of scientists."
IF CRSCAN = 1 THEN PRINT "CRIS:  We were lead by Dking the Great, a great scientist.  He lead us to": PRINT "learn more about our world then we could ever know."
PRINT
GOTO SSS
END IF
IF A = 2 THEN
PRINT "Soon, we realized that our star was too active to have safe life on its"
PRINT "planets.  This discovery lead to general chaos among our people.  Anarchy"
PRINT "broke loose when we realized that we could only fit five people on a shuttle"
PRINT "that we could build to escape our world.  Instead of having five people escape,"
PRINT "a theory was developed that we could send the shuttle into the star, and if"
PRINT "the proper chemicals were on that shuttle, the star might calm down.  We"
PRINT "launched the shuttle, and on it was this probe and those chemicals.  We know"
PRINT "not if the shuttle will save us.  We will find out soon enough."
IF CRSCAN = 1 THEN PRINT "CRIS:  The experiment failed.  I was de-activated moments before our untimely": PRINT "demise.  It was found out later that the star was made so volitile by": PRINT "chemicals Theta 1 shot into it in an effort to conquer us."
PRINT
GOTO SSS
END IF
IF A = 3 THEN
PRINT "Either the star will calm down from its solar flares or we will perish."
IF CRSCAN = 1 THEN PRINT "CRIS:  Option B."
PRINT
GOTO SSS
END IF
IF A = 4 THEN GOTO INFODATA
END IF
IF A = 2 THEN
PRINT "Technology Level:  We have limited space travel and medical programs.  Our"
PRINT "world is one where monorails move along the tundra, taking us from one city"
PRINT "to another.  The cities use a form of solar energy that does not cause"
PRINT "pollution, like our scans have revealed on other worlds."
PRINT "CRIS:  The cause of my shut-down was the recieving of too MUCH solar energy": PRINT "from the sun.  It was too bright, and overloaded our sensors.  I run now on": PRINT "power leeched from other, less essential functions (like life support)."
GOTO INFODATA
END IF
IF A = 3 THEN
STER1: PRINT "1.  A close look at Omicron 1"
PRINT "2.  A close look at Solar System"
PRINT "3.  A close look at the species of our world"
PRINT "4.  A close look at Omicron 1's moon"
PRINT "5.  Exit"
SB: PRINT : INPUT "OMICRON1>", A: PRINT
IF A > 5 OR A <= 0 THEN GOTO SB
IF A = 1 THEN
PRINT "Omicron 1: ": PRINT
PRINT "Average Temperatures at Equator:": PRINT
PRINT "Winter:  10øF"
PRINT "Summer:  83øF"
PRINT : PRINT "Complete rotation on axis:  108 hours": PRINT
PRINT "Distance from Sun:": PRINT
PRINT "Summer:  1.115 x 10^8"
PRINT "Fall:    1 x 10^8"
PRINT "Winter:  1.3 x 10^8"
PRINT "Spring:  1 x 10^8"
PRINT : GOTO STER1
END IF
IF A = 2 THEN
PRINT "Omicron 2:": PRINT
PRINT "# Moons: 2"
PRINT "Elements in Atmosphere: Vaporous Mercury"
PRINT "Gas Giant"
PRINT "Rings": PRINT
PRINT "Omicron 3:": PRINT
PRINT "# Moons: 5"
PRINT "Elements in Atmosphere: Phosphorous"
PRINT "Gas Giant"
PRINT "Rings": PRINT
PRINT : GOTO STER1
END IF
IF A = 3 THEN
BIO: PRINT "Enter Biome:": PRINT
PRINT "1.  Rainforest"
PRINT "2.  Desert"
PRINT "3.  Tundra"
PRINT "4.  Exit"
PRINT : INPUT "OMICRON1>", A: PRINT
IF A > 4 OR A <= 0 THEN GOTO BIO
IF A = 1 THEN
PRINT "Betafly:": PRINT
PRINT "45' Wingspan"
PRINT "Much like the insect on the world Earth known as a Butterfly."
PRINT "Diet:  Herbivore"
PRINT "Activity Cycle:  Night"
PRINT
PRINT "Tearer:": PRINT
PRINT "10' long, 5' at shoulder"
PRINT "Much like a dog with huge claws and a red gleam in its eye."
PRINT "Diet:  Carnivore"
PRINT "Activity Cycle:  Night"
PRINT : GOTO BIO
END IF
IF A = 2 THEN
PRINT "Nightbeast:": PRINT
PRINT "3' ft tall"
PRINT "Small animals that come out a night to collect food.  Generally friendly."
PRINT "Diet:  Omnivore"
PRINT "Activity Cycle:  Night"
PRINT
PRINT "Sandworm:": PRINT
PRINT "30' long"
PRINT "Much like the Earth insect the Earthworm; except bigger and more ferocious."
PRINT "Diet:  Carnivore"
PRINT "Activity Cycle:  Night"
PRINT : GOTO BIO
END IF
IF A = 3 THEN
PRINT "Elkman:": PRINT
PRINT "6' Tall"
PRINT "We are accustomed to -10øF and below.  We are the only sentient race on"
PRINT "Omicron 1."
PRINT "Diet:  Omnivore"
PRINT "Activity Cycle:  Day"
PRINT
PRINT "Snowcat:": PRINT
PRINT "3' long, 1' at shoulder"
PRINT "These are our domestic pets.  They are accustomed to -10øF and below."
PRINT "Diet:  Omnivore"
PRINT "Activity Cycle:  Day/Night"
PRINT : GOTO BIO
END IF
IF A = 4 THEN GOTO STER1
END IF
IF A = 4 THEN
PRINT "Moon 1:": PRINT
PRINT "Atmosphere:  N(2)O(2)CO(2)"
PRINT "Land:  None"
PRINT "Water: 100%": PRINT
PRINT "Moon 2:": PRINT
PRINT "Atmosphere:  SO(2)"
PRINT "Land:  100%"
PRINT "Water: None": PRINT
PRINT "Moon 3:": PRINT
PRINT "Atmosphere:  None"
PRINT "Land:  100%"
PRINT "Water: None": PRINT : GOTO STER1
END IF
IF A = 5 THEN GOTO INFODATA
END IF
GOTO STU
THETABASE: PRINT "Theta 1 Database": PRINT
PRINT "1.  History"
PRINT "2.  Technology"
PRINT "3.  Theta 1"
PRINT "4.  Exit"
PRINT : INPUT "THETA1>", A: PRINT
IF A > 4 OR A <= 0 THEN GOTO THETABASE
IF A = 1 THEN
HISTO: PRINT "History Database": PRINT
PRINT "1.  Utopia"
PRINT "2.  Wars"
PRINT "3.  Conquest"
PRINT "4.  The Present"
PRINT "5.  Exit"
PRINT : INPUT "HISTORY>", A: PRINT
IF A > 5 OR A <= 0 THEN GOTO HISTO
IF A = 1 THEN
PRINT "We started out decadent and corrupt.  We lived in the lap of luxury, following"
PRINT "only one creed --- peace!  HA!  Now we laugh at peace.  Peace is nothing."
PRINT "Now we see that war is the only way to achieve what is ours.  Our fertile"
PRINT "utopia that used to be was destroyed years ago.  A probe landed on our world,"
PRINT "and on it contained weapon and shield capacity that we had only dreamed of."
PRINT "This technology was incorporated into our lives, and the power proved to be"
PRINT "too great of a temptation."
GOTO HISTO
END IF
IF A = 2 THEN
PRINT "Wars were the only way to achieve order.  Eventually a dictator named Terster"
PRINT "came to power.  He ruled with an iron fist, destroying all who opposed him."
PRINT "Eventaully our little world of Theta 1 became too small for us.  We yearned"
PRINT "for more power, to control the universe."
GOTO HISTO
END IF
IF A = 3 THEN
PRINT "Thus began our history of conquest.  We conquered four worlds, Epsilon 4 being"
PRINT "the first --- they were weak.  A community of scientists.  Next was Omicron"
PRINT "1; which was dying anyway.  Simple.  Alpha Centauri B 3 was also dying, easy"
PRINT "to control.  Then there was Kappa 2.  We conquered Kappa 2 just before we"
PRINT "realized the horrible truth... our race was dying."
KAPPA1 = 1
GOTO HISTO
END IF
IF A = 4 THEN
PRINT "We have everything before us --- we have nothing before us.  Our race is too"
PRINT "unhealthy to live many years past this current day.  We soon shall die out,"
PRINT "and our galactic empire will die too.  There is no future."
GOTO HISTO
END IF
IF A = 5 THEN GOTO THETABASE
END IF
IF A = 2 THEN
PRINT "Technology was for the weak.  The probe that landed gave us all of the weapon"
PRINT "technology we need to know."
GOTO THETABASE
END IF
IF A = 3 THEN
PRINT "Theta 1: ": PRINT
PRINT "Average Temperatures at Equator:": PRINT
PRINT "Winter:  120øF"
PRINT "Summer:  200øF"
PRINT : PRINT "Complete rotation on axis:  30 minutes": PRINT
PRINT "Distance from Sun:": PRINT
PRINT "Summer:  1 x 10^3"
PRINT "Fall:    1 x 10^3"
PRINT "Winter:  1 x 10^3"
PRINT "Spring:  1 x 10^3"
PRINT : GOTO THETABASE
END IF
GOTO STU
THEEND:
END SUB

SUB KAPPA2
ON RM GOTO H, RESEARCH, HISTORYDEP, TIMEMACH, INMO, MONSTAT, TOWNSQUA, LIBENTR, H, MAYORSOFFICE, SW, LCC, INMO, MONSTAT, SW, ASSEMLINE, H, COLCOMM, SW, GARBVAP
H: PRINT "BUG!": GOTO ENDSUB1
RESEARCH: PRINT "Historical Research Department": PRINT
PRINT "This is the Historical Research Department of Kappa 2.  There is a large"
PRINT "mainframe in the west wall with a small button next to a keypad labelled,"
PRINT "'Power.'"
PRINT "You may go east."
GOTO ENDSUB1
HISTORYDEP: PRINT "History Department": PRINT
PRINT "This is the History Department of Kappa 2."
PRINT "Guidance System:  This building probably has to have something to do with"
PRINT "the Time Travel Program.  There are doors in the east and west walls."
IF RESOPEN = 0 THEN PRINT "The door to the west is closed."
IF TIMEOPEN = 0 THEN PRINT "The door to the east is closed."
IF RESOPEN = 1 THEN PRINT "The door to the west is opened."
IF TIMEOPEN = 1 THEN PRINT "The door to the east is opened."
PRINT "You may go south."
GOTO ENDSUB1
TIMEMACH: PRINT "Time Machine": PRINT
PRINT "There is a large device in the center of the room here.  Next to it is a large"
PRINT "machine with a screen on it.  There is a button labelled, 'Power,' next to it."
IF PLUG <> 2 THEN PRINT "There is a socket in the large device, as if a plug would go there."
IF PLUG = 2 THEN PRINT "There is a plug in the side of the large device."
PRINT "You may go west."
GOTO ENDSUB1
INMO: PRINT "In Monorail": PRINT
PRINT "You are inside a monorail that always hovers five inches above ground level."
PRINT "There is a slot in the wall here, while there is a door to the east."
IF MONORAILMOVE4 <> 0 THEN PRINT "The door is closed." ELSE PRINT "The door is opened."
GOTO ENDSUB1
MONSTAT: PRINT "Monorail Station": PRINT
PRINT "This is the monorail station.  The monorail is to the west, while there is"
PRINT "a passage east as well.  You may go east and west."
GOTO ENDSUB1
TOWNSQUA: PRINT "Town Square": PRINT
PRINT "This is the town square of the colony in Kappa 2.  There are buildings to the"
PRINT "north and east.  There is a monorail station to the west."
PRINT "You may go north, south, east, and west."
GOTO ENDSUB1
LIBENTR: PRINT "Library Entrance": PRINT
PRINT "This is the library entrance.  There is a ";
IF LIBOPENED = 1 THEN PRINT "open door to the south." ELSE PRINT "closed door to the south."
IF LIBOPENED = 0 THEN PRINT "You may go west." ELSE PRINT "You may go west and south."
GOTO ENDSUB1
MAYORSOFFICE: PRINT "Mayor's Office": PRINT
PRINT "This is the Mayor's office of this little colony of Kappa 2."
PRINT "You may go east."
GOTO ENDSUB1
SW: PRINT "Non-Moving Sidewalk": PRINT
PRINT "This sidewalk stopped moving about 54.6 years ago.  Once, aliens used these"
PRINT "sidewalks for transportation.  Now the sidewalk does not move."
IF RM = 11 OR RM = 19 THEN PRINT "You may go north and west.  To the west is a building."
IF RM = 15 THEN PRINT "You may go east, west, and south."
GOTO ENDSUB1
LCC: PRINT "Library Central Core": PRINT
PRINT "This is the Library Central Core.  There is a computer here, obviously the"
PRINT "Library's Central Core.  There is a button next to the computer labelled,"
PRINT "'Power.'"
GOTO ENDSUB1
ASSEMLINE: PRINT "Assembley Line": PRINT
PRINT "Once, this conveyor belt carried trash south to be vaporized.  Now, the"
PRINT "conveyor belt does not move any more."
IF CARD1 = 0 THEN PRINT "There is a monorail access card on the belt."
PRINT "You may go south and west."
GOTO ENDSUB1
COLCOMM: PRINT "Colony Command": PRINT
PRINT "This is the Colony Command Control Center (CCCC).  There is a machine here,"
PRINT "with three buttons on it.  They are green, red, and blue.  You may go east."
GOTO ENDSUB1
GARBVAP: PRINT "Garbage Vaporizer": PRINT
PRINT "This is the garbage vaporizer.  There was once a moving conveyor belt here,"
PRINT "but as you saw to the north, it has long ago stopped.  You may go north."
GOTO ENDSUB1
ENDSUB1:
END SUB

SUB OMICRON1
ON RM GOTO TUNDRA, DISH, SIDEWALK, GOVERN, STATION, STATION, SIDEWALK, SIDEWALK, INMONORAIL, INMONORAIL, AI, SIDEWALK, ROBOTREPAIR, SPAREPARTS, CRIS, SIDEWALK, SIDEWALK, SIDEWALK, SIDEWALK, SIDEWALK
TUNDRA: PRINT "Along the Tundra": PRINT
PRINT "You are on the tundra of Omicron 1.  There is a ramp leading up to an elevated"
PRINT "platform here.  You may go up."
GOTO ENDSUB
DISH: PRINT "Near Radar": PRINT
PRINT "You are near the radar dish that was so essential to the development of this"
PRINT "culture.  There is a ramp leading up to an elevated platform here.  In"
PRINT "addition, there is a broken moving sidewalk to the east."
GOTO ENDSUB
SIDEWALK: PRINT "Broken Moving Sidewalk": PRINT
PRINT "This is a broken moving sidewalk that stretches throughout this city on"
PRINT "Omicron 1."
IF RM = 3 THEN PRINT "You may go south and west."
IF RM = 7 THEN PRINT "You may go north and east."
IF RM = 8 THEN PRINT "You may go north, south, and west.  There is a building to the north."
IF RM = 12 THEN PRINT "You may go north, south, and west.  There is a building to the west."
IF RM = 16 THEN PRINT "You may go north and south."
IF RM = 20 THEN PRINT "You may go north and west."
IF RM = 19 OR RM = 18 THEN PRINT "You may go east and west."
IF RM = 17 THEN PRINT "You may go north and east.  There is a building to the north."
GOTO ENDSUB
GOVERN: PRINT "Government Building": PRINT
PRINT "You are inside a government building.  There is the dead body of an elkman"
PRINT "an your feet here.  ";
IF PISTON = 0 THEN PRINT "In his hand is a metal piston."
IF PISTON = 1 THEN PRINT "He apparently died of heat exhaustion."
PRINT "You may go south."
GOTO ENDSUB
STATION: PRINT "Monorail Station": PRINT
PRINT "This is a monorail station.  You may go down and south.  There is a monorail"
PRINT "to the south."
GOTO ENDSUB
INMONORAIL: PRINT "Inside Monorail": PRINT
PRINT "You are inside of the monorail.  To the north is a";
IF MONORAILMOVE = 0 THEN PRINT "n open door."
IF MONORAILMOVE <> 0 THEN PRINT " closed door.": PRINT "The metal floor under you shakes as the monorail bolts forward."
PRINT "There is a red button in the wall here."
GOTO ENDSUB
AI: PRINT "Computer Lab": PRINT
PRINT "This is the lab where the people of Omicron 1 kept all of their computer data."
PRINT "There is a door in the south wall.  ";
IF COMPOPEN = 0 THEN PRINT "It is closed.  You may go east."
IF COMPOPEN <> 0 THEN PRINT "It is open.  You may go south and east."
PRINT "Next to the door is a button.  Above that button is a dark keypad."
GOTO ENDSUB
ROBOTREPAIR: PRINT "Robot Repair Shop": PRINT
PRINT "Apparently, robots were either fixed or salvaged for scrap metal here.  There"
PRINT "is a door to the east, which is ";
IF ROBOPEN = 0 THEN PRINT "closed.  You may go south."
IF ROBOPEN = 1 THEN PRINT "open.  You may go south and east."
IF PISTON <> 2 THEN PRINT "There is a small thin hole in the wall near the door."
GOTO ENDSUB
SPAREPARTS: PRINT "Spare Parts": PRINT
PRINT "This is the room where robots were broken down for spare parts.  There is only"
PRINT "one robot in this room, which is ";
IF ROBOTDEAD = 0 THEN PRINT "moving around with a cutting laser."
IF ROBOTDEAD = 1 THEN PRINT "not moving.  On it's side is a set of": PRINT "numbers, reading"; CODE; "and glowing serenely."
IF ROBOTDEAD = 1 AND COMPASS = 0 THEN PRINT "There is an internal compass in it's side."
PRINT "You may go west."
GOTO ENDSUB
CRIS: PRINT "Mainframe Room": PRINT
PRINT "This room is dominated by a large mainframe.  You may go north.  There is a"
PRINT "large button in the wall here, marked (POWER).  There is a slot in the"
PRINT "mainframe for disks."
GOTO ENDSUB
ENDSUB:
END SUB

SUB THETA1
ON RM GOTO CHAM, GOVBUILD, MILTPLANN, LIBC, NO, TOWNSQA, TIMEMACHINE, ASN, JUNCTION, NO, MACHLAB, ASLS, NO, SLUMS, SLUM, SPAREP
CHAM: PRINT "Council Chamber": PRINT
PRINT "Sensors report a great deal of violence once took place in this room.  Sensors"
PRINT "report a group of non-moving organic organisms on the floor.  Their deaths were"
PRINT "apparently caused by a weapon that emitted a large discharge of energy."
PRINT "There is a exit to the east."
GOTO TheEndOfThisSub
GOVBUILD: PRINT "Government Building": PRINT
PRINT "This is the government building of this particular colony on Theta 1.  There"
PRINT "are exits to the ";
IF MILOPEN = 0 THEN PRINT "west and south.  There is a closed door to the east.  There is": PRINT "a slot next to the door."
IF MILOPEN = 1 THEN PRINT "west, south, and east.  There is an open door to the east."
GOTO TheEndOfThisSub
MILTPLANN: PRINT "Military Planning Room": PRINT
PRINT "This is the room where the evil denisons of Theta 1 planned their next military"
PRINT "raids.  There are maps of every world you have visited so far, including Earth."
IF TIMOPEN = 0 THEN PRINT "There is a closed door to the south.  There is a button next to it.": PRINT "You may go west and east."
IF TIMOPEN = 1 THEN PRINT "There is a open door to the south.  You may go west, east, and south."
GOTO TheEndOfThisSub
LIBC: PRINT "What Once Was a Library": PRINT
PRINT "This room used to house thousands of cartidriges and a huge mainframe.  Now,"
PRINT "this room has been basically destroyed.  Sensors report high energy discharges"
PRINT "destroyed all of the cartridges and computers in this room.  You may go west."
GOTO TheEndOfThisSub
NO: PRINT "Non-Moving Sidewalk": PRINT
PRINT "As stated on the other four worlds, once, you're sure, these sidewalks carried"
PRINT "thousands of aliens to and from their work and their houses.  Now, as on all"
PRINT "of the other four worlds, these sidewalks are broken."
IF RM = 5 THEN PRINT "You may go east and south."
IF RM = 10 THEN PRINT "You may go in all directions.  There is a building to the east."
IF RM = 13 THEN PRINT "You may go north."
GOTO TheEndOfThisSub
TOWNSQA: PRINT "Town Square": PRINT
PRINT "This is the town square of this colony on Theta 1.  There is a large machine"
PRINT "in the center of the area here.  Sensors report organic blood on it.  Further"
PRINT "sensor scan reveals it was an execution device.  Several organic life-forms"
PRINT "lie on the ground here.  There are no vital signs emerging from them.  You may"
PRINT "go north, south, and west.  There is a building to the north."
GOTO TheEndOfThisSub
TIMEMACHINE: PRINT "Time Machine": PRINT
PRINT "This room houses a time machine."
IF PLUG = 0 THEN PRINT "There is a plug here, plugged into a time machine."
PRINT "There is a large screen on the wall.  On it is a display of Earth."
PRINT "It reads, 'Destination:  France.  800 B.C.'  There is a large podium on the"
PRINT "floor."
PRINT "The screen also reads:  Number of Robot soldiers sent back: "; ROBOTS
IF THETABEAT = 0 THEN BEEP: BEEP: BEEP: PRINT "ALERT! ALERT! Condition Red!  Mission completed on Theta 1.  Mission": PRINT "objectives being re-programmed from Earth.....": FOR T = 1 TO 1000: NEXT T: PRINT "New Mission:  Stop Theta 1 from taking over Earth.": THETABEAT = 1
PRINT "You may go north."
GOTO TheEndOfThisSub
ASN: PRINT "Assembly Line, North": PRINT
PRINT "This is the north of an assembly line that seems to create robots.  There is"
PRINT "a button in the wall here marked, 'Power.'  You may go south."
GOTO TheEndOfThisSub
JUNCTION: PRINT "Junction": PRINT
PRINT "This is the junction of three moving sidewalks, to the east, north, and south."
PRINT "In fact, you can go north, east, and south."
GOTO TheEndOfThisSub
MACHLAB: PRINT "Machinery Lab": PRINT
PRINT "This is a machinery lab.  There is a door to the east, over which is a plaque"
PRINT "reading, 'Factory.'  You may go east and west."
GOTO TheEndOfThisSub
ASLS: PRINT "Assembly Line, South": PRINT
PRINT "This is the south of an assembly line.  There is a room to the south, over"
PRINT "which is a plaque reading, 'Spare Parts.'  The assembly line extends to the"
PRINT "north."
GOTO TheEndOfThisSub
SLUMS: PRINT "Dump, West": PRINT
PRINT "This is a dump.  There is nothing of any value here.  You may go east and"
PRINT "north."
GOTO TheEndOfThisSub
SLUM: PRINT "Dump, East": PRINT
PRINT "This is a dump.  You may go west."
IF KEYCARD = 0 THEN PRINT "There is a card here labelled, 'Government Access.'"
GOTO TheEndOfThisSub
SPAREP: PRINT "Spare Parts": PRINT
PRINT "Sensors report nothing of value here.  You may go north."
GOTO TheEndOfThisSub
TheEndOfThisSub:
END SUB

