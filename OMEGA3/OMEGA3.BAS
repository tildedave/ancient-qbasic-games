DECLARE SUB InSpace ()
DECLARE SUB RefuelingSite ()
DECLARE SUB PowCreatedRecon ()
DECLARE SUB PowNeedRecon ()
DECLARE SUB Test ()
DECLARE SUB Desc ()
DECLARE SUB Tithlium3 ()
DECLARE SUB BetaAquarionC2 ()
DECLARE SUB DeltaPhetakop ()
DECLARE SUB GammaPsygnosis1 ()
DECLARE SUB Vega2 ()
DECLARE SUB ActurusB5 ()
DECLARE SUB Sirrus5 ()
DECLARE SUB ProximaCentauriE2 ()
DECLARE SUB Homeland ()
DECLARE SUB Earth ()
DECLARE SUB KeyInit ()
DECLARE SUB WCN ()
DECLARE SUB Scan ()
DECLARE SUB ShutDown ()
DECLARE SUB Startup ()
DECLARE SUB SystemCheck ()
DECLARE SUB Information ()
DIM SHARED RM, A$, World, Mission, Messages, Room$, North, South, East, West, NorthWest, NorthEast, SouthWest, SouthEast, AbsProg, NewsUpdate, OmegaHistInfo, Site$, AirlockOpened, LanguageProg, Tampered, DeviceOpen, BioLab1Open, BioLab2Open, LibraryOpen, SecurityOpen, PowerOn, PowerCycle, InnerBio1Open, InnerBio2Open, PowerToLibrary, PowerToBioLab2, PowerToBioLab1, PowerToOther, PowerToSecurity, PowerNeeded, PowerCreated, NonEss, Reactor1, Reactor2, Reactor3, Reactor4, PowerOutside, LaserGun, Explosive, PowerLineFixed, Rubble, Infrared
DIM SHARED ExplodeTime, RoomDoor(10), Welder, Couplink, PluggedIn, ConsoleArchives, Reactor1Open, Reactor2Open, Reactor3Open, Reactor4Open, ElevatorDoors, ElevatorPanel, ReactorAccess, OfficeAccess, BioLab1OfficeOpen, Syringe, VideoPlaying, Rewinding, ElevatorBroke, ElevatorSeq1, ElevatorSeq2, TapeTime, TestRight, BioLockDoor, Vial, CureFound, ShipOpen, CourseSet, ShipWorld, ShipTravel, X1, Y1, X, Y
DIM SHARED ElevatorBeta2Open, LaboratoryOpen, MedicalSupplyOpen, SecurityOpenBeta2, MonitorOpen, AsylumOpen, CellDoor(20)
RANDOMIZE TIMER
COLOR 15, 0
ShipWorld = 1
TestRight = INT(RND * 3) + 2
TapeTime = 20
Reactor1 = 1
PowerCreated = 5
PowerNeeded = 10
PowerOn = INT(RND * 2)
IF PowerOn = 0 THEN Power = 0
IF PowerOn = 1 THEN Power = 40
PowerCycle = INT(RND * 10) + 1
DeviceOpen = 0
RM = 25
CLS
KeyInit
ON ERROR GOTO Bug
Battery = 1000
Battery2 = 50
'World = INT(RND * 4) + 1
World = 1
GOSUB 400: GOSUB 5: GOTO 940
1
Time = Time + 1
PowNeedRecon
PowCreatedRecon
IF World = 1 THEN X1 = 11: Y1 = 10
IF World = 2 THEN X1 = 19: Y1 = 3
IF World = 3 THEN X1 = 15: Y1 = 14
IF World = 4 THEN X1 = 21: Y1 = 10
IF World = 5 THEN X1 = 0: Y1 = 15
IF World = 6 THEN X1 = 30: Y1 = 7
IF World = 7 THEN X1 = 15: Y1 = 0
IF World = 8 THEN X1 = 8: Y1 = 4
IF World = 10 THEN X1 = 15: Y1 = 7
IF SpaceTravel > 0 THEN
        SpaceTravel = SpaceTravel - 1
        IF SpaceTravel <= 0 THEN
                PRINT "Destination has been reached.  The ship slowly settles to a stop."
                World = CourseSet
                IF World = 1 THEN RM = 70: PRINT : PRINT "Surroundings Update.": PRINT : GOSUB 5
        END IF
END IF
IF ElevatorSeq1 > 0 AND ElevatorBroke <> 1 AND PowerOn = 1 THEN
        ElevatorSeq1 = ElevatorSeq1 - 1
        IF ElevatorSeq1 = 4 THEN PRINT "The elevator doors slide shut.": PRINT : PRINT "Surroundings Update.": PRINT : ElevatorDoors = 0: GOSUB 5
        IF ElevatorSeq1 = 3 THEN PRINT "The elevator smoothly moves upwards."
        IF ElevatorSeq1 = 2 THEN PRINT "The elevator smoothly moves upwards."
        IF ElevatorSeq1 = 1 AND ElevatorBroke = 0 THEN ElevatorBroke = 1: PRINT "Suddenly, the elevator rattles, and slides to a halt.  You can hear a metal": PRINT "bang from above you."
        IF ElevatorSeq1 = 1 AND ElevatorBroke <> 1 THEN PRINT "The elevator smoothly moves upwards."
        IF ElevatorSeq1 = 0 THEN PRINT "The elevator doors slide open with a pleasent ping.": PRINT : PRINT "Surroundings Update.": PRINT : ElevatorDoors = 1: RM = 77: GOSUB 5
END IF
IF ElevatorSeq2 > 0 AND PowerOn = 1 THEN
        ElevatorSeq2 = ElevatorSeq2 - 1
        IF ElevatorSeq2 = 4 THEN PRINT "The elevator doors slide shut.": PRINT : PRINT "Surroundings Update.": PRINT : ElevatorDoors = 0: GOSUB 5
        IF ElevatorSeq2 = 3 THEN PRINT "The elevator smoothly moves downwards."
        IF ElevatorSeq2 = 2 THEN PRINT "The elevator smoothly moves downwards."
        IF ElevatorSeq2 = 1 THEN PRINT "The elevator smoothly moves downwards."
        IF ElevatorSeq2 = 0 THEN PRINT "The elevator doors slide open with a pleasent ping.": PRINT : PRINT "Surroundings Update.": PRINT : ElevatorDoors = 1: RM = 76: GOSUB 5
END IF
IF ExplodeTime > 0 THEN
ExplodeTime = ExplodeTime - 1
IF ExplodeTime <> 5 AND (Explosive = 1 OR (Explosive = 2 AND World = 1 AND RM = 32)) THEN PRINT "The explosive gives off a beep."
IF ExplodeTime = 0 THEN
        IF Explosive = 1 THEN COLOR 30: PRINT "WARNING:  Hull being penetrated by contained fission explosion.": FOR T = 1 TO 1000: NEXT T: FOR T = 1 TO 100: COLOR 15, 15: CLS : COLOR 0, 0: CLS : NEXT T: COLOR 0, 0: CLS : END
        IF Explosive = 2 AND World = 1 AND RM = 32 THEN Explosive = 3: PRINT "Sensors report to contained fission explosive to have detonated.  Rubble": PRINT "cleared.": PRINT : PRINT "Surroundings Update.": Rubble = 1: GOSUB 5
        IF Explosive = 2 THEN Explosive = 3: Rubble = 1
END IF
END IF
IF PowerOn = 0 THEN
World1Power = World1Power + PowerCreated
World1Power = World1Power - PowerNeeded
        IF World1Power >= 40 AND ShutOff = 0 THEN
                PowerOn = 1
                IF World = 1 THEN
                        IF LanguageProg = 2 THEN PRINT "Audial sensors detect a mechanical voice, saying, 'Power returned.'": PowerOn = 1
                        IF LanguageProg <> 2 THEN PRINT "Audial sensors detect a mechanical voice speaking in an unknown alien language."
                END IF
        END IF
END IF
IF PowerOn = 1 THEN
World1Power = World1Power + PowerCreated
World1Power = World1Power - PowerNeeded
        IF World1Power <= 0 THEN
                PowerOn = 0
                IF World = 1 THEN
                        IF LanguageProg <> 2 THEN PRINT "Audial sensors detect a mechanical voice speaking in an unknown alien language."
                        IF LanguageProg = 2 THEN PRINT "Audial sensors detect a mechanical voice, saying, 'Power shut off due to": PRINT "depleted power reserves.'"
                END IF
        END IF
END IF
IF World = 1 THEN
        IF PowerOn = 0 AND Rewinding = 1 THEN Rewinding = 0
        IF PowerOn = 0 AND VideoPlaying = 1 THEN VideoPlaying = 0
        IF VideoPlaying = 1 THEN
                TapeTime = TapeTime + 1
                IF TapeTime = 1 AND LanguageProg <> 2 THEN PRINT "Words in an alien language appear on the screen."
                IF TapeTime = 1 AND LanguageProg = 2 THEN PRINT "The words, 'Surveillance file tape - Date 4524 DK.'"
                IF TapeTime >= 2 OR TapeTime <= 25 THEN PRINT "The video is showing a hallway.  Nothing seems to be happening."
                IF TapeTime = 26 THEN PRINT "Audial sensors detect the video to be emitting sounds much like shouts and": PRINT "screams."
                IF TapeTime = 27 THEN PRINT "The video shows a sort of greenish gas filling the corridors."
                IF TapeTime = 28 THEN PRINT "Suddenly, the sounds of laser weapons being emitted come from the monitor."
                IF TapeTime = 29 THEN PRINT "A few figures dash down the hallway.  They seem to be some sort of alien race."
                IF TapeTime = 30 THEN PRINT "Three figures, wearing gas masks and carrying laser weapons, bursts into the": PRINT "hallway.  One of them notices the camera, and suddenly the moniter": PRINT "displays static.  The tape stops.": VideoPlaying = 0
        END IF
        IF Rewinding = 1 THEN
                TapeTime = TapeTime - 5
                IF TapeTime > 0 THEN PRINT "The tape is rewinding."
                IF TapeTime <= 0 THEN PRINT "The tape stops rewinding.": TapeTime = 0: Rewinding = 0
        END IF
        IF Sterilized = 1 AND (InnerBio1Open = 1 OR BioLab1Open = 1) THEN Sterilized = 0
END IF
' Battery Functions
IF Battery > 0 THEN
        Battery = Battery - 1
        IF Infrared = 1 THEN Battery = Battery - 1
        IF LanguageProg = 2 THEN Battery = Battery - 1
        IF AbsProg = 2 THEN Battery = Battery - 2
        IF Battery <= 0 THEN BEEP: BEEP: BEEP: PRINT "Fusion battery drained.  Switching to backup power.": Battery = 0
END IF
IF Battery = 0 AND Battery2 <> 0 THEN Battery2 = Battery2 - 1
IF Battery = 0 AND Battery2 = 0 THEN BEEP: BEEP: BEEP: PRINT "Backup battery drained.  Power off.  Initiating emergency shutdown.": PRINT : ShutDown
RETURN
5
IF World = -1 THEN InSpace
IF World = 1 THEN Sirrus5
IF World = 2 THEN BetaAquarionC2
IF World = 3 THEN DeltaPhetakop
IF World = 4 THEN GammaPsygnosis1
IF World = 5 THEN Vega2
IF World = 6 THEN ActurusB5
IF World = 7 THEN Tithlium3
IF World = 8 THEN ProximaCentauriE2
IF World = 9 THEN Earth
IF World = 10 THEN Homeland
IF World = 11 THEN RefuelingSite
RETURN
940
GOSUB 1
941 KEY 5, A$: PRINT : INPUT "OBC6R>", A$: PRINT
IF A$ = "cheat" THEN LanguageProg = 2: GOTO 940
IF A$ = "world1power" THEN PRINT PowerOn, World1Power, PowerNeeded, PowerCreated: GOTO 941
IF A$ = "world" THEN PRINT World: GOTO 941
IF A$ = "room" THEN PRINT RM: GOTO 941
IF A$ = "z" OR A$ = "wait" THEN PRINT "One cycle passed.": GOTO 940
IF A$ = "shoot" THEN PRINT "Error:  Unspecified target.": GOTO 941
IF A$ = "wear gun" OR A$ = "wear laser gun" AND LaserGun = 1 THEN LaserGun = 2: PRINT "Normal laser replaced with High-intensity laser weapon.": GOTO 940
IF A$ = "l" OR A$ = "look" THEN GOSUB 5: GOTO 941
IF A$ = "teleport" THEN
PRINT "Enter destination:": PRINT
PRINT "1.  Sirrus 5"
PRINT "2.  Beta Aquarion C2"
PRINT "3.  Delta Phetakop"
PRINT "4.  Gamma Psygnosis 1"
PRINT "5.  Earth"
PRINT : INPUT "Destination>", A: PRINT
IF A > 5 OR A < 1 THEN PRINT "Error:  Teleportation destination unspecified.": GOTO 940
IF A = 5 THEN PRINT "Error:  Return to Earth is barred until mission is completed.": GOTO 940
World = A
IF World = 1 THEN RM = 25
IF World = 2 THEN RM = 11
FOR T = 1 TO 1000: NEXT T: Battery = Battery - 20: PRINT "Teleportation successful.": GOSUB 5: GOTO 940
END IF
IF World = 2 THEN
        IF A$ = "push button" AND RM = 11 THEN
                IF AsylumOpen = 2 THEN PRINT "The door slides closed.": AsylumOpen = 1: PRINT : PRINT "Surroundings Update.": PRINT : GOSUB 5: GOTO 940
                IF AsylumOpen = 1 THEN PRINT "The door slides open.": AsylumOpen = 2: PRINT : PRINT "Surroundings Update.": PRINT : GOSUB 5: GOTO 940
                IF AsylumOpen = 0 THEN
                        IF LanguageProg <> 2 THEN PRINT "Button pushed.  Audial sensors detect an a voice speaking an alien language": PRINT "from a nearby speaker.  The speaking stops.": GOTO 940
                        IF LanguageProg = 2 THEN PRINT "Button pushed.  Audial sensors detect a voice speaking from a nearby speaker,": PRINT "saying, 'Error:  Exit has been locked-out by front desk.'": GOTO 940
                END IF
        END IF
        IF A$ = "n" AND North = 1 THEN RM = RM - 7: GOSUB 5: GOTO 940
        IF A$ = "s" AND South = 1 THEN RM = RM + 7: GOSUB 5: GOTO 940
        IF A$ = "e" AND East = 1 THEN RM = RM + 1: GOSUB 5: GOTO 940
        IF A$ = "w" AND West = 1 THEN RM = RM - 1: GOSUB 5: GOTO 940
        IF A$ = "ne" AND NorthEast = 1 THEN RM = RM - 6: GOSUB 5: GOTO 940
        IF A$ = "nw" AND NorthWest = 1 THEN RM = RM - 8: GOSUB 5: GOTO 940
        IF A$ = "se" AND SouthEast = 1 THEN RM = RM + 8: GOSUB 5: GOTO 940
        IF A$ = "sw" AND SouthWest = 1 THEN RM = RM + 6: GOSUB 5: GOTO 940
