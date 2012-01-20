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
MainTopic:
PRINT "Enter topic of research:": PRINT
PRINT "1.  Genetics"
PRINT "2.  Physiology"
IF AdvancedMedicalStudies <> 2 THEN PRINT "3.  Advanced Medical Studies"
IF AdvancedMedicalStudies = 2 AND Metabolism = 2 AND CirculatoryStudies = 2 AND Anatomy = 2 AND DNAReplication = 2 AND RevivalStudies <> 2 THEN PRINT "4.  Revival Studies"
IF CryogenicStasis <> 2 AND Anatomy = 2 AND Metabolism = 2 AND CirculatoryStudies = 2 THEN PRINT "5.  Cryogenic Stasis"
Choice: PRINT : INPUT ">", A: PRINT
IF A = 1 AND Genetics <> 2 THEN Genetics = 1: Studying = 1: Res$ = "Genetics": PRINT "Topic chosen.": GOTO EndSub2
IF A = 1 AND Genetics = 2 THEN
IF DNAReplication = 2 THEN PRINT "1.  Genetic Engineering"
IF DNAReplication <> 2 THEN PRINT "2.  DNA Replication"
IF ViralStudies <> 2 THEN PRINT "3.  Viral Studies"
PRINT "4.  Back."
GenChoice: PRINT : INPUT ">", A: PRINT
IF A > 4 OR A < 1 THEN GOTO GenChoice
IF A = 1 AND GenEngineering < 2 THEN GenEngineering = 1: PRINT "Topic chosen.": Res$ = "Genetic Engineering": Studying = 1: GOTO EndSub2
IF A = 1 AND GenEngineering >= 2 THEN
        IF RadiationStudies = 2 AND RIAR <> 2 THEN PRINT "1.  Radiation Immune Alien Race (RIAR)"
        IF HumanNature = 2 AND HumanMotives = 2 AND SFAR <> 2 THEN PRINT "2.  Sin-Free Alien Race (SFAR)"
        IF TTAR <> 2 THEN PRINT "3.  Temperature-tolerant Alien Race (TTAR)"
        IF CIAR <> 2 THEN PRINT "4.  Chemical Immune Alien Race (CIAR)"
        IF DIAR <> 2 THEN PRINT "5.  Disease-free Alien Race (DIAR)"
BioEngChoice: PRINT : INPUT ">", A: PRINT
        IF A = 1 AND RadiationStudies = 2 AND RIAR <> 2 THEN RIAR = 1: PRINT "Topic chosen.": Res$ = "RIAR": Studying = 1: GOTO EndSub2
        IF A = 2 AND HumanNature = 2 AND HumanMotives = 2 AND SFAR <> 2 THEN SFAR = 1: Res$ = "SFAR": PRINT "Topic chosen.": Studying = 1: GOTO EndSub2
        IF A = 3 AND TTAR <> 2 THEN TTAR = 1: Res$ = "TTAR": PRINT "Topic chosen.": Studying = 1: GOTO EndSub2
        IF A = 4 AND CIAR <> 2 THEN CIAR = 1: Res$ = "CIAR": PRINT "Topic chosen.": Studying = 1: GOTO EndSub2
        IF A = 5 AND DIAR <> 2 THEN DIAR = 1: Res$ = "DIAR": PRINT "Topic chosen.": Studying = 1: GOTO EndSub2
END IF
IF A = 2 AND DNAReplication <> 2 THEN DNAReplication = 1: PRINT "Topic chosen.": Res$ = "DNA Replication": Studying = 1: GOTO EndSub2
IF A = 3 AND ViralStudies <> 2 THEN ViralStudies = 1: PRINT "Topic chosen.": Res$ = "Viral Studies": Studying = 1: GOTO EndSub2
IF A = 4 THEN GOTO MainTopic
END IF
IF A = 2 AND Physiology <> 2 THEN Physiology = 1: PRINT "Topic chosen.": Res$ = "Physiology": Studying = 1: GOTO EndSub2
IF A = 2 AND Physiology = 2 THEN
Phys:
PRINT "1.  Biochemistry"
IF Metabolism <> 2 THEN PRINT "2.  Metabolism"
IF CirculatoryStudies <> 2 THEN PRINT "3.  Circulatory Studies"
IF Embryology <> 2 THEN PRINT "4.  Embryology"
IF RadiationStudies <> 2 AND NuclearFission = 2 THEN PRINT "5.  Radiation Studies"
PRINT "6.  Back."
PhysChoice: PRINT : INPUT ">", A: PRINT
IF A = 5 AND NuclearFission = 2 AND RadiationStudies <> 2 THEN RadiationStudies = 1: Res$ = "Radiation Studies": PRINT "Topic chosen.": Studying = 1: GOTO EndSub2
IF A = 1 AND BioChemistry <> 2 THEN BioChemistry = 1: Res$ = "Biochemistry": PRINT "Topic chosen.": Studying = 1: GOTO EndSub2
IF A = 1 AND BioChemistry = 2 THEN
IF Anatomy <> 2 THEN PRINT "1.  Anatomy"
IF HormonalControl <> 2 THEN PRINT "2.  Hormonal Control"
PRINT "3.  Back."
BioChemChoice: PRINT : INPUT ">", A: PRINT
IF A > 3 OR A < 1 THEN GOTO BioChemChoice
IF A = 1 AND Anatomy <> 2 THEN Anatomy = 1: PRINT "Topic chosen.": Res$ = "Anatomy": Studying = 1: GOTO EndSub2
IF A = 2 AND HormonalControl <> 2 THEN HormonalControl = 1: PRINT "Topic chosen.": Res$ = "Hormonal Control": Studying = 1: GOTO EndSub2
IF A = 3 THEN GOTO Phys
END IF
IF A = 2 AND Metabolism <> 2 THEN Metabolism = 1: PRINT "Topic chosen.": Studying = 1: Res$ = "Metabolism": GOTO EndSub2
IF A = 3 AND CirculatoryStudies <> 2 THEN CirculatoryStudies = 1: PRINT "Topic chosen.": Studying = 1: Res$ = "Circulatory Studies": GOTO EndSub2
IF A = 4 AND Embryology <> 2 THEN Embryology = 1: PRINT "Topic chosen.": Studying = 1: Res$ = "Embryology": GOTO EndSub2
IF A = 5 THEN GOTO MainTopic
IF A > 4 OR A < 1 THEN GOTO PhysChoice
END IF
IF A = 3 AND AdvancedMedicalStudies <> 2 THEN AdvancedMedicalStudies = 1: PRINT "Topic chosen.": Res$ = "Advanced Medical Studies": Studying = 1: GOTO EndSub2
IF A = 4 AND AdvancedMedicalStudies = 2 AND Metabolism = 2 AND CirculatoryStudies = 2 AND Anatomy = 2 AND DNAReplication = 2 AND RevivalStudies <> 2 THEN RevivalStudies = 1: Res$ = "Revival Studies": PRINT "Topic chosen.": Studying = 1: GOTO EndSub2
IF A = 5 AND CryogenicStasis <> 2 AND Anatomy = 2 AND Metabolism = 2 AND CirculatoryStudies = 2 THEN CryogenicStasis = 1: PRINT "Topic chosen.": Res$ = "Cryogenic Stasis": Studying = 1: GOTO EndSub2
EndSub2:
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

