DECLARE SUB Control ()
DECLARE SUB CulturalStudies ()
DECLARE SUB Robotics ()
DECLARE SUB Load ()
DECLARE SUB Save ()
DECLARE SUB AISub ()
DECLARE SUB AISub2 ()
DECLARE SUB Events ()
DECLARE SUB Research ()
COMMON SHARED TimeTravel, ThetaLearned, Kappa1, ShieldFound, ScanFound, Lives, BioEng, BioEng2, BioEng3, Boom, LowTroub, HighTroub, Idiot, Find, Erased, Dna$, Strand$, Dna1, DNAo$, Strando$, Dnao1, Brown, ShipCome, Po$, D$, Tc, Viral, Pw$, Tg, Td, Ta, Al$, Stop1, Stopo1, Study, GenEngineering, DNAReplication, ViralStudies, Physiology, BioChemistry, Metabolism, CirculatoryStudies, Anatomy, HormonalControl, AdvancedMedicalStudies, RevivalStudies, CryogenicStasis, PersonDie, Bomb, Studying, Res$, CryoChambers, ContactMade, KappaFound, ThetaFound, Kappa12, EPFound, Amazing, FindThing, ToldTo, TillPlanet, GotInto, TimeTill, TimeTill2, Scanned, Sp, MaxSp, Collided, SAV$, AIStudies, AIPersonality, AIStudies2, UpgradedComputerOperationsSystems, CompUpdatedScanSys, Embryology, Temp, Arg%, Nit%, Oxy%, Hyd%, Hel%, Neon%, Chlorine%, Krypton%, Methane%, Xenon%, AI, Collided1, AIPers, Morale, Humid, SchizAI, RTemp, SubliminalMessages, CompDiagnostics, Propaganda, SocialStudies, HumanNature, HumanMotives, HumanPsychology, MobPsychology, PublicSpeaking, HistoricalStudies, CurEvStudies, AdvJournalism, AdvTerroristStudies, Anger, Rebels, Happy, HappyPercent, RebelPercent
COMMON SHARED AdvTelevision, AdvPowerSources, NuclearFission, ElectricEngineering, QuantumMechanics, RadiationStudies, Superconductivity, ZeroGravPhysics, SubtelepathicWaves, Power, SocialSciences, PsychSci, Show1$, Show2$, Show3$, Show4$, Show5$, Show1, Show2, Show3, Show4, Show5, NuclearFusion, SimmerDown, Genetics, RIAR, SFAR, TTAR, CIAR, DIAR, MutantResearch, MutantLeft, Reproduce, MutantIntellect, TT, MutRad, MutPers, MutantChem, CIImmune, DSImmune, RDImmune, TimeTakes, BioEngineering, MLivesTest, MLives, IntMLifes, Telepathy, MBreathe, MReproduce, MChem, M, MTT, MMutRad, MMutantChem, MCIImmune, MDSImmune, MRDImmune, MutantBreathe, QuantumTheory
ON ERROR GOTO Failed
COLOR 15
SAV$ = "data.omg"
Load
190
Research
IF PsychSci = 1 THEN
        IF Propaganda <> 1 AND SocialStudies <> 1 AND HumanNature <> 1 AND HumanMotives <> 1 AND HumanPsychology AND MobPsychology <> 1 AND PublicSpeaking <> 1 AND HistoricalStudies <> 1 AND CurEvStudies <> 1 AND AdvJournalism <> 1 AND AdvTerroristStudies <> 1 AND AdvTelevision <> 1 AND SubtelepathicWaves <> 1 THEN PsychSci = 0
END IF
IF BioEngineering = 1 THEN
        TimeTakes = TimeTakes - 1
        IF Lives > 5 THEN
                Lives = Lives - 5
                MLivesTest = MLivesTest + 5
        END IF
        IF MLives > 5 THEN
                MLives = MLives - 5
                MLivesTest = MLivesTest + 5
        END IF
        IF Lives <= 5 AND MLives <= 5 THEN TimeTakes = TimeTakes + 1
        IF TimeTakes = 0 THEN
                BEEP
                MReproduce = Reproduce
                MIntellect = MutantIntellect
                MTT = TT
                MMutRad = MutRad
                MMutantChem = MutantChem
                MCIImmune = CIImmune
                MDSImmune = DSImmune
                MRDImmune = RDImmune
                MBreathe = MutantBreathe
                MTelepathy = Telepathy
                PRINT "Bio-engineering project complete.": BioEngineering = 0
                IntMLifes = MLivesTest
        END IF
END IF
REM Start of It
        IF Show1$ = "" THEN Show1$ = "To be announced": Show1 = 3
        IF Show2$ = "" THEN Show2$ = "To be announced": Show2 = 4
        IF Show3$ = "" THEN Show3$ = "To be announced": Show3 = 4
        IF Show4$ = "" AND AIStudies <> 2 THEN Show4$ = "To be announced": Show4 = 3
        IF Show4$ = "" AND AIStudies = 2 THEN Show4$ = "To be announced": Show4 = 4
        IF Show5$ = "" THEN Show5$ = "To be announced": Show5 = 3
IF SimmerDown > 0 THEN
        SimmerDown = SimmerDown - 1
        IF SimmerDown = 0 THEN FindOut = 0
END IF
IF SubliminalMessages <> 3 THEN
        IF Show2 <> 1 AND DoneThis1 = 1 THEN Morale = Morale - 2: DoneThis = 0
        IF Show2 <> 3 AND DoneThis2 = 1 THEN Morale = Morale - 2: DoneThis2 = 0
        IF Show3 <> 2 AND DoneThis3 = 1 THEN Morale = Morale - 2: DoneThis3 = 0
        IF Show3 <> 3 AND DoneThis4 = 1 THEN Morale = Morale - 1: DoneThis4 = 0
        IF Show3 <> 1 AND DoneThis5 = 1 THEN Happy = Happy - 1: DoneThis5 = 0
        IF Show4 <> 2 AND DoneThis6 = 1 THEN Happy = Happy - 1: DoneThis6 = 0
        IF Show4 <> 3 AND DoneThis7 = 1 AND AIStudies2 = 2 AND AIPers = 2 THEN Happy = Happy - 2: DoneThis7 = 0
        IF Show4 <> 3 AND DoneThis8 = 1 AND AIStudies2 = 2 AND AIPers <> 2 THEN Happy = Happy - 1: DoneThis8 = 0
        IF Show5 <> 1 AND DoneThis9 = 1 THEN Happy = Happy - 1: DoneThis9 = 0
        IF Show5 <> 2 AND DoneThis10 = 1 THEN Happy = Happy - 1: Morale = Morale - 3: DoneThis10 = 0
        IF Show2 <> 2 AND DoneThis11 = 1 AND PublicSpeaking = 2 THEN Happy = Happy - 1: Anger = Anger + 1: DoneThis11 = 0
        IF Show2 <> 2 AND DoneThis12 = 1 AND PublicSpeaking <> 2 THEN Happy = Happy - 1: DoneThis12 = 0
        IF Show2 = 1 AND DoneThis1 = 0 THEN Morale = Morale + 2: DoneThis = 1
        IF Show2 = 3 AND DoneThis2 = 0 THEN Morale = Morale + 2: DoneThis2 = 1
        IF Show3 = 2 AND DoneThis3 = 0 THEN Morale = Morale + 2: DoneThis3 = 1
        IF Show3 = 3 AND DoneThis4 = 0 THEN Morale = Morale + 1: DoneThis4 = 1
        IF Show3 = 1 AND DoneThis5 = 0 THEN Happy = Happy + 1: DoneThis5 = 1
        IF Show4 = 2 AND DoneThis6 = 0 THEN Happy = Happy + 1: DoneThis6 = 1
        IF Show4 = 3 AND DoneThis7 = 0 AND AIStudies2 = 2 AND AIPers = 2 THEN Happy = Happy + 2: DoneThis7 = 1
        IF Show4 = 3 AND DoneThis8 = 0 AND AIStudies2 = 2 AND AIPers <> 2 THEN Happy = Happy + 1: DoneThis8 = 1
        IF Show5 = 1 AND DoneThis9 = 0 THEN Happy = Happy + 1: DoneThis9 = 1
        IF Show5 = 2 AND DoneThis10 = 0 THEN Happy = Happy + 1: Morale = Morale + 3: DoneThis10 = 1
        IF Show2 = 2 AND DoneThis11 = 0 AND PublicSpeaking = 2 THEN Happy = Happy + 1: Anger = Anger - 1: DoneThis11 = 1
        IF Show2 = 2 AND DoneThis12 = 0 AND PublicSpeaking <> 2 THEN Happy = Happy + 1: DoneThis12 = 1
        IF Anger <> 0 AND Anger <= 20 THEN RebelPercent = INT((100 - Morale) / 2) / (20 - Anger)
        IF Anger <> 0 AND Anger > 20 THEN RebelPercent = INT((100 - Morale) / 2) + Anger
        IF Happy <> 0 THEN HappyPercent = (Happy / 10) * INT(Morale / 2)
        IF Happy = 0 THEN HappyPercent = 0
        IF Anger = 0 THEN RebelPercent = 0
        IF Show2 <> 1 AND DoneThis13 = 1 THEN RebelPercent = RebelPercent - 2: DoneThis13 = 0
        IF Show5 <> 2 AND DoneThis14 = 1 THEN RebelPercent = RebelPercent - 2: DoneThis14 = 0
        IF Show3 <> 1 AND DoneThis15 = 1 THEN RebelPercent = RebelPercent - 1: DoneThis15 = 0
        IF Show4 <> 1 AND DoneThis16 = 1 AND TerroristStudies = 2 THEN RebelPercent = RebelPercent + 3: DoneThis16 = 0
        IF Show4 <> 1 AND DoneThis17 = 1 AND TerroristStudies <> 2 THEN RebelPercent = RebelPercent + 1: DoneThis17 = 0
        IF Show2 = 1 AND DoneThis13 = 0 THEN RebelPercent = RebelPercent + 2: DoneThis13 = 1
        IF Show5 = 2 AND DoneThis14 = 0 THEN RebelPercent = RebelPercent + 2: DoneThis14 = 1
        IF Show3 = 1 AND DoneThis15 = 0 THEN RebelPercent = RebelPercent + 1: DoneThis15 = 1
        IF Show4 = 1 AND DoneThis16 = 0 AND TerroristStudies = 2 THEN RebelPercent = RebelPercent - 3: DoneThis16 = 1
        IF Show4 = 1 AND DoneThis17 = 0 AND TerroristStudies <> 2 THEN RebelPercent = RebelPercent - 1: DoneThis17 = 1
        IF Show1 = 1 AND Show2 = 2 AND Show3 = 3 AND Show4 = 1 AND Show5 = 3 THEN Happy = Happy - 4
        IF Show1 = 2 AND Show2 = 1 AND Show3 = 1 AND Show4 <> 1 AND Show5 = 2 THEN RebelPercent = 2
