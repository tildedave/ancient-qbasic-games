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
StartBioEng:
PRINT "Genetic Engineering Labs, Version 1 .";
Ver = 0
IF RIAR = 2 THEN Ver = Ver + 1
IF SFAR = 2 THEN Ver = Ver + 1
IF TTAR = 2 THEN Ver = Ver + 1
IF CIAR = 2 THEN Ver = Ver + 1
IF DIAR = 2 THEN Ver = Ver + 1
PRINT Ver
PRINT
PRINT "1.  Warning notice"
PRINT "2.  Bio-engineer a mutant race"
PRINT "3.  View progress of a mutant race in the making"
IF BioEngineering <> 2 THEN PRINT "4.  Halt progress of a mutant race in the making"
IF BioEngineering = 2 THEN PRINT "4.  Resume progress of a mutant race in the making"
PRINT "5.  Exit"
GenLabsChoice: PRINT : INPUT ">", A: PRINT
IF A = 4 AND BioEngineering = 2 THEN BioEngineering = 1: PRINT "Project resumed.": GOTO StartBioEng
IF A = 4 AND BioEngineering = 1 THEN BioEngineering = 2: PRINT "Project suspended.": GOTO StartBioEng
IF A = 4 AND BioEngineering = 0 THEN PRINT "No current Project in operation.": GOTO StartBioEng
IF A = 3 AND BioEngineering = 1 THEN
PRINT "1.  Capacity to reproduce:  ";
IF Reproduce = 0 THEN PRINT "No"
IF Reproduce = 1 THEN PRINT "Yes"
PRINT "2.  Intelligence levels:  ";
IF MutantIntellect = 0 THEN PRINT "Normal"
IF MutantIntellect = -1 THEN PRINT "Stupid"
IF MutantIntellect = 1 THEN PRINT "Genius"
IF MutantIntellect = 2 THEN PRINT "Super-genius"
PRINT "3.  Temperature tolerance:  ";
IF TT = 0 THEN PRINT "Normal"
IF TT = 1 THEN PRINT "Immune to effects of adverse temperatures"
PRINT "4.  Mutant susceptibility to radiation:  ";
IF MutRad = 0 THEN PRINT "Normal"
IF MutRad = -1 THEN PRINT "Sensitive"
IF MutRad = 1 THEN PRINT "Immune"
PRINT "5.  Personality:  ";
IF MutPers = 0 THEN PRINT "Normal"
IF MutPers = 1 THEN PRINT "Cultured and refined"
IF MutPers = 2 THEN PRINT "Free of all impure thoughts"
PRINT "6.  Chemical suspcebtibility:  ";
IF MutantChem = 0 THEN PRINT "Normal"
IF MutantChem = 1 THEN PRINT "Immune"
PRINT "7.  Disease immunities:  ";
IF CIImmune = 1 THEN
        IF DSImmune = 1 AND RDImmune = 0 THEN PRINT "Immune to CI and DS": GOTO EndJunk3
        IF DSImmune = 0 AND RDImmune = 1 THEN PRINT "Immune to CI and RD": GOTO EndJunk3
        IF DSImmune = 1 AND RDImmune = 1 THEN PRINT "Immune to CI, DS, and RD": GOTO EndJunk3
        PRINT "Immune to CI": GOTO EndJunk3
END IF
IF DSImmune = 1 THEN
        IF RDImmune = 1 THEN PRINT "Immune to DS and RD.": GOTO EndJunk3
        PRINT "Immune to DS.": GOTO EndJunk3