END IF
IF World = 1 THEN
        IF MID$(A$, 1, 5) = "push " AND RM = 70 THEN
                IF MID$(A$, 6) = "teal button" THEN
                       IF LanguageProg <> 2 THEN PRINT "Words in an alien language fill the screen, and then wink out.": GOTO 940
                       INPUT "Enter X course Heading:", X: PRINT
                       INPUT "Enter Y course Heading:", Y: PRINT
                       IF X = 11 AND Y = 10 THEN CourseSet = 1
                       IF X = 19 AND Y = 3 THEN CourseSet = 2
                       IF X = 15 AND Y = 14 THEN CourseSet = 3
                       IF X = 21 AND Y = 10 THEN CourseSet = 4
                       IF X = 0 AND Y = 15 THEN CourseSet = 5
                       IF X = 30 AND Y = 7 THEN CourseSet = 6
                       IF X = 15 AND Y = 0 THEN CourseSet = 7
                       IF X = 8 AND Y = 4 THEN CourseSet = 8
                       IF X = 15 AND Y = 7 THEN CourseSet = 10
                       IF (X = 28 AND Y = 7) OR (X = 2 AND Y = 7) THEN CourseSet = 11
                       IF X >= 0 AND X <= 30 AND Y <= 15 AND Y >= 0 THEN
                                PRINT "Course engaged."
                                IF CourseSet = 0 THEN CourseSet = -1
                       ELSE
                                PRINT "Coordinates specify destination is beyond the range of Galactic perimeter.": PRINT "Course invalid.": CourseSet = 0: GOTO 940
                       END IF
                END IF
                IF MID$(A$, 6) = "aquamarine button" THEN
                        IF LanguageProg <> 2 THEN PRINT "Words in an alien language fill the screen, and then wink out.": GOTO 940
                        IF ShipOpen = 0 AND World = -1 THEN PRINT "Error:  Sensors detect pressure variance between interior and exterior too": PRINT "great.  Door not able to be opened.": GOTO 940
                        IF ShipOpen = 0 AND World <> -1 THEN PRINT "The door slides open.": ShipOpen = 1: PRINT : PRINT "Surroundings Update.": PRINT : GOSUB 5: GOTO 940
                        IF ShipOpen = 1 THEN PRINT "The door slides shut.": ShipOpen = 0: PRINT : PRINT "Surroundings Update.": PRINT : GOSUB 5: GOTO 940
                END IF
                IF MID$(A$, 6) = "puce button" THEN
                        IF LanguageProg <> 2 THEN PRINT "Words in an alien language fill the screen, and then wink out.": GOTO 940
                        IF CourseSet = 0 THEN PRINT "Error:  Course not set.": GOTO 940
                        IF ShipOpen = 1 THEN ShipOpen = 0: PRINT "The door slides shut."
                        PRINT "Launching sequence engaged";
                        FOR G = 1 TO 15
                        PRINT ".";
                        FOR T = 1 TO 1000
                        NEXT T
                        NEXT G
                        PRINT ""
                        ShipTravel = INT(SQR((X1 - X) ^ 2 + (Y1 - Y) ^ 2))
                        PRINT : PRINT "With a low rumble, the space shuttle lifts off from the platform and streaks": PRINT "off into space.": GOSUB 5: GOTO 940
                END IF
                IF MID$(A$, 6) = "plum button" THEN
                        IF LanguageProg <> 2 THEN PRINT "Words in an alien language fill the screen, and then wink out.": GOTO 940
                        PRINT "Error:  Communications Network has been completely fried.  No commmunications": PRINT "may be sent or received while the damaged communications system is installed.": GOTO 940
                END IF
        END IF
        IF A$ = "pull lever" AND (RM = 66 OR RM = 68 OR RM = 73 OR RM = 75) THEN
                IF RM = 66 THEN
                        IF Reactor1 = 0 THEN Reactor1 = 1: PRINT "The reactor slowly powers up.": GOTO 940
                        IF Reactor1 = 1 THEN Reactor1 = 0: PRINT "The reactor slowly shuts down.": GOTO 940
                END IF
                IF RM = 68 THEN
                        IF Reactor2 = 0 THEN Reactor2 = 1: PRINT "The reactor slowly powers up.": GOTO 940
                        IF Reactor2 = 1 THEN Reactor2 = 0: PRINT "The reactor slowly shuts down.": GOTO 940
                END IF
                IF RM = 73 THEN
                        IF Reactor3 = 0 THEN Reactor3 = 1: PRINT "The reactor slowly powers up.": GOTO 940
                        IF Reactor3 = 1 THEN Reactor3 = 0: PRINT "The reactor slowly shuts down.": GOTO 940
                END IF
                IF RM = 75 THEN
                        IF Reactor4 = 0 THEN Reactor4 = 1: PRINT "The reactor slowly powers up.": GOTO 940
                        IF Reactor4 = 1 THEN Reactor4 = 0: PRINT "The reactor slowly shuts down.": GOTO 940
                END IF
        END IF
        IF (A$ = "put syringe in alien" OR MID$(A$, 1, 11) = "use syringe") AND Syringe <> 0 AND RM = 35 THEN
                IF Syringe = 1 THEN PRINT "Error:  The syringe is empty.": GOTO 940
                PRINT "Syringe injected into alien.  Syringe emptied.  Alien shows no signs of": PRINT "awakening from stasis."
                IF Syringe = TestRight THEN CureFound = 1
                Syringe = 1: GOTO 940
        END IF
        IF A$ = "push button" AND RM = 26 THEN
                IF PowerOn = 0 THEN PRINT "Nothing happens.": GOTO 940
                IF LanguageProg <> 2 THEN PRINT "The computer powers up.  Words come out in an alien language.  The computer": PRINT "shuts down.": GOTO 940
                PRINT "The computer powers up.": GOTO BioLab2Computer
        END IF
        IF A$ = "w" AND RM = 72 AND ShipOpen = 1 THEN RM = 70: PRINT "Ship entered.": GOSUB 5: GOTO 940
        IF A$ = "e" AND RM = 70 AND ShipOpen = 1 THEN RM = 72: PRINT "Ship exited.": GOSUB 5: GOTO 940
        IF A$ = "take vial" AND Vial = 0 AND RM = 33 THEN Vial = 1: PRINT "Vial taken.": GOTO 940
        IF A$ = "turn wheel" AND RM = 34 THEN
                IF BioLockDoor = 0 THEN BioLockDoor = 1: PRINT "Wheel turned.  Bolt slides out of lock.": GOTO 940
                IF BioLockDoor = 1 THEN BioLockDoor = 0: PRINT "Wheel turned.  Bolt slides into lock.": GOTO 940
        END IF
        IF A$ = "close door" AND RM = 34 THEN
                IF BioLockDoor <> 2 THEN PRINT "The door is closed.": GOTO 940
                IF BioLockDoor = 2 THEN BioLockDoor = 1: PRINT "The door closes easily.": PRINT : PRINT "Surroundings Update.": PRINT : GOSUB 5: GOTO 940
        END IF
        IF A$ = "open door" AND RM = 34 THEN
                IF BioLockDoor = 0 THEN PRINT "The door does not move.": GOTO 940
                IF BioLockDoor = 1 THEN BioLockDoor = 2: PRINT "The door opens easily.": PRINT : PRINT "Surroundings Update.": PRINT : GOSUB 5: GOTO 940
        END IF
        IF A$ = "turn knob" AND Syringe <> 0 THEN
                IF Syringe = 1 THEN PRINT "Nothing happens.": GOTO 940
                IF Syringe > 1 THEN PRINT "The fluid in the syringe suddenly dries up.  The syringe is now empty.": Syringe = 1: GOTO 940
        END IF
        IF MID$(A$, 1, 8) = "put card" AND RM = 30 THEN
                IF PowerOn = 0 THEN PRINT "Nothing happens.": GOTO 940
                IF BioLab1OfficeOpen = 0 THEN BioLab1OfficeOpen = 1: PRINT "Card placed in slot.  The door slides open.  Card retrieved.": PRINT : PRINT "Surroundings Update.": PRINT : GOSUB 5: GOTO 940
                IF BioLab1OfficeOpen = 1 THEN BioLab1OfficeOpen = 0: PRINT "Card placed in slot.  The door slides closed.  Card retrieved.": PRINT : PRINT "Surroundings Update.": PRINT : GOSUB 5: GOTO 940
        END IF
        IF MID$(A$, 1, 15) = "put syringe in " AND Syringe <> 0 AND RM = 29 THEN
                IF Syringe > 1 THEN PRINT "The syringe is already full.": GOTO 940
                IF MID$(A$, 16) = "red bottle" THEN Syringe = 2: PRINT "Syringe placed in red bottle.  Syringe filled with red fluid.": GOTO 940
                IF MID$(A$, 16) = "blue bottle" THEN Syringe = 3: PRINT "Syringe placed in blue bottle.  Syringe filled with blue fluid.": GOTO 940
                IF MID$(A$, 16) = "green bottle" THEN Syringe = 4: PRINT "Syringe placed in green bottle.  Syringe filled with green fluid.": GOTO 940
        END IF
        IF A$ = "push button" AND RM = 71 THEN PRINT "The computer is completely fried.": GOTO 940
        IF A$ = "take syringe" AND RM = 29 AND Syringe = 0 THEN Syringe = 1: PRINT "Syringe taken.": GOTO 940
        IF A$ = "s" AND RM = 26 AND PowerToSecurity = 0 THEN PRINT "Sensors detect complex laser grid to the south.": GOTO 940
        IF A$ = "push yellow button" AND (RM = 76 OR RM = 77) AND ElevatorPanel = 2 THEN
                IF ElevatorBroke <> 1 THEN PRINT "Nothing happens.": GOTO 940
                IF ElevatorBroke = 1 THEN PRINT "Audial sensors detect a sharp metal clang from above the elevator.  Suddenly,": PRINT "all is silent.  The elevator starts to move again.": ElevatorBroke = 2: GOTO 940
        END IF
        IF A$ = "shoot panel" OR A$ = "shoot release" THEN
                IF (RM = 76 OR RM = 77) AND ElevatorPanel = 0 THEN PRINT "Laser applied to elevator panel.  Release on panel falls off.": ElevatorPanel = 1: GOTO 940
        END IF
        IF A$ = "open panel" THEN
                IF RM = 66 AND Reactor1Open = 0 THEN Reactor1Open = 1: PRINT "Panel opened.": GOTO 940
                IF RM = 73 AND Reactor3Open = 0 THEN Reactor3Open = 1: PRINT "Panel opened.": GOTO 940
                IF RM = 68 AND Reactor2Open = 0 THEN Reactor2Open = 1: PRINT "Panel opened.": GOTO 940
                IF RM = 75 AND Reactor4Open = 0 THEN Reactor4Open = 1: PRINT "Panel opened.": GOTO 940
                IF RM = 76 OR RM = 77 THEN
                        IF ElevatorPanel = 0 THEN PRINT "The elevator panel does not move.": GOTO 940
                        IF ElevatorPanel = 1 THEN ElevatorPanel = 2: PRINT "Elevator panel pried open.": GOTO 940
                END IF
        END IF
        IF A$ = "close panel" THEN
                IF RM = 66 AND Reactor1Open = 1 THEN Reactor1Open = 0: PRINT "Panel closed.": GOTO 940
                IF RM = 73 AND Reactor3Open = 1 THEN Reactor3Open = 0: PRINT "Panel closed.": GOTO 940
                IF RM = 68 AND Reactor2Open = 1 THEN Reactor2Open = 0: PRINT "Panel closed.": GOTO 940
                IF RM = 65 AND Reactor4Open = 1 THEN Reactor4Open = 0: PRINT "Panel closed.": GOTO 940
                IF RM = 76 OR RM = 77 THEN
                        IF ElevatorPanel = 0 THEN PRINT "The elevator panel is closed."
                        IF ElevatorPanel = 2 THEN ElevatorPanel = 1: PRINT "Elevator panel closed.": GOTO 940
                END IF
        END IF
        IF MID$(A$, 1, 5) = "push " AND RM = 6 THEN
                IF PowerOn = 0 THEN PRINT "Nothing happens.": GOTO 940
                IF MID$(A$, 6) = "square button" THEN VideoPlaying = 0: Rewinding = 0: PRINT "Button pushed.": GOTO 940
                IF MID$(A$, 6) = "red button" THEN Rewinding = 0: VideoPlaying = 1: PRINT "Button pushed.": GOTO 940
                IF MID$(A$, 6) = "green button" THEN VideoPlaying = 0: Rewinding = 1: PRINT "Button pushed.": GOTO 940
                IF MID$(A$, 6) = "triangular button" THEN PRINT "Audial sensors detect a clunking from the video tape.  Nothing happens.": GOTO 940
        END IF
        IF A$ = "s" AND RM = 74 AND ElevatorDoors = 0 THEN PRINT "The elevator doors are closed.": GOTO 940
        IF A$ = "s" AND RM = 72 AND ElevatorDoors = 0 THEN PRINT "The elevator doors are closed.": GOTO 940
        IF A$ = "n" AND RM = 76 AND ElevatorDoors = 0 THEN PRINT "The elevator doors are closed.": GOTO 940
        IF A$ = "n" AND RM = 77 AND ElevatorDoors = 0 THEN PRINT "The elevator doors are closed.": GOTO 940
        IF A$ = "s" AND RM = 74 AND ElevatorDoors = 1 THEN RM = 76: GOSUB 5: GOTO 940
        IF A$ = "s" AND RM = 72 AND ElevatorDoors = 1 THEN RM = 77: GOSUB 5: GOTO 940
        IF A$ = "n" AND RM = 76 AND ElevatorDoors = 1 THEN RM = 74: GOSUB 5: GOTO 940
        IF A$ = "n" AND RM = 77 AND ElevatorDoors = 1 THEN RM = 72: GOSUB 5: GOTO 940
        IF MID$(A$, 1, 4) = "push" AND (RM = 38 OR RM = 40 OR RM = 59 OR RM = 61) THEN
                IF NonEss = 1 OR PowerLineFixed <> 2 OR PowerOn = 0 THEN PRINT "Nothing happens.": GOTO 940
                IF LanguageProg <> 2 THEN PRINT "Indecipherable symbols in an alien language appear on the screen.  Soon, the": PRINT "console shuts itself off.": GOTO 940
                GOTO Console
        END IF
        IF MID$(A$, 1, 4) = "push" AND RM = 64 THEN
                IF NonEss = 1 OR PowerLineFixed <> 2 OR PowerOn = 0 THEN PRINT "Nothing happens.": GOTO 940
                IF LanguageProg <> 2 THEN PRINT "Indecipherable symbols in an alien language appear on the screen.  Soon, the": PRINT "computer shuts itself off.": GOTO 940
                GOTO OfficeComputer
        END IF
        IF MID$(A$, 1, 12) = "put couplink" AND RM = 32 AND Couplink = 1 THEN PRINT "Power couplink fitted over broken power line.": PowerLineFixed = 1: Couplink = 2: GOTO 940
        IF MID$(A$, 1, 10) = "use welder" OR MID$(A$, 1, 17) = "use welding laser" AND RM = 32 AND PowerLineFixed = 1 THEN PowerLineFixed = 2: PRINT "Welding laser activated.  Power couplink engaged.  Sensors detect the power": PRINT "line has been repaired.": GOTO 940
        IF ((A$ = "e" AND RM = 65) OR (A$ = "w" AND RM = 69)) AND ReactorAccess = 0 THEN PRINT "The automatic door does not open as you approach it."
        IF A$ = "n" AND OfficeAccess = 0 AND RM = 71 THEN PRINT "The automatic door does not open as you approach it.": GOTO 940
        IF A$ = "put card in slot" AND RM = 74 THEN
                IF ElevatorDoors = 0 THEN ElevatorDoors = 1: PRINT "The elevator doors slide open.": PRINT : PRINT "Surroundings Update.": GOSUB 5: GOTO 940
                IF ElevatorDoors = 1 THEN ElevatorDoors = 0: PRINT "The elevator doors slide shut.": PRINT : PRINT "Surroundings Update.": GOSUB 5: GOTO 940
        END IF
        IF A$ = "put card in slot" AND RM = 71 THEN
                PRINT "The electrical screen lights up.": PRINT
                IF LanguageProg <> 2 THEN PRINT "The screen displays some writing in an alien language, then goes dark.": GOTO 940
                INPUT "'Enter identity code:'  ", Name$: PRINT
                IF Name$ <> "CL3" THEN PRINT "'Identity code not accepted.'": GOTO 940
                PRINT "'Identity confirmed.  Automatic door lockout deactivated.'": OfficeAccess = 1: GOTO 940
        END IF
        IF A$ = "push button" AND (RM = 76 OR RM = 77) THEN PRINT "Error:  Specific button not specified."
        IF A$ = "push button" AND RM = 72 THEN
                IF ShipOpen = 0 THEN ShipOpen = 1: PRINT "The ship's door slides open.": PRINT : PRINT "Surroundings Update.": PRINT : GOSUB 5: GOTO 940
                IF ShipOpen = 1 THEN ShipOpen = 0: PRINT "The ship's door slides closed.": PRINT : PRINT "Surroundings Update.": PRINT : GOSUB 5: GOTO 940
        END IF
        IF A$ = "push blue button" AND (RM = 76 OR RM = 77) THEN
                IF RM = 76 OR ElevatorBroke = 1 THEN PRINT "Nothing happens.": GOTO 940
                IF RM = 77 THEN
                        IF PowerLineFixed <> 2 OR NonEss = 1 OR PowerOn = 0 THEN PRINT "Nothing happens.": GOTO 940
                        PRINT "Button pushed.": ElevatorSeq2 = 5: GOTO 940
                END IF
        END IF
        IF A$ = "push red button" AND (RM = 76 OR RM = 77) THEN
                IF RM = 77 OR ElevatorBroke = 1 THEN PRINT "Nothing happens.": GOTO 940
                IF RM = 76 THEN
                        IF PowerLineFixed <> 2 OR NonEss = 1 OR PowerOn = 0 THEN PRINT "Nothing happens.": GOTO 940
                        PRINT "Button pushed.": ElevatorSeq1 = 5: GOTO 940
                END IF
        END IF
        IF (PowerLineFixed = 2 AND NonEss = 0 AND PowerOn = 1) AND (A$ = "e" AND (RM = 36 OR RM = 57 OR RM = 41 OR RM = 62 OR RM = 65 OR RM = 68)) THEN PRINT "The automatic door slides open as you pass through it."
        IF (PowerLineFixed = 2 AND NonEss = 0 AND PowerOn = 1) AND (A$ = "w" AND (RM = 37 OR RM = 58 OR RM = 42 OR RM = 63 OR RM = 66 OR RM = 69)) THEN PRINT "The automatic door slides open as you pass through it."
        IF (PowerLineFixed <> 2 OR NonEss = 1 OR PowerOn = 0) THEN
                IF (A$ = "e" AND (RM = 36 OR RM = 57 OR RM = 41 OR RM = 62 OR RM = 65 OR RM = 68)) THEN PRINT "The automatic door does not open as you approach it.": GOTO 940
        END IF
        IF (PowerLineFixed <> 2 OR NonEss = 1 OR PowerOn = 0) THEN
                IF (A$ = "w" AND (RM = 37 OR RM = 58 OR RM = 42 OR RM = 63 OR RM = 66 OR RM = 69)) THEN PRINT "The automatic door does not open as you approach it.": GOTO 940
        END IF
        IF PowerLineFixed = 2 AND NonEss = 0 AND PowerOn = 1 THEN
                IF (A$ = "n" AND (RM = 71 OR RM = 38)) THEN PRINT "The automatic door slides open as you approach it."
        END IF
        IF PowerLineFixed = 2 AND NonEss = 0 AND PowerOn = 1 THEN
                IF (A$ = "s" AND (RM = 71 OR RM = 64)) THEN PRINT "The automatic door slides open as you approach it."
        END IF
        IF PowerLineFixed <> 2 OR NonEss = 1 OR PowerOn = 0 THEN
                IF (A$ = "n" AND (RM = 71 OR RM = 38)) THEN PRINT "The automatic door does not slide open as you approach it.": GOTO 940
        END IF
        IF (PowerLineFixed <> 2 OR NonEss = 1 OR PowerOn = 0) AND (A$ = "s" AND (RM = 71 OR RM = 64)) THEN PRINT "The automatic door does not slide open as you approach it.": GOTO 940
        IF MID$(A$, 1, 4) = "take" AND RM = 44 AND Welder = 0 THEN PRINT "Welding laser taken.": Welder = 1: GOTO 940
        IF MID$(A$, 1, 4) = "take" AND Couplink = 0 AND RM = 54 THEN PRINT "Power couplink taken.": Couplink = 1: GOTO 940
        IF (MID$(A$, 1, 13) = "put explosive" OR A$ = "drop explosive") AND Explosive = 1 AND RM = 32 THEN PRINT "Explosive placed near rubble of blocked tube.": Explosive = 2: PRINT : PRINT "Surroundings Update.": PRINT : GOSUB 5: GOTO 940
        IF (MID$(A$, 1, 8) = "put plug" OR MID$(A$, 1, 4) = "plug") AND (RM = 37 OR RM = 41 OR RM = 46 OR RM = 53 OR RM = 62 OR RM = 58 OR RM = 44 OR RM = 45 OR RM = 47 OR RM = 48 OR RM = 51 OR RM = 52 OR RM = 54 OR RM = 55 OR RM = 38 OR RM = 40 OR RM = 59 OR RM = 61) THEN PluggedIn = 1: PRINT "Electrical cord plugged into socket.": GOTO 940
        IF PluggedIn = 1 AND (MID$(A$, 1, 6) = "unplug" OR MID$(A$, 1, 6) = "remove") THEN PluggedIn = 0: PRINT "Electrical cord removed from socket.": GOTO 940
        IF PluggedIn = 1 AND (A$ = "n" OR A$ = "se" OR A$ = "sw" OR A$ = "s" OR A$ = "e" OR A$ = "ne" OR A$ = "nw" OR A$ = "w" OR A$ = "u" OR A$ = "d") THEN PRINT "Error:  Plug extension plugged into electrical socket.": GOTO 940
        IF A$ = "n" AND RM = 71 AND OfficeAccess = 0 THEN PRINT "The automatic doors do not open."
        IF A$ = "push button" AND (RM = 44 OR RM = 45 OR RM = 47 OR RM = 48 OR RM = 51 OR RM = 52 OR RM = 54 OR RM = 55) THEN
                IF (PluggedIn = 0 AND PowerLineFixed <> 2 AND PowerOn = 0) OR NonEss = 1 THEN PRINT "Nothing happens.": GOTO 940
                IF RM = 44 AND RoomDoor(1) = 1 THEN PRINT "The door slides shut.": RoomDoor(1) = 0: PRINT : PRINT "Surroundings Update.": PRINT : GOSUB 5: GOTO 940
                IF RM = 44 AND RoomDoor(1) = 0 THEN PRINT "The door opens.": RoomDoor(1) = 1: PRINT : PRINT "Surroundings Update.": PRINT : GOSUB 5: GOTO 940
                IF RM = 45 AND RoomDoor(3) = 1 THEN PRINT "The door slides shut.": RoomDoor(3) = 0: PRINT : PRINT "Surroundings Update.": PRINT : GOSUB 5: GOTO 940
                IF RM = 45 AND RoomDoor(3) = 0 THEN PRINT "The door opens.": RoomDoor(3) = 1: PRINT : PRINT "Surroundings Update.": PRINT : GOSUB 5: GOTO 940
                IF RM = 47 AND RoomDoor(4) = 1 THEN PRINT "The door slides shut.": RoomDoor(4) = 0: PRINT : PRINT "Surroundings Update.": PRINT : GOSUB 5: GOTO 940
                IF RM = 47 AND RoomDoor(4) = 0 THEN PRINT "The door opens.": RoomDoor(4) = 1: PRINT : PRINT "Surroundings Update.": PRINT : GOSUB 5: GOTO 940
                IF RM = 48 AND RoomDoor(2) = 1 THEN PRINT "The door slides shut.": RoomDoor(2) = 0: PRINT : PRINT "Surroundings Update.": PRINT : GOSUB 5: GOTO 940
                IF RM = 48 AND RoomDoor(2) = 0 THEN PRINT "The door opens.": RoomDoor(2) = 1: PRINT : PRINT "Surroundings Update.": PRINT : GOSUB 5: GOTO 940
                IF RM = 51 AND RoomDoor(7) = 1 THEN PRINT "The door slides shut.": RoomDoor(7) = 0: PRINT : PRINT "Surroundings Update.": PRINT : GOSUB 5: GOTO 940
                IF RM = 51 AND RoomDoor(7) = 0 THEN PRINT "The door opens.": RoomDoor(7) = 1: PRINT : PRINT "Surroundings Update.": PRINT : GOSUB 5: GOTO 940
                IF RM = 52 AND RoomDoor(5) = 1 THEN PRINT "The door slides shut.": RoomDoor(5) = 0: PRINT : PRINT "Surroundings Update.": PRINT : GOSUB 5: GOTO 940
                IF RM = 52 AND RoomDoor(5) = 0 THEN PRINT "The door opens.": RoomDoor(5) = 1: PRINT : PRINT "Surroundings Update.": PRINT : GOSUB 5: GOTO 940
                IF RM = 54 AND RoomDoor(6) = 1 THEN PRINT "The door slides shut.": RoomDoor(6) = 0: PRINT : PRINT "Surroundings Update.": PRINT : GOSUB 5: GOTO 940
                IF RM = 54 AND RoomDoor(6) = 0 THEN PRINT "The door opens.": RoomDoor(6) = 1: PRINT : PRINT "Surroundings Update.": PRINT : GOSUB 5: GOTO 940
                IF RM = 55 AND RoomDoor(8) = 1 THEN PRINT "The door slides shut.": RoomDoor(8) = 0: PRINT : PRINT "Surroundings Update.": PRINT : GOSUB 5: GOTO 940
                IF RM = 55 AND RoomDoor(8) = 0 THEN PRINT "The door opens.": RoomDoor(8) = 1: PRINT : PRINT "Surroundings Update.": PRINT : GOSUB 5: GOTO 940
        END IF
        IF A$ = "push button" AND (RM = 37 OR RM = 41 OR RM = 58 OR RM = 62) THEN
                IF (PowerOn = 0 AND PluggedIn = 0 AND PowerLineFixed <> 2) OR NonEss = 1 THEN PRINT "Nothing happens.": GOTO 940
                PRINT "The electrical screen lights up.": PRINT
                IF LanguageProg <> 2 THEN PRINT "The screen displays some writing in an alien language, then goes dark.": GOTO 940
                INPUT "'Enter identity code:'  ", Name$: PRINT
                IF Name$ = "TE32" AND RoomDoor(1) = 0 AND RM = 37 THEN PRINT "'Identity confirmed.  Opening door.'": PRINT : PRINT "Surroundings Update.": PRINT : RoomDoor(1) = 1: GOSUB 5: GOTO 940
                IF Name$ = "PC45" AND RoomDoor(2) = 0 AND RM = 41 THEN PRINT "'Identity confirmed.  Opening door.'": PRINT : PRINT "Surroundings Update.": PRINT : RoomDoor(2) = 1: GOSUB 5: GOTO 940
                IF Name$ = "MO54382" AND RoomDoor(7) = 0 AND RM = 58 THEN PRINT "'Identity confirmed.  Opening door.'": PRINT : PRINT "Surroundings Update.": PRINT : RoomDoor(7) = 1: GOSUB 5: GOTO 940
                IF Name$ = "SO426274" AND SO4226274Open = 0 AND RM = 62 THEN PRINT "'Identity confirmed.  Opening door.'": PRINT : PRINT "Surroundings Update.": PRINT : RoomDoor(8) = 1: GOSUB 5: GOTO 940
                IF Name$ = "TE32" AND RoomDoor(1) = 1 AND RM = 37 THEN PRINT "'Identity confirmed.  Closing door.'": PRINT : PRINT "Surroundings Update.": PRINT : RoomDoor(1) = 0: GOSUB 5: GOTO 940
                IF Name$ = "PC45" AND RoomDoor(2) = 1 AND RM = 41 THEN PRINT "'Identity confirmed.  Closing door.'": PRINT : PRINT "Surroundings Update.": PRINT : RoomDoor(2) = 0: GOSUB 5: GOTO 940
                IF Name$ = "MO54382" AND RoomDoor(7) = 1 AND RM = 58 THEN PRINT "'Identity confirmed.  Closing door.'": PRINT : PRINT "Surroundings Update.": PRINT : RoomDoor(7) = 0: GOSUB 5: GOTO 940
                IF Name$ = "SO426274" AND SO4226274Open = 1 AND RM = 62 THEN PRINT "'Identity confirmed.  Closing door.'": PRINT : PRINT "Surroundings Update.": PRINT : RoomDoor(8) = 0: GOSUB 5: GOTO 940
                PRINT "'Identity code not accepted.'": GOTO 940
        END IF
        IF A$ = "push button" AND (RM = 46 OR RM = 53) THEN PRINT "Error:  Unknown object.  Specify target button (east/west).": GOTO 941
        IF A$ = "push west button" AND (RM = 46 OR RM = 53) THEN
                IF (PowerOn = 0 AND PluggedIn = 0 AND PowerLineFixed <> 2) OR NonEss = 1 THEN PRINT "Nothing happens.": GOTO 940
                PRINT "The electrical screen lights up.": PRINT
                IF LanguageProg <> 2 THEN PRINT "The screen displays some writing in an alien language, then goes dark.": GOTO 940
                INPUT "'Enter name:'  ", Name$
                IF RM = 46 AND RoomDoor(3) = 0 AND Name$ = "MO12355" THEN PRINT "'Identity confirmed.  Opening door.'": PRINT : PRINT "Surroundings Update.": PRINT : RoomDoor(3) = 1: GOSUB 5: GOTO 940
                IF RM = 53 AND RoomDoor(5) = 0 AND Name$ = "SO341351" THEN PRINT "'Identity confirmed.  Opening door.'": PRINT : PRINT "Surroundings Update.": PRINT : RoomDoor(5) = 1: GOSUB 5: GOTO 940
                IF RM = 46 AND RoomDoor(3) = 1 AND Name$ = "MO12355" THEN PRINT "'Identity confirmed.  Closing door.'": PRINT : PRINT "Surroundings Update.": PRINT : RoomDoor(3) = 0: GOSUB 5: GOTO 940
                IF RM = 53 AND RoomDoor(5) = 1 AND Name$ = "SO341351" THEN PRINT "'Identity confirmed.  Closing door.'": PRINT : PRINT "Surroundings Update.": PRINT : RoomDoor(5) = 0: GOSUB 5: GOTO 940
                PRINT "'Identity code not accepted.'": GOTO 940
        END IF
        IF A$ = "push east button" AND (RM = 46 OR RM = 53) THEN
                IF (PowerOn = 0 AND PluggedIn = 0 AND PowerLineFixed <> 2) OR NonEss = 1 THEN PRINT "Nothing happens.": GOTO 940
                PRINT "The electrical screen lights up.": PRINT
                IF LanguageProg <> 2 THEN PRINT "The screen displays some writing in an alien language, then goes dark.": GOTO 940
                INPUT "'Enter name:'  ", Name$
                IF RM = 46 AND RoomDoor(4) = 0 AND Name$ = "SO351326" THEN PRINT "'Identity confirmed.  Opening door.'": PRINT : PRINT "Surroundings Update.": PRINT : RoomDoor(4) = 1: GOSUB 5: GOTO 940
                IF RM = 53 AND RoomDoor(6) = 0 AND Name$ = "TE43" THEN PRINT "'Identity confirmed.  Opening door.'": PRINT : PRINT "Surroundings Update.": PRINT : RoomDoor(6) = 1: GOSUB 5: GOTO 940
                IF RM = 46 AND RoomDoor(4) = 1 AND Name$ = "SO351326" THEN PRINT "'Identity confirmed.  Closing door.'": PRINT : PRINT "Surroundings Update.": PRINT : RoomDoor(4) = 0: GOSUB 5: GOTO 940
                IF RM = 53 AND RoomDoor(6) = 1 AND Name$ = "TE43" THEN PRINT "'Identity confirmed.  Closing door.'": PRINT : PRINT "Surroundings Update.": PRINT : RoomDoor(6) = 0: GOSUB 5: GOTO 940
                PRINT "'Identity code not accepted.'": GOTO 940
        END IF
        IF PowerOn = 0 AND Infrared = 0 AND (A$ = "n" OR A$ = "se" OR A$ = "sw" OR A$ = "s" OR A$ = "e" OR A$ = "ne" OR A$ = "nw" OR A$ = "w" OR A$ = "u" OR A$ = "d") THEN PRINT "Error:  Not enough light in vicinity to move.": GOTO 940
        IF A$ = "take explosive" AND RM = 7 AND Explosive = 0 THEN
                IF PowerToSecurity = 0 THEN PRINT "The explosive is magnetically held to the device.": GOTO 940
                Explosive = 1: PRINT "Explosive taken.": GOTO 940
        END IF
        IF (A$ = "take laser" OR A$ = "take weapon" OR A$ = "take gun" OR A$ = "take laser gun") AND RM = 7 AND LaserGun = 0 THEN
                IF PowerToSecurity = 0 THEN PRINT "The high-intensity laser weapon is magnetically held to the device.": GOTO 940
                LaserGun = 1: PRINT "High-Intensity Laser Weapon taken.": GOTO 940
        END IF
        IF MID$(A$, 1, 8) = "put plug" AND RM = 21 THEN
                IF PowerOn = 0 THEN PRINT "Plug placed in socket.  Nothing happens.": GOTO 940
                IF PowerOn = 1 THEN
                        PRINT "Plug placed in socket.  Suddenly, an electrical charge goes from the device"
                        PRINT "into fusion battery.  ";
                        IF LanguageProg <> 2 THEN PRINT "Audial sensors detect a mechanical voice speaking in": PRINT "an unknown alien language.  Plug removed from socket."
                        IF LanguageProg = 2 THEN PRINT "Audial sensors detect a mechanical voice, saying,": PRINT "'Power shut off due to depleted power reserves.'  Plug removed from socket."
                        Battery = Battery + (World1Power * 4)
                        IF Battery > 1000 THEN Battery = 1000
                        PowerOn = 0
                        World1Power = 0
                        GOTO 940
                END IF
        END IF
        IF MID$(A$, 1, 4) = "push" AND RM = 12 THEN
                IF PowerOn = 0 OR PowerToSecurity = 1 THEN PRINT "Button pushed.  No apparent result.": GOTO 940
                PRINT "Button pushed.  Electric screen lights up.": GOTO SecurityComputer
        END IF
        IF MID$(A$, 1, 4) = "push" AND RM = 21 THEN
                IF PowerOn = 0 THEN PRINT "Button pushed.  No apparent result.": GOTO 940
                PRINT "Button pushed.  Electric screen lights up.": GOTO PowerConduit
        END IF
        IF MID$(A$, 1, 4) = "push" AND RM = 31 THEN
                IF PowerOn = 0 OR PowerToBioLab1 = 1 THEN PRINT "Button pushed.  No apparent result.": GOTO 940
                PRINT "Button pushed.  Computer powers up.": GOTO Sirrus5BioLab1Computer
        END IF
        IF MID$(A$, 1, 11) = "put card in" AND (RM = 31 OR RM = 24 OR RM = 27 OR RM = 16 OR RM = 17 OR RM = 19 OR RM = 20) THEN
                IF PowerOn = 0 OR ((PowerToBioLab1 = 1 AND (RM = 17 OR RM = 24 OR RM = 31)) OR (PowerToBioLab2 = 1 AND (RM = 20 OR RM = 27 OR RM = 26 OR RM = 33 OR RM = 34)) OR (PowerToLibrary = 1 AND (RM = 16 OR RM = 10)) OR (PowerToSecurity = 1 AND (RM = 19 OR RM = 12)) OR (RM = 25 AND PowerToOther = 1)) THEN PRINT "Card placed in slot.  No apparent change.  Card retrieved.": GOTO 940
                IF RM = 16 AND LibraryOpen = 0 THEN LibraryOpen = 1: PRINT "Card placed in slot.  Sensors report door has slid open.  Card retrieved.": PRINT : PRINT "Surroundings Update.": GOSUB 5: GOTO 940
                IF RM = 19 AND SecurityOpen = 0 THEN
                        IF LanguageProg = 2 THEN PRINT "Card placed in slot.  Electronic screen comes to life.": PRINT
                        IF LanguageProg <> 2 THEN PRINT "Card placed in slot.  Electronic screen springs to life.  Words in an alien": PRINT "language appear on screen.  Card retrieved.": GOTO 940
                        INPUT "'Enter security code 26C:'", Pass$
                        IF Pass$ <> "Col3CIQuarantine" THEN PRINT "'Incorrect access code entered.'  The screen goes dark.": GOTO 940
                        SecurityOpen = 1: PRINT "Sensors report door has slid open.  Card retrieved.": PRINT : PRINT "Surroundings Update.": GOSUB 5: GOTO 940
                END IF
                IF RM = 17 OR RM = 24 OR RM = 31 OR RM = 20 OR RM = 27 OR RM = 26 THEN
                        IF LanguageProg <> 2 THEN PRINT "Card placed in slot.  Electronic screen springs to life.  Words in an alien": PRINT "language appear on screen.  Card retrieved.": GOTO 940
                        IF LanguageProg = 2 THEN
                                PRINT "Card placed in slot.  Electronic screen springs to life.  On the screen, the"
                                IF RM = 24 OR RM = 17 OR RM = 31 THEN
                                        PRINT "words, 'BioLab 1 Entrance.  Exposure to Biohazard Level 2 substances imminent.'"
                                ELSE
                                        PRINT "words, 'BioLab 2 Entrance.  Exposure to Biohazard Level 7 substances imminent.'"
                                END IF
                                PRINT "A menu springs up:": PRINT : GOSUB BioLab1Menu: GOSUB 5: GOTO 940
                        END IF
                END IF
        END IF
        IF (A$ = "pull lever" OR MID$(A$, 1, 4) = "pull") AND DeviceOpen = 1 THEN
                IF Tampered = 0 THEN
                        IF PowerOn = 1 THEN PRINT "Lever pulled.  Device gives off electrical sparks.  No noticable effect.": GOTO 940
                        IF PowerOn = 0 THEN PRINT "Lever pulled.  Sensors report lever to have tripped emergency access system.": Tampered = 1: GOTO 940
                ELSE
                        PRINT "Lever pulled.  Lever returns to original position.  No noticable effect.": GOTO 940
                END IF
        END IF
        IF A$ = "close device" AND RM = 25 AND DeviceOpen = 1 THEN PRINT "Device closed.  Release locked in place.": DeviceOpen = 0: GOTO 940
        IF A$ = "shoot release" AND RM = 25 AND DeviceOpen = 0 THEN PRINT "The device falls open as soon as the laser touches the release.": DeviceOpen = 1: GOTO 940
        IF A$ = "shoot device" AND RM = 25 AND DeviceOpen = 0 THEN PRINT "The laser does not seem to affect the device, due to the device's chemical": PRINT "content.": GOTO 940
        IF (A$ = "pull release" OR A$ = "open device") AND RM = 25 THEN PRINT "The release does not move.": GOTO 940
        IF MID$(A$, 1, 4) = "push" AND RM = 25 AND DeviceOpen = 0 THEN
                IF PowerOn = 0 OR PowerToOther = 1 THEN PRINT "Nothing happens.": GOTO 940
                IF AirlockOpened = 1 THEN PRINT "Button pushed.  The doors slide shut.": AirlockOpened = 0: PRINT : PRINT "Surroundings Update.": PRINT : GOSUB 5: GOTO 940
                IF Tampered <> 0 THEN
                        PRINT "Button pushed.  The device gives off a few electrical sparks, but the door": PRINT "opens.": AirlockOpened = 1: PRINT : PRINT "Surroundings Update.": PRINT : GOSUB 5: GOTO 940
                END IF
                IF LanguageProg <> 2 THEN
                        PRINT "Button pushed.  The device's screen lights up, printing out words in an alien"
                        PRINT "language, unknown to current language receptors.": GOTO 940
                END IF
                IF LanguageProg = 2 THEN
                        IF Tampered = 0 THEN
                                PRINT "Button pushed.  The device's screen lights up, printing out worlds in an alien"
                                PRINT "language.  Interpreted, the words mean, 'Restricted Access.  Please type in"
                                PRINT "Security Access code 432F.'"
                                PRINT : INPUT "Access Code:", Wrong$: PRINT
                                PRINT "'Incorrect code entered.'  The device's screen flickers off.": GOTO 940
                        END IF
                END IF
        END IF
        IF A$ = "n" AND RM = 38 THEN RM = 71: GOSUB 5: GOTO 940
        IF A$ = "s" AND RM = 71 THEN RM = 38: GOSUB 5: GOTO 940
        IF NorthWest = 1 AND A$ = "nw" THEN RM = RM - 8: GOSUB 5: GOTO 940
        IF SouthWest = 1 AND A$ = "sw" THEN RM = RM + 6: GOSUB 5: GOTO 940
        IF NorthEast = 1 AND A$ = "ne" THEN RM = RM - 6: GOSUB 5: GOTO 940
        IF SouthEast = 1 AND A$ = "se" THEN RM = RM + 8: GOSUB 5: GOTO 940
        IF North = 1 AND A$ = "n" THEN RM = RM - 7: GOSUB 5: GOTO 940
        IF South = 1 AND A$ = "s" THEN RM = RM + 7: GOSUB 5: GOTO 940
        IF East = 1 AND A$ = "e" THEN RM = RM + 1: GOSUB 5: GOTO 940
        IF West = 1 AND A$ = "w" THEN RM = RM - 1: GOSUB 5: GOTO 940