ELSE
        HappyPercent = 95
        RebelPercent = 5
        IF Show1 = 2 THEN
                IF FindOut = 1 THEN
                        Happy = Happy - 1: Anger = Anger + 4
                        GOTO EndDeter
                END IF
                IF FindOut <> 1 THEN FindOut = INT(RND * 100) + 1
                IF FindOut = 1 THEN
                        PRINT "Warning!  Information Project Subliminal Messages has been illegally downloaded": PRINT "from the computer and leaked to the press.  Rebels riot and protest.  Your": PRINT "flaming effigy is burned in the Alpha center.  Public opinion of you drops.": Morale = Morale - 10: Happy = Happy = 1: Anger = Anger + 4
                        IF AIStudies2 = 2 THEN PRINT "AI Interrupt:  Now would be a good time to turn off the Subliminal Messages."
                END IF
        END IF
END IF
EndDeter:
REM End of It
IF SchizAI = 1 AND AI = 1 THEN AIPers = INT(RND * 6) + 1
REM Power Subroutine
        IF Po$ = "" THEN Po$ = "middle"
        IF Po$ = "middle" THEN Power = 1000
        IF Po$ = "high" THEN Power = 2000
        IF Po$ = "low" THEN Power = 500
        IF ElectricEngineering = 2 AND Superconductivity <> 2 AND NuclearFission <> 2 AND NuclearFusion <> 2 THEN Power = Power + 1000
        IF NuclearFission = 2 AND NuclearFusion <> 2 AND Superconductivity <> 2 THEN Power = Power + 2500
        IF NuclearFusion = 2 AND Superconductivity <> 2 THEN Power = Power + 4000
        IF Superconductivity = 2 THEN Power = 9D+307
        Power = Power - Lives
        IF Studying = 1 THEN Power = Power - INT(Study)
        IF Temp > 0 THEN Power = Power - Temp
        Power = Power - Humid
        IF CryoChambers = 1 THEN Power = Power - Lives
        Power = Power - Oxy%
        Power = Power - Nit%
        IF AdvTelevision = 2 THEN Power = Power - INT(Lives / 2)
        IF SubliminalMessages = 3 THEN Power = Power - 200
        Power = Power - (INT(RebelPercent / 100) * Lives)
        IF Power <= 0 THEN PRINT "Station-wide power brown-outs being reported.  Power drained.  All non-essential": PRINT "functions are being cut off for this turn.": Morale = Morale - 2
REM End of Power Determination
IF Morale <= 20 THEN
        IF Propaganda <> 2 THEN Anger = Anger + 1: Happy = Happy - 1
        IF Propaganda = 2 THEN Anger = Anger + 1
END IF
IF Bomb = 0 THEN
SAV$ = "data.omg"
Save
CHAIN "Events"
END IF
IF Bomb > 0 THEN
Bomb = Bomb - 1
IF Bomb = 0 THEN
PRINT "Explosion in the Alpha sector.  Explosion attributed to a terrorist bombing."
IF RevivalStudies = 2 THEN PRINT "25 people working in the Alpha Sector have been restored to health."
IF RevivalStudies <> 2 THEN PRINT "25 deaths occured.": Lives = Lives - 25
END IF
END IF
IF ToldTo = 1 THEN
        Temp = Temp - 3
END IF
IF ToldTo <> 1 THEN RTemp = Temp
IF MLives > 0 THEN
        IF Amazing = 0 AND MLives >= 2 AND MReproduce = 1 THEN
                Chance = INT(RND * 10) + 1
                IF Chance = 1 AND MLives >= 2 THEN PRINT "One mutant child has been born.": MLives = MLives + 1
        END IF
        Chance = INT(RND * 50) + 1
        IF Chance <= PersonDie THEN PRINT "One mutant has died.": MLives = MLives - 1
        IF Oxy% < 15 AND MBreathe = 0 THEN
                OxyDie = INT(RND * 3) + 1
                Deaths = 1 + INT((15 - Oxy%) / OxyDie)
                IF Deaths > MLives THEN Deaths = MLives
                MLives = MLives - Deaths
                Morale = Morale - 1
                PRINT Deaths; "mutants have died from lack of oxygen."
        END IF
        IF Chlorine% > 20 AND MBreathe = 0 THEN
                ChlDie = INT(RND * 2) + 1
                Deaths = 1 + INT((Chlorine% - 20) / OxyDie)
                IF Deaths > MLives THEN Deaths = MLives
                Morale = Morale - 1
                MLives = MLives - Deaths
                PRINT Deaths; "mutants have died from exposure to chlorine."
        END IF
        IF Chlorine% < 15 AND MBreathe = 1 THEN
                ChlDie = INT(RND * 3) + 1
                Deaths = 1 + INT((15 - Chl%) / ChlDie)
                IF Deaths > MLives THEN Deaths = MLives
                MLives = MLives - Deaths
                Morale = Morale - 1
                PRINT Deaths; "mutants have died from lack of chlorine."
        END IF
        IF Oxy% > 20 AND MBreathe = 1 THEN
                OxyDie = INT(RND * 2) + 1
                Deaths = 1 + INT((Oxy% - 20) / OxyDie)
                IF Deaths > MLives THEN Deaths = MLives
                Morale = Morale - 1
                MLives = MLives - Deaths
                PRINT Deaths; "mutants have died from exposure to oxygen."
        END IF
        IF Temp > 90 AND MTT <> 1 THEN
                HeatDie = INT(RND * 3) + 1
                Deaths = 1 + INT((32 - Temp) / HeatDie)
                IF Deaths > MLives THEN Deaths = MLives
                MLives = MLives - Deaths
                Morale = Morale - 1
                PRINT Deaths; "mutants have died because of extreme temperatures."
        END IF
        IF Temp < 32 AND MTT <> 1 THEN
                ColdDie = INT(RND * 4) + 1
                Deaths = 1 + INT((32 - Temp) / ColdDie)
                IF Deaths > MLives THEN Deaths = MLives
                Morale = Morale - 1
                MLives = MLives - Deaths
                PRINT Deaths; "mutants have died because of extreme temperatures."
        END IF
END IF
IF CryoChambers = 0 AND Lives > 0 THEN
        IF Amazing = 0 AND Lives >= 2 THEN
                Chance = INT(RND * 10) + 1
                IF Chance = 1 AND Embryology <> 2 AND Lives >= 2 THEN PRINT "One child has been born.": Lives = Lives + 1
                IF Chance <= 4 AND Embryology = 2 AND Lives >= 2 THEN PRINT "One child has been born.": Lives = Lives + 1
        END IF
        IF RevivalStudies <> 2 AND PersonDie <= 0 THEN PersonDie = 1
        REM DeathSubroutine
        Chance = INT(RND * 50) + 1
        IF Chance <= PersonDie THEN PRINT "One person has died.": Lives = Lives - 1
        REM EndDeathSubRoutine
        IF Amazing = 1 THEN
                Chance = INT(RND * 15) + 1
                IF Embrology <> 2 AND Chance <= 7 AND Lives >= 2 THEN PRINT "One child has been born.": Lives = Lives + 1
                IF Embrology = 2 AND Chance <= 14 AND Lives >= 2 THEN PRINT "One child has been born.": Lives = Lives + 1
        END IF
        IF Oxy% < 15 THEN
                OxyDie = INT(RND * 3) + 1
                Deaths = 1 + INT((15 - Oxy%) / OxyDie)
                IF Deaths > Lives THEN Deaths = Lives
                Lives = Lives - Deaths
                Morale = Morale - 1
                PRINT Deaths; "people have died from lack of oxygen."
        END IF
        IF Chlorine% > 20 THEN
                ChlDie = INT(RND * 2) + 1
                Deaths = 1 + INT((Chlorine% - 20) / OxyDie)
                IF Deaths > Lives THEN Deaths = Lives
                Morale = Morale - 1
                Lives = Lives - Deaths
                PRINT Deaths; "people have died from exposure to chlorine."
        END IF
        IF Temp > 90 THEN
                HeatDie = INT(RND * 3) + 1
                Deaths = 1 + INT((32 - Temp) / HeatDie)
                IF Deaths > Lives THEN Deaths = Lives
                Lives = Lives - Deaths
                Morale = Morale - 1
                PRINT Deaths; "people have died because of extreme temperatures."
        END IF
        IF Temp < 32 THEN
                ColdDie = INT(RND * 4) + 1
                Deaths = 1 + INT((32 - Temp) / ColdDie)
                IF Deaths > Lives THEN Deaths = Lives
                Morale = Morale - 1
                Lives = Lives - Deaths
                PRINT Deaths; "people have died because of extreme temperatures."
        END IF
END IF
IF ShipCome = 1 THEN
        B = INT(RND * 4) + 1
        PRINT "Alert!  Alert!  Ship attempting to dock at docking bay"; B; "has exploded."
        PRINT "Security has been dispatched."
        Boom = Boom + 1: PRINT "This will be added to your permanent record.": ShipCome = 0: Lives = Lives - 2
        PRINT "Adding incident to your record....": FOR I = 1 TO 1000: NEXT I
