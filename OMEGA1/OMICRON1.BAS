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
PRINT "became a fertile utopia of scientists.": PRINT
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
PRINT "not if the shuttle will save us.  We will find out soon enough.": PRINT
GOTO SSS
END IF
IF A = 3 THEN
PRINT "Either the star will calm down from its solar flares or we will perish.": PRINT
GOTO SSS
END IF
IF A = 4 THEN GOTO INFODATA
END IF
IF A = 2 THEN
PRINT "Technology Level:  We have limited space travel and medical programs.  Our"
PRINT "world is one where monorails move along the tundra, taking us from one city"
PRINT "to another.  The cities use a form of solar energy that does not cause"
PRINT "pollution, like our scans have revealed on other worlds."
INPUT "", A$: CLS
G = 0
IF ScanFound = 0 THEN
LILSTER:
FOR T = 1 TO 500: NEXT T
LOCATE 1
IF A = 1 THEN
PRINT "                 )---------------("
PRINT "                ))---------------(("
PRINT "               )))-------**------((("
PRINT "              ))))------****-----(((("
PRINT "               )))-------**------((("
PRINT "                ))---------------(("
PRINT "                 )---------------("
A = 2: GOTO BOTTOM
END IF
IF A = 2 THEN
PRINT "                        (                        "
PRINT "                       ((                        "
PRINT "                      (((     (                  "
PRINT "                     ((((*******                 "
PRINT "                      (((     (                  "
PRINT "                       ((                        "
PRINT "                        (                        "
A = 3: GOTO BOTTOM
END IF
IF A = 3 THEN
PRINT "                 )---------------("
PRINT "                ))---------------(("
PRINT "               )))---------------((("
PRINT "              ))))---------------(((("
PRINT "               )))---------------((("
PRINT "                ))---------------(("
PRINT "                 )---------------("
A = 4: GOTO BOTTOM
END IF
IF A = 4 THEN
PRINT "                         )                       "
PRINT "                         ))                      "
PRINT "                   )     )))                     "
PRINT "                  *******))))                    "
PRINT "                   )     )))                     "
PRINT "                         ))                      "
PRINT "                         )                       "
A = 1: GOTO BOTTOM
END IF
BOTTOM:
PRINT "Our main technology is that of the scanner.  It allows us to monitor the"
PRINT "activities of worlds far away."
ScanFound = 1
PRINT "Incorperating Scanner Technology into computer......"
G = G + 1
IF G < 50 THEN GOTO LILSTER
INPUT "", A$: CLS : PRINT : GOTO INFODATA
END IF
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