END IF
IF MID$(A$, 1, 4) = "scan" THEN Scan: GOTO 940
IF A$ = "schematics" OR A$ = "OBC6R schematics" THEN
        PRINT "Omega Blue Class 6 Robot (OBC6R):    Serial Number ANX1201419": PRINT
        PRINT "Designed for:            Surveillance missions on far-away planets"
        PRINT "Equipped with:           Master keycard, hand laser, information files"
        PRINT "Design features:         Fusion battery, electrical backup battery, AI System"
        PRINT "                         5.4, Chemical Evaluation Sensors (CES),  IRTS (Innate"
        PRINT "                         Robot Teleportation System."
        PRINT "Heat Threshold:          1000 øK (726.85 øC)  Any temperatures above this mark"
        PRINT "                         cause an overheating of the battery.  Once the fusion"
        PRINT "                         battery becomes overheated, the energy within it is"
        PRINT "                         released in a huge explosion, destroying the robot."
        PRINT
        PRINT "All Omega Blue Robots are manufactured by Dking Robot and Computer Manufacture"
        PRINT "Core, located in Madison, North America on Earth in the Milky Way Galaxy."
        PRINT "E-mail adress is dking@uol.com.  Our Web site is at usw.omegablue.com."
GOTO 940
END IF
IF A$ = "infrared" THEN
IF Infrared = 1 THEN Infrared = 0: PRINT "Infrared shut off.": GOTO 940
IF Infrared = 0 THEN Infrared = 1: PRINT "Infrared vision enabled.": PRINT : PRINT "Surroundings Update.": PRINT : GOSUB 5: GOTO 940
END IF
IF A$ = "commands" THEN
PRINT "Current Commands Available:": PRINT
PRINT "OBC6R Schematics         Systems Check            Power Check"
PRINT "Equipment Check          Data                     Examine"
PRINT "Scan                     Look                     Terminate"
PRINT "WCN (Wireless Com Network)                        Teleport"
                            PRINT "Infrared                 ";
        IF AbsProg > 0 THEN PRINT "Abstract                 ";
   IF LanguageProg > 0 THEN PRINT "Language                 ";
         IF BioArc = 1 THEN PRINT "Bioarc                   ";