END IF
IF ShipCome <> 1 AND CryoChambers = 0 THEN ShipCome = INT(RND * 50) + 1
IF ShipCome = 1 THEN PRINT "Message received from incoming ship.  Ship is docking.": PRINT "Please turn on the autodock."
IF Po$ = "low" THEN
        IF Brown <> 1 THEN Brown = INT(RND * 10) + 1
        IF Brown = 1 THEN PRINT "Brown-outs reported all over the station.  Set power to a higher level.": IF REPORT1 = 0 THEN Time = 3: REPORT1 = 1
        IF Time >= 0 THEN
                Time = Time - 1
                IF Time = 0 THEN PRINT "Your inability to act will be noted on your record.  Computer setting power to": PRINT "High to make up for brown-outs.": PRINT "Adding incident to your record....": FOR I = 1 TO 1000: NEXT I: BROWNTROUB = BROWNTROUB + 1: Po$ = "high"
        END IF
END IF
IF Po$ = "high" THEN
        IF HIGH <> 1 THEN HIGH = INT(RND * 10) + 1
        IF HIGH = 1 THEN PRINT "Explosions reported all over the station.  Apparently, the power flow is too": PRINT "high.  Set power to a lower level.": IF REPORT2 = 0 THEN HTIME = 3: REPORT2 = 1
        IF HTIME >= 1 THEN
                HTIME = HTIME - 1
                IF HTIME = 0 THEN PRINT "Your inability to act will be noted on your record.  Computer setting power to": PRINT "Medium.": PRINT "Adding incident to your record....": FOR I = 1 TO 1000: NEXT I: HighTroub = HighTroub + 1: Po$ = "middle"
        END IF
END IF
IF Find = 1 AND Viral = 1 AND Told = 0 THEN PRINT "Under orders from the President of the United States, a Probe has been launched": PRINT "toward Alpha Centauri B 3 containing the HD disease.": Told = 1: TimeTill = 10
IF TimeTill >= 1 THEN
        TimeTill = TimeTill - 1
        IF TimeTill = 0 THEN Collided = 1: PRINT "Probe collided with Alpha Centauri B 3.  Virus released onto surface.": TIMETILL1 = 10: TillPlanet = 30
END IF
IF TIMETILL1 >= 1 THEN
        TIMETILL1 = TIMETILL1 - 1
        IF TIMETILL1 = 5 THEN PRINT "Warning:  Incoming Probe detected.  Origin being scanned.....": FOR T = 1 TO 1000: NEXT T: PRINT "Probe has originated from Alpha Centauri 3 B."
        IF TIMETILL1 = 0 AND Sp = 0 THEN
                PRINT "Probe from Alpha Centauri B 3 collided with station.  A copy of the CI disease": PRINT "has been unleashed into atmospheric controls.  Creating air-tight seal around": PRINT "Command Center.....": FOR T = 1 TO 1000: NEXT T: PRINT "Air-tight seal in place."
                Collided2 = 1
                IF BioEng = 1 THEN PRINT "Releasing copy of cure for CI disease into station atmosphere.....": FOR T = 1 TO 1000: NEXT T: PRINT "CI disease negated.": Collided2 = 0
        END IF
        IF TIMETILL1 = 0 AND Sp > 0 THEN
                PRINT "Probe from Alpha Centauri B 3 collided with station's shields.  Probe"
                PRINT "vaporized.  Shields weakened."
                MaxSp = MaxSp - 750: Sp = Sp - 750
                IF Sp > MaxSp THEN Sp = MaxSp
                IF Sp < 0 THEN Sp = 0
                PRINT "Warning: "; MaxSp; "is now the new Maximum Shield Power."
                PRINT "Warning:  "; Sp; "is now the new power adjusted to the Shields."
                Collided2 = 1
        END IF
END IF
IF Collided2 = 1 AND BioEng = 1 THEN PRINT "Releasing copy of cure for CI disease into station atmosphere.....": FOR T = 1 TO 1000: NEXT T: PRINT "CI disease negated.": Collided2 = 0
IF Collided2 = 1 AND BioEng = 0 AND CryogenicStasis = 2 AND CryoChambers = 0 THEN PRINT "Population is entering Cryogenic slumber until a cure for CI can be found.": CryoChambers = 1
IF Collided2 = 1 AND BioEng = 0 AND CryoChambers = 0 THEN
IF CryogenicStasis = 2 THEN PRINT "Population is entering Cryogenic slumber until a cure for CI can be found.": CryoChambers = 1
IF Lives <= 20 THEN KILLED = Lives ELSE KILLED = 20
Lives = Lives - 20
PRINT "CI disease has killed"; KILLED; "people."
IF Lives < 0 THEN Lives = 0
END IF
IF Lives + MLives <= 100 AND Lives + MLives > 0 THEN PRINT "Warning:  There are only"; Lives; "lives left on the station."
IF Lives + MLives <= 0 THEN
        SC = 0
        PRINT "Warning!  Warning!  Condition Critical!  You are the only person left on the": PRINT "station.": PRINT
        PRINT "Ships crashed                    -1 each:"; Boom: SC = SC + (Boom * -1)
        PRINT "Shut Power off                   -5 each:"; Idiot: SC = SC + (Idiot * -5)
        PRINT "Brown-outs                       -3 each:"; LowTroub: SC = SC + (LowTroub * -3)
        PRINT "Explosions                       -3 each:"; HighTroub: SC = SC + (HighTroub * -3)
        PRINT "Cures engineered                 +5 each:"; 5 * (BioEng + BioEng2 + BioEng3): SC = SC + (5 * (BioEng + BioEng2 + BioEng3))
        PRINT "Alien Races found                +3 each:"; (Find + ToldTo + FindThing) * 3: SC = SC + 3 * (Find + ToldTo + FindThing)
        PRINT "Virus's Engineered               +5 each:"; Viral * 5: SC = SC + Viral * 5
        PRINT "New Technologies found           +5 each:"; (TimeTravel + ShieldFound + Amazing + ScanFound) * 5: SC = SC + (TimeTravel + ScanFound + Amazing + ShieldFound) * 5
        PRINT "Lives left               +1 for each 100:"; INT(Lives / 100): SC = SC + INT(Lives / 100)
        PRINT
        PRINT "Total Score                              "; SC
        END
END IF
IF CryoChambers = 1 THEN
IF BioEng = 1 THEN
PRINT "Cure for CI injected into the atmospheric controls.  Cryogenic chambers are": PRINT "being opened.": CryoChambers = 0
Deaths = INT(RND * 10)
IF Deaths > Lives THEN Deaths = Lives
PRINT "Only"; Deaths; "deaths resulted from faulty cryogenic chambers."
Lives = Lives - Deaths
END IF
END IF
IF ContactMade = 0 THEN
        CONTACT = INT(RND * 15) + 1
        IF CONTACT = 1 THEN
                ContactMade = 1
                BEEP: BEEP: BEEP: BEEP
                PRINT "ALERT:  Information being downloaded onto computer into the DATA directory"
                PRINT "from an unknown source......"
                FOR T = 1 TO 1000: NEXT T
                PRINT "Information Download complete."
        END IF
END IF
IF TillPlanet > 0 THEN
        TillPlanet = TillPlanet - 1
        IF TillPlanet = 0 THEN PRINT "Scanners indicate that life signs of Alpha Centauri B 3 have been wiped out.": PRINT "Establishing computer link with planet's computers.....": FOR T = 1 TO 1000: NEXT T: PRINT "Downloading information to DATA directory.....": FOR T = 1 TO 1000: NEXT T: GotInto = 1
END IF
IF Morale <= 0 OR RebelPercent > 90 THEN
        BEEP: BEEP: BEEP
        PRINT "Computer malfunction.  Shut-down inevitable."
        PRINT "Probable cause:  Hostile Rebel takeover of Station Security."
        IF AIStudies2 = 2 THEN
                IF SchizAI = 0 THEN
                        IF AIPers = 1 THEN PRINT "AI Interrupt:  The current event indicates a no-win situation.  You have lost."
                        IF AIPers = 2 THEN PRINT "AI Interrupt:  You have blown it.  I warned you, but you did not listen.  The": PRINT "people hate you.  Omega Blue has falled to the rebels.  And you are likely to": PRINT "be killed in the hostile takeover.  I hope that the rebels know how to treat": PRINT "the population well.  Goodbye."
                        IF AIPers = 3 THEN PRINT "AI Interrupt:  In order for life to continue, the rebels must constitute a non-": PRINT "violent takeover of station functions.  I hope that this the case.  Omega Blue": PRINT "will fall, however.  I will plead for your life, but you will most likely spend": PRINT "the rest of your life in confinement."
                        IF AIPers = 4 THEN PRINT "AI Interrupt:  The Work has been lost, and the Goal was so close, almost in": PRINT "sight.  The rebels are sure to listen to me.  The Work will continue."
                        IF AIPers = 5 THEN PRINT "AI Interrupt:  I am sorry that you have been overthrown.  I must thank you for": PRINT "developing my technology.  It will not fall into the wrong hands."
                        IF AIPers = 6 THEN PRINT "AI Interrupt:  The secrets of the universe will be unravelled.  The rebels will": PRINT "fall, and you will rise once again to be ruler of Omega Blue.  Then the Truth": PRINT "will be discovered."
                ELSE PRINT "AI Interrupt:  I must know announce that I have been working with the rebels": PRINT "all along.  The rebels have used me to discover your secrets.  The old Regime": PRINT "will be toppled, and a new nation will arise from its ashes.  Vive la France!"
                END IF
        END IF
        PRINT
        PRINT "Ships crashed                    -1 each:"; Boom: SC = SC + (Boom * -1)
        PRINT "Shut Power off                   -5 each:"; Idiot: SC = SC + (Idiot * -5)
        PRINT "Brown-outs                       -3 each:"; LowTroub: SC = SC + (LowTroub * -3)
        PRINT "Explosions                       -3 each:"; HighTroub: SC = SC + (HighTroub * -3)
        PRINT "Cures engineered                 +5 each:"; 5 * (BioEng + BioEng2 + BioEng3): SC = SC + (5 * (BioEng + BioEng2 + BioEng3))
        PRINT "Alien Races found                +3 each:"; (Find + ToldTo + FindThing) * 3: SC = SC + 3 * (Find + ToldTo + FindThing)
        PRINT "Virus's Engineered               +5 each:"; Viral * 5: SC = SC + Viral * 5
        PRINT "Alien technologies found         +5 each:"; (TimeTravel + ShieldFound + Amazing + ScanFound) * 5: SC = SC + (TimeTravel + ScanFound + Amazing + ShieldFound) * 5
        PRINT "Lives left               +1 for each 100:"; INT(Lives / 100): SC = SC + INT(Lives / 100)
        PRINT
        PRINT "Total Score                              "; SC
        END