END IF
IF RDImmune = 1 THEN PRINT "Immune to RD.": GOTO EndJunk3
PRINT "None."
EndJunk3:
PRINT "8.  Communication:  ";
IF Telepathy = 1 THEN PRINT "Telepathy"
IF Telepathy = 0 THEN PRINT "None"
PRINT "9.  Breathes:  ";
IF MutantBreathe = 0 THEN PRINT "Normal"
IF MutantBreathe = 1 THEN PRINT "Chlorine"
IF MutantBreathe = 2 THEN PRINT "Does not require air"
PRINT : PRINT "There are"; TimeTakes; "turns until the Project achieves completion."
END IF
IF A = 1 THEN
PRINT "                                     !!! WARNING !!!": PRINT
PRINT "      Genetic Engineering is a dangerous and highly experimental science."
PRINT "To bio-engineer a mutant race, test subjects will be required.  Five lives"
PRINT "be will taken for the purpose each turn.  These lives will be returned in the"
PRINT "form of mutant if the mutant project should be successful.  In addition, if"
PRINT "the public should find out about this illicit experiments, public opinion of"
PRINT "you will drop."
PRINT "      If the Mutant Project is successful, any bioengineering mutants released"
PRINT "into the population will cause the populace to become horrified by your"
PRINT "actions and at what their former friends and family have become.  They will"
PRINT "most likely rebel against you, unless you strictly control them."
PRINT "      If the Mutants are released into the populace, they may overwhelm the"
PRINT "original population and gain the majority of the station.  In this case, the"
PRINT "number of humans on the station will dwindle and eventually die out all"
PRINT "together.": INPUT "", W$: GOTO StartBioEng
END IF
IF A = 2 THEN
PRINT "Bioengineering a mutant race:": PRINT
RaceDetails:
PRINT "1.  Capacity to reproduce:  ";
IF Reproduce = 0 THEN PRINT "No"
IF Reproduce = 1 THEN PRINT "Yes"
PRINT "2.  Intelligence levels:  ";
IF MutantIntellect = 0 THEN PRINT "Normal"
IF MutantIntellect = -1 THEN PRINT "Stupid"
IF MutantIntellect = 1 THEN PRINT "Genius"
IF MutantIntellect = 2 THEN PRINT "Super-genius"
PRINT "3.  Temperature tolerance:  ";
IF TT = 0 THEN PRINT "Normal"
IF TT = 1 THEN PRINT "Immune to effects of adverse temperatures"
PRINT "4.  Mutant susceptibility to radiation:  ";
IF MutRad = 0 THEN PRINT "Normal"
IF MutRad = -1 THEN PRINT "Sensitive"
IF MutRad = 1 THEN PRINT "Immune"
PRINT "5.  Personality:  ";
IF MutPers = 0 THEN PRINT "Normal"
IF MutPers = 1 THEN PRINT "Cultured and refined"
IF MutPers = 2 THEN PRINT "Free of all impure thoughts"
PRINT "6.  Chemical suspcebtibility:  ";
IF MutantChem = 0 THEN PRINT "Normal"
IF MutantChem = 1 THEN PRINT "Immune"
PRINT "7.  Disease immunities:  ";
IF CIImmune = 1 THEN
        IF DSImmune = 1 AND RDImmune = 0 THEN PRINT "Immune to CI and DS": GOTO EndJunk
        IF DSImmune = 0 AND RDImmune = 1 THEN PRINT "Immune to CI and RD": GOTO EndJunk
        IF DSImmune = 1 AND RDImmune = 1 THEN PRINT "Immune to CI, DS, and RD": GOTO EndJunk
        PRINT "Immune to CI": GOTO EndJunk
END IF
IF DSImmune = 1 THEN
        IF RDImmune = 1 THEN PRINT "Immune to DS and RD.": GOTO EndJunk
        PRINT "Immune to DS.": GOTO EndJunk