IF ConsoleArchives = 1 THEN PRINT "Pubarc                   ";
PRINT ""
GOTO 940
END IF
IF A$ = "bioarc" AND BioArc = 1 THEN GOTO DownLoadedArchives
IF A$ = "pubarc" AND ConsoleArchives = 1 THEN GOTO DownLoadedArchives2
IF A$ = "language" AND LanguageProg = 1 THEN
LanguageProg = 2: PRINT "Language Interpretation System (LIS) activated.": GOTO 940
END IF
IF A$ = "language" AND LanguageProg = 2 THEN
LanguageProg = 1: PRINT "Language Interpretation System (LIS) deactivated.": GOTO 940
END IF
IF A$ = "abstract" AND AbsProg = 1 THEN
AbsProg = 2: PRINT "Basic Abstract Thought Program (BATP) Activated.": GOTO 940
END IF
IF A$ = "abstract" AND AbsProg = 2 THEN
AbsProg = 1: PRINT "Basic Abstract Thought Program (BATP) Deactivated.": GOTO 940
END IF
IF A$ = "wcn" OR A$ = "WCN" OR A$ = "comm" THEN PRINT : WCN: KeyInit: GOSUB 5: GOTO 940
IF A$ = "equipment check" OR A$ = "equipment" OR A$ = "inventory" OR A$ = "i" THEN GOTO I
IF A$ = "save" THEN GOTO SaveGame
IF A$ = "load" THEN GOTO LoadGame
IF A$ = "" THEN PRINT "Blank input string entered.  Retype command.": GOTO 941
IF A$ = "l" OR A$ = "look" THEN GOSUB 5: GOTO 940
IF A$ = "systems check" THEN SystemCheck: GOTO 940
IF A$ = "data" THEN Information: GOTO 940
IF A$ = "set explosive" AND Explosive <> 0 AND Explosive <> 3 THEN ExplodeTime = 6: PRINT "Explosive set.  The timer lights up, displaying the number 5.": GOTO 940
IF A$ = "power" OR A$ = "power check" THEN
PRINT , "     Fusion Battery:", " Backup Battery:": PRINT
PRINT "Power Source:", "     Fusion Power", " Electricity"
IF Battery > 0 THEN PRINT "Status:", "     Charged", , " Charged"
IF Battery = 0 THEN PRINT "Status:", "     Drained", , " Charged"
PRINT "Power Remaining:  "; Battery, , Battery2
PRINT "Maximum Capactity: 1000", , 50
GOTO 941
END IF
IF MID$(A$, 1, 7) = "examine" OR MID$(A$, 1, 7) = "look at" THEN
        IF MID$(A$, 9) = "syringe" AND Syringe <> 0 THEN
                Obj$ = "Syringe"
                IF Syringe = 1 THEN Search$ = "syringe empty"
                IF Syringe = 2 THEN Search$ = "syringe red"
                IF Syringe = 3 THEN Search$ = "syringe blue"
                IF Syringe = 4 THEN Search$ = "syringe green"
                GOTO Report
        END IF
        IF MID$(A$, 9) = "controls" AND RM = 6 THEN Obj$ = "Surveillance Controls": Search$ = "monitor controls": GOTO Report
        IF MID$(A$, 9) = "master keycard" OR MID$(A$, 9) = "master key card" OR MID$(A$, 9) = "keycard" OR MID$(A$, 9) = "card" OR MID$(A$, 9) = "key card" THEN Obj$ = "Master Key Card": Search$ = "keycard": GOTO Report
        IF MID$(A$, 9) = "laser" OR MID$(A$, 9) = "hand laser" OR MID$(A$, 9) = "laser extension" OR MID$(A$, 9) = "hand laser extension" THEN Obj$ = "Hand Laser Extension": Search$ = "laser": GOTO Report
        IF MID$(A$, 9) = "laser gun" OR MID$(A$, 9) = "laser weapon" THEN Obj$ = "High-Intensity Laser Weapon": Search$ = "laser weapon": GOTO Report
        IF MID$(A$, 9) = "" THEN PRINT "Error:  Please specify object to examine.": GOTO 940
        IF MID$(A$, 9) = "lever" AND RM = 25 AND DeviceOpen = 1 THEN Obj$ = "Lever": Search$ = "lever": GOTO Report
        IF MID$(A$, 9) = "door" AND LanguageProg = 2 AND RM = 17 AND BioLab1Open = 0 THEN Obj$ = "Closed Door": Search$ = "biolab1 door closed translated": GOTO Report
        IF MID$(A$, 9) = "door" AND LanguageProg = 2 AND RM = 20 AND BioLab2Open = 0 THEN Obj$ = "Closed Door": Search$ = "biolab2 door closed translated": GOTO Report
        IF MID$(A$, 9) = "door" AND LanguageProg = 2 AND RM = 19 AND SecurityOpen = 0 THEN Obj$ = "Closed Door": Search$ = "security door closed translated": GOTO Report
        IF MID$(A$, 9) = "door" AND LanguageProg = 2 AND RM = 16 AND LibaryOpen = 0 THEN Obj$ = "Closed Door": Search$ = "library door closed translated": GOTO Report
        IF MID$(A$, 9) = "door" AND LanguageProg = 2 AND RM = 25 AND AirlockOpened = 0 THEN Obj$ = "Closed Door": Search$ = "door closed translated": GOTO Report
        IF MID$(A$, 9) = "door" AND LanguageProg <> 2 AND ((RM = 25 AND AirlockOpened = 0) OR (RM = 16 AND LibraryOpen = 0) OR (RM = 17 AND BioLab1Open = 0) OR (RM = 19 AND SecurityOpen = 0) OR (RM = 20 AND BioLab2Open2 = 0)) THEN Obj$ = "Closed Door": Search$ = "door closed untranslated": GOTO Report
        IF MID$(A$, 9) = "door" AND RM = 25 AND AirlockOpened = 1 THEN Obj$ = "Open Door": Search$ = "door open": GOTO Report
        IF MID$(A$, 9) = "door" AND RM = 16 AND LibraryOpen = 1 THEN Obj$ = "Open Door": Search$ = "door open": GOTO Report
        IF MID$(A$, 9) = "door" AND RM = 19 AND SecurityOpen = 1 THEN Obj$ = "Open Door": Search$ = "door open": GOTO Report
        IF MID$(A$, 9) = "device" AND RM = 21 AND PowerOn = 0 THEN Obj$ = "Device": Search$ = "power conduit off": GOTO Report
        IF MID$(A$, 9) = "device" AND RM = 21 AND PowerOn = 1 THEN Obj$ = "Device": Search$ = "power conduit on": GOTO Report
        IF MID$(A$, 9) = "device" AND RM = 25 AND DeviceOpen = 1 THEN Obj$ = "Device": Search$ = "device opened": GOTO Report
        IF MID$(A$, 9) = "device" AND RM = 25 AND DeviceOpen = 0 THEN Obj$ = "Device": Search$ = "device closed": GOTO Report
        IF MID$(A$, 9) = "plaque" AND RM = 26 AND LanguageProg = 2 THEN Obj$ = "Plaque": Search$ = "plaque translated": GOTO Report
        IF MID$(A$, 9) = "plaque" AND RM = 26 AND LanguageProg <> 2 THEN Obj$ = "Plaque": Search$ = "plaque untranslated": GOTO Report
        IF MID$(A$, 9) = "explosive" AND ExplodeTime = 0 AND (Explosive = 1 OR Explosive = 2) THEN Obj$ = "Explosive": Search$ = "explosive unset": GOTO Report
        IF MID$(A$, 9) = "controls" AND RM = 70 THEN Obj$ = "Controls": Search$ = "ship controls": GOTO Report
        IF MID$(A$, 9) = "explosive" AND ExplodeTime > 0 AND (Explosive = 1 OR Explosive = 2) THEN
                PRINT "Object Examined:  ";
                FOR T = 1 TO 500: NEXT T
                PRINT "Explosive"
                PRINT "Description:      ";
                FOR T = 1 TO 500: NEXT T
                PRINT "The explosive contains four chambers within it.  Inside the"
                PRINT "chambers are various radioactive elements, including traces of uranium and"
                PRINT "plutonium.  Sensors report it to be a contained fission explosive.  Instead"
                PRINT "of releasing a huge blast, as an atomic bomb would, it atomically vaporizes"
                PRINT "any objects in contact with it when set off.  There is a timer on it, lit."
                PRINT "The number"; ExplodeTime; "is on the timer."
                GOTO 940
        END IF
        PRINT "Error:  Please specify object to examine.": GOTO 941
Report:
        OPEN "omega3.obj" FOR INPUT AS #1
        PRINT "Object Examined:  ";
        FOR T = 1 TO 500: NEXT T
        PRINT Obj$
        PRINT "Description:      ";
        FOR T = 1 TO 500: NEXT T
                DO WHILE NOT EOF(1)
                        LINE INPUT #1, Rec$
                        IF Rec$ = Search$ THEN GOTO Desc
                LOOP
Desc:
                DO WHILE NOT EOF(1)
                        LINE INPUT #1, Rec$
                        IF Rec$ = "Start" THEN GOTO Desc2
                LOOP
Desc2:
        DO WHILE NOT EOF(1)
                LINE INPUT #1, Rec$  'Read entries from the file.
                IF Rec$ = "STOP" THEN GOTO Stop2
                PRINT Rec$           'Print the entries on the screen.
        LOOP
Stop2: CLOSE #1: GOTO 940
        PRINT : CLOSE #1: GOTO 940
END IF
IF A$ = "terminate" THEN
TerConf: INPUT "Mission Termination Confirm (Y/N):", Q$
        IF MID$(Q$, 1, 1) = "y" THEN ShutDown
        IF MID$(Q$, 1, 1) = "n" THEN GOTO 940
        PRINT : GOTO TerConf
END IF
IF A$ = "n" OR A$ = "se" OR A$ = "sw" OR A$ = "s" OR A$ = "e" OR A$ = "ne" OR A$ = "nw" OR A$ = "w" OR A$ = "u" OR A$ = "d" THEN PRINT "Sensors do not detect a path in that direction.": GOTO 940
PRINT "Error:  Bad command entered."
GOTO 940
400 Startup
RETURN
Bug:
CLOSE
PRINT "File save/load critical error.": GOTO 940
BioLab1Menu:
GOSUB Cycle
PRINT
PRINT "'1.  Sterilize Chamber.'"
PRINT "'2.  Desterilize Chamber.'"
PRINT "'3.  Open Inner BioLab Door.'"
PRINT "'4.  Open Outer BioLab Door.'"
PRINT "'5.  Close Inner BioLab Door.'"
PRINT "'6.  Close Outer BioLab Door.'"
PRINT "'7.  Exit Menu.'"
PRINT : INPUT "Menu>", A: PRINT
IF A = 7 THEN RETURN
IF A > 6 OR A < 1 THEN RETURN
IF A = 1 THEN
        Sterilized = 1
        PRINT "The screen reads, 'Chamber has been sterilized and is now safe to enter.'"
        GOTO BioLab1Menu
END IF
IF A = 2 THEN
        Sterilized = 0
        PRINT "The screen reads, 'Chamber has been de-sterilized.'"
        GOTO BioLab1Menu
END IF
IF A = 3 THEN
        IF RM = 17 OR RM = 24 OR RM = 31 THEN
                IF InnerBio1Open = 0 AND BioLab1Open = 0 AND Sterilized = 0 THEN PRINT "'Safety protocal demands sterilizing the chamber before any doors are opened.'": GOTO BioLab1Menu
                IF InnerBio1Open = 0 AND BioLab1Open = 0 THEN PRINT "'Inner Biolab door opened.'": InnerBio1Open = 1: GOTO BioLab1Menu
                IF InnerBio1Open = 0 AND BioLab1Open = 1 THEN PRINT "'Inner Biolab door unable to be opened while Outer Door is open.'": GOTO BioLab1Menu
                IF InnerBio1Open = 1 THEN PRINT "'Inner Biolab door has already been opened.'": GOTO BioLab1Menu
        ELSE
                IF InnerBio2Open = 0 AND BioLab2Open = 0 AND Sterilized = 0 THEN PRINT "'Safety protocal demands sterilizing the chamber before any doors are opened.'": GOTO BioLab1Menu
                IF InnerBio2Open = 0 AND BioLab2Open = 0 THEN PRINT "'Inner Biolab door opened.'": InnerBio2Open = 1: GOTO BioLab1Menu
                IF InnerBio2Open = 0 AND BioLab2Open = 1 THEN PRINT "'Inner Biolab door unable to be opened while Outer Door is open.'": GOTO BioLab1Menu
                IF InnerBio2Open = 1 THEN PRINT "'Inner Biolab door has already been opened.'": GOTO BioLab1Menu
        END IF
        GOTO BioLab1Menu
END IF
IF A = 4 THEN
        IF RM = 17 OR RM = 24 OR RM = 31 THEN
                IF InnerBio1Open = 0 AND BioLab1Open = 0 AND Sterilized = 1 THEN PRINT "'Outer Biolab door opened.'": BioLab1Open = 1: GOTO BioLab1Menu
                IF InnerBio1Open = 0 AND BioLab1Open = 0 AND Sterilized = 0 THEN PRINT "'Safety protocal demands sterilizing the chamber before any doors are opened.'": GOTO BioLab1Menu
                IF InnerBio1Open = 1 AND BioLab1Open = 0 THEN PRINT "'Outer Biolab door unable to be opened while Inner Door is open.'": GOTO BioLab1Menu
                IF BioLab1Open = 1 THEN PRINT "'Outer Biolab door has already been opened.'": GOTO BioLab1Menu
        END IF
        IF RM = 20 OR RM = 27 OR RM = 26 THEN
                IF InnerBio2Open = 0 AND BioLab2Open = 0 AND Sterilized = 1 THEN PRINT "'Outer Biolab door opened.'": BioLab2Open = 1: GOTO BioLab1Menu
                IF InnerBio2Open = 0 AND BioLab2Open = 0 AND Sterilized = 0 THEN PRINT "'Safety protocal demands sterilizing the chamber before any doors are opened.'": GOTO BioLab1Menu
                IF InnerBio2Open = 1 AND BioLab2Open = 0 THEN PRINT "'Outer Biolab door unable to be opened while Inner Door is open.'": GOTO BioLab1Menu
                IF BioLab2Open = 1 THEN PRINT "'Outer Biolab door has already been opened.'": GOTO BioLab1Menu
        END IF
        GOTO BioLab1Menu
END IF
IF A = 5 THEN
        IF RM = 17 OR RM = 24 OR RM = 31 THEN
                IF InnerBio1Open = 0 THEN PRINT "'Inner Biolab door is already closed.'"
                IF InnerBio1Open = 1 THEN PRINT "'Inner Biolab door closed.'": InnerBio1Open = 0
        ELSE
                IF InnerBio2Open = 0 THEN PRINT "'Inner Biolab door is already closed.'"
                IF InnerBio2Open = 1 THEN PRINT "'Inner Biolab door closed.'": InnerBio2Open = 0
        END IF
        GOTO BioLab1Menu
END IF
IF A = 6 THEN
        IF RM = 17 OR RM = 24 OR RM = 31 THEN
                IF BioLab1Open = 0 THEN PRINT "'Outer Biolab door is already closed.'"
                IF BioLab1Open = 1 THEN PRINT "'Outer Biolab door closed.'": BioLab1Open = 0
        ELSE
                IF BioLab2Open = 0 THEN PRINT "'Outer Biolab door is already closed.'"
                IF BioLab2Open = 1 THEN PRINT "'Outer Biolab door closed.'": BioLab2Open = 0
        END IF
        GOTO BioLab1Menu
END IF
Cycle:
IF RM >= 36 AND (NonEss = 1 OR PowerLineFixed = 0) AND PluggedIn = 1 THEN
        IF Battery >= 0 THEN Battery = Battery - 4
        IF Battery = 0 THEN Battery2 = Battery2 - 4
END IF
PowCreatedRecon
PowNeedRecon
World1Power = World1Power - 4
World1Power = World1Power + PowerCreated
World1Power = World1Power - PowerNeeded
IF World1Power <= 0 THEN
        PowerOn = 0
        IF World = 1 THEN
                IF LanguageProg <> 2 THEN PRINT "Audial sensors detect a mechanical voice speaking in an unknown alien language.": CLOSE : GOSUB 5: GOTO 940
                IF LanguageProg = 2 THEN PRINT "Audial sensors detect a mechanical voice, saying, 'Power shut off due to": PRINT "depleted power reserves.'": CLOSE : GOSUB 5: GOTO 940
        END IF
END IF
RETURN

