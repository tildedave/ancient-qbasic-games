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
YO: PRINT : PRINT "Epsilon 4 Database": PRINT
PRINT "1.  History"
PRINT "2.  Place in Space"
PRINT "3.  Technology"
PRINT "4.  The People"
PRINT "5.  Exit"
PRINT : INPUT "EPSILON>", A: PRINT
IF A > 5 OR A <= 0 THEN GOTO YO
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
PRINT "Epsilon 2:": PRINT
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
PRINT "developed was a shield generator to protect us from alien attack.": PRINT
IF SHIELDGEN = 0 THEN
INPUT "", A$: CLS
G = 0
LILSTER1:
FOR T = 1 TO 500: NEXT T
LOCATE 1
IF A = 1 OR A = 3 THEN
PRINT "                     \ /                 "
PRINT "                      *                  "
PRINT "              \      *#*      /          "
PRINT "               ]]]]]*]=[*[[[[[           "
PRINT "              /      *#*      \          "
PRINT "                      *                  "
PRINT "                     / \                 "
IF A = 1 THEN A = 2:
IF A = 3 THEN A = 4
GOTO BOTTOM1
END IF
IF A = 2 THEN
PRINT "                       \ /                       "
PRINT "                 \      *                        "
PRINT "                  ]]]]]*^*                       "
PRINT "                 /    *^*^*    /                 "
PRINT "                       *^*[[[[[                  "
PRINT "                        *      \                 "
PRINT "                       / \                       "
A = 3: GOTO BOTTOM1
END IF
IF A = 4 THEN
PRINT "                       \ /                       "
PRINT "                        *      /                 "
PRINT "                       *^*[[[[[                  "
PRINT "                 \    *^*^*    \                 "
PRINT "                  ]]]]]*^*                       "
PRINT "                 /      *                        "
PRINT "                       / \                       "
A = 1: GOTO BOTTOM1
END IF
BOTTOM1:
PRINT "With this shield program we can shield ourselves from incoming weapons, as"
PRINT "We did when the hostile race of Theta 1 attacked us.  It proved invaluable."
ShieldFound = 1
PRINT "Incorperating Scanner Technology into computer......"
G = G + 1
IF G < 50 THEN GOTO LILSTER1
INPUT "", A$: CLS : PRINT : GOTO YO
END IF
END IF
IF A = 4 THEN
PRINT "We are not unlike the people of Earth in the sense that we have somewhat the"
PRINT "same organs.  However, we have two hearts and two brains.  We believe that"
PRINT "this is from the machine that landed on our world early on in our history."
GOTO YO
END IF
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
CLOSE #1
CLOSE #1
RUN "omega.bas"