END IF
IF RDImmune = 1 THEN PRINT "Immune to RD.": GOTO EndJunk
PRINT "None.": GOTO EndJunk
EndJunk:
PRINT "8.  Communication:  ";
IF Telepathy = 1 THEN PRINT "Telepathy"
IF Telepathy = 0 THEN PRINT "None"
PRINT "9.  Breathes:  ";
IF MutantBreathe = 0 THEN PRINT "Normal"
IF MutantBreathe = 1 THEN PRINT "Chlorine"
IF MutantBreathe = 2 THEN PRINT "Does not require air"
PRINT "10.  Begin Genetic Engineering"
PRINT "11.  Abort Genetic Engineering": PRINT
PRINT "Estimated time until project nears completion: "; (TimeTakes + 5) * 5
MutantChoice:  PRINT : INPUT ">", A: PRINT
IF A > 10 OR A < 1 THEN GOTO MutantChoice
IF A = 1 THEN
PRINT "Capacity to reproduce:  ";
IF Reproduce = 0 THEN PRINT "No"
IF Reproduce = 1 THEN PRINT "Yes"
PRINT
PRINT "1.  Yes"
PRINT "2.  No"
PRINT "3.  Abort"
RepChoice: PRINT : INPUT ">", A: PRINT
IF A = 3 THEN GOTO RaceDetails
IF A = 1 AND Embryology = 2 AND Reproduce = 0 THEN TimeTakes = TimeTakes + 1: Reproduce = 1: GOTO RaceDetails
IF A = 1 AND Embryology <> 2 THEN PRINT "Insufficient research into Biology to constitute enabling mutant race to": PRINT "reproduce.": GOTO RaceDetails
IF A = 2 AND Reproduce = 1 THEN TimeTakes = TakeTakes - 1: Reproduce = 0: GOTO RaceDetails
GOTO RepChoice
END IF
IF A = 2 THEN
PRINT "Intelligence Levels:  ";
IF MutantIntellect = 0 THEN PRINT "Normal"
IF MutantIntellect = -1 THEN PRINT "Stupid"
IF MutantIntellect = 1 THEN PRINT "Genius"
IF MutantIntellect = 2 THEN PRINT "Super-genius"
PRINT
PRINT "1.  Normal"
PRINT "2.  Stupid"
PRINT "3.  Genius"
PRINT "4.  Supra-genius"
PRINT "5.  Abort"
IntChoice: PRINT : INPUT ">", A: PRINT
IF A = 5 THEN GOTO RaceDetails
IF A = 1 AND MutantIntellect <> 0 THEN
IF MutantIntellect = -1 THEN TimeTakes = TimeTakes + 1: MutantIntellect = 0: GOTO RaceDetails
IF MutantIntellect = 1 THEN TimeTakes = TimeTakes - 1: MutantIntellect = 0: GOTO RaceDetails
IF MutantIntellect = 2 THEN TimeTakes = TimeTakes - 2: MutantIntellect = 0: GOTO RaceDetails
END IF
IF A = 2 AND MutantIntellect <> -1 THEN
IF MutantIntellect = 0 THEN TimeTakes = TimeTakes - 1: MutantIntellect = -1: GOTO RaceDetails
IF MutantIntellect = 1 THEN TimeTakes = TimeTakes - 2: MutantIntellect = -1: GOTO RaceDetails
IF MutantIntellect = 2 THEN TimeTakes = TimeTakes - 3: MutantIntellect = -1: GOTO RaceDetails
END IF
IF A = 3 AND MutantIntellect <> 1 THEN
IF MutantIntellect = -1 THEN TimeTakes = TimeTakes + 2: MutantIntellect = 1: GOTO RaceDetails
IF MutantIntellect = 0 THEN TimeTakes = TimeTakes + 1: MutantIntellect = 1: GOTO RaceDetails
IF MutantIntellect = 2 THEN TimeTakes = TimeTakes - 1: MutantIntellect = 1: GOTO RaceDetails
END IF
IF A = 4 AND MutantIntellect <> 2 THEN
IF MutantIntellect = -1 THEN TimeTakes = TimeTakes + 3: MutantIntellect = 2: GOTO RaceDetails
IF MutantIntellect = 0 THEN TimeTakes = TimeTakes + 2: MutantIntellect = 2: GOTO RaceDetails
IF MutantIntellect = 1 THEN TimeTakes = TimeTakes + 1: MutantIntellect = 2: GOTO RaceDetails
END IF
IF A = 5 THEN GOTO RaceDetails
GOTO IntChoice
END IF
IF A = 3 THEN
PRINT "Temperature tolerance:  ";
IF TT = 0 THEN PRINT "Normal"
IF TT = 1 THEN PRINT "Immune to effects of adverse temperatures"
PRINT
PRINT "1.  Normal tolerance"
PRINT "2.  Immune to adverse temperatures"
PRINT "3.  Abort"
TTChoice: PRINT : INPUT ">", A: PRINT
IF A = 1 AND TT = 1 THEN TT = 0: TimeTakes = TimeTakes - 1: GOTO RaceDetails
IF A = 2 AND TT = 0 AND TTAR = 2 THEN TT = 1: TimeTakes = TimeTakes + 1: GOTO RaceDetails
IF A = 2 AND TT = 0 AND TTAR <> 2 THEN PRINT "Insufficient research into Biology to make mutants immune to adverse": PRINT "temperatures.": GOTO RaceDetails
IF A = 3 THEN GOTO RaceDetails
GOTO TTChoice
END IF
IF A = 4 THEN
PRINT "Mutant susceptibility to radiation:  ";
IF MutRad = 0 THEN PRINT "Normal"
IF MutRad = -1 THEN PRINT "Sensitive"
IF MutRad = 1 THEN PRINT "Immune"
PRINT
PRINT "1.  Normal"
PRINT "2.  Sensitive"
PRINT "3.  Immune"
PRINT "4.  Abort"
RadChoice: PRINT : INPUT ">", A: PRINT
IF A = 1 AND MutRad <> 0 THEN
IF MutRad = 1 THEN TimeTakes = TimeTakes - 1
IF MutRad = -1 THEN TimeTakes = TimeTakes + 1
MutRad = 0: GOTO RaceDetails
END IF
IF A = 2 AND MutRad <> -1 THEN
IF MutRad = 1 THEN TimeTakes = TimeTakes - 2
IF MutRad = 0 THEN TimeTakes = TimeTakes - 1
MutRad = -1: GOTO RaceDetails
END IF
IF A = 3 AND MutRad <> 1 THEN
IF MutRad = 0 THEN TimeTakes = TimeTakes + 1
IF MutRad = -1 THEN TimeTakes = TimeTakes + 2
MutRad = 1: GOTO RaceDetails
END IF
IF A = 4 THEN GOTO RaceDetails
IF A > 4 OR A < 1 THEN GOTO RadChoice
END IF
IF A = 5 THEN
PRINT "Personality:  ";
IF MutPers = 0 THEN PRINT "Normal"
IF MutPers = 1 THEN PRINT "Cultured and refined"
IF MutPers = 2 THEN PRINT "Free of all impure thoughts"
PRINT
PRINT "1.  Normal"
PRINT "2.  Cultured and refined"
PRINT "3.  Free of all impure thoughts"
PRINT "4.  Abort"
PersChoice: PRINT : INPUT ">", A: PRINT
IF A = 4 THEN GOTO RaceDetails
IF A = 1 AND MutPers <> 0 THEN
IF MutPers = 1 THEN TimeTakes = TimeTakes - 1
IF MutPers = 2 THEN TimeTakes = TimeTakes - 2
MutPers = 0
GOTO RaceDetails
END IF
IF A = 2 AND MutPers <> 1 THEN
IF MutPers = 0 THEN TimeTakes = TimeTakes + 1
IF MutPers = 2 THEN TimeTakes = TimeTakes - 1
MutPers = 1
GOTO RaceDetails
END IF
IF A = 3 AND MutPers <> 2 THEN
IF MutPers = 0 THEN TimeTakes = TimeTakes + 2
IF MutPers = 1 THEN TimeTakes = TimeTakes + 1
MutPers = 2
GOTO RaceDetails
END IF
GOTO PersChoice
END IF
IF A = 6 THEN
PRINT "Chemical suspcebtibility:  ";
IF MutantChem = 0 THEN PRINT "Normal"
IF MutantChem = 1 THEN PRINT "Immune"
PRINT
PRINT "1.  Normal"
PRINT "2.  Immune"
PRINT "3.  Abort"
ChemChoice: PRINT : INPUT ">", A: PRINT
IF A = 1 AND MutantChem <> 0 THEN TimeTakes = TimeTakes - 1: MutantChem = 0: GOTO RaceDetails
IF A = 2 AND CIAR = 2 AND MutantChem <> 1 THEN TimeTakes = TimeTakes + 1: MutantChem = 1: GOTO RaceDetails
IF A = 3 THEN GOTO RaceDetails
END IF
IF A = 7 THEN
PRINT "Disease immunities:  ";
IF CIImmune = 1 THEN
        IF DSImmune = 1 AND RDImmune = 0 THEN PRINT "Immune to CI and DS": GOTO EndJunk2
        IF DSImmune = 0 AND RDImmune = 1 THEN PRINT "Immune to CI and RD": GOTO EndJunk2
        IF DSImmune = 1 AND RDImmune = 1 THEN PRINT "Immune to CI, DS, and RD": GOTO EndJunk2
        PRINT "Immune to CI": GOTO EndJunk2