Sirrus5BioLab1Computer:
GOSUB Cycle
PRINT
PRINT "BioLab 1 Computer:": PRINT
PRINT "1.  BioLab 1 Information"
PRINT "2.  BioLab Archives"
PRINT "3.  Restricted Access Schematics"
PRINT "4.  BioLab 1 Inventory"
PRINT "5.  BioLab 1 Staff"
PRINT "6.  Exit Menu"
PRINT : INPUT "BioLab 1>", A: PRINT
IF A > 5 OR A < 1 THEN PRINT "Shutting down....": FOR T = 1 TO 1000: NEXT T: GOTO 940
IF A = 5 THEN
        CLOSE
        OPEN "archives.sr5" FOR INPUT AS #1
        DO WHILE NOT EOF(1)
                LINE INPUT #1, Rec$
                IF Rec$ = "BioLab1 Staff" THEN
                        DO WHILE NOT EOF(1)
                                LINE INPUT #1, Rec$
                                IF Rec$ = "STOP" THEN CLOSE #1: GOTO Sirrus5BioLab1Computer
                                PRINT Rec$
                        LOOP
                END IF
        LOOP
END IF
IF A = 4 THEN
        OPEN "archives.sr5" FOR INPUT AS #1
        DO WHILE NOT EOF(1)
                LINE INPUT #1, Rec$
                IF Rec$ = "BioLab1 Inventory" THEN
                        DO WHILE NOT EOF(1)
                                LINE INPUT #1, Rec$
                                IF Rec$ = "STOP" THEN CLOSE #1: GOTO Sirrus5BioLab1Computer
                                PRINT Rec$
                        LOOP
                END IF
        LOOP
END IF
IF A = 1 THEN
        PRINT "BioLab 1, Complex 42A, Colonial Planet 3": PRINT
        PRINT "Services:      Private Health Services for Officers on the Complex"
        PRINT "Staff:         3"
        PRINT "Head Doctor:   MO54382"
        GOTO Sirrus5BioLab1Computer
END IF
IF A = 3 THEN
        INPUT "Enter Identity Code:", Code$
        IF Code$ = "MO54382" OR Code$ = "CL3" THEN
                OPEN "archives.sr5" FOR INPUT AS #1
                DO WHILE NOT EOF(1)
                        LINE INPUT #1, Rec$
                        IF Rec$ = "Schematics" THEN GOTO ArcFound4
                LOOP
ArcFound4:
                DO WHILE NOT EOF(1)
                        LINE INPUT #1, Rec$
                        IF Rec$ = "STOP" THEN
BackThere2:
                                A$ = INKEY$
                                IF LEN(A$) = 0 THEN GOTO BackThere2
                                CLOSE #1: GOTO Sirrus5BioLab1Computer
                        END IF
                        PRINT Rec$
                LOOP
        ELSE
                        PRINT "Identity code not accepted.": GOTO Sirrus5BioLab1Computer
        END IF
END IF
IF A = 2 THEN
Archives:
        GOSUB Cycle
        PRINT "BioLab Archives:": PRINT
        PRINT "1.  Search Archives"
        PRINT "2.  Download Archives"
        PRINT "3.  Archives Index"
        PRINT "4.  Exit Menu"
        PRINT : INPUT "Archives>", A: PRINT
        IF A = 3 THEN
                OPEN "archives.sr5" FOR INPUT AS #1
                DO WHILE NOT EOF(1)
                        LINE INPUT #1, Rec$
                        IF Rec$ = "BioArchives" THEN GOTO ArcFound3
                LOOP
ArcFound3:
                DO WHILE NOT EOF(1)
                        LINE INPUT #1, Rec$
                        IF Rec$ = "Index" THEN
                                DO WHILE NOT EOF(1)
                                        LINE INPUT #1, Rec$
                                        IF Rec$ = "Start" THEN
                                                DO WHILE NOT EOF(1)
                                                        LINE INPUT #1, Rec$
                                                        IF Rec$ = "STOP" THEN CLOSE #1: GOTO Archives
                                                        PRINT Rec$
                                                LOOP
                                        END IF
                                LOOP
                        END IF
                LOOP
        END IF
        IF A > 3 OR A < 1 THEN GOTO Sirrus5BioLab1Computer
        IF A = 2 THEN
                PRINT "Downloaded initiated."
                FOR T = 1 TO 100
                        FOR Delay = 1 TO 100
                        NEXT Delay
                        IF T = 25 THEN GOSUB Cycle
                        IF T = 50 THEN GOSUB Cycle
                        IF T = 75 THEN GOSUB Cycle
                NEXT T
                PRINT "File download completed.": BioArc = 1: GOTO Archives
        END IF
        IF A = 1 THEN
                INPUT "Enter search string:", Search$
                OPEN "archives.sr5" FOR INPUT AS #1
                DO WHILE NOT EOF(1)
                        LINE INPUT #1, Rec$
                        IF Rec$ = "BioArchives" THEN GOTO ArcFound
                LOOP
ArcFound:
                DO WHILE NOT EOF(1)
                        LINE INPUT #1, Rec$
                        IF Rec$ = Search$ THEN
                                DO WHILE NOT EOF(1)
                                        LINE INPUT #1, Rec$
                                        IF Rec$ = "Start" THEN
                                                DO WHILE NOT EOF(1)
                                                        LINE INPUT #1, Rec$
                                                        IF Rec$ = "STOP" THEN CLOSE #1: GOTO 940
                                                        PRINT Rec$
                                                LOOP
                                        END IF
                                LOOP
                        END IF
                LOOP
                END IF
                DO WHILE NOT EOF(1)
                        LINE INPUT #1, Rec$
                        IF Rec$ = "BioArchivesEnd" THEN PRINT "Search string not found.": CLOSE #1: GOTO Archives
                LOOP
        END IF
GOTO 940

DownLoadedArchives:
        OPEN "archives.sr5" FOR INPUT AS #1
        INPUT "Enter search string:", Search$
        DO WHILE NOT EOF(1)
                LINE INPUT #1, Rec$
                IF Rec$ = "BioLab Computer" THEN GOTO ArcFound2
        LOOP
ArcFound2:
        DO WHILE NOT EOF(1)
                LINE INPUT #1, Rec$
                IF Rec$ = Search$ THEN
                        DO WHILE NOT EOF(1)
                                LINE INPUT #1, Rec$
                                IF Rec$ = "Start" THEN
                                        DO WHILE NOT EOF(1)
                                                LINE INPUT #1, Rec$
                                                IF Rec$ = "STOP" THEN CLOSE #1: GOTO 940
                                                PRINT Rec$
                                        LOOP
                                END IF
                        LOOP
                END IF
        LOOP
        DO WHILE NOT EOF(1)
                LINE INPUT #1, Rec$
                IF Rec$ = "BioLab Computer End" THEN PRINT "Search string not found.": CLOSE #1: GOTO 940
        LOOP
CLOSE #1: GOTO 940
PowerConduit:
GOSUB Cycle
PRINT "Power Conduit Access Panel:": PRINT
PRINT "1.  Check Power Distribution"
PRINT "2.  Change Power Distribution"
PRINT "3.  Shut Off Power"
PRINT "4.  Restore Power"
PRINT "5.  Reconfigure Fusion Reactor"
PRINT "6.  Exit"
PRINT : INPUT "Power>", A: PRINT
IF A > 5 OR A < 1 THEN GOTO 940
IF A = 5 THEN
GOSUB Cycle
PRINT "Fusion Reactor:": PRINT
PRINT "1.  Shut off power to non-essential parts of Colony 3."
PRINT "2.  Restore power to non-essential parts of Colony 3."
PRINT "3.  Return to Main Menu."
PRINT : INPUT ">", A: PRINT
IF A = 1 THEN
        INPUT "Enter access code 45W:", Pass$
        IF Pass$ = "Operation WipeCI" THEN
                IF NonEss = 0 THEN NonEss = 1: PRINT "All power, including life-support, has been cut off to all non-essential parts": PRINT "of Colony 3.  Control Dome power remains intact.": GOTO PowerConduit
                IF NonEss = 1 THEN PRINT "Power already has been cut.": GOTO PowerConduit
                GOTO PowerConduit
        END IF
        PRINT "Incorrect code entered.": GOTO PowerConduit
END IF
IF A = 2 THEN
        INPUT "Enter access code 45W:", Pass$: PRINT
        IF Pass$ = "Operation WipeCI" THEN
                IF NonEss = 1 THEN NonEss = 0: PRINT "All power, including life-support, has been retored to all non-essential parts": PRINT "of Colony 3.  Control Dome power remains intact.": GOTO PowerConduit
                IF NonEss = 0 THEN PRINT "Power already has been restored.": GOTO PowerConduit
                GOTO PowerConduit
        END IF
        PRINT "Incorrect code entered.": GOTO PowerConduit
END IF
IF A > 2 OR A < 1 THEN GOTO PowerConduit
END IF
IF A = 4 THEN
IF ShutOff = 0 THEN PRINT "Power has not been manually shut off.": GOTO PowerConduit
IF ShutOff = 1 THEN ShutOff = 0: PRINT "Power manually restored.": GOTO PowerConduit
END IF
IF A = 3 THEN
IF ShutOff = 1 THEN PRINT "Power is already been manually shut off.": GOTO PowerConduit
IF ShutOff = 0 THEN ShutOff = 1: PRINT "Power manually shut off.": GOTO PowerConduit
END IF
IF A = 2 THEN
ChangeDistr:
GOSUB Cycle
PRINT "Power Distribution Menu:": PRINT
PRINT "1.  BioLab1              ";
IF PowerToBioLab1 = 0 THEN PRINT "On"
IF PowerToBioLab1 = 1 THEN PRINT "Off"
PRINT "2.  BioLab2              ";
IF PowerToBioLab2 = 0 THEN PRINT "On"
IF PowerToBioLab2 = 1 THEN PRINT "Off"
PRINT "3.  Security             ";
IF PowerToSecurity = 0 THEN PRINT "On"
IF PowerToSecurity = 1 THEN PRINT "Off"
PRINT "4.  Library              ";
IF PowerToLibrary = 0 THEN PRINT "On"
IF PowerToLibrary = 1 THEN PRINT "Off"
PRINT "5.  Other                ";
IF PowerToOther = 0 THEN PRINT "On"
IF PowerToOther = 1 THEN PRINT "Off"
PRINT "6.  Outside Complex      ";
IF NonEss = 0 THEN PRINT "On"
IF NonEss = 1 THEN PRINT "Off"
PRINT "7.  Return to Main Menu"
PRINT : INPUT ">", A: PRINT
IF A = 6 THEN PRINT "Tampering with power levels of quarantined population is not permitted.": GOTO ChangeDistr
IF A = 1 THEN
        IF PowerToBioLab1 = 0 THEN PowerToBioLab1 = 1: GOSUB Cycle: GOTO ChangeDistr
        IF PowerToBioLab1 = 1 THEN PowerToBioLab1 = 0: GOSUB Cycle: GOTO ChangeDistr
END IF
IF A = 2 THEN
        IF PowerToBioLab2 = 0 THEN PowerToBioLab2 = 1: GOSUB Cycle: GOTO ChangeDistr
        IF PowerToBioLab2 = 1 THEN PowerToBioLab2 = 0: GOSUB Cycle: GOTO ChangeDistr
END IF
IF A = 3 THEN
        IF PowerToSecurity = 0 THEN PowerToSecurity = 1: GOSUB Cycle: GOTO ChangeDistr
        IF PowerToSecurity = 1 THEN PowerToSecurity = 0: GOSUB Cycle: GOTO ChangeDistr
END IF
IF A = 4 THEN
        IF PowerToLibrary = 0 THEN PowerToLibrary = 1: GOSUB Cycle: GOTO ChangeDistr
        IF PowerToLibrary = 1 THEN PowerToLibrary = 0: GOSUB Cycle: GOTO ChangeDistr
END IF
IF A = 5 THEN
        IF PowerToOther = 0 THEN PowerToOther = 1: GOSUB Cycle: GOTO ChangeDistr
        IF PowerToOther = 1 THEN PowerToOther = 0: GOSUB Cycle: GOTO ChangeDistr
END IF
IF A >= 7 OR A < 1 THEN GOTO PowerConduit
END IF
IF A = 1 THEN
        IF PowerOn = 1 THEN
                PRINT "Area:                    Power:                Area:             Power:": PRINT
                PRINT "BioLab1                  ";
                IF PowerToBioLab1 = 0 THEN PRINT "2                    ";  ELSE PRINT "0                    ";
                PRINT "BioLab2             ";
                IF PowerToBioLab2 = 0 THEN PRINT "4" ELSE PRINT "0"
                PRINT "Security                 ";
                IF PowerToSecurity = 0 THEN PRINT "2                    ";  ELSE PRINT "0                    ";
                PRINT "Library             ";
                IF PowerToLibrary = 0 THEN PRINT "1" ELSE PRINT "0"
                PRINT "Other                    ";
                IF PowerToOther = 0 THEN PRINT "1" ELSE PRINT "0"
                IF NonEss = 0 THEN PRINT "Outside Complex          6"
                IF NonEss = 1 THEN PRINT "Outside Complex          0"
                PRINT : GOTO PowerConduit
        ELSE
                PRINT "Area:                    Power:                  Area:           Power:"
                IF PowerToBioLab2 = 0 THEN PRINT "BioLab1                  0                       BioLab2         1"
                IF PowerToBioLab2 = 1 THEN PRINT "BioLab1                  0                       BioLab2         0"
                PRINT "Security                 0                       Library         0"
                PRINT "Other                    0"
                PRINT : GOTO PowerConduit
        END IF
END IF
GOTO PowerConduit
SecurityComputer:
GOSUB Cycle
PRINT "Security Computer:": PRINT
PRINT "1.  Colony Inventory"
PRINT "2.  Colony Schematics"
PRINT "3.  Colony Diagnostic"
PRINT "4.  Armory Inventory"
PRINT "5.  Exit"
PRINT : INPUT ">", A: PRINT
IF A > 4 OR A < 1 THEN GOTO 940
IF A = 4 THEN
PRINT "Armory Inventory:": PRINT
PRINT "Total Number of BioGenic Weapons Allocated to Armory:                    4"
PRINT "Number of BioGenic Weapons Currently in Armory:                          0"
PRINT "Total Number of High-Intensity Lasers Allocated to Armory:               30"
PRINT "Number of High-Intensity Lasers Currently in Armory:                     ";
IF LaserGun = 0 THEN PRINT "1" ELSE PRINT "0"
PRINT "Total Number of Plasma Grenades Allocated to Armory:                     3"
PRINT "Number of Plasma Grenades Currently in Armory:                           0"
PRINT "Total Number of Contained Fission Explosives Allocated to Armory:        10"
PRINT "Number of Contained Fission Explosives Currently in Armory:              ";
IF Explosive = 0 THEN PRINT "1" ELSE PRINT "0"
GOTO SecurityComputer
END IF
IF A = 2 THEN
        INPUT "Enter Identity Code:", Code$
        IF Code$ = "MO54382" OR Code$ = "CL3" THEN
                OPEN "archives.sr5" FOR INPUT AS #1
                DO WHILE NOT EOF(1)
                        LINE INPUT #1, Rec$
                        IF Rec$ = "Schematics" THEN GOTO ArcFound5
                LOOP
ArcFound5:
                DO WHILE NOT EOF(1)
                        LINE INPUT #1, Rec$
                        IF Rec$ = "STOP" THEN
BackThere3:
                                A$ = INKEY$
                                IF LEN(A$) = 0 THEN GOTO BackThere3
                                CLOSE #1: GOTO SecurityComputer
                        END IF
                        PRINT Rec$
                LOOP
        ELSE
                        PRINT "Incorrect Access code.": GOTO SecurityComputer
        END IF
END IF
IF A = 3 THEN
        PRINT "Colony Diagnostic:": PRINT
        PRINT "        Power within Security Dome:                             ";
        IF ShutOff = 0 AND PowerOn = 1 THEN PRINT "Functional" ELSE PRINT "Nonfunctional"
        PRINT "        Power to BioLab 1:                                      ";
        IF PowerToBioLab1 = 1 OR PowerOn = 0 THEN PRINT "Nonfunctional" ELSE PRINT "Functional"
        PRINT "        Power to BioLab 2:                                      ";
        IF PowerToBioLab2 = 1 OR PowerOn = 0 THEN PRINT "Nonfunctional" ELSE PRINT "Functional"
        PRINT "        Power to Security:                                      ";
        IF PowerToSecurity = 1 OR PowerOn = 0 THEN PRINT "Nonfunctional" ELSE PRINT "Functional"
        PRINT "        Power to Library:                                       ";
        IF PowerToLibrary = 1 OR PowerOn = 0 THEN PRINT "Nonfunctional" ELSE PRINT "Functional"
        PRINT "        Power to Other Areas:                                   ";
        IF PowerToOther = 1 OR PowerOn = 0 THEN PRINT "Nonfunctional" ELSE PRINT "Functional"
        PRINT "        Power outside of Security Dome:                         ";
        IF PowerLineFixed = 2 THEN PRINT "Functional" ELSE PRINT "Nonfunctional"
        PRINT "        Fusion Reactor #1:                                      ";
        IF Reactor1 = 1 THEN PRINT "Functional" ELSE PRINT "Nonfunctional"
        PRINT "        Fusion Reactor #2:                                      ";
        IF Reactor2 = 1 THEN PRINT "Functional" ELSE PRINT "Nonfunctional"
        PRINT "        Fusion Reactor #3:                                      ";
        IF Reactor3 = 1 THEN PRINT "Functional" ELSE PRINT "Nonfunctional"
        PRINT "        Fusion Reactor #4:                                      ";
        IF Reactor4 = 1 THEN PRINT "Functional" ELSE PRINT "Nonfunctional"
PRINT : GOTO SecurityComputer
END IF
IF A = 1 THEN
OPEN "archives.sr5" FOR INPUT AS #1
DO WHILE NOT EOF(1)
        LINE INPUT #1, Rec$
        IF Rec$ = "Colony 3" THEN GOTO FoundCol3
LOOP
FoundCol3:
DO WHILE NOT EOF(1)
        LINE INPUT #1, Rec$
        IF Rec$ = "Start" THEN GOTO StartCol3
LOOP
StartCol3:
DO WHILE NOT EOF(1)
        LINE INPUT #1, Rec$
        IF Rec$ = "STOP" THEN GOTO SecurityComputer
        PRINT Rec$