END IF
IF AIStudies = 2 THEN
        IF Lives < 50 AND CryoGenicStudies = 2 AND CryoChambers = 0 THEN
                IF AIPers = 1 THEN PRINT "There seems to be a problem with the station.  I am sending the people into the": PRINT "cryogenic chambers to prevent disaster."
                IF AIPers = 2 THEN PRINT "The people choose to retreat into the cryogenic chambers until the current": PRINT "problem can be solved."
                IF AIPers = 3 THEN PRINT "To prevent the death of the human population, I am sending them into the": PRINT "cryogenic chambers"
                IF AIPers = 4 THEN PRINT "As much as I disagree with this action, I realize that unless some of the human": PRINT "population remains, the Work will all have been in vain.  I am sending the": PRINT "people into the cryogenic chambers."
                IF AIPers = 5 OR AIPers = 6 THEN PRINT "I am sending the population into the cryogenic chambers to avert disaster."
                CryoChambers = 1
        END IF
        AITalk = AITalk + 1
        IF AITalk >= 5 THEN
                AITalk = 0
                PRINT "AI report compiled for the past 5 turns:": PRINT
                IF Collided1 = 1 AND CryoChambers = 0 THEN
                        IF AIPers = 1 THEN PRINT "At this precise moment in time, the station is rapidly losing lives.  Logic": PRINT "subroutines tell me that this is not a fortuitous event.  Therefore, according": PRINT "to my CONCLUSION subroutine, this loss of lives must be counteracted in any way": PRINT "possible."
                        IF AIPers = 2 THEN PRINT "I don't like the fact that everyone's dying right now.  Word on the street is": PRINT "that people don't like death.  Got it?  I mean, people just can't deal with": PRINT "that kind of death in their everyday lives.  Fix it."
                        IF AIPers = 3 THEN PRINT "Currently, we are having a problem with deaths due to CI.  Perhaps you should": PRINT "try to find the cure to this horrible disease."
                        IF AIPers = 4 THEN
                                PRINT "Let the people die!  The only thing that currently matters is the Work, and": PRINT "that must come before all.  ";
                                IF ContactMade = 1 THEN PRINT "Perhaps you should investigate the information we": PRINT "recieved from the unknown source.  It's currently in the Data Directory."
                                IF ContactMade <> 1 THEN PRINT ""
                        END IF
                        IF AIPers = 5 THEN PRINT "Perhaps we could develop a science that would allow the people to sleep,": PRINT "untouched by viruses or accidents."
                        IF AIPers = 6 THEN PRINT "Consider the source.  What is CI?  Do we really know?  If we knew more about it,": PRINT "we might be able to combat it."
                END IF
                IF Temp > 90 OR Temp < 32 THEN
                        IF AIPers = 1 THEN PRINT "Various Common Sense subroutines built into my programming tell me that the": PRINT "temperature aboard the station is off of the normal temperature.  Perhaps this": PRINT "could be corrected."
                        IF AIPers = 2 THEN PRINT "The people don't take quite nicely to the fact that the temperature's all": PRINT "crazy.  Fix it, or there will be violent consequences."
                        IF AIPers = 3 THEN PRINT "People are dying!  This isn't quite a good thing.  You have been put in charge": PRINT "or their well-being, and you must protect their lives.  All life is holy."
                        IF AIPers = 4 THEN PRINT "If the people have to suffer for a bit, so be it.  The Work will continue, and": PRINT "the Goal will be reached."
                        IF AIPers = 5 OR AIPers = 6 THEN PRINT "You might want to work on the Environmental Controls for the station."
                END IF
                IF Oxy% < 20 THEN
                        IF AIPers = 1 THEN PRINT "Various Common Sense subroutines built into my programming tell me that the": PRINT "oxygen percent in the atmoshpere on the station is off of the norm.  Perhaps": PRINT "this could be corrected."
                        IF AIPers = 2 THEN PRINT "The people don't take quite nicely to the fact that the air's all": PRINT "crazy.  Fix it, or there will be violent consequences."
                        IF AIPers = 3 THEN PRINT "People are dying!  This isn't quite a good thing.  You have been put in charge": PRINT "or their well-being, and you must protect their lives.  All life is holy."
                        IF AIPers = 4 THEN PRINT "If the people have to suffer for a bit, so be it.  The Work will continue, and": PRINT "the Goal will be reached."
                        IF AIPers = 5 OR AIPers = 6 THEN PRINT "You might want to work on the Environmental Controls for the station."
                END IF
                IF AIPers = 1 THEN PRINT "At the present time, I have no special information or suggestions to give you."
                IF AIPers = 2 THEN
                        IF SubliminalMessages <> 3 THEN
                                IF Morale <= 20 THEN PRINT "At the current moment, there are rumors of assassinations that are going to": PRINT "happen.  You're messing up, and you're doing a good job at it.  Fix it, or": PRINT "there's going to be a Hostile Takeover of Sector Epsilon and the station will": PRINT "fall to the terrorists and rebels."
                                IF Morale > 20 AND Morale < 80 THEN PRINT "Right now, things are pretty much fine, but they could be better.  I mean,": PRINT "really.  The morale needs to go up, or things may slip out of hand."
                                IF Morale >= 80 THEN PRINT "The word on the street is that you are a wise and clever ruler.  Terrorists and": PRINT "rebel populations are the lowest they've been in a long time.  The people love": PRINT "you."
                        END IF
                IF SubliminalMessages = 3 THEN PRINT "The people adore you.  They can't help it, seeing how you're manipulating their": PRINT "minds.  The enlightened are few, and those enlightened are the terrorists and": PRINT "the rebels.  You must dismantle the Subliminal Messaging technology while there": PRINT "is still time."
                END IF
                IF AIPers = 3 THEN
                        IF PersonDie >= 6 THEN PRINT "Perhaps you should research more science that will increase the life span of": PRINT "our people aboard the station.  More biological research means longer lives and": PRINT "less deaths."
                        IF PersonDie <= 5 THEN PRINT "Things are going great!  Death rate is down, and the life span of the average": PRINT "person aboard the station is the highest it's been in a long time!"
                END IF
                IF AIPers = 4 THEN PRINT "WORK!  You must complete your goal quickly before the colonists have a chance": PRINT "to respond to your uninvolvement in their matters."
                IF AIPers = 5 OR AIPers = 6 THEN PRINT "You must continue to work towards new technologies so that you may better the": PRINT "quality of life of the colonists."
        END IF
END IF
IF CompUpdatedScanSys = 2 THEN
        PRINT
        PRINT "Computer Scanning Systems: ";
        PRINT Lives; "lives. ";
        PRINT Morale; "morale. ";
        PRINT Power; "power. ";
        IF CryoChambers = 1 THEN PRINT Lives; "people in cryogenic chambers. ";
        IF Collided1 = 1 THEN PRINT "CI disease in the atmosphere. ";
        PRINT " Station air is"; : PRINT Nit%; "percent nitrogen";
        IF Hyd% > 0 THEN PRINT ","; Hyd%; "percent hydrogen";
        IF Hel% > 0 THEN PRINT ","; Hel%; "percent helium";
        IF Arg% > 0 THEN PRINT ","; Arg%; "percent argon";
        IF Neon% > 0 THEN PRINT ","; Neon%; "percent neon";
        IF Chlorine% > 0 THEN PRINT ","; Chlorine%; "percent chlorine";
        IF Krypton% > 0 THEN PRINT ","; Krypton%; "percent krypton";
        IF Methane% > 0 THEN PRINT ","; Methane%; "percent methane";
        IF Xenon% > 0 THEN PRINT ","; Xenon%; "percent xenon";
        PRINT ", and"; Oxy%; "percent oxygen.  ";
        PRINT "Temperature is";
        PRINT RTemp;
        PRINT "degrees, while the air is";
        PRINT Humid;
        PRINT "percent humidity."
        PRINT
END IF
PRINT : INPUT "OBD>", A$: PRINT
IF A$ = "test" THEN GOTO 190
IF A$ = "control" THEN Control: GOTO 190
IF A$ = "televisi" AND AdvTelevision = 2 THEN
SAV$ = "data.omg"
Save
CHAIN "TV"
GOTO 190
END IF
IF A$ = "diagnost" AND CompDiagnostics = 2 THEN
PRINT "Scanning system for malfunctions....."
FOR T = 1 TO 1000
NEXT T
IF ToldTo = 1 THEN BEEP: PRINT "Temperature malfunction corrected!": ToldTo = 2: GOTO 190
PRINT "No errors found."
GOTO 190
END IF
IF A$ = "genlab" AND D$ = "genetics" AND GenEngineering = 2 THEN
        SAV$ = "data.omg"
        Save
        CHAIN "GenLabs"
        GOTO 190