END IF
IF DSImmune = 1 THEN
        IF RDImmune = 1 THEN PRINT "Immune to DS and RD.": GOTO EndJunk2
        PRINT "Immune to DS.": GOTO EndJunk2
END IF
IF RDImmune = 1 THEN PRINT "Immune to RD.": GOTO EndJunk2
PRINT "None."
EndJunk2:
PRINT : PRINT "1.  Build immunity to CI"
PRINT "2.  Build immunity to DS"
PRINT "3.  Build immunity to RD"
PRINT "4.  Abort"
ImmChoice:  PRINT : INPUT ">", A: PRINT
IF A = 1 AND BioEng = 1 AND CIImmune = 0 THEN TimeTakes = TimeTakes + 1: CIImmune = 1: GOTO RaceDetails
IF A = 2 AND BioEng2 = 1 AND DSImmune = 0 THEN TimeTakes = TimeTakes + 1: DSImmune = 1: GOTO RaceDetails
IF A = 3 AND BioEng3 = 1 AND RDImmune = 0 THEN TimeTakes = TimeTakes + 1: RDImmune = 1: GOTO RaceDetails
IF A = 4 THEN GOTO RaceDetails
GOTO ImmChoice
END IF
IF A = 8 THEN
PRINT "Communication:  ";
IF Telepathy = 1 THEN PRINT "Telepathy"
IF Telepathy = 0 THEN PRINT "None"
PRINT
PRINT "1.  None"
PRINT "2.  Build telepathic communications"
PRINT "3.  Abort"
CommChoice: PRINT : INPUT ">", A: PRINT
IF A = 1 AND Telepathy = 1 THEN TimeTakes = TimeTakes - 1: Telepathy = 0: GOTO RaceDetails
IF A = 2 AND SubtelepathicWaves = 2 AND Telepathy = 0 THEN TimeTakes = TimeTakes + 1: Telepathy = 1: GOTO RaceDetails
IF A = 3 THEN GOTO RaceDetails
GOTO CommChoice
END IF
IF A = 9 THEN
PRINT "Breathes:  ";
IF MutantBreathe = 0 THEN PRINT "Normal"
IF MutantBreathe = 1 THEN PRINT "Chlorine"
IF MutantBreathe = 2 THEN PRINT "Does not require air"
PRINT
PRINT "1.  Normal"
PRINT "2.  Chlorine"
PRINT "3.  Does not require air"
PRINT "4.  Abort"
AirChoice: PRINT : INPUT ">", A: PRINT
IF A = 4 THEN GOTO RaceDetails
IF A = 1 AND MutantBreathe <> 0 THEN
IF MutantBreathe = 1 THEN TimeTakes = TimeTakes - 1
IF MutantBreathe = 2 THEN TimeTakes = TimeTakes - 2
MutantBreathe = 0: GOTO RaceDetails
END IF
IF A = 2 AND MutantBreathe <> 1 THEN
IF MutantBreathe = 0 THEN TimeTakes = TimeTakes + 1
IF MutantBreathe = 2 THEN TimeTakes = TimeTakes - 1
MutantBreathe = 1: GOTO RaceDetails
END IF
IF A = 3 AND MutantBreathe <> 2 THEN
IF MutantBreathe = 0 THEN TimeTakes = TimeTakes + 2
IF MutantBreathe = 1 THEN TimeTakes = TimeTakes + 1
MutantBreathe = 2: GOTO RaceDetails
END IF
GOTO AirChoice
END IF
IF A = 11 THEN GOTO StartBioEng
IF A = 10 THEN
TimeTakes = TimeTakes + 5
TimeTakes = TimeTakes * 5
PRINT "Project initiated.  Project will achieve completion in"; TimeTakes; "turns.  Over"
PRINT "this time, an expected"; TimeTakes * 5; "people will be experimented on in the name of"
PRINT "science."
PRINT : PRINT "Please Confirm Initiation:": PRINT
PRINT "1.  Confirm"
PRINT "2.  Abort"
LastChance: PRINT : INPUT ">", A: PRINT
IF A = 1 THEN PRINT "Project begun.": BioEngineering = 1: GOTO StartBioEng
IF A = 2 THEN PRINT "Project aborted.": TimeTakes = TimeTakes / 5: TimeTakes = TimeTakes - 5: GOTO StartBioEng
GOTO LastChance
END IF
END IF
IF A = 5 THEN GOTO GenLabsEndSub
GOTO GenLabsChoice
GenLabsEndSub:
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