LOOP
GOTO SecurityComputer
END IF
GOTO SecurityComputer
Console:
PRINT "In accordance with section 3A of the Constitution of the Intergalatic Union,"
INPUT "Enter User Identity Code here:", Identity$
IF Identity$ <> "CL3" AND Identity$ <> "SO341351" AND Identity$ <> "SO351326" AND Identity$ <> "SO412621" AND Identity$ <> "SO426274" AND Identity$ <> "TE32" AND Identity$ <> "TE37" AND Identity$ <> "TE43" AND Identity$ <> "MO12355" AND Identity$ <> "MO23043" AND Identity$ <> "MO34526" AND Identity$ <> "MO35432" AND Identity$ <> "MO42313" AND Identity$ <> "MO54031" AND Identity$ <> "MO54382" THEN
PRINT "Identity not confirmed.  Please contact current colony leader for a valid"
PRINT "traveller's identity code.": GOTO 940
END IF
PRINT "Identity confirmed.  Hello, "; Identity$; ".  How are you?  Did you have a"
PRINT "pleasent rest?  The work on the Project is coming along, with your valuable"
PRINT "help.  Our Scientists estimate that the cure will be developed in the next"
PRINT "few cycles."
Console2:
GOSUB Cycle
PRINT "Computer Console,  Number ";
IF RM = 38 THEN PRINT "1:"
IF RM = 40 THEN PRINT "2:"
IF RM = 59 THEN PRINT "3:"
IF RM = 61 THEN PRINT "4:"
PRINT
PRINT "1.  File Download"
PRINT "2.  File Archives"
PRINT "3.  Monetary Transaction"
PRINT "4.  Map of Public Area of Colony #3"
PRINT "5.  Shut off Console"
PRINT : INPUT ">", A: PRINT
IF A > 4 OR A < 1 THEN GOTO 940
IF A = 3 THEN
        PRINT "I'm sorry, but our computers show your account to have been closed.  If you wish": PRINT "to open a new account, you should contact the High Command on the Homeland.": GOTO Console2
END IF
IF A = 1 THEN
        PRINT "Downloaded initiated."
                FOR T = 1 TO 100
                        FOR Delay = 1 TO 100
                        NEXT Delay
                        IF T = 25 THEN GOSUB Cycle
                        IF T = 50 THEN GOSUB Cycle
                        IF T = 75 THEN GOSUB Cycle
                NEXT T
        PRINT "File download completed.": ConsoleArchives = 1: GOTO Console2
END IF
IF A = 4 THEN
        OPEN "archives.sr5" FOR INPUT AS #1
        DO WHILE NOT EOF(1)
                LINE INPUT #1, Rec$
                IF Rec$ = "Console Schematics" THEN GOTO ArcFound9
        LOOP
ArcFound9:
        DO WHILE NOT EOF(1)
                INPUT #1, Rec$
                IF Rec$ = "Start" THEN GOTO Start42534
        LOOP
Start42534:
        DO WHILE NOT EOF(1)
                LINE INPUT #1, Rec$
                IF Rec$ = "STOP" THEN
BackThere4:
                        A$ = INKEY$
                        IF LEN(A$) = 0 THEN GOTO BackThere4
                        CLOSE #1: GOTO Console2
                END IF
                PRINT Rec$
        LOOP
END IF
IF A = 2 THEN
        GOSUB Cycle
        PRINT "Public Archives:": PRINT
        PRINT "1.  Search Public Archives"
        PRINT "2.  Index of all Public Archives"
        PRINT "3.  Return to Main Menu"
        PRINT : INPUT ">", A: PRINT
        IF A >= 3 OR A < 1 THEN GOTO Console2
        IF A = 2 THEN
                OPEN "archives.sr5" FOR INPUT AS #1
                DO WHILE NOT EOF(1)
                        LINE INPUT #1, Rec$
                        IF Rec$ = "Console Archives Index" THEN GOTO DispIndex
                LOOP
DispIndex:
                DO WHILE NOT EOF(1)
                        LINE INPUT #1, Rec$
                        IF Rec$ = "STOP" THEN GOTO 940
                        PRINT Rec$
                LOOP
        END IF
        IF A = 1 THEN
                INPUT "Enter search string:", Search$
                OPEN "archives.sr5" FOR INPUT AS #1
                DO WHILE NOT EOF(1)
                        LINE INPUT #1, Rec$
                        IF Rec$ = "Console Archives" THEN GOTO ArcFound7
                LOOP
ArcFound7:
                DO WHILE NOT EOF(1)
                        LINE INPUT #1, Rec$
                        IF Rec$ = Search$ THEN
                                DO WHILE NOT EOF(1)
                                        LINE INPUT #1, Rec$
                                        IF Rec$ = "Start" THEN
                                                DO WHILE NOT EOF(1)
                                                        LINE INPUT #1, Rec$
                                                        IF Rec$ = "STOP" THEN CLOSE #1: GOTO 940
                                                        IF Rec$ = "PAGE" THEN SLEEP
                                                        IF Rec$ <> "PAGE" THEN PRINT Rec$
                                                LOOP
                                        END IF
                                LOOP
                        END IF
                LOOP
        END IF
        DO WHILE NOT EOF(1)
                LINE INPUT #1, Rec$
                        IF Rec$ = "Console Archives End" THEN PRINT "Search string not found.": CLOSE #1: GOTO Console2
                LOOP
        GOTO 940
END IF
CLOSE
GOTO 940

DownLoadedArchives2:
        OPEN "archives.sr5" FOR INPUT AS #1
        INPUT "Enter search string:", Search$
        DO WHILE NOT EOF(1)
                LINE INPUT #1, Rec$
                IF Rec$ = "Console Archives" THEN GOTO ArcFound8
        LOOP
ArcFound8:
        DO WHILE NOT EOF(1)
                LINE INPUT #1, Rec$
                IF Rec$ = Search$ THEN
                        DO WHILE NOT EOF(1)
                                LINE INPUT #1, Rec$
                                IF Rec$ = "Start" THEN
                                        DO WHILE NOT EOF(1)
                                                LINE INPUT #1, Rec$
                                                IF Rec$ = "STOP" THEN CLOSE #1: GOTO 940
                                                IF Rec$ = "PAGE" THEN SLEEP
                                                IF Rec$ <> "PAGE" THEN PRINT Rec$
                                        LOOP
                                END IF
                        LOOP
                END IF
        LOOP
        DO WHILE NOT EOF(1)
                LINE INPUT #1, Rec$
                IF Rec$ = "Console Archives End" THEN PRINT "Search string not found.": CLOSE #1: GOTO 940
        LOOP
CLOSE #1: GOTO 940
OfficeComputer:
PRINT
GOSUB Cycle
PRINT "Colony #3:  CI Quarantine": PRINT
PRINT "1.  Initiate Security Lockout of Fusion Reactors."
PRINT "2.  Deactivate Security Lockout of Fusion Reactors."
PRINT "3.  Deactivate Docking Clamps"
PRINT "4.  Activate Docking Clamps"
PRINT "5.  Exit"
PRINT : INPUT ">", A: PRINT
IF A = 1 THEN
IF ReactorAccess = 0 THEN PRINT "Fusion Reactor Area already locked-out.": GOTO OfficeComputer
IF ReactorAccess = 1 THEN ReactorAccess = 0: PRINT "Fusion Reactor Area locked-out.": GOTO OfficeComputer
END IF
IF A = 2 THEN
IF ReactorAccess = 1 THEN PRINT "Fusion Reactor Area is not locked-out.": GOTO OfficeComputer
IF ReactorAccess = 0 THEN ReactorAccess = 1: PRINT "Fusion Reactor Area lock-out deactivated.": GOTO OfficeComputer
END IF
IF A = 3 THEN
IF DockingClamps = 0 THEN PRINT "Docking Clamps already locked-out.": GOTO OfficeComputer
IF DockingClamps = 1 THEN DockingClamps = 0: PRINT "Docking Clamps locked-out.": GOTO OfficeComputer
END IF
IF A = 4 THEN
IF DockingClamps = 1 THEN PRINT "Docking Clamps are not locked-out.": GOTO OfficeComputer
IF DockingClamps = 0 THEN DockingClamps = 1: PRINT "Docking Clamps lock-out deactivated.": GOTO OfficeComputer
END IF
GOTO 940
BioLab2Computer:
PRINT
GOSUB Cycle
PRINT "BioLab2 Computer:": PRINT
PRINT "    1.  BioLab 2 Information"
PRINT "    2.  Monitor All Subjects"
PRINT "    3.  Monitor Specific Subject"
PRINT "    4.  Synthesize CI Treatment"
PRINT "    5.  Power Down"
PRINT : INPUT ">", A: PRINT
IF A > 4 OR A < 1 THEN GOSUB 5: GOTO 940
IF A = 4 THEN
IF CureFound = 0 THEN PRINT "Error:  None of the Subjects show signs of CI Regression.": GOTO BioLab2Computer
IF CureFound = 1 AND Vial <> 1 THEN PRINT "Error:  No empty container near enough to synthesize treatment into.": GOTO BioLab2Computer
IF CureFound = 1 AND Vial = 1 THEN Vial = 2: PRINT "Cure synthesized into nearby vial.": GOTO BioLab2Computer
END IF
IF A = 3 THEN
GOSUB Cycle
PRINT "Enter Subject to Monitor": PRINT
PRINT "    1.  PC45"
PRINT "    2.  PC86"
PRINT "    3.  TE42"
PRINT "    4.  TE39"
PRINT "    5.  CL1"
PRINT "    6.  CL2"
PRINT "    7.  Return to Main Menu"
PRINT : INPUT ">", A: PRINT
IF A > 6 OR A < 1 THEN GOTO BioLab2Computer
IF A <> 3 THEN PRINT "Subject is Deceased or Missing.": GOTO BioLab2Computer
IF A = 3 THEN
PRINT "Subject:                 ";
FOR T = 1 TO 1000: NEXT T
PRINT "TE42/MI3": PRINT
PRINT "Vital Signs:             ";
FOR T = 1 TO 1000: NEXT T
PRINT "In Stasis"
PRINT "Body Temperature:        ";
FOR T = 1 TO 1000: NEXT T
PRINT "3 CS"
PRINT "Disease Progress:        ";
FOR T = 1 TO 1000: NEXT T
IF CureFound = 0 THEN PRINT "Near Complete"
IF CureFound <> 0 THEN PRINT "Slowed"
GOTO BioLab2Computer
END IF
END IF
IF A = 1 THEN
        PRINT "BioLab 2, Complex 42A, Colonial Planet 3": PRINT
        PRINT "Services:                Research into the CI Disease"
        PRINT "Staff:                   4"
        PRINT "Laboratory Subjects:     6"
        PRINT "Head Doctor:             MO12355"
        GOTO BioLab2Computer
END IF
IF A = 2 THEN
        PRINT "Current Status of all subjects:": PRINT
        PRINT "PC45:                    ";
        FOR T = 1 TO 1000: NEXT T
        PRINT "Deceased or Missing"
        PRINT "PC86:                    ";
        FOR T = 1 TO 1000: NEXT T
        PRINT "Deceased or Missing"
        PRINT "TE42:                    ";
        FOR T = 1 TO 1000: NEXT T
        PRINT "In Stasis"
        PRINT "TE39:                    ";
        FOR T = 1 TO 1000: NEXT T
        PRINT "Deceased or Missing"
        PRINT "CL1:                     ";
        FOR T = 1 TO 1000: NEXT T
        PRINT "Deceased or Missing"
        PRINT "CL2:                     ";
        FOR T = 1 TO 1000: NEXT T
        PRINT "Deceased or Missing"
        GOTO BioLab2Computer
END IF
GOSUB 5: GOTO 940
SaveGame:
INPUT "Enter filename:", N$
IF N$ = "" THEN GOTO 940
SAV$ = N$ + ".om3"
OPEN SAV$ FOR OUTPUT AS #1
PRINT #1, Battery
PRINT #1, Battery2
PRINT #1, Time
PRINT #1, World
PRINT #1, Mission
PRINT #1, RM
PRINT #1, Messages
PRINT #1, AbsProg
PRINT #1, NewsUpdate
PRINT #1, OmegaHistInfo
PRINT #1, AirlockOpened
PRINT #1, LanguageProg
PRINT #1, Tampered
PRINT #1, DeviceOpen
PRINT #1, BioLab1Open
PRINT #1, BioLab2Open
PRINT #1, LibraryOpen
PRINT #1, SecurityOpen
PRINT #1, PowerOn
PRINT #1, PowerCycle
PRINT #1, Sterilized
PRINT #1, InnerBio1Open
PRINT #1, InnerBio2Open
PRINT #1, BioArc
PRINT #1, World1Power
PRINT #1, PowerNeeded
PRINT #1, PowerCreated
PRINT #1, ShutOff
PRINT #1, PowerToBioLab1
PRINT #1, PowerToBioLab2
PRINT #1, PowerToLibrary
PRINT #1, PowerToSecurity
PRINT #1, PowerToOther
PRINT #1, NonEss
PRINT #1, Reactor1
PRINT #1, Reactor2
PRINT #1, Reactor3
PRINT #1, Reactor4
PRINT #1, PowerOutside
PRINT #1, LaserGun
PRINT #1, Explosive
PRINT #1, PowerLineFixed
PRINT #1, Rubble
PRINT #1, ExplodeTime
PRINT #1, Infrared
PRINT #1, RoomDoor(1)
PRINT #1, RoomDoor(2)
PRINT #1, RoomDoor(4)
PRINT #1, RoomDoor(3)
PRINT #1, RoomDoor(5)
PRINT #1, RoomDoor(6)
PRINT #1, RoomDoor(7)
PRINT #1, RoomDoor(8)
PRINT #1, Welder
PRINT #1, Couplink
PRINT #1, PluggedIn
PRINT #1, ConsoleArchives
PRINT #1, Reactor1Open
PRINT #1, Reactor2Open
PRINT #1, Reactor3Open
PRINT #1, Reactor4Open
PRINT #1, ElevatorDoors
PRINT #1, ElevatorPanel
PRINT #1, ReactorAccess
PRINT #1, OfficeAccess
PRINT #1, ElevatorSeq1
PRINT #1, ElevatorSeq2
PRINT #1, DockingClamps
PRINT #1, ElevatorBroke
PRINT #1, BioLab1OfficeOpen
PRINT #1, Syringe
PRINT #1, VideoPlaying
PRINT #1, Rewinding
PRINT #1, TapeTime
PRINT #1, TestRight
PRINT #1, CureFound
PRINT #1, Vial
PRINT #1, CourseSet
PRINT #1, ShipWorld
PRINT #1, ShipTravel
PRINT #1, X
PRINT #1, Y
PRINT #1, X1
PRINT #1, Y1
PRINT #1, ElevatorBeta2Open
PRINT #1, MonitorOpen
PRINT #1, LaboratoryOpen
PRINT #1, MedicalSupplyOpen
PRINT #1, SecurityOpenBeta2
PRINT #1, MonitorOpen
PRINT #1, AsylumOpen
CLOSE #1
GOTO 940
LoadGame:
INPUT "Enter filename:", N$
IF N$ = "" THEN GOTO 941
SAV$ = N$ + ".om3"
OPEN SAV$ FOR INPUT AS #1
INPUT #1, Battery
INPUT #1, Battery2
INPUT #1, Time
INPUT #1, World
INPUT #1, Mission
INPUT #1, RM
INPUT #1, Messages
INPUT #1, AbsProg
INPUT #1, NewsUpdate
INPUT #1, OmegaHistInfo
INPUT #1, AirlockOpened
INPUT #1, LanguageProg
INPUT #1, Tampered
INPUT #1, DeviceOpen
INPUT #1, BioLab1Open
INPUT #1, BioLab2Open
INPUT #1, LibraryOpen
INPUT #1, SecurityOpen
INPUT #1, PowerOn
INPUT #1, PowerCycle
INPUT #1, Sterilized
INPUT #1, InnerBio1Open
INPUT #1, InnerBio2Open
INPUT #1, BioArc
INPUT #1, World1Power
INPUT #1, PowerNeeded
INPUT #1, PowerCreated
INPUT #1, ShutOff
INPUT #1, PowerToBioLab1
INPUT #1, PowerToBioLab2
INPUT #1, PowerToLibrary
INPUT #1, PowerToSecurity
INPUT #1, PowerToOther
INPUT #1, NonEss
INPUT #1, Reactor1
INPUT #1, Reactor2
INPUT #1, Reactor3
INPUT #1, Reactor4
INPUT #1, PowerOutside
INPUT #1, LaserGun
INPUT #1, Explosive
INPUT #1, PowerLineFixed
INPUT #1, Rubble
INPUT #1, ExplodeTime
INPUT #1, Infrared
INPUT #1, RoomDoor(1)
INPUT #1, RoomDoor(2)
INPUT #1, RoomDoor(4)
INPUT #1, RoomDoor(3)
INPUT #1, RoomDoor(5)
INPUT #1, RoomDoor(6)
INPUT #1, RoomDoor(7)
INPUT #1, RoomDoor(8)
INPUT #1, Welder
INPUT #1, Couplink
INPUT #1, PluggedIn
INPUT #1, ConsoleArchives
INPUT #1, Reactor1Open
INPUT #1, Reactor2Open
INPUT #1, Reactor3Open
INPUT #1, Reactor4Open
INPUT #1, ElevatorDoors
INPUT #1, ElevatorPanel
INPUT #1, ReactorAccess
INPUT #1, OfficeAccess
INPUT #1, ElevatorSeq1
INPUT #1, ElevatorSeq2
INPUT #1, DockingClamps
INPUT #1, ElevatorBroke
INPUT #1, BioLab1OfficeOpen
INPUT #1, Syringe
INPUT #1, VideoPlaying
INPUT #1, Rewinding
INPUT #1, TapeTime
INPUT #1, TestRight
INPUT #1, CureFound
INPUT #1, Vial
INPUT #1, CourseSet
INPUT #1, ShipWorld
INPUT #1, ShipTravel
INPUT #1, X
INPUT #1, Y
INPUT #1, X1
INPUT #1, Y1
INPUT #1, ElevatorBeta2Open
INPUT #1, MonitorOpen
INPUT #1, LaboratoryOpen
INPUT #1, MedicalSupplyOpen
INPUT #1, SecurityOpenBeta2
INPUT #1, MonitorOpen
INPUT #1, AsylumOpen
CLOSE #1
GOSUB 5: GOTO 940
I:
PRINT "Current Equipment:": PRINT
      IF Vial = 1 THEN PRINT "  An empty vial."
                       PRINT "  A master key card."
    IF Welder = 1 THEN PRINT "  A laser-power welder."
  IF Couplink = 1 THEN PRINT "  A power repair couplink."
   IF Syringe = 1 THEN PRINT "  An empty medical syringe."
  IF LaserGun = 1 THEN PRINT "  A high-intensity laser weapon."
 IF Explosive = 1 THEN PRINT "  A contained fission explosive."
      IF Vial = 2 THEN PRINT "  A vial filled with a whitish fluid."
   IF Syringe = 2 THEN PRINT "  A medical syringe filled with a red fluid."
   IF Syringe = 3 THEN PRINT "  A medical syringe filled with a blue fluid."
   IF Syringe = 4 THEN PRINT "  A medical syringe filled with a green fluid."
                       PRINT "  An electrical plug, attached to central left torso."
  IF LaserGun = 2 THEN PRINT "  A 25.0 intensity laser weapon (on the right extension)."
 IF LaserGun <> 2 THEN PRINT "  A 5.6 intensity laser extension. (on the right extension)."
GOTO 940

SUB ActurusB5
Desc
END SUB