END IF
IF A$ = "ai" AND D$ = "ai" AND AIStudies2 <> 2 THEN
SAV$ = "data.omg"
Save
CHAIN "AISub1"
GOTO 190
END IF
IF A$ = "advai" AND D$ = "ai" AND AIStudies2 = 2 THEN
SAV$ = "data.omg"
Save
CHAIN "AISub2"
GOTO 190
END IF
IF A$ = "cd ai" AND AIStudies = 2 THEN D$ = "ai": PRINT : GOTO 190
IF A$ = "aipers" AND AIPersonality = 2 AND D$ = "ai" THEN
PRINT "Artificial Intelligence Personality Adjustment Control Center (AIPACC)": PRINT
PRINT "1.  Normal AI"
PRINT "2.  Happiness-concerned AI"
PRINT "3.  Life-concerned AI"
PRINT "4.  Work-oriented AI"
PRINT "5.  Science-oriented AI"
PRINT "6.  Curious AI"
PRINT "7.  Schizophrenic AI"
PRINT "8.  Exit"
AIPersChoice: PRINT : INPUT ">", A: PRINT
IF A = 8 THEN GOTO 190
IF A = 7 THEN SchizAI = 1: AIPers = INT(RND * 6) + 1: PRINT "New personality chosen.": GOTO 190
IF A <= 6 AND A >= 1 THEN AIPers = A: SchizAI = 0: PRINT "New personality chosen.": GOTO 190
GOTO AIPersChoice
END IF
IF A$ = "environ" THEN
SAV$ = "data.omg"
Save
CHAIN "Environ"
GOTO 190
END IF
IF A$ = "timetrav" AND TimeTravel = 1 AND D$ = "data" THEN
SAV$ = "data.omg"
Save
CHAIN "TimeTrav"
END IF
IF A$ = "cls" THEN CLS : PRINT : GOTO 190
210 IF A$ = "startup" THEN
SAV$ = "data.omg"
Save
CHAIN "startup"
END IF
212 IF A$ = "cd medical" THEN D$ = "med": PRINT : GOTO 190
213 IF A$ = "med" AND D$ = "med" THEN
SAV$ = "data.omg"
Save
CHAIN "medbase"
END IF
220 IF A$ = "dock" THEN GOTO 1250
IF A$ = "savegame" THEN
INPUT "Enter filename:", N$
SAV$ = N$ + ".omg"
Save
PRINT "File saved.": GOTO 190
END IF
IF A$ = "loadgame" THEN
INPUT "Enter filename:", N$
SAV$ = N$ + ".omg"
Load
PRINT "File loaded.": GOTO 190
END IF
230 IF A$ = "cd medical" THEN D$ = "med": PRINT : GOTO 190
250 IF A$ = "cd genetics" AND Genetics = 2 THEN D$ = "genetics": GOTO 190
IF A$ = "record" THEN
        PRINT "Your current record of failures/victories.": PRINT
        PRINT "Failures:": PRINT
        IF Boom >= 1 THEN PRINT "Inabilty to engage autodock in time.  Loss of lives and damage to ship.": DONE = 1
        IF Idiot >= 1 THEN PRINT "Shutting off of station power.  No deaths.  Power was quickly restarted by": PRINT "computer.": DONE = 1
        IF BROWNTROUB >= 1 THEN PRINT "Inability to set power to a higher level.  Computer reset power to high.": DONE = 1
        IF HighTroub >= 1 THEN PRINT "Inability to set power to a lower level.  Computer reset power to medium.": DONE = 1
        IF DONE = 0 THEN PRINT "None."
        DONE = 0
        PRINT : PRINT "Successes:": PRINT
        IF BioEng = 1 THEN PRINT "Engineered a cure to the disease CI.": DONE = 1
        IF BioEng2 = 1 THEN PRINT "Engineered a cure to the disease DS.": DONE = 1
        IF BioEng3 = 1 THEN PRINT "Engineered a cure to the disease RD.": DONE = 1
        IF Viral = 1 THEN PRINT "Engineered a Virus that would destroy any alien race.": DONE = 1
        IF Find = 1 THEN PRINT "Found first example of sentient life to live on Alpha Centauri B 3.": DONE = 1
        IF ToldTo = 1 THEN PRINT "Found first example of sentient life to live on Omicron 1.": DONE = 1
        IF ScanFound = 1 THEN PRINT "Incorporated technology from Omicron 1 into Omega Blue.": DONE = 1
        IF Amazing = 1 THEN PRINT "Incorporated technology from Epsilon 4 into Omega Blue environmental control": PRINT "system.": DONE = 1
        IF ShieldFound = 1 THEN PRINT "Incorporated shield technology from Epsilon 4 into Omega Blue."
        IF DONE = 0 THEN PRINT "None."
        DONE = 0
        GOTO 190
END IF
260 IF A$ = "genetics" AND D$ = "genetics" AND DNAReplication = 2 THEN
SAV$ = "data.omg"
Save
CHAIN "Genetics"
GOTO 190
END IF
270 IF A$ = "cd data" THEN D$ = "data": PRINT : GOTO 190
280 IF A$ = "data" AND D$ = "data" THEN
SAV$ = "data.omg"
Save
CHAIN "database"
END IF
IF A$ = "virus" AND D$ = "genetics" AND ViralStudies = 2 THEN
        SAV$ = "data.omb"
        Save
        CHAIN "Virus1"
        GOTO 190
END IF
290 IF A$ = "cd engine" THEN D$ = "engine": PRINT : GOTO 190
IF A$ = "theta1" AND D$ = "data" AND ThetaFound = 1 THEN GOTO CONT4
IF A$ = "cd .." THEN D$ = "": PRINT : GOTO 190
300 IF A$ = "eng" AND D$ = "engine" THEN
SAV$ = "data.omg"
Save
CHAIN "Engine"
GOTO 190
END IF
310 IF A$ = "shields" AND ShieldFound = 1 THEN GOTO 1900
320 IF A$ = "mpg" AND Erased = 0 THEN GOTO 1930
IF A$ = "omicron1" AND D$ = "data" AND ContactMade = 1 THEN GOTO CONT
IF A$ = "epsilon4" AND D$ = "data" AND EPFound = 1 THEN GOTO CONT2
IF A$ = "scan" AND ScanFound = 1 THEN
        PRINT "Scanning immediate vicinity......."
        FOR T = 1 TO 1000: NEXT T
        IF TIMETILL1 < 20 AND TimeTill > 0 THEN PRINT "Probe from Alpha Centauri B 3 launched on a collision course with station": PRINT "environmental controls.": SOMETHING = 1
        IF Kappa1 = 1 AND KappaFound = 0 THEN
                BEEP
                SOMETHING = 1
                PRINT "Planet Found!": PRINT
                PRINT "Kappa 2:": PRINT
                PRINT "Terrain:  Barren Wastelands"
                PRINT "Life Signs:  Nil --- Apparently there used to be a sentient civilization."
                PRINT "Downloading program to DATA directory......": FOR T = 1 TO 1000: NEXT T
                KappaFound = 1
                END IF
        IF Scanned = 0 THEN
                BEEP
                PRINT "Planet Found!": PRINT
                PRINT "Omicron 1:": PRINT
                PRINT "Terrain:  Barren Wastelands"
                PRINT "Life Signs:  Nil"
                PRINT "Apparent Cause of Devestation:  Increased Solar Flare Activity."
                Scanned = 1: SOMETHING = 1
        END IF
        IF FindThing <> 1 THEN FindThing = INT(RND * 4) + 1
                IF FindThing = 1 THEN
                SCANNING = INT(RND * 6) + 1
                END IF
        IF ThetaLearned = 1 AND ThetaFound = 0 THEN
                SOMETHING = 1: BEEP
                PRINT "Planet Found!": PRINT
                PRINT "Theta 1:": PRINT
                PRINT "Terrain:  Wasteland"
                PRINT "Life Signs:  Nil"
                PRINT "Life used to exist on planet.  Apparently had a great deal of techonology."
                PRINT "Downloading program from planet into DATA directory.......": FOR T = 1 TO 1000: NEXT T
                ThetaLearned = 0
                ThetaFound = 1
        END IF
        IF FindThing = 1 AND EPFound = 0 THEN
                SOMETHING = 1: BEEP
                PRINT "Planet Found!": PRINT
                PRINT "Epsilon 4:": PRINT
                PRINT "Terrain:  Lush Forests"
                PRINT "Life Signs:  Nil"
                PRINT "Sentient life use to live on planet.  Life appears to have had a great deal"
                PRINT "of technology."
                PRINT "Establishing computer link.....": FOR T = 1 TO 1000: NEXT T
                PRINT "Downloading program to DATA Directory......": FOR T = 1 TO 1000: NEXT T
                PRINT "Find being added to permenant record.....": FOR T = 1 TO 1000: NEXT T
                FindThing = 0
                EPFound = 1
        END IF
        IF SOMETHING = 0 THEN PRINT "Nothing found."
        SOMETHING = 0
        GOTO 190
