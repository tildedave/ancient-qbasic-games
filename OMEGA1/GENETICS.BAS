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
CLOSE #1
1420 PRINT "Genetics Version 1.0"
1421 PRINT "Enter choice:": PRINT
PRINT "1.  View Existing DNA strand."
PRINT "2.  Add Amino Acid to DNA strand."
PRINT "3.  Delete current DNA strand."
PRINT "4.  Exit"
PRINT : INPUT ">", DN: PRINT
ON DN GOTO VIEWDNA, 1430, HUH
IF DN = 4 THEN PRINT : GOTO EndSub
IF DN = 0 THEN PRINT : GOTO 1421
1430 PRINT "Enter three genetic codes, using only the letters U, C, A, or G."
1440 PRINT : INPUT "GEN>", A$: PRINT
IF A$ = "uuu" OR A$ = "uuc" THEN PRINT "Amino Acid created:  Phenylalinine": Dna$ = "Phenylalinine.  ": GOTO DA
IF A$ = "uua" OR A$ = "uug" OR MID$(A$, 1, 2) = "cu" THEN PRINT "Amino Acid created:  Leucine": Dna$ = "Leucine.  ": GOTO DA
IF MID$(A$, 1, 2) = "uc" OR A$ = "agu" OR A$ = "agc" THEN PRINT "Amino Acid created:  Serine": Dna$ = "Serine.  ": GOTO DA
IF A$ = "uau" OR A$ = "uac" THEN PRINT "Amino Acid created:  Tyrosine": Dna$ = "Tyrosine.  ": GOTO DA
IF A$ = "uaa" OR A$ = "uag" OR A$ = "uga" THEN PRINT "No Amino Acid created;  Stop sequence entered.": Dna$ = "STOP.  ": GOTO DA
IF A$ = "ugu" OR A$ = "ugc" THEN PRINT "Amino Acid created:  Cysteine": Dna$ = "Cysteine.  ": GOTO DA
IF A$ = "ugg" THEN PRINT "Amino Acid created:  Tryptophan": Dna$ = "Tryptophan.  ": GOTO DA
IF MID$(A$, 1, 2) = "cc" THEN PRINT "Amino Acid created:  Proline": Dna$ = "Proline.  ": GOTO DA
IF A$ = "cau" OR A$ = "cac" THEN PRINT "Amino Acid created:  Histidine": Dna$ = "Histidine.  ": GOTO DA
IF A$ = "caa" OR A$ = "cag" THEN PRINT "Amino Acid created:  Glutamine": Dna$ = "Glutamine.  ": GOTO DA
IF MID$(A$, 1, 2) = "cg" OR A$ = "aga" OR A$ = "agg" THEN PRINT "Amino Acid created:  Arginine": Dna$ = "Arginine.  ": GOTO DA
IF A$ = "auu" OR A$ = "auc" OR A$ = "aua" THEN PRINT "Amino Acid created:  Isoleucine": Dna$ = "Isoleucine.  ": GOTO DA
IF A$ = "aug" THEN PRINT "Amino Acid created:  Methionine.  Note:  Start of DNA strand in place.": Dna$ = "Methionine.  ": GOTO DA
IF MID$(A$, 1, 2) = "ac" THEN PRINT "Amino Acid created:  Threonine": Dna$ = "Threonine.  ": GOTO DA
IF A$ = "aau" OR A$ = "aac" THEN PRINT "Amino Acid created:  Asparagine": Dna$ = "Asparagine.  ": GOTO DA
IF A$ = "aaa" OR A$ = "aag" THEN PRINT "Amino Acid created:  Lysine": Dna$ = "Lysine.  ": GOTO DA
IF MID$(A$, 1, 2) = "gu" THEN PRINT "Amino Acid created:  Valine": Dna$ = "Valine.  ": GOTO DA
IF MID$(A$, 1, 2) = "gc" THEN PRINT "Amino Acid created:  Alanine": Dna$ = "Alanine.  ": GOTO DA
IF A$ = "gau" OR A$ = "gac" THEN PRINT "Amino Acid created:  Aspartic Acid": Dna$ = "Aspartic Acid.  ": GOTO DA
IF A$ = "gaa" OR A$ = "gag" THEN PRINT "Amino Acid created:  Glutamic Acid": Dna$ = "Glutamic Acid.  ": GOTO DA
IF MID$(A$, 1, 2) = "gg" THEN PRINT "Amino Acid created:  Glycine": Dna$ = "Glycine.  ": GOTO DA
IF A$ = "x" OR A$ = "exit" THEN GOTO 1590
PRINT "Not an Amino Acid.": GOTO 1440
DA: PRINT : INPUT "Amino Acid created.  Add to current DNA strand?", A$
IF MID$(A$, 1, 1) = "y" AND Dna1 > 4 THEN PRINT "No more DNA may be added to current strand."
IF MID$(A$, 1, 1) = "y" AND Stop1 = 1 THEN PRINT "No more DNA may be entered to strand; stop code has been entered."
IF MID$(A$, 1, 1) = "y" AND Stop1 = 0 AND Dna1 <= 4 THEN Strand$ = Strand$ + Dna$: Dna1 = Dna1 + 1: IF Dna$ = "STOP.  " THEN Stop1 = 1
IF Strand$ = "Methionine.  Aspartic Acid.  Serine.  STOP.  " THEN CORRECT = 1
IF Strand$ = "Methionine.  Arginine.  Arginine.  STOP.  " THEN CORRECT = 2
IF Strand$ = "Methionine.  Proline.  Proline.  STOP.  " THEN CORRECT = 3
IF Dna1 = 4 THEN
PRINT "Strand downloaded into memory.  Press enter to begin testing strand."
INPUT "", A$: CLS
ST: FOR I = 1 TO 800
LOCATE 5
IF A = 0 THEN PRINT "/": A = 1: GOTO E
IF A = 1 THEN PRINT "|": A = 2: GOTO E
IF A = 2 THEN PRINT "\": A = 3: GOTO E
IF A = 3 THEN PRINT "-": A = 4: GOTO E
IF A = 4 THEN PRINT "/": A = 5: GOTO E
IF A = 5 THEN PRINT "|": A = 6: GOTO E
IF A = 6 THEN PRINT "\": A = 7: GOTO E
IF A = 7 THEN PRINT "-": A = 0: GOTO E
E:
IF I >= 1 AND I <= 50 THEN PRINT "Beginning test of DNA strand....."
IF I >= 51 AND I <= 100 THEN PRINT "Simulating DNA replication......."
IF I >= 101 AND I <= 250 THEN PRINT "Simulating mRNA attachment......."
IF I >= 251 AND I <= 400 THEN PRINT "Simulating mRNA travel to tRNA..."
IF I >= 401 AND I <= 600 THEN PRINT "Simulating tRNA attachment......."
IF I >= 601 AND I <= 800 THEN PRINT "Forming protein.......                              "
NEXT I
PRINT "Protein breakdown complete."
INPUT "", A$: CLS
D2:
LOCATE 1
PRINT "                                                         "
PRINT "                                                         "
PRINT "                                                         "
PRINT "                                                         "
PRINT "                                                         "
PRINT "                                                         "
PRINT "                                                         "
PRINT "                                                         "
PRINT "                                                         "
PRINT "                                                         "
PRINT "                                                         "
LOCATE 1
IF A = 1 THEN
PRINT "                                                         "
PRINT "                                                         "
PRINT "                                                         "
PRINT "_____________________________________"
PRINT "| | | | | | | | | | | | | | | | | | |"
PRINT "| | | | | | | | | | | | | | | | | | |"
PRINT "-------------------------------------"
PRINT "                                                         "
PRINT "                                                         "
PRINT "                                                         "
PRINT "                                                         "
A = 2
GOTO ENDING
END IF
IF A = 2 THEN
PRINT "                   /-----/                                "
PRINT "                  /-----/                                "
PRINT "                 /-----/                                "
PRINT "                /-----/                                "
PRINT "               /-----/                                "
PRINT "              /-----/                                "
PRINT "             /-----/                                "
PRINT "            /-----/                                "
PRINT "           /-----/                                "
PRINT "          /-----/                                "
PRINT "         /-----/                                "
A = 3
GOTO ENDING
END IF
IF A = 3 THEN
PRINT "              |-----|                                             "
PRINT "              |-----|                                             "
PRINT "              |-----|                                             "
PRINT "              |-----|                                             "
PRINT "              |-----|                                             "
PRINT "              |-----|                                             "
PRINT "              |-----|                                             "
PRINT "              |-----|                                             "
PRINT "              |-----|                                             "
PRINT "              |-----|                                             "
PRINT "              |-----|                                             "
A = 4
GOTO ENDING
END IF
IF A = 4 THEN
PRINT "         \-----\                                             "
PRINT "          \-----\                                             "
PRINT "           \-----\                                             "
PRINT "            \-----\                                             "
PRINT "             \-----\                                             "
PRINT "              \-----\                                             "
PRINT "               \-----\                                             "
PRINT "                \-----\                                             "
PRINT "                 \-----\                                             "
PRINT "                  \-----\                                             "
PRINT "                   \-----\                                             "
A = 5
GOTO ENDING
END IF
IF A = 5 THEN
PRINT "                                                         "
PRINT "                                                         "
PRINT "                                                         "
PRINT "_____________________________________"
PRINT "| | | | | | | | | | | | | | | | | | |"
PRINT "| | | | | | | | | | | | | | | | | | |"
PRINT "-------------------------------------"
PRINT "                                                         "
PRINT "                                                         "
PRINT "                                                         "
PRINT "                                                         "
A = 6
GOTO ENDING
END IF
IF A = 6 THEN
PRINT "                   /-----/                                             "
PRINT "                  /-----/                                             "
PRINT "                 /-----/                                             "
PRINT "                /-----/                                             "
PRINT "               /-----/                                             "
PRINT "              /-----/                                             "
PRINT "             /-----/                                             "
PRINT "            /-----/                                             "
PRINT "           /-----/                                             "
PRINT "          /-----/                                             "
PRINT "         /-----/                                             "
A = 7
GOTO ENDING
END IF
IF A = 7 THEN
PRINT "              |-----|                                             "
PRINT "              |-----|                                             "
PRINT "              |-----|                                             "
PRINT "              |-----|                                             "
PRINT "              |-----|                                             "
PRINT "              |-----|                                             "
PRINT "              |-----|                                             "
PRINT "              |-----|                                             "
PRINT "              |-----|                                             "
PRINT "              |-----|                                             "
PRINT "              |-----|                                             "
A = 0
GOTO ENDING
END IF
IF A = 0 THEN
PRINT "         \-----\                                             "
PRINT "          \-----\                                             "
PRINT "           \-----\                                             "
PRINT "            \-----\                                             "
PRINT "             \-----\                                             "
PRINT "              \-----\                                             "
PRINT "               \-----\                                             "
PRINT "                \-----\                                             "
PRINT "                 \-----\                                             "
PRINT "                  \-----\                                             "
PRINT "                   \-----\                                             "
A = 1
GOTO ENDING
END IF
ENDING:
PRINT "Bio-Analysis of DNA strand complete."
IF CORRECT = 0 THEN
PRINT "The DNA strand is indecipherable.  No information can be gleaned from this"
PRINT "strand.  If you are wishing to bio-engineer, please check the MEDICAL"
PRINT "data-base on the proper use of this program and for possible DNA strands to"
PRINT "replicate.": Stop1 = 0
Dna1 = 0: Strand$ = "": Dna$ = "": Stop1 = 0
END IF
IF CORRECT = 3 THEN
PRINT "From all evidence, this strand appears to be a cure for the RD disease."
PRINT "Sending a read-out of information found to Doctor Angela."
PRINT "Congratulations, thousands are in your debt.  This shall be noted on your"
PRINT "permenant record."
Dna1 = 0: Strand$ = "": Dna$ = "": Stop1 = 0
BioEng3 = 1
END IF
IF CORRECT = 2 THEN
PRINT "From all evidence, this strand appears to be a cure for the DS disease."
PRINT "Sending a read-out of information found to Doctor Angela."
PRINT "Congratulations, thousands are in your debt.  This shall be noted on your"
PRINT "permenant record."
Dna1 = 0: Strand$ = "": Dna$ = "": Stop1 = 0
BioEng2 = 1
END IF
IF CORRECT = 1 THEN
PRINT "From all evidence, this strand appears to be a cure for the CI disease."
PRINT "Sending a read-out of information found to Doctor Angela."
PRINT "Congratulations, thousands are in your debt.  This shall be noted on your"
PRINT "permenant record."
Dna1 = 0: Strand$ = "": Dna$ = "": Stop1 = 0
BioEng = 1
END IF
F = F + 1
IF F <= 50 THEN GOTO D2
INPUT "", A$: CLS
END IF
F = 0: CORRECT = 0
1590 PRINT : GOTO 1421
VIEWDNA:
IF Strand$ = "" THEN PRINT "There is no DNA strand on database.  To create one, select 'Add Amino Acid to": PRINT "DNA strand' from the main menu.": GOTO 1590
PRINT "Current Strand includes:": PRINT
PRINT Strand$
GOTO 1590
HUH: IF Strand$ = "" THEN PRINT "No strand currently exists.": Stop1 = 0: GOTO 1590
PRINT "Current Strand includes:"
PRINT : PRINT Strand$
PRINT : INPUT "Are you sure?", A$: PRINT
IF MID$(A$, 1, 1) = "y" THEN Strand$ = "": PRINT "Strand Deleted.": Dna1 = 0: Dna$ = ""
IF MID$(A$, 1, 1) <> "y" THEN PRINT "Delete Sequence Aborted."
GOTO 1590
EndSub:
OPEN "data.omg" FOR INPUT AS #1
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
CLOSE #1
CLOSE #1
RUN "omega.bas"