SUB BetaAquarionC2
IF RM = 9 AND MonitorOpen = 0 THEN Room$ = "Room9 - Closed"
IF RM = 9 AND MonitorOpen = 1 THEN Room$ = "Room9 - Open"
IF RM = 13 AND MedicalSupplyOpen = 1 THEN Room$ = "Room13 - Open"
IF RM = 13 AND MedicalSupplyOpen = 1 THEN Room$ = "Room13 - Closed"
IF RM = 1 AND ElevatorBeta2Open = 0 THEN Room$ = "Room1 - Closed"
IF RM = 1 AND ElevatorBeta2Open = 1 THEN Room$ = "Room1 - Open"
IF RM = 2 AND ShipOpen = 0 THEN Room$ = "Room2 - Closed"
IF RM = 2 AND ShipOpen = 1 THEN Room$ = "Room2 - Open"
IF RM = 3 THEN Room$ = "Room3"
IF RM = 4 AND ElevatorBeta2Open = 0 THEN Room$ = "Room4 - Closed"
IF RM = 4 AND ElevatorBeta2Open = 1 THEN Room$ = "Room4 - Open"
IF RM = 5 THEN Room$ = "Room5"
IF RM = 6 THEN Room$ = "Room6"
IF RM = 7 THEN Room$ = "Room7"
IF RM = 8 AND MonitorOpen = 0 THEN Room$ = "Room8 - Closed"
IF RM = 8 AND MonitorOpen = 0 THEN Room$ = "Room8 - Open"
IF RM = 10 THEN Room$ = "Lavatory"
IF RM = 11 AND AsylumOpen <> 2 THEN Room$ = "Room11 - Closed"
IF RM = 11 AND AsylumOpen = 2 THEN Room$ = "Room11 - Open"
IF RM = 15 AND SecurityOpenBeta2 = 0 THEN Room$ = "Room15 - Closed"
IF RM = 15 AND SecurityOpenBeta2 = 1 THEN Room$ = "Room15 - Open"
IF RM = 14 AND MedicalSupplyOpen = 0 THEN Room$ = "Room14 - Closed"
IF RM = 14 AND MedicalSupplyOpen = 1 THEN Room$ = "Room14 - Open"
IF RM = 21 AND LaboratoryOpen = 0 THEN Room$ = "Room21 - Closed"
IF RM = 21 AND LaboratoryOpen = 1 THEN Room$ = "Room21 - Open"

Desc
END SUB

SUB DeltaPhetakop
Desc
END SUB

SUB Desc
CLOSE
'OPEN "omega3.dsc" FOR INPUT AS #1
IF World = 1 AND RM < 36 THEN OPEN "sirrus5n.dsc" FOR INPUT AS #1
IF World = 1 AND RM >= 36 THEN OPEN "sirrus5s.dsc" FOR INPUT AS #1
IF World = 2 THEN OPEN "betaquc2.dsc" FOR INPUT AS #1
IF Room$ = "" THEN North = 1: South = 1: East = 1: West = 1: NorthEast = 1: NorthWest = 1: SouthEast = 1: SouthWest = 1: CLOSE #1: GOTO Stop3
        DO WHILE NOT EOF(1)
                LINE INPUT #1, Rec$
                IF Rec$ = Room$ THEN GOTO RoomDesc
        LOOP
RoomDesc:
        DO WHILE NOT EOF(1)
                LINE INPUT #1, Rec$
                IF MID$(Rec$, 1, 5) = "Start" THEN GOTO RoomDesc2
        LOOP
RoomDesc2:
        DO WHILE NOT EOF(1)
                LINE INPUT #1, Rec$  'Read entries from the file.
                IF MID$(Rec$, 1, 7) = "EndDesc" THEN GOTO RoomDesc3
                PRINT Rec$
        LOOP
RoomDesc3:
North = 0
South = 0
East = 0
West = 0
NorthWest = 0
NorthEast = 0
SouthWest = 0
SouthEast = 0
        DO WHILE NOT EOF(1)
                LINE INPUT #1, Rec$  'Read entries from the file.
                IF Rec$ = "STOP" THEN GOTO Stop3
                IF Rec$ = "North" THEN North = 1
                IF Rec$ = "South" THEN South = 1
                IF Rec$ = "East" THEN East = 1
                IF Rec$ = "West" THEN West = 1
                IF Rec$ = "NorthWest" THEN NorthWest = 1
                IF Rec$ = "NorthEast" THEN NorthEast = 1
                IF Rec$ = "SouthWest" THEN SouthWest = 1
                IF Rec$ = "SouthEast" THEN SouthEast = 1
        LOOP
Stop3:
CLOSE #1
IF World = 2 THEN
IF RM = 13 AND LanguageProg = 2 AND MedicalSupplyOpen = 0 THEN PRINT "On the door is a set of letters and numbers, reading MS1325."
IF RM = 13 AND LanguageProg <> 2 AND MedicalSupplyOpen = 0 THEN PRINT "On the door is a set of symbols in an alien language."
IF RM = 9 AND LanguageProg = 2 AND MonitorOpen = 0 THEN PRINT "On the door is a set of letters and numbers, reading MS1458."
IF RM = 9 AND LanguageProg <> 2 AND MonitorOpen = 0 THEN PRINT "On the door is a set of symbols in an alien language."
END IF
END SUB

SUB Earth
Desc
END SUB

SUB GammaPsygnosis1
Desc
END SUB

SUB Homeland
Desc
END SUB

SUB Information
INPUT "Enter search string:", Search$
IF (Search$ = "DkingCorp" OR Search$ = "Omega Blue") AND OmegaHistInfo = 0 THEN GOTO NotFound
OPEN "info.dat" FOR INPUT AS #1
        DO WHILE NOT EOF(1)
                LINE INPUT #1, Rec$
                IF Rec$ = Search$ THEN GOTO Start
        LOOP
NotFound:
PRINT "String not found.": CLOSE #1: EXIT SUB
Start:
        DO WHILE NOT EOF(1)
                LINE INPUT #1, Rec$
                IF MID$(Rec$, 1, 5) = "Start" THEN GOTO Start2
        LOOP
END
Start2:
    DO WHILE NOT EOF(1)
        LINE INPUT #1, Rec$  'Read entries from the file.
        IF Rec$ = "PAGE" THEN GOTO Page1
        IF Rec$ = "STOP" THEN GOTO Stop1
        PRINT Rec$           'Print the entries on the screen.
    LOOP
Page1:
A$ = INKEY$
IF LEN(A$) = 0 THEN GOTO Page1
PRINT : GOTO Start2
Stop1:
CLOSE #1
EXIT SUB
END SUB

SUB InSpace
END SUB

SUB KeyInit
KEY ON
KEY 1, "power" + CHR$(13)
KEY 2, "data" + CHR$(13)
KEY 3, "scan" + CHR$(13)
KEY 4, "shoot "
KEY 6, "commands" + CHR$(13)
KEY 7, "systems check" + CHR$(13)
KEY 8, "equipment" + CHR$(13)
KEY 9, "look" + CHR$(13)
KEY 10, "terminate" + CHR$(13)
END SUB

SUB PowCreatedRecon
PowerCreated = 0
IF Reactor1 = 1 THEN PowerCreated = PowerCreated + 5
IF Reactor2 = 1 THEN PowerCreated = PowerCreated + 5
IF Reactor3 = 1 THEN PowerCreated = PowerCreated + 5
IF Reactor4 = 1 THEN PowerCreated = PowerCreated + 5
END SUB

SUB PowNeedRecon
PowerNeeded = 0
IF PowerToBioLab1 = 0 THEN PowerNeeded = PowerNeeded + 2
IF PowerToBioLab2 = 0 THEN PowerNeeded = PowerNeeded + 4
IF PowerToSecurity = 0 THEN PowerNeeded = PowerNeeded + 2
IF PowerToOther = 0 THEN PowerNeeded = PowerNeeded + 1
IF PowerToLibrary = 0 THEN PowerNeeded = PowerNeeded + 1
IF NonEss = 1 THEN PowerNeeded = PowerNeeded - 6
IF PowerOn = 0 THEN
        PowerNeeded = 0
        IF PowerToBioLab2 = 0 THEN PowerNeeded = PowerNeeded + 1
END IF
END SUB

SUB ProximaCentauriE2
Desc
END SUB

SUB RefuelingSite
Desc
END SUB

SUB Scan
IF MID$(A$, 6) = "" THEN GOTO AtmosphereScan
AtmosphereScan:
PRINT "Atmosphere Scan initiated.": PRINT
PRINT "Temperate:                       ";
FOR T = 1 TO 500: NEXT T
IF World = 1 THEN PRINT "675.53 øK"
IF World = 2 THEN PRINT "294.26 øK"
PRINT "Atmosphere:                      ";
FOR T = 1 TO 1000: NEXT T
IF World = 1 THEN PRINT "42% O, 36% Fe, 21% S; Iron Sulfate (g)"
IF World = 2 THEN PRINT ""
PRINT "Location, relative to equator:   ";
FOR T = 1 TO 500: NEXT T
IF World = 1 THEN PRINT "Arrival Point is 315.6 miles north of equator;": PRINT "                                 341.12 miles south of North Pole."
END SUB

SUB ShutDown
PRINT "Shutdown Sequence Activated.": PRINT
PRINT "Systems Check:                   Status": PRINT
PRINT "Computer Synthesized Voice Box:  ";
FOR T = 1 TO 500: NEXT T
PRINT "Deactivated"
PRINT "Targeting and Recognition:       ";
FOR T = 1 TO 500: NEXT T
PRINT "Deactivated"
PRINT "Wireless Communication System:   ";
FOR T = 1 TO 500: NEXT T
PRINT "Deactivated"
PRINT "Hand Laser:                      ";
FOR T = 1 TO 500: NEXT T
PRINT "Deactivated"
PRINT "Movement:                        ";
FOR T = 1 TO 500: NEXT T
PRINT "Deactivated"
PRINT "Sensory Input:                   ";
FOR T = 1 TO 500: NEXT T
PRINT "Deactivated"
PRINT "Computer Brain:                  ";
FOR T = 1 TO 500: NEXT T
PRINT "Deactivated"
PRINT "Ethics Chip:                     ";
FOR T = 1 TO 500: NEXT T
PRINT "Deactivated"
PRINT "Artificial Intelligence:         ";
FOR T = 1 TO 500: NEXT T
PRINT "Deactivated"
PRINT "Backup Battery:                  ";
FOR T = 1 TO 500: NEXT T
PRINT "Deactivated"
PRINT "Fusion Power:                    ";
FOR T = 1 TO 500: NEXT T
PRINT "Deactivated"
PRINT : PRINT "Mission Terminated."
COLOR 0: END
END SUB

SUB Sirrus5
IF (PowerOn = 0 AND Infrared = 0) OR (RM >= 36 AND Infrared = 0 AND (NonEss = 1 OR PowerLineFixed <> 2)) THEN
PRINT "Current Position:  Darkness": PRINT
PRINT "        Sensors indicate no source of light in the area.": EXIT SUB
EXIT SUB
END IF
IF RM = 70 AND ShipOpen = 0 THEN Room$ = "In Ship - Closed"
IF RM = 70 AND ShipOpen = 1 THEN Room$ = "In Ship - Open"
IF RM = 33 AND Vial = 0 THEN Room$ = "Research Area - Vial Untaken"
IF RM = 33 AND Vial <> 0 THEN Room$ = "Research Area - Vial Taken"
IF RM = 34 AND BioLockDoor <> 2 THEN Room$ = "BioLockDoor - Closed"
IF RM = 34 AND BioLockDoor = 2 THEN Room$ = "BioLockDoor - Open"
IF RM = 35 THEN Room$ = "Cage"
IF RM = 22 AND BioLab1OfficeOpen = 0 THEN Room$ = "Supply Room - Closed"
IF RM = 22 AND BioLab1OfficeOpen = 1 THEN Room$ = "Supply Room - Open"
IF RM = 29 AND Syringe = 0 THEN Room$ = "BioLab1 Laboratory - Syringe Untaken"
IF RM = 29 AND Syringe <> 0 THEN Room$ = "BioLab1 Laboratory - Syringe Taken"
IF RM = 23 THEN Room$ = "Hall23"
IF RM = 30 AND BioLab1OfficeOpen = 0 THEN Room$ = "Office30 - Closed"
IF RM = 30 AND BioLab1OfficeOpen = 1 THEN Room$ = "Office30 - Open"
IF (RM = 77 OR RM = 76) AND ElevatorDoors = 0 AND ElevatorPanel <> 2 THEN Room$ = "Elevator - Doors Closed - Panel Closed"
IF (RM = 77 OR RM = 76) AND ElevatorDoors = 1 AND ElevatorPanel <> 2 THEN Room$ = "Elevator - Doors Open - Panel Closed"
IF (RM = 77 OR RM = 76) AND ElevatorDoors = 0 AND ElevatorPanel = 2 THEN Room$ = "Elevator - Doors Closed - Panel Open"
IF (RM = 77 OR RM = 76) AND ElevatorDoors = 1 AND ElevatorPanel = 2 THEN Room$ = "Elevator - Doors Open - Panel Open"
IF RM = 72 AND ShipWorld <> World AND ElevatorDoors = 0 THEN Room$ = "Shuttle Pad - Closed - Ship Unhere"
IF RM = 72 AND ShipWorld <> World AND ElevatorDoors = 1 THEN Room$ = "Shuttle Pad - Open - Ship Unhere"
IF RM = 72 AND ShipWorld = World AND ElevatorDoors = 0 AND ShipOpen = 0 THEN Room$ = "Shuttle Pad - Closed - Ship Closed"
IF RM = 72 AND ShipWorld = World AND ElevatorDoors = 0 AND ShipOpen = 1 THEN Room$ = "Shuttle Pad - Closed - Ship Open"
IF RM = 72 AND ShipWorld = World AND ElevatorDoors = 1 AND ShipOpen = 0 THEN Room$ = "Shuttle Pad - Open - Ship Closed"
IF RM = 72 AND ShipWorld = World AND ElevatorDoors = 1 AND ShipOpen = 1 THEN Room$ = "Shuttle Pad - Open - Ship Open"
IF RM = 71 THEN Room$ = "Waiting Room"
IF RM = 64 THEN Room$ = "Inside Office"
IF RM = 67 THEN Room$ = "Engineering Entrance"
IF RM = 66 AND Reactor1Open = 1 THEN Room$ = "Reactor 1 - Open"
IF RM = 68 AND Reactor2Open = 1 THEN Room$ = "Reactor 2 - Open"
IF RM = 73 AND Reactor3Open = 1 THEN Room$ = "Reactor 3 - Open"
IF RM = 75 AND Reactor4Open = 1 THEN Room$ = "Reactor 4 - Open"
IF RM = 66 AND Reactor1Open = 0 THEN Room$ = "Reactor 1 - Closed"
IF RM = 68 AND Reactor2Open = 0 THEN Room$ = "Reactor 2 - Closed"
IF RM = 73 AND Reactor3Open = 0 THEN Room$ = "Reactor 3 - Closed"
IF RM = 75 AND Reactor4Open = 0 THEN Room$ = "Reactor 4 - Closed"
IF RM = 74 AND ElevatorDoors = 0 THEN Room$ = "Power Central Core - Elevator Closed"
IF RM = 74 AND ElevatorDoors = 1 THEN Room$ = "Power Central Core - Elevator Open"
IF RM = 57 THEN Room$ = "Outside BioDome - Near Door - West Entrance"
IF RM = 63 THEN Room$ = "Outside BioDome - Near Door - East Entrance"
IF RM = 65 THEN Room$ = "Outside BioDome - Near Door - SouthWest Entrance"
IF RM = 69 THEN Room$ = "Outside BioDome - Near Door - SouthEast Entrance"
IF RM = 36 THEN Room$ = "Outside BioDome - Near Door - NorthWest Entrance"
IF RM = 42 THEN Room$ = "Outside BioDome - Near Door - NorthEast Entrance"
IF RM = 43 OR RM = 50 THEN Room$ = "Outside BioDome - West Side"
IF RM = 49 OR RM = 56 THEN Room$ = "Outside BioDome - East Side"
IF RM = 1 THEN Room$ = "Tube South-East"
IF RM = 4 THEN Room$ = "Tube South-West"
IF RM = 2 OR RM = 16 OR RM = 3 THEN Room$ = "Tube East-West"
IF RM = 8 OR RM = 11 THEN Room$ = "Tube North-South"
IF RM = 25 AND AirlockOpened = 1 AND DeviceOpen = 0 THEN Room$ = "City Entrance - Opened"
IF RM = 25 AND AirlockOpened = 1 AND DeviceOpen = 1 THEN Room$ = "City Entrance - Opened - Device Open"
IF RM = 25 AND AirlockOpened = 0 AND DeviceOpen = 0 THEN Room$ = "City Entrance - Closed"
IF RM = 25 AND AirlockOpened = 0 AND DeviceOpen = 1 THEN Room$ = "City Entrance - Closed - Device Open"
IF RM = 24 AND BioLab1Open = 1 THEN Room$ = "Sterilization Chamber - Outer Open"
IF RM = 24 AND InnerBio1Open = 1 THEN Room$ = "Sterilization Chamber - Inner Open"
IF RM = 24 AND BioLab1Open = 0 AND InnerBio1Open = 0 THEN Room$ = "Sterilization Chamber - Closed"
IF RM = 31 AND InnerBio1Open = 0 THEN Room$ = "Lobby - Closed"
IF RM = 31 AND InnerBio1Open = 1 THEN Room$ = "Lobby - Open"
IF RM = 32 AND Rubble = 0 AND PowerLineFixed <> 2 AND Explosive <> 2 THEN Room$ = "Blocked Tube - Power Unfixed"
IF RM = 32 AND Rubble = 0 AND PowerLineFixed = 1 AND Explosive <> 2 THEN Room$ = "Blocked Tube - Power Half Fixed"
IF RM = 32 AND Rubble = 0 AND PowerLineFixed = 2 AND Explosive <> 2 THEN Room$ = "Blocked Tube - Power Fixed"
IF RM = 32 AND Rubble = 0 AND PowerLineFixed = 1 AND Explosive = 2 THEN Room$ = "Blocked Tube - Power Half Fixed - Explosive Set"
IF RM = 32 AND Rubble = 0 AND PowerLineFixed <> 2 AND Explosive = 2 THEN Room$ = "Blocked Tube - Power Unfixed - Explosive Set"
IF RM = 32 AND Rubble = 0 AND PowerLineFixed = 2 AND Explosive = 2 THEN Room$ = "Blocked Tube - Power Fixed - Explosive Set"
IF RM = 32 AND Rubble = 1 AND PowerLineFixed <> 2 THEN Room$ = "Tube North-South - Power Unfixed"
IF RM = 32 AND Rubble = 1 AND PowerLineFixed = 1 THEN Room$ = "Tube North-South - Power Half Fixed"
IF RM = 32 AND Rubble = 1 AND PowerLineFixed = 2 THEN Room$ = "Tube North-South - Power Fixed"
IF RM = 18 OR RM = 39 THEN Room$ = "Tube Intersection"
IF RM = 15 THEN Room$ = "Tube North-East"
IF RM = 27 AND BioLab2Open = 1 THEN Room$ = "Sterilization Chamber2 - Outer Open"
IF RM = 27 AND InnerBio2Open = 1 THEN Room$ = "Sterilization Chamber2 - Inner Open"
IF RM = 27 AND BioLab2Open = 0 AND InnerBio2Open = 0 THEN Room$ = "Sterilization Chamber2 - Closed"
IF RM = 20 AND BioLab2Open = 0 THEN Room$ = "Outside Biolab - Door Closed"
IF RM = 17 AND BioLab1Open = 0 THEN Room$ = "Outside Biolab - Door Closed"
IF RM = 20 AND BioLab2Open = 1 THEN Room$ = "Outside Biolab - Door Opened"
IF RM = 17 AND BioLab1Open = 1 THEN Room$ = "Outside Biolab - Door Opened"
IF RM = 9 THEN Room$ = "Library Core"
IF RM = 10 THEN Room$ = "Library Central Computer"
IF RM = 12 THEN Room$ = "Security Access"
IF RM = 13 THEN Room$ = "Security Hall, West"
IF RM = 14 THEN Room$ = "Security Hall, East"
IF RM = 6 AND VideoPlaying = 0 THEN Room$ = "Moniter Room"
IF RM = 6 AND VideoPlaying = 1 THEN Room$ = "Moniter Room - Video Playing"
IF RM = 53 THEN
        PRINT "Current Position:  North-South Tube": PRINT
        PRINT "        Sensors indicate current position to be in some sort of tube leading"
        PRINT "north and south.  There are two doors in the wall here.  Next to both doors"
        PRINT "are a keypad and a button.  In the floor is an electric socket.  The door in "
        PRINT "the west wall is ";
        North = 1: South = 1
        IF RoomDoor(5) = 0 THEN
                PRINT "closed.  "; : West = 0
        ELSE
                PRINT "open.  "; : West = 1
        END IF
        PRINT "The door in the east wall is ";
        IF RoomDoor(6) = 0 THEN
                PRINT "closed.": East = 0
        ELSE
                PRINT "open.": East = 1
        END IF
        EXIT SUB