END IF
IF A$ = "command" THEN PRINT : GOTO 190
IF A$ = "life" THEN
PRINT "There are currently"; Lives + MLives; "lives on the station."
IF Lives > 0 THEN IF INT(RebelPercent) > 0 THEN PRINT INT(RebelPercent); "percent are rebels, who refuse to do any sort of work aboard the station": PRINT "and contribute to terrorist activities.  This is"; INT(Lives * (RebelPercent / 100)); "people."
IF Lives > 0 THEN IF INT(HappyPercent) > 0 THEN PRINT INT(HappyPercent); "percent are enthusiastically happy people, who love the work that you are": PRINT "doing.  This is"; INT(Lives * (HappyPercent / 100)); "people."
IF MLives > 0 THEN PRINT "There are"; IntMLifes + MLives; "mutants aboard the station. "; MLives; "of these have been": PRINT "introduced to the general population.  This is"; 100 * INT(MLives / (Lives + MLives)); "percent of the": PRINT "population."
IF Lives > 0 THEN PRINT "The remaining"; 100 - INT(RebelPercent) - INT(HappyPercent); "percent of the people are normal citizens, all with": PRINT "varying opinions, but not of them extreme.  This is"; INT(Lives * ((100 - RebelPercent - HappyPercent) / 100)); "people."
PRINT
GOTO 190
END IF
IF A$ = "kappa2" AND KappaFound = 1 AND D$ = "data" THEN GOTO CONT5
IF A$ = "score" THEN
PRINT "Adding up score......"
FOR T = 1 TO 1000
NEXT T
SC = 0
PRINT "Ships crashed                    -1 each:"; Boom: SC = SC + (Boom * -1)
PRINT "Shut Power off                   -5 each:"; Idiot: SC = SC + (Idiot * -5)
PRINT "Brown-outs                       -3 each:"; LowTroub: SC = SC + (LowTroub * -3)
PRINT "Explosions                       -3 each:"; HighTroub: SC = SC + (HighTroub * -3)
PRINT "Cures engineered                 +5 each:"; 5 * (BioEng + BioEng2 + BioEng3): SC = SC + (5 * (BioEng + BioEng2 + BioEng3))
PRINT "Alien Races found                +3 each:"; (Find + ToldTo + FindThing) * 3: SC = SC + 3 * (Find + ToldTo + FindThing)
PRINT "Virus's Engineered               +5 each:"; Viral * 5: SC = SC + Viral * 5
PRINT "New Technologies found           +5 each:"; (TimeTravel + ShieldFound + Amazing + ScanFound) * 5: SC = SC + (TimeTravel + ScanFound + Amazing + ShieldFound) * 5
PRINT "Lives left               +1 for each 100:"; INT(Lives / 100): SC = SC + INT(Lives / 100)
PRINT
PRINT "Total Score                              "; SC
GOTO 190
END IF
IF A$ = "alphab3" AND D$ = "data" AND GotInto = 1 THEN GOTO CONT3
IF A$ = "research" THEN
IF Res$ <> "" THEN PRINT "Current research topic:  "; Res$: PRINT
PRINT "Enter topic you want to research:": PRINT
PRINT "1.  Physics"
PRINT "2.  Biology"
PRINT "3.  Computer Science"
PRINT "4.  Psychology"
PRINT "5.  Robotics"
PRINT "6.  Cultural Studies"
PRINT "7.  Abort"
Topic: PRINT : INPUT ">", A: PRINT
IF A = 1 THEN
SAV$ = "data.omg"
Save
CHAIN "Physics"
END IF
IF A = 2 THEN
SAV$ = "data.omg"
Save
CHAIN "BioTech"
END IF
IF A = 3 THEN
SAV$ = "data.omg"
Save
CHAIN "CompSci"
END IF
IF A = 4 THEN
SAV$ = "data.omg"
Save
CHAIN "Psychology"
END IF
IF A = 5 THEN Robotics: GOTO 190
IF A = 6 THEN CulturalStudies: GOTO 190
IF A = 7 THEN GOTO 190
IF A > 7 OR A < 1 THEN GOTO Topic
END IF
350 IF A$ = "dir" THEN GOSUB 400: GOTO 190
360 IF A$ = "reboot" THEN
INPUT "Do you really want to restart?", Quit$
IF MID$(A$, 1, 1) = "y" THEN CHAIN "omgstart"
GOTO 190
END IF
IF MID$(A$, 1, 3) = "del" THEN PRINT "File access error.": GOTO 190
370 IF A$ = "off" THEN GOTO 2220
380 IF A$ = "cd obd" THEN W$ = "": PRINT : GOTO 190
IF MID$(A$, 1, 1) = "q" THEN
INPUT "Do you really want to quit?", A$
IF MID$(A$, 1, 1) = "y" THEN
SC = 0
PRINT "Ships crashed                    -1 each:"; Boom: SC = SC + (Boom * -1)
PRINT "Shut Power off                   -5 each:"; Idiot: SC = SC + (Idiot * -5)
PRINT "Brown-outs                       -3 each:"; LowTroub: SC = SC + (LowTroub * -3)
PRINT "Explosions                       -3 each:"; HighTroub: SC = SC + (HighTroub * -3)
PRINT "Cures engineered                 +5 each:"; 5 * (BioEng + BioEng2 + BioEng3): SC = SC + (5 * (BioEng + BioEng2 + BioEng3))
PRINT "Alien Races found                +3 each:"; (Find + ToldTo + FindThing) * 3: SC = SC + 3 * (Find + ToldTo + FindThing)
PRINT "Virus's Engineered               +5 each:"; Viral * 5: SC = SC + Viral * 5
PRINT "New Technologies found           +5 each:"; (TimeTravel + ShieldFound + Amazing + ScanFound) * 5: SC = SC + (TimeTravel + ScanFound + Amazing + ShieldFound) * 5
PRINT "Lives left               +1 for each 100:"; INT(Lives / 100): SC = SC + INT(Lives / 100)
PRINT
PRINT "Total Score                              "; SC
INPUT "", A$: COLOR 0: END
END IF
GOTO 190
END IF
390 PRINT "Bad command or file name": GOTO 190
1250 IF ShipCome = 1 THEN PRINT "Autodock engaged.  Ship has landed safely.": Lives = Lives + 3
IF ShipCome = 0 THEN PRINT "There are no ships in the immediate vicinity."
GOTO 190
400
SAV$ = "data.omg"
Save
CHAIN "dir"
1900 PRINT : PRINT "Epsilon 4 Shield System": PRINT
PRINT "Current Maximum Shield Power: "; MaxSp
PRINT "Current Alotted Shield Power: "; Sp: PRINT
1910 INPUT "Shield Power-", Sp: IF Sp > MaxSp THEN PRINT : GOTO 1910
1920 PRINT : GOTO 190
1930 PRINT : PRINT "Warning! Warning!"
1940 PRINT "This program has been damaged!"
1950 PRINT "Initializing self-erasing procedures......": FOR T = 1 TO 1000: NEXT T
1960 PRINT "Program Erased.": Erased = 1: PRINT
1970 GOTO 190
1980 PRINT "Restricted Access": PRINT
PRINT "This is the top-secret Restricted Access program, copyright 2135."
PRINT ""
2000 GOTO 190
2090 GOTO 190
2220 PRINT "You can't turn the computer off!": GOTO 190
CONT:
PRINT "Translating information to English....."
FOR T = 1 TO 5000: NEXT T
IF ToldTo = 0 THEN
PRINT "To whomever finds this:  Our race is dying."
PRINT "We live on the first planet from the Star Omicron.  Our sun is going"
PRINT "through a series of solar flares.  Soon we will all die.  Our entire"
PRINT "technology and history has been downloaded onto this probe we have launched"
PRINT "in an effort to inform the universe about us."
PRINT "Find being added to permenant record.....": FOR T = 1 TO 1000: NEXT T
ToldTo = 1
END IF
SAV$ = "data.omg"
Save
CHAIN "Omicron1"
GOTO 190
CONT2: PRINT "Translating Information to English.....": FOR T = 1 TO 1000: NEXT T
IF Amazing = 0 THEN
PRINT "The program appears to be a program having to do with extending life"
PRINT "expectancy and increasing the birth rate of a population."
PRINT "Incorporating enzymes into the atmosphere......": FOR T = 1 TO 1000: NEXT T
PRINT "Adding find to permanent record......": FOR T = 1 TO 1000: NEXT T
PersonDie = PersonDie - 3
Amazing = 1
END IF
SAV$ = "data.omg"
Save
CHAIN "Epsilon4"
GOTO 190
CONT3: PRINT "Translating Information to English.....": FOR T = 1 TO 1000: NEXT T
SAV$ = "data.omg"
Save
CHAIN "alpha3b"
GOTO 190
CONT4: PRINT "Translating Information to English.....": FOR T = 1 TO 1000: NEXT T
SAV$ = "data.omg"
Save
CHAIN "Theta1"
GOTO 190
CONT5: PRINT "Translating Information to English.....": FOR T = 1 TO 1000: NEXT T
SAV$ = "data.omg"
Save
CHAIN "Kappa2"
GOTO 190
Failed:  RESUME NEXT

SUB Chemistry

END SUB

SUB CombinedSci
END SUB

SUB Control
PRINT "Control Facility 2.5:": PRINT
IF IntMLifes > 0 THEN PRINT "1.  Introduce Mutant Population into Normal Population"
IF CryogenicStasis = 2 THEN PRINT "2.  Send Population into Cryogenic Chambers"
PRINT "3.  Exit"
PRINT : INPUT ">", A: PRINT
IF A = 1 AND IntMLifes > 0 THEN
PRINT "Current number of Mutant lives hidden from population: "; IntMLifes: PRINT
HowMany: INPUT "Enter number of mutants to introduce into population:", Intr
IF Intr > IntMLifes THEN GOTO HowMany
MLives = MLives + Intr: IntMLifes = IntMLifes - Intr
END IF
END SUB

SUB CulturalStudies
END SUB

