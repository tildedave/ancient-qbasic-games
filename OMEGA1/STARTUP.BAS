OPEN "data.omg" FOR INPUT AS #1
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
590 IF Pw$ = "" THEN GOTO 570 ELSE GOTO 600
600 INPUT "PASS>", A$: PRINT
610 IF A$ = Pw$ THEN PRINT "Correct Password.  Engage Startup.exe.....": FOR T = 1 TO 1000: NEXT T: GOTO 570
620 CLS : GOTO EndStart
570 PRINT : PRINT "Power"
580 PRINT "Security": PRINT "Moniter": PRINT "Control": PRINT
630 PRINT : INPUT "STP>", W$: PRINT
640 IF W$ = "password" THEN GOTO 710
650 IF W$ = "power" THEN GOTO 720
660 IF W$ = "security" THEN GOTO 790
670 IF W$ = "moniter" THEN GOTO 870
680 IF W$ = "control" THEN GOTO 1140
690 IF W$ = "exit" OR W$ = "x" THEN GOTO 620
IF W$ = "list" THEN GOTO 570
700 PRINT : GOTO 630
710 IF Pw$ = "" THEN INPUT Pw$: PRINT : GOTO 630
IF Pw$ <> "" THEN INPUT "Enter old password.", ALEX$
IF ALEX$ <> Pw$ THEN PRINT "Old password incorrect.": PRINT : GOTO 630
IF ALEX$ = Pw$ THEN INPUT "Enter new password.", Pw$
PRINT : GOTO 630
720 PRINT "High": PRINT "Middle": PRINT "Low": PRINT "Off": PRINT
730 INPUT "STP>", WA$: PRINT
740 IF WA$ = "high" THEN Po$ = "high": PRINT "Power set to "; Po$; ".": Time = 0: REPORT1 = 0
750 IF WA$ = "middle" THEN Po$ = "middle": PRINT "Power set to medium.": HTIME = 0: Time = 0
760 IF WA$ = "low" THEN Po$ = "low": PRINT "Power set to "; Po$; ".": HTIME = 0: REPORT2 = 0
770 IF WA$ = "off" THEN PRINT "Warning! Warning!  Life Support Failing!  Backup kicking in....  Power": PRINT "restored to medium.": Po$ = "middle": Idiot = Idiot + 1
780 GOTO 630
790 PRINT : PRINT "Security Perimeters: "; Al$
800 PRINT "Red": PRINT "Blue": PRINT "Yellow": PRINT "Green": PRINT : INPUT "STP>", WT$
810 IF WT$ = "red" THEN PRINT "All stations: Red Alert!": Al$ = WT$
820 IF WT$ = "blue" THEN PRINT "All security: Maximuim perimeters.": Al$ = WT$
830 IF WT$ = "yellow" THEN PRINT "All personell: Possible Danger.": Al$ = WT$
840 IF WT$ = "green" THEN PRINT "All stations: Everthing's Fine.": Al$ = WT$
860 PRINT : GOTO 630
870 PRINT : PRINT "Enter Sector": PRINT : INPUT "STP>", R$
871 IF R$ = "list" THEN PRINT : PRINT "Alpha": PRINT "Beta": PRINT "Gamma": PRINT "Delta": PRINT "Epsilon": GOTO 870
880 IF R$ = "alpha" THEN PRINT : GOTO GRID
890 IF R$ = "beta" THEN PRINT : GOTO 1050
900 IF R$ = "gamma" THEN PRINT : GOTO 1060
910 IF R$ = "delta" THEN PRINT : GOTO 1090
920 IF R$ = "epsilon" THEN PRINT : PRINT "The epsilon sector is reserved for Computer Operations.": GOTO 860
930 PRINT : PRINT "Invalid Sector": PRINT : INPUT "STP>", R$: GOTO 871
GRID: PRINT "Security Grid"
PRINT
IF Bomb > 0 THEN
PRINT "*   *   *   *   *   ALERT  *   *   *   *   *": PRINT
PRINT "Terrorist bomb found in the Alpha sector.  There were"; Bomb; "more turns until it"
PRINT "would have exploded.  Bomb defused.": GOTO 860
END IF
950 IF Ta = 0 THEN GOTO 990
960 IF Ta = 1 THEN GOTO 1010
970 IF Ta = 2 THEN GOTO 1030
980 IF Ta > 2 THEN GOTO 1050
990 PRINT "*   *   *   *   *   ALERT  *   *   *   *   *": PRINT
1000 PRINT "There is a breakin in progress in Sector Alpha.": PRINT : GOTO 1040
1010 PRINT "*   *   *   *   *   ALERT  *   *   *   *   *": PRINT
1020 PRINT "There is a another breakin in Sector Alpha.": PRINT : GOTO 1040
1030 PRINT "Nothing is happening.": GOTO 860
1040 PRINT "Breakin Stopped.": Ta = Ta + 1: GOTO 860
1050 PRINT : PRINT "Nothing is happening.": GOTO 860
1060 IF Tg = 0 THEN PRINT "*   *   *   *   *   ALERT  *   *   *   *   *": PRINT
1070 PRINT "Gas Leak in progress in sector Gamma."
1080 PRINT "Leak Fixed.": Tg = Tg + 1: GOTO 860
1090 PRINT "Food Storage": PRINT
1100 IF Td = 1 THEN GOTO 1050
1110 PRINT "An airlock is open. Food is spilling out!"
1120 PRINT "*   *   *   *   *   ALERT  *   *   *   *   *": PRINT
1130 PRINT "Fixed.": Td = Td + 1: GOTO 860
1140 PRINT "Control": PRINT : IF Pw$ = "" THEN GOTO 1170
1150 INPUT "PASS>", P$
1160 IF P$ = Pw$ THEN GOTO 1170 ELSE GOTO EndStart
1170 PRINT : PRINT "Security Teams Combing Area....": PRINT
1180 IF Ta = 0 THEN PRINT "A breakin was stopped in sector Alpha.": Ta = 1
1190 IF Ta = 1 THEN PRINT "A breakin was stopped in sector Alpha.": Ta = 2
1200 IF Tg = 0 THEN PRINT "Gas Leak stopped in sector Gamma.": Tg = 1
1210 IF Td = 0 THEN PRINT "Food Leak fixed in sector Delta.": Td = 1
1220 IF Ta > 1 AND Tg > 0 AND Td > 0 THEN GOTO 1240
1230 PRINT "All problems corrected.": GOTO 860
1240 PRINT "Nothing Found.": GOTO 860
EndStart:
OPEN "data.omg" FOR OUTPUT AS #1
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
CLOSE #1
RUN "omega.bas"

