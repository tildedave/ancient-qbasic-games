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
CLOSE #1
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
GOTO HIST
END IF
IF A = 2 THEN
PRINT "Eventually, there was a revolution against David the Powerful, who was killed"
PRINT "by a hideous disease known as CI.  CI was engineered using information on the"
PRINT "probe.  The disease ran it's course, killed those who were not strong enough"
PRINT "to resist it.  However, the days of Chaos were gone and we were stronger than"
PRINT "ever."
GOTO HIST
END IF
IF A = 3 THEN
PRINT "We constructed a fertile utopia of scientists and knowledge.  We lived in"
PRINT "peace, using information the probe sent to us to construct new cures to"
PRINT "diseases that plagued us.  Eventaully, a cure for CI was engineered.  However,"
PRINT "a group of rebels captured the CI virus and launched it out into space, hoping"
PRINT "to wreak havok on unsuspecting worlds."
GOTO HIST
END IF
IF A = 4 THEN
PRINT "We were happy in our world.  Then the rebels were few, and the peace-lovers"
PRINT "were many.  Life almost seemed perfect."
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
PRINT "cuts.  This is what the probe had called, 'Hemophelia.'  We learned to live"
PRINT "with this mutation over time, with the weak dying and the strong surving."
GOTO HIST
END IF
IF A = 6 THEN
PRINT "The rebels control everything.  Nothing is spared from their iron hand. "
PRINT "Sometimes I wonder where the probe containing CI was sent.  If it hits a"
PRINT "planet, let it be one with a cure and one who can retaliate.  Let us all die;"
PRINT "the universe shall be safer.  I am the last scientist alive on the world."
PRINT "Soon I will be killed.  Let me die with them.  In the words of a great Earth"
PRINT "writer, 'I denounce them to Heaven and to earth.'"
GOTO HIST
END IF
IF A = 7 THEN GOTO MEGUSTALEER
END IF
IF A = 2 THEN
PRINT "Our technology is a joke.  Now it can only kill.  We have nothing of value;"
PRINT "the people of Theta 1 raided us and stole it all years ago."
ThetaLearned = 1
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