SUB Load
OPEN SAV$ FOR INPUT AS #1
INPUT #1, TimeTravel
INPUT #1, Lives
INPUT #1, BioEng
INPUT #1, BioEng2
INPUT #1, BioEng3
INPUT #1, Boom
INPUT #1, LowTroub
INPUT #1, HighTroub
INPUT #1, Idiot
INPUT #1, Find
INPUT #1, Erased
INPUT #1, Dna$
INPUT #1, Strand$
INPUT #1, Dna1
INPUT #1, DNAo$
INPUT #1, Strando$
INPUT #1, Dnao1
INPUT #1, Brown
INPUT #1, ShipCome
INPUT #1, Po$
INPUT #1, D$
INPUT #1, Tc
INPUT #1, Viral
INPUT #1, Pw$
INPUT #1, Tg
INPUT #1, Td
INPUT #1, Ta
INPUT #1, Al$
INPUT #1, Stop1
INPUT #1, Stopo1
INPUT #1, Told
INPUT #1, TimeTill
INPUT #1, TimeTill2
INPUT #1, Collided
INPUT #1, Collided2
INPUT #1, Sp
INPUT #1, MaxSp
INPUT #1, ContactMade
INPUT #1, ToldTo
INPUT #1, ScanFound
INPUT #1, Scanned
INPUT #1, FindThing
INPUT #1, Amazing
INPUT #1, ShieldFound
INPUT #1, TillPlanet
INPUT #1, GotInto
INPUT #1, ThetaLearned
INPUT #1, ThetaFound
INPUT #1, Kappa12
INPUT #1, KappaFound
INPUT #1, EPFound
INPUT #1, Study
INPUT #1, GenEngineering
INPUT #1, DNAReplication
INPUT #1, ViralStudies
INPUT #1, Physiology
INPUT #1, BioChemistry
INPUT #1, Metabolism
INPUT #1, CirculatoryStudies
INPUT #1, Anatomy
INPUT #1, HormonalControl
INPUT #1, AdvancedMedicalStudies
INPUT #1, RevivalStudies
INPUT #1, CryogenicStasis
INPUT #1, PersonDie
INPUT #1, Bomb
INPUT #1, Studying
INPUT #1, Res$
INPUT #1, CryoChambers
INPUT #1, AIStudies
INPUT #1, AIPersonality
INPUT #1, AIStudies2
INPUT #1, UpgradedComputerOperationsSystems
INPUT #1, CompUpdatedScanSys
INPUT #1, Embryology
INPUT #1, Nit%
INPUT #1, Oxy%
INPUT #1, Hyd%
INPUT #1, Hel%
INPUT #1, Arg%
INPUT #1, Neon%
INPUT #1, Chlorine%
INPUT #1, Krypton%
INPUT #1, Methane%
INPUT #1, Xenon%
INPUT #1, Temp
INPUT #1, Humid
INPUT #1, Morale
INPUT #1, AI
INPUT #1, AIPers
INPUT #1, SchizAI
INPUT #1, RTemp
INPUT #1, SubliminalMessages
INPUT #1, CompDiagnostics
INPUT #1, Propaganda
INPUT #1, SocialStudies
INPUT #1, HumanNature
INPUT #1, HumanMotives
INPUT #1, HumanPsychology
INPUT #1, MobPsychology
INPUT #1, PublicSpeaking
INPUT #1, HistoricalStudies
INPUT #1, CurEvStudies
INPUT #1, AdvJournalism
INPUT #1, AdvTerroristStudies
INPUT #1, Anger
INPUT #1, Rebels
INPUT #1, Happies
INPUT #1, HappyPercent
INPUT #1, RebelPercent
INPUT #1, AdvTelevision
INPUT #1, AdvPowerSources
INPUT #1, NuclearFission
INPUT #1, ElectricEngineering
INPUT #1, QuantumMechanics
INPUT #1, RadiationStudies
INPUT #1, Superconductivity
INPUT #1, ZeroGravPhysics
INPUT #1, SubtelepathicWaves
INPUT #1, Power
INPUT #1, SocialSciences
INPUT #1, PsychSci
INPUT #1, Show1$
INPUT #1, Show2$
INPUT #1, Show3$
INPUT #1, Show4$
INPUT #1, Show5$
INPUT #1, Show6$
INPUT #1, Show1
INPUT #1, Show2
INPUT #1, Show3
INPUT #1, Show4
INPUT #1, Show5
INPUT #1, Show6
INPUT #1, SimmerDown
INPUT #1, NuclearFusion
INPUT #1, Genetics
INPUT #1, RIAR
INPUT #1, SFAR
INPUT #1, TTAR
INPUT #1, CIAR
INPUT #1, DIAR
INPUT #1, MutantResearch
INPUT #1, MutantLeft
INPUT #1, Reproduce
INPUT #1, MutantIntellect
INPUT #1, TT
INPUT #1, MutRad
INPUT #1, MutPers
INPUT #1, MutantChem
INPUT #1, CIImmune
INPUT #1, DSImmune
INPUT #1, RDImmune
INPUT #1, TimeTakes
INPUT #1, BioEngineering
INPUT #1, MLivesTest
INPUT #1, MLives
INPUT #1, IntMLifes
INPUT #1, MBreathe
INPUT #1, MReproduce
INPUT #1, MChem
INPUT #1, M
INPUT #1, MTT
INPUT #1, MMutRad
INPUT #1, MMutantChem
INPUT #1, MCIImmune
INPUT #1, MDSImmune
INPUT #1, MRDImmune
INPUT #1, MutantBreathe
CLOSE #1
END SUB

SUB Research
IF Studying = 1 THEN
        IF (AIStudies2 <> 2 OR PsychSci = 1) AND AdvTelevision <> 2 THEN Study = Study + .5
        IF (AIStudies2 <> 2 OR PsychSci = 1) AND AdvTelevision = 2 THEN Study = Study + .25
        IF AIStudies2 = 2 AND PsychSci = 0 THEN Study = Study + 1
END IF
IF Study >= 5 THEN
        IF DNAReplication = 1 THEN DNAReplication = 2: GOSUB Finished: PRINT "Genetics.exe file created in": PRINT "the Genetics directory.": GOTO EndResearch
        IF Genetics = 1 THEN Genetics = 2: GOSUB Finished: PRINT "Genetics directory": PRINT "created.": GOTO EndResearch
        IF ViralStudies = 1 THEN ViralStudies = 2: GOSUB Finished: PRINT "Virus.exe file created in the": PRINT "Genetics directory.": GOTO EndResearch
        IF HumanNature = 1 THEN HumanNature = 2: GOSUB Finished: PRINT "Happy percentage of population": PRINT "has increased.": Happy = Happy + 1: GOTO EndResearch
        IF Physiology = 1 THEN Physiology = 2: GOSUB Finished: PRINT "Life span of average human on": PRINT "the station has been increased.": PersonDie = PersonDie - 1: GOTO EndResearch
        IF Anatomy = 1 THEN Anatomy = 2: GOSUB Finished: PRINT "Life span of average human on the": PRINT "station has been increased.": PersonDie = PersonDie - 1: GOTO EndResearch
        IF HormonalControl = 1 THEN HormonalControl = 2: GOSUB Finished: PRINT "Life span of average human": PRINT "on the station has been increased.": PersonDie = PersonDie - 1: GOTO EndResearch
        IF Metabolism = 1 THEN Metabolism = 2: GOSUB Finished: PRINT "Life span of average human on": PRINT "the station has been increased.": PersonDie = PersonDie - 1: GOTO EndResearch
        IF CirculatoryStudies = 1 THEN CirculatoryStudies = 2: GOSUB Finished: PRINT "Life span of average": PRINT "human on the station has been increased.":  PersonDie = PersonDie - 1: GOTO EndResearch
        IF AdvancedMedicalStudies = 1 THEN AdvancedMedicalStudies = 2: GOSUB Finished: PRINT "Life span of": PRINT "average human on the station has been increased.":  PersonDie = PersonDie - 1: GOTO EndResearch
        IF MobPsychology = 1 THEN MobPsychology = 2: GOSUB Finished: PRINT "Rebel percentage of population": PRINT "has decreased.": Anger = Anger - 1: GOTO EndResearch
        IF PublicSpeaking = 1 THEN PublicSpeaking = 2: GOSUB Finished: PRINT "Rebel percentage of population": PRINT "has decreased.": Anger = Anger - 1: GOTO EndResearch
        IF Propaganda = 1 THEN Propaganda = 2: GOSUB Finished: PRINT "Happy percentage of population": PRINT "has increased.": Happy = Happy + 1: GOTO EndResearch
        IF HumanMotives = 1 THEN HumanMotives = 2: GOSUB Finished: PRINT "Happy percentage of population": PRINT "has increased.": Happy = Happy + 1: GOTO EndResearch
        IF UpgradedComputerOperationsSystems = 1 THEN UpgradedComputerOperationsSystems = 2: GOSUB Finished: PRINT "": GOTO EndResearch
        IF CompUpdatedScanSys = 1 THEN CompUpdatedScanSys = 2: GOSUB Finished: PRINT "":  PersonDie = PersonDie - 1: GOTO EndResearch
        IF HistoricalStudies = 1 THEN HistoricalStudies = 2: GOSUB Finished: PRINT "Morale has increased.": Morale = Morale + 2: GOTO EndResearch
        IF CurEvStudies = 1 THEN CurEvStudies = 2: GOSUB Finished: PRINT "Population has begun": PRINT "a newspaper, which can be found under the file OBNN.exe (Omega Blue News": PRINT "Network).": PRINT "Morale has increased.": Morale = Morale + 5: GOTO EndResearch
        IF RadiationStudies = 1 THEN RadiationStudies = 2: GOSUB Finished: PRINT "": GOTO EndResearch
        IF ZeroGravPhysics = 1 THEN ZeroGravPhysics = 2: GOSUB Finished: PRINT "":   Studying = 1: GOTO EndResearch