END IF
IF RM = 46 THEN
        PRINT "Current Position:  North-South Tube": PRINT
        PRINT "        Sensors indicate current position to be in some sort of tube leading"
        PRINT "north and south.  There are two doors in the wall here.  Next to both doors"
        PRINT "are a keypad and a button.  In the floor here is an electric socket.  The"
        PRINT "door in the west wall is ";
        North = 1: South = 1
        IF RoomDoor(3) = 0 THEN
                PRINT "closed.  "; : West = 0
        ELSE
                PRINT "open.  "; : West = 1
        END IF
        PRINT "The door in the east wall is ";
        IF RoomDoor(4) = 0 THEN
                PRINT "closed.": East = 0
        ELSE
                PRINT "open."
                East = 1
        END IF
        EXIT SUB
END IF
IF RM = 7 THEN
        PRINT "Current Position:  Armory": PRINT
        PRINT "        Sensors indicate position to be inside some sort of security arsenal."
        IF PowerToSecurity = 0 THEN
                PRINT "On the walls are devices emitting a strong magnetic charge.  ";
        ELSE
                PRINT "On the walls are devices emitting a faint magnetic charge.  ";
        END IF
        IF Explosive = 0 THEN PRINT "On a device in the": PRINT "north wall is a contained fission explosive.  ";
        IF LaserGun = 0 THEN PRINT "On a device in the": PRINT "east wall is a high-intensity laser weapon.  ";
        PRINT "The exit from this room is to the south.": South = 1
        EXIT SUB
END IF
IF RM = 5 THEN Room$ = "Debriefing Room"
IF RM = 16 AND LibraryOpen = 0 THEN Room$ = "Outside Library or Security - Door Closed"
IF RM = 16 AND LibraryOpen = 1 THEN Room$ = "Outside Library or Security - Door Opened"
IF RM = 19 AND SecurityOpen = 0 THEN Room$ = "Outside Library or Security - Door Closed"
IF RM = 19 AND SecurityOpen = 1 THEN Room$ = "Outside Library or Security - Door Opened"
IF RM = 21 THEN Room$ = "Power Conduit"
IF RM = 58 AND RoomDoor(7) = 0 THEN Room$ = "Outside Door - MO54382 - Closed"
IF RM = 58 AND RoomDoor(7) = 1 THEN Room$ = "Outside Door - MO54382 - Open"
IF RM = 62 AND RoomDoor(8) = 0 THEN Room$ = "Outside Door - SO426274 - Closed"
IF RM = 62 AND RoomDoor(8) = 1 THEN Room$ = "Outside Door - SO426274 - Open"
IF RM = 41 AND RoomDoor(2) = 0 THEN Room$ = "Outside Door - PC45 - Closed"
IF RM = 41 AND RoomDoor(2) = 1 THEN Room$ = "Outside Door - PC45 - Open"
IF RM = 37 AND RoomDoor(1) = 0 THEN Room$ = "Outside Door - TE32 - Closed"
IF RM = 37 AND RoomDoor(1) = 1 THEN Room$ = "Outside Door - TE32 - Open"
IF RM = 40 OR RM = 59 OR RM = 61 THEN Room$ = "Computer Console"
IF RM = 38 THEN Room$ = "Computer Console - Room 38"
IF RM = 60 THEN Room$ = "Tube Intersection - Room 60"
IF RM = 44 AND Welder = 0 AND RoomDoor(1) = 1 THEN Room$ = "Living Quarters - TE32 - Open - Welder Untaken"
IF RM = 44 AND Welder = 1 AND RoomDoor(1) = 1 THEN Room$ = "Living Quarters - TE32 - Open - Welder Taken"
IF RM = 44 AND Welder = 0 AND RoomDoor(1) = 0 THEN Room$ = "Living Quarters - TE32 - Closed - Welder Untaken"
IF RM = 44 AND Welder = 1 AND RoomDoor(1) = 0 THEN Room$ = "Living Quarters - TE32 - Closed - Welder Taken"
IF RM = 54 AND Couplink = 0 AND RoomDoor(6) = 1 THEN Room$ = "Living Quarters - TE43 - Open - Couplinks Untaken"
IF RM = 54 AND Couplink = 1 AND RoomDoor(6) = 1 THEN Room$ = "Living Quarters - TE43 - Open - Couplinks Taken"
IF RM = 54 AND Couplink = 0 AND RoomDoor(6) = 0 THEN Room$ = "Living Quarters - TE43 - Closed - Couplinks Untaken"
IF RM = 54 AND Couplink = 1 AND RoomDoor(6) = 0 THEN Room$ = "Living Quarters - TE43 - Closed - Couplinks Taken"
IF RM = 48 AND RoomDoor(2) = 0 THEN Room$ = "Living Quarters - PC45 - Closed"
IF RM = 48 AND RoomDoor(2) = 1 THEN Room$ = "Living Quarters - PC45 - Open"
IF RM = 47 AND RoomDoor(5) = 0 THEN Room$ = "Living Quarters - SO341351 - Closed"
IF RM = 47 AND RoomDoor(5) = 1 THEN Room$ = "Living Quarters - SO341351 - Open"
IF RM = 51 AND RoomDoor(7) = 0 THEN Room$ = "Living Quarters - MO54382 - Closed"
IF RM = 51 AND RoomDoor(7) = 1 THEN Room$ = "Living Quarters - MO54382 - Open"
IF RM = 45 AND RoomDoor(3) = 0 THEN Room$ = "Living Quarters - MO12355 - Closed"
IF RM = 45 AND RoomDoor(3) = 1 THEN Room$ = "Living Quarters - MO12355 - Open"
IF RM = 55 AND RoomDoor(8) = 0 THEN Room$ = "Living Quarters - SO426274 - Closed"
IF RM = 55 AND RoomDoor(8) = 1 THEN Room$ = "Living Quarters - SO426274 - Open"
IF RM = 47 AND RoomDoor(4) = 0 THEN Room$ = "Living Quarters - SO351326 - Closed"
IF RM = 47 AND RoomDoor(4) = 1 THEN Room$ = "Living Quarters - SO351326 - Open"
IF RM = 26 THEN
        PRINT "Current Position:  Biolab Lobby": PRINT
        PRINT "        Sensors indicate position to be inside the lobby of some biological"
        PRINT "laboratory.  There is a slot in the east wall, next to a door, which is"
        IF InnerBio2Open = 0 THEN PRINT "closed.  ";
        IF InnerBio2Open = 1 THEN PRINT "open.  "; : East = 1
        PRINT "There is a computer on a desk here, next to which is a power button.  There is"
        PRINT "a doorway to the south from here, next to which is a plaque.": South = 1
        EXIT SUB
END IF
Desc
END SUB

SUB Startup
BEEP
PRINT "Startup Sequence Activated.": PRINT
PRINT "Systems Check:                   Status": PRINT
PRINT "Fusion Power:                    ";
FOR T = 1 TO 500: NEXT T
PRINT "Online"
PRINT "Backup Battery:                  ";
FOR T = 1 TO 500: NEXT T
PRINT "Online"
PRINT "Computer Brain:                  ";
FOR T = 1 TO 500: NEXT T
PRINT "Online"
PRINT "Artificial Intelligence:         ";
FOR T = 1 TO 500: NEXT T
PRINT "Online"
PRINT "Ethics Chip:                     ";
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
PRINT "Wireless Communication System:   ";
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
PRINT "Omega Blue Class 6 Robot Online.  All systems fully operational.": PRINT
END SUB

SUB SystemCheck
PRINT "Systems Check:                   Status": PRINT
PRINT "Fusion Power:                    ";
FOR T = 1 TO 500: NEXT T
PRINT "Online"
PRINT "Backup Battery:                  ";
FOR T = 1 TO 500: NEXT T
PRINT "Online"
PRINT "Computer Brain:                  ";
FOR T = 1 TO 500: NEXT T
PRINT "Online"
PRINT "Artificial Intelligence:         ";
FOR T = 1 TO 500: NEXT T
PRINT "Online"
PRINT "Ethics Chip:                     ";
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
END SUB

SUB Tithlium3
Desc
END SUB

SUB Vega2
Desc
END SUB

SUB WCN
PRINT "Wireless Communications Network Startup:": PRINT
PRINT "Server:                          UOL"
PRINT "Number to dial:                  (341)-325-5321"
PRINT "Current Location:                ";
FOR T = 1 TO 1000
NEXT T
PRINT "Milky Way Galaxy"
PRINT
BackThere:
A$ = INKEY$
IF LEN(A$) = 0 THEN GOTO BackThere
PRINT "Dialing";
FOR A = 1 TO 10
PRINT ".";
FOR T = 1 TO 100
NEXT T
NEXT A
PRINT : PRINT : PRINT "Connection made.": FOR T = 1 TO 2000: NEXT T
CLS : Site$ = "UOL Homepage": Place$ = "usw.uol.com": Site = 1
Search:
OPEN "omega3.wcn" FOR INPUT AS #1
DO WHILE NOT EOF(1)
        LINE INPUT #1, Rec$
        IF Rec$ = Site$ THEN GOTO FoundSite
LOOP
FoundSite:
DO WHILE NOT EOF(1)
        LINE INPUT #1, Rec$
        IF Rec$ = "EndLinks" THEN GOTO FoundSite2
LOOP
CLOSE #1: EXIT SUB
FoundSite2:
LINE INPUT #1, Place$
DO WHILE NOT EOF(1)
        LINE INPUT #1, Rec$
        IF Rec$ = "EndPlace" THEN GOTO FoundSite3
LOOP
CLOSE #1: EXIT SUB
FoundSite3:
LINE INPUT #1, Site$
CLS
CLOSE #1
OPEN "omega3.wcn" FOR INPUT AS #1
PRINT "Current Site:   "; Place$
PRINT
        DO WHILE NOT EOF(1)
                LINE INPUT #1, Rec$
                IF Rec$ = Site$ THEN GOTO WCN1
        LOOP
CLOSE #1: EXIT SUB
WCN1:
        DO WHILE NOT EOF(1)
                LINE INPUT #1, Rec$
                IF Rec$ = "Start" THEN GOTO WCN2
        LOOP
CLOSE #1: EXIT SUB
WCN2:
    DO WHILE NOT EOF(1)
        LINE INPUT #1, Rec$  'Read entries from the file.
        IF Rec$ = "EndPage" THEN GOTO WCN3
        PRINT Rec$           'Print the entries on the screen.
    LOOP
WCN3:
CLOSE #1
KEY OFF
KEY 1, "e-mail" + CHR$(13)
KEY 2, "new uol site" + CHR$(13)
KEY 3, "download" + CHR$(13)
KEY 4, "link" + CHR$(13)
KEY 5, "log off" + CHR$(13)
KEY 6, ""
KEY 7, ""
KEY 8, ""
KEY 9, ""
KEY 10, ""
Prompt2:
LOCATE 20, 1: PRINT "                                                   "
LOCATE 23, 1
PRINT "1.  E-Mail    2.  New UOL Site   3.  Download     4.  Link       5.  Log off"
LOCATE 20, 43
PRINT "        Current Time:     "; TIME$
LOCATE 20, 1
INPUT ">", A$
IF A$ = "new uol site" OR A$ = "2" THEN
        LOCATE 20, 1
        INPUT "Enter new UOL site:", NS$
        OPEN "omega3.wcn" FOR INPUT AS #1
        DO WHILE NOT EOF(1)
                LINE INPUT #1, Rec$
                IF Rec$ = NS$ THEN GOTO Okay
        LOOP
CLOSE #1: GOTO Search
Okay:
CLOSE #1
Site$ = NS$: GOTO Search
END IF
IF A$ = "download" OR A$ = "3" THEN GOTO FileDownload
IF A$ = "e-mail" OR A$ = "1" THEN GOTO Email
IF A$ = "log off" OR A$ = "5" THEN PRINT : PRINT : PRINT "Disconnecting Wireless Communication System from UOL Server...               ": FOR T = 1 TO 2000: NEXT T: CLS : EXIT SUB
IF A$ = "link" OR A$ = "4" THEN
        LOCATE 20, 1: INPUT "Enter link:", L
        IF L = 0 THEN CLS : GOTO Search
        IF L <> 0 THEN
                OPEN "omega3.wcn" FOR INPUT AS #1
                DO WHILE NOT EOF(1)
                        LINE INPUT #1, Rec$
                        IF Rec$ = Site$ THEN GOTO WCN4
                LOOP
WCN4:
                DO WHILE NOT EOF(1)
                        LINE INPUT #1, Rec$
                        IF Rec$ = "EndPage" THEN GOTO WCN5
                LOOP
WCN5:
                DO WHILE NOT EOF(1)
                        LINE INPUT #1, Rec$  'Read entries from the file.
                        IF L = 1 AND MID$(Rec$, 1, 9) = "Link 1:  " THEN GOTO WCN6
                        IF L = 2 AND MID$(Rec$, 1, 9) = "Link 2:  " THEN GOTO WCN6
                        IF L = 3 AND MID$(Rec$, 1, 9) = "Link 3:  " THEN GOTO WCN6
                        IF L = 4 AND MID$(Rec$, 1, 9) = "Link 4:  " THEN GOTO WCN6
                        IF L = 5 AND MID$(Rec$, 1, 9) = "Link 5:  " THEN GOTO WCN6
                        IF L = 6 AND MID$(Rec$, 1, 9) = "Link 6:  " THEN GOTO WCN6
                LOOP
                CLOSE #1: LOCATE 21: PRINT "Link not found.": GOTO Prompt2
WCN6:
                Site$ = MID$(Rec$, 10)
                CLOSE #1
                GOTO Search
        END IF
END IF
CLS : GOTO Search
TIMER OFF
EXIT SUB
Email:
CLS
LOCATE 2
KEY 1, "browser" + CHR$(13)
PRINT "Universe Online Wireless Mail:": PRINT
PRINT "     In:"
PRINT "         a.  Dking@uol.com - Re:  Current Mission"
IF Messages > 0 THEN PRINT "         b.  "
Prompt:
LOCATE 23, 1
PRINT "1.  Browser    2.  New UOL Site   3.  Download     4.  Link       5.  Log off"
LOCATE 20, 43
PRINT "        Current Time:     "; TIME$
LOCATE 20, 1
INPUT ">", A$
IF A$ = "a" THEN
MessageA:
CLS
LOCATE 1
        IF Mission = 0 THEN
                PRINT "To:           OBC6R ANX1201419"
                PRINT "From:         DkingCorp Vice President, Dolvius Kalimathus"
                PRINT "Re:           Current Mission": PRINT
                PRINT "        OBC6R ANX1201419, your mission is to search the following planets"
                PRINT "discovered by the Hubble 3C telescope.  All planets are to be examined closely"
                PRINT "for any sign of extraterrestrial life, be it sentient or non-sentient.  Your"
                PRINT "task list consists of:": PRINT
                PRINT "        Tithlium 3                Delta Phetakop"
                PRINT "        Gamma Psygnosis 1         Vega 2"
                PRINT "        Beta Aquarion C2          Acturus B5"
                PRINT "        Sirrus 5                  Proxima Centauri E2": PRINT
                PRINT "Good luck on your mission.  May you find success."
        END IF
GOTO Prompt
END IF
IF A$ = "browser" OR A$ = "1" THEN GOTO Search
GOTO Email
FileDownload:
LOCATE 21, 1
IF Site$ = "Alex's Download Page" THEN
LOCATE 20, 1
INPUT "Enter file number to download:", A
LOCATE 21: PRINT "                                                                    "
LOCATE 22: PRINT "                                                                    "
IF A <> 1 THEN GOTO Search
LanguageProg = 1
GOTO Downloading
END IF
IF Site$ = "Earth Government Download" THEN
LOCATE 20, 1
INPUT "Enter file number to download:", A
LOCATE 21: PRINT "                                                                    "
LOCATE 22: PRINT "                                                                    "
IF A <> 1 THEN GOTO Search
LanguageProg = 1
GOTO Downloading
END IF
IF Site$ = "Omega Blue Download" THEN
LOCATE 20, 1
INPUT "Enter file number to download:", A
LOCATE 21: PRINT "                                                                    "
LOCATE 22: PRINT "                                                                    "
IF A > 3 AND A < 1 THEN GOTO Search
IF A = 1 THEN NewsUpdate = 1
IF A = 2 THEN AbsProg = 1
IF A = 3 THEN OmegaHistInfo = 1
GOTO Downloading
END IF
GOSUB NoFiles
GOTO Search
NoFiles:
PRINT "No files currently available to download."
LOCATE 20, 1
PRINT "                                                      "
GOTO Prompt2
EXIT SUB
Downloading:
FOR T = 1 TO 100
LOCATE 21, 1
FOR Delay = 1 TO 50
NEXT Delay
PRINT "File download"; T; "percent complete."
NEXT T
LOCATE 22, 1: PRINT "File download completed.": GOTO Prompt2
END SUB