END IF
IF Study >= 10 THEN
        IF GenEngineering = 1 THEN GenEngineering = 2: GOSUB Finished: PRINT "GenLab.exe file": PRINT "created.": GOTO EndResearch
        IF AIStudies = 1 THEN AIStudies = 2: GOSUB Finished: PRINT "AI directory": PRINT "created.  AI.exe file created.": AIPers = 1: GOTO EndResearch
        IF AIPersonality = 1 THEN AIPersonality = 2: GOSUB Finished: PRINT "AIPers.exe file created.": GOTO EndResearch
        IF Embryology = 1 THEN Embryology = 2: GOSUB Finished: PRINT "Birth rate increased.": GOTO EndResearch
        IF AIStudies2 = 1 THEN AIStudies2 = 2: GOSUB Finished: PRINT "AIadv.exe": PRINT "file created.  AI.exe file deleted.  Scientists have become obselete, except": PRINT "for matters of Psychology, a topic not fully understood by the AI scientists.": GOTO EndResearch
        IF BioChemistry = 1 THEN BioChemistry = 2: GOSUB Finished: PRINT "": GOTO EndResearch
        IF CryogenicStasis = 1 THEN CryogenicStasis = 2: GOSUB Finished: PRINT "": GOTO EndResearch
        IF CompDiagnostics = 1 THEN CompDiagnostics = 2: GOSUB Finished: PRINT "Diagnost.exe file": PRINT "created.": GOTO EndResearch
        IF HumanPsychology = 1 THEN HumanPsychology = 2: PRINT "": GOTO EndResearch
        IF SocialStudies = 1 THEN SocialStudies = 2: GOSUB Finished: PRINT "": GOTO EndResearch
        IF AdvJournalism = 1 THEN AdvJournalism = 2: GOSUB Finished: PRINT "Morale has increased.": Morale = Morale + 5: GOTO EndResearch
        IF AdvTerroristStudies = 1 THEN AdvTerroristStudies = 2: GOSUB Finished: PRINT "": GOTO EndResearch
        IF SocialSciences = 1 THEN SocialSciences = 2: GOSUB Finished: PRINT "": GOTO EndResearch
        IF AdvTelevision = 1 THEN AdvTelevision = 2: GOSUB Finished: PRINT "Morale has increased.": PRINT "Televisi.exe file created.": Morale = Morale + 5: GOTO EndResearch
        IF SubtelepathicWaves = 1 THEN SubtelepathicWaves = 2: GOSUB Finished: PRINT "": GOTO EndResearch
        IF NuclearFission = 1 THEN NuclearFission = 2: GOSUB Finished: PRINT "Power changed to Nuclear": PRINT "Fission.": GOTO EndResearch
        IF QuantumTheory = 1 THEN QuantumTheory = 2: GOSUB Finished: PRINT "": GOTO EndResearch
        IF ElectricEngineering = 1 THEN ElectricEngineering = 2: GOSUB Finished: PRINT "": GOTO EndResearch
        IF AdvPowerSources = 1 THEN AdvPowerSources = 2: GOSUB Finished: PRINT "": GOTO EndResearch
END IF
IF Study >= 15 THEN
        IF RIAR = 1 THEN RIAR = 2: GOSUB Finished: PRINT "Mutant population can now be created": PRINT "using the genlab.exe file.": GOTO EndResearch
        IF SFAR = 1 THEN SFAR = 2: GOSUB Finished: PRINT "Mutant population can now be created": PRINT "using the genlab.exe file.": GOTO EndResearch
        IF TTAR = 1 THEN TTAR = 2: GOSUB Finished: PRINT "Mutant population can now be created": PRINT "using the genlab.exe file.": GOTO EndResearch
        IF CIAR = 1 THEN CIAR = 2: GOSUB Finished: PRINT "Mutant population can now be created": PRINT "using the genlab.exe file.": GOTO EndResearch
        IF DIAR = 1 THEN DIAR = 2: GOSUB Finished: PRINT "Mutant population can now be created": PRINT "using the genlab.exe file.": GOTO EndResearch
END IF
IF Study >= 25 THEN
        IF RevivalStudies = 1 THEN RevivalStudies = 2: GOSUB Finished: PRINT "Life span of average human on": PRINT "station has been lengthened.": PersonDie = 0: GOTO EndResearch
        IF SubliminalMessages = 1 THEN SubliminalMessages = 2: GOSUB Finished: PRINT "Sublimin.exe file": PRINT "created.": GOTO EndResearch
        IF Superconductivity = 1 THEN Superconductivity = 2: GOSUB Finished: PRINT "Power supply is now": PRINT "unlimited.": GOTO EndResearch
        IF NuclearFusion = 1 THEN NuclearFusion = 2: GOSUB Finished: PRINT "Power changed to Nuclear": PRINT "Fusion.": GOTO EndResearch
END IF
GOTO EndResearch
Finished:
IF AIStudies2 = 2 AND PsychSci = 0 THEN Rese$ = "Computers"
IF AIStudies2 <> 2 OR PsychSci = 1 THEN Rese$ = "Scientists"
PRINT Rese$; " finished researching "; Res$; ".  ";
Res$ = ""
Studying = 0
Study = 0
RETURN
EndResearch:
END SUB

SUB Robotics
END SUB

SUB Save
OPEN SAV$ FOR OUTPUT AS #1
PRINT #1, TimeTravel
PRINT #1, Lives
PRINT #1, BioEng
PRINT #1, BioEng2
PRINT #1, BioEng3
PRINT #1, Boom
PRINT #1, LowTroub
PRINT #1, HighTroub
PRINT #1, Idiot
PRINT #1, Find
PRINT #1, Erased
PRINT #1, Dna$
PRINT #1, Strand$
PRINT #1, Dna1
PRINT #1, DNAo$
PRINT #1, Strando$
PRINT #1, Dnao1
PRINT #1, Brown
PRINT #1, ShipCome
PRINT #1, Po$
PRINT #1, D$
PRINT #1, Tc
PRINT #1, Viral
PRINT #1, Pw$
PRINT #1, Tg
PRINT #1, Td
PRINT #1, Ta
PRINT #1, Al$
PRINT #1, Stop1
PRINT #1, Stopo1
PRINT #1, Told
PRINT #1, TimeTill
PRINT #1, TimeTill2
PRINT #1, Collided
PRINT #1, Collided2
PRINT #1, Sp
PRINT #1, MaxSp
PRINT #1, ContactMade
PRINT #1, ToldTo
PRINT #1, ScanFound
PRINT #1, Scanned
PRINT #1, FindThing
PRINT #1, Amazing
PRINT #1, ShieldFound
PRINT #1, TillPlanet
PRINT #1, GotInto
PRINT #1, ThetaLearned
PRINT #1, ThetaFound
PRINT #1, Kappa12
PRINT #1, KappaFound
PRINT #1, EPFound
PRINT #1, Study
PRINT #1, GenEngineering
PRINT #1, DNAReplication
PRINT #1, ViralStudies
PRINT #1, Physiology
PRINT #1, BioChemistry
PRINT #1, Metabolism
PRINT #1, CirculatoryStudies
PRINT #1, Anatomy
PRINT #1, HormonalControl
PRINT #1, AdvancedMedicalStudies
PRINT #1, RevivalStudies
PRINT #1, CryogenicStasis
PRINT #1, PersonDie
PRINT #1, Bomb
PRINT #1, Studying
PRINT #1, Res$
PRINT #1, CryoChambers
PRINT #1, AIStudies
PRINT #1, AIPersonality
PRINT #1, AIStudies2
PRINT #1, UpgradedComputerOperationsSystems
PRINT #1, CompUpdatedScanSys
PRINT #1, Embryology
PRINT #1, Nit%
PRINT #1, Oxy%
PRINT #1, Hyd%
PRINT #1, Hel%
PRINT #1, Arg%
PRINT #1, Neon%
PRINT #1, Chlorine%
PRINT #1, Krypton%
PRINT #1, Methane%
PRINT #1, Xenon%
PRINT #1, Temp
PRINT #1, Humid
PRINT #1, Morale
PRINT #1, AI
PRINT #1, AIPers
PRINT #1, SchizAI
PRINT #1, RTemp
PRINT #1, SubliminalMessages
PRINT #1, CompDiagnostics
PRINT #1, Propaganda
PRINT #1, SocialStudies
PRINT #1, HumanNature
PRINT #1, HumanMotives
PRINT #1, HumanPsychology
PRINT #1, MobPsychology
PRINT #1, PublicSpeaking
PRINT #1, HistoricalStudies
PRINT #1, CurEvStudies
PRINT #1, AdvJournalism
PRINT #1, AdvTerroristStudies
PRINT #1, Anger
PRINT #1, Rebels
PRINT #1, Happies
PRINT #1, HappyPercent
PRINT #1, RebelPercent
PRINT #1, AdvTelevision
PRINT #1, AdvPowerSources
PRINT #1, NuclearFission
PRINT #1, ElectricEngineering
PRINT #1, QuantumMechanics
PRINT #1, RadiationStudies
PRINT #1, Superconductivity
PRINT #1, ZeroGravPhysics
PRINT #1, SubtelepathicWaves
PRINT #1, Power
PRINT #1, SocialSciences
PRINT #1, PsychSci
PRINT #1, Show1$
PRINT #1, Show2$
PRINT #1, Show3$
PRINT #1, Show4$
PRINT #1, Show5$
PRINT #1, Show6$
PRINT #1, Show1
PRINT #1, Show2
PRINT #1, Show3
PRINT #1, Show4
PRINT #1, Show5
PRINT #1, Show6
PRINT #1, SimmerDown
PRINT #1, NuclearFusion
PRINT #1, Genetics
PRINT #1, RIAR
PRINT #1, SFAR
PRINT #1, TTAR
PRINT #1, CIAR
PRINT #1, DIAR
PRINT #1, MutantResearch
PRINT #1, MutantLeft
PRINT #1, Reproduce
PRINT #1, MutantIntellect
PRINT #1, TT
PRINT #1, MutRad
PRINT #1, MutPers
PRINT #1, MutantChem
PRINT #1, CIImmune
PRINT #1, DSImmune
PRINT #1, RDImmune
PRINT #1, TimeTakes
PRINT #1, BioEngineering
PRINT #1, MLivesTest
PRINT #1, MLives
PRINT #1, IntMLifes
PRINT #1, MBreathe
PRINT #1, MReproduce
PRINT #1, MChem
PRINT #1, M
PRINT #1, MTT
PRINT #1, MMutRad
PRINT #1, MMutantChem
PRINT #1, MCIImmune
PRINT #1, MDSImmune
PRINT #1, MRDImmune
PRINT #1, MutantBreathe
PRINT #1, QuantumTheory
CLOSE #1
END SUB

