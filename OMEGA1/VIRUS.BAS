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
VIRUS: PRINT
PRINT "Virus Testing Equipment (VTE)"
PRINT : PRINT "Please choose from the following:": PRINT
PRINT "1.  Study a Virus already in existance"
PRINT "2.  Bio-Engineer a Virus"
PRINT "3.  Delete a Viral strand already in memory."
PRINT "4.  Exit"
GHG: PRINT : INPUT "VTE>", A: PRINT
IF A = 1 THEN GOTO Study
IF A = 2 THEN GOTO CREATE
IF A = 3 THEN
IF Strando$ = "" THEN PRINT "No strand currently exists.": GOTO VIRUS
PRINT "Current Viral strand includes:"
PRINT : PRINT Strando$
PRINT : INPUT "Are you sure?", A$: PRINT
IF MID$(A$, 1, 1) = "y" THEN Strando$ = "": PRINT "Strand Deleted.": Dnao1 = 0: DNAo$ = ""
IF MID$(A$, 1, 1) <> "y" THEN PRINT "Delete Sequence Aborted."
GOTO VIRUS
END IF
IF A = 4 THEN GOTO ENDSUB1
GOTO GHG
Study: PRINT "Choose a Virus to Study:": PRINT
PRINT "1.  Cranial Implosion (CI)"
PRINT "2.  Distortive Syndrome (DS)"
PRINT "3.  Red Death (RD)"
PRINT "4.  Respiratory Corruption Disease (RCD)"
PRINT "5.  Exit"
DF: PRINT : INPUT "STUDY>", A: PRINT
IF A >= 6 OR A = 0 THEN GOTO DF
IF A = 5 THEN GOTO VIRUS
IF A = 1 THEN
INPUT "", A$: CLS
PRINT "Retrieving a sample of CI from databanks......"
FOR T = 1 TO 1000
NEXT T
PRINT "Apparently CI is a bio-engineered diease, contrary to popular belief."
PRINT "And, apparently a strand of AUGGAUAGUUAA would cure it."
PRINT "Scanning more in depth....."
FOR U = 1 TO 1000
NEXT U
PRINT "The traits of CI apparently have been constructed from an alien race, not"
PRINT "native to the Solar System of Earth."
PRINT "Scanning more in depth....."
FOR V = 1 TO 1000
NEXT V
BEEP: PRINT "Origin of virus found!"
PRINT
PRINT "Planet:  Third Planet from Alpha Centauri B"
PRINT "Average Temperature:  90øC"
PRINT "Living Species:  Yes"
PRINT "Notes:  The extreme temperature on Alpha Centauri B 3 would indicate"
PRINT "that the inhabitants would be extremely susceptible to diseases that"
PRINT "would inhibit the blood.  However, apparently the species living on"
PRINT "that planet are afflicted by hemophelia, and seem to have made up for"
PRINT "the ill effects of the disease by biologically engineered drugs."
PRINT "Adding find to permanent record......"
Find = 1
FOR W = 1 TO 1000
NEXT W
INPUT "", A$: CLS
PRINT : GOTO Study
END IF
IF A = 2 THEN
INPUT "", A$: CLS
FOR T = 1 TO 1000
LOCATE 1
PRINT "Retrieving a sample of DS from databanks......"
NEXT T
PRINT "Apparently DS hits only children because of their undeveloped hormonal"
PRINT "pathways."
PRINT "Scanning more in depth....."
FOR T = 1 TO 1000
NEXT T
PRINT "DS uses the amino acid Alanine to add distortive enzymes to a person's blood."
PRINT "Scanning more in depth....."
FOR T = 1 TO 1000
NEXT T
BEEP
PRINT "DS could possibally be neutralized if a strand of AUGCGGCGGUAA were to be"
PRINT "made.  This could dissolve the Alanine in the blood and prevent the distortive"
PRINT "enzymes from entering the child's blood.  This theory uses the concept that a"
PRINT "matching DNA string could match up to Alanine and neutralize it."
INPUT "", A$: CLS
PRINT : GOTO Study
END IF
IF A = 3 THEN
INPUT "", A$: CLS
FOR T = 1 TO 1000
LOCATE 1
PRINT "Retrieving a sample of RD from databanks......"
NEXT T
PRINT "Apparently RD causes a type of hemophelia, destroying blood clots and then"
PRINT "pushing the blood out of a victim's pores."
PRINT "Scanning more in depth....."
FOR T = 1 TO 1000
LOCATE 5
NEXT T
PRINT "RD uses the amino acid Glycine (ggg) to mutate DNA strands."
IF Po$ <> "high" THEN
PRINT "No further scans may be made until power is set to a higher level.  All of"
PRINT "stations's non-essential power is being used to scan this virus.  Set the"
PRINT "power to a higher level if you wish to scan further.": PRINT : GOTO Study
END IF
IF Po$ = "high" THEN PRINT "All of the stations power is being used.  Report being compled......"
FOR T = 1 TO 1000
NEXT T
INPUT "", A$: CLS
BEEP
PRINT "If the amino acid Proline was utilized, as in the strand AUGCCCCCCUAA, RD"
PRINT "could possibly be shut down."
PRINT : GOTO Study
END IF
IF A = 4 THEN
INPUT "", A$: CLS
FOR T = 1 TO 1000
LOCATE 1
PRINT "Retrieving a sample of RCD from databanks......"
NEXT T
PRINT "Apparently RCD uses tobacco to destroy a person's lungs.  See medical database"
PRINT "for more info on tobacco."
PRINT "Scanning more in depth....."
FOR T = 1 TO 1000
NEXT T
PRINT "RCD uses the Amino Acid Cysteine (ugu) to activate certain enzymes in a": PRINT "person."
IF Po$ <> "high" THEN
PRINT "No further scans may be made until power is set to a higher level.  All of"
PRINT "stations's non-essential power is being used to scan this virus.  Set the"
PRINT "power to a higher level if you wish to scan further.": PRINT : GOTO Study
END IF
IF Po$ = "high" THEN PRINT "All of the stations power is being used.  Report being compled......"
FOR T = 1 TO 1000
NEXT T
BEEP
INPUT "", A$: CLS
FOR T = 1 TO 5
LOCATE 1
COLOR 30
PRINT "*        *       *       OVERLOAD        *       *       *"
NEXT T
COLOR 15
PRINT "Overload in systems while scanning virus.  Aborting scan.....": FOR T = 1 TO 1000: NEXT T
INPUT "", A$: CLS
PRINT : GOTO Study
END IF
CREATE: PRINT "Enter 3 letters, c, g, u, or a."
V: PRINT : INPUT "VIRUS>", A$: PRINT
IF A$ = "uuu" OR A$ = "uuc" THEN PRINT "Amino Acid created:  Phenylalinine": DNAo$ = "Phenylalinine.  ": GOTO DAO
IF A$ = "uua" OR A$ = "uug" OR MID$(A$, 1, 2) = "cu" THEN PRINT "Amino Acid created:  Leucine": DNAo$ = "Leucine.  ": GOTO DAO
IF MID$(A$, 1, 2) = "uc" OR A$ = "agu" OR A$ = "agc" THEN PRINT "Amino Acid created:  Serine": DNAo$ = "Serine.  ": GOTO DAO
IF A$ = "uau" OR A$ = "uac" THEN PRINT "Amino Acid created:  Tyrosine": DNAo$ = "Tyrosine.  ": GOTO DAO
IF A$ = "uaa" OR A$ = "uag" OR A$ = "uga" THEN PRINT "No Amino Acid created;  Stop sequence entered.": DNAo$ = "STOP.  ": GOTO DAO
IF A$ = "ugu" OR A$ = "ugc" THEN PRINT "Amino Acid created:  Cysteine": DNAo$ = "Cysteine.  ": GOTO DAO
IF A$ = "ugg" THEN PRINT "Amino Acid created:  Tryptophan": DNAo$ = "Tryptophan.  ": GOTO DAO
IF MID$(A$, 1, 2) = "cc" THEN PRINT "Amino Acid created:  Proline": DNAo$ = "Proline.  ": GOTO DAO
IF A$ = "cau" OR A$ = "cac" THEN PRINT "Amino Acid created:  Histidine": DNAo$ = "Histidine.  ": GOTO DAO
IF A$ = "caa" OR A$ = "cag" THEN PRINT "Amino Acid created:  Glutamine": DNAo$ = "Glutamine.  ": GOTO DAO
IF MID$(A$, 1, 2) = "cg" OR A$ = "aga" OR A$ = "agg" THEN PRINT "Amino Acid created:  Arginine": DNAo$ = "Arginine.  ": GOTO DAO
IF A$ = "auu" OR A$ = "auc" OR A$ = "aua" THEN PRINT "Amino Acid created:  Isoleucine": DNAo$ = "Isoleucine.  ": GOTO DAO
IF A$ = "aug" THEN PRINT "Amino Acid created:  Methionine.  Note:  Start of DNA strand in place.": DNAo$ = "Methionine.  ": GOTO DAO
IF MID$(A$, 1, 2) = "ac" THEN PRINT "Amino Acid created:  Threonine": DNAo$ = "Threonine.  ": GOTO DAO
IF A$ = "aau" OR A$ = "aac" THEN PRINT "Amino Acid created:  Asparagine": DNAo$ = "Asparagine.  ": GOTO DAO
IF A$ = "aaa" OR A$ = "aag" THEN PRINT "Amino Acid created:  Lysine": DNAo$ = "Lysine.  ": GOTO DAO
IF MID$(A$, 1, 2) = "gu" THEN PRINT "Amino Acid created:  Valine": DNAo$ = "Valine.  ": GOTO DAO
IF MID$(A$, 1, 2) = "gc" THEN PRINT "Amino Acid created:  Alanine": DNAo$ = "Alanine.  ": GOTO DAO
IF A$ = "gau" OR A$ = "gac" THEN PRINT "Amino Acid created:  Aspartic Acid": DNAo$ = "Aspartic Acid.  ": GOTO DAO
IF A$ = "gaa" OR A$ = "gag" THEN PRINT "Amino Acid created:  Glutamic Acid": DNAo$ = "Glutamic Acid.  ": GOTO DAO
IF MID$(A$, 1, 2) = "gg" THEN PRINT "Amino Acid created:  Glycine": DNAo$ = "Glycine.  ": GOTO DAO
IF A$ = "x" OR A$ = "exit" THEN GOTO VIRUS
PRINT "Not an Amino Acid.": GOTO V
DAO: PRINT : INPUT "Amino Acid created.  Add to current DNA strand?", A$
IF MID$(A$, 1, 1) = "y" AND Dnao1 > 4 THEN PRINT "No more DNA may be added to current strand."
IF MID$(A$, 1, 1) = "y" AND Stopo1 = 1 THEN PRINT "No more DNA may be entered to strand; stop code has been entered."
IF MID$(A$, 1, 1) = "y" AND Stopo1 = 0 AND Dnao1 <= 4 THEN Strando$ = Strando$ + DNAo$: Dnao1 = Dnao1 + 1: IF DNAo$ = "STOP.  " THEN Stopo1 = 1
IF Strando$ = "Methionine.  Cysteine.  Glycine.  STOP.  " THEN VIRUS = 1
IF Strando$ = "Methionine.  Glycine.  Cysteine.  STOP.  " THEN VIRUS = 1
IF Dnao1 = 4 THEN
PRINT "Virus downloaded into memory.  Press enter to begin testing virus."
INPUT "", A$: CLS
FOR I = 1 TO 800
LOCATE 5
IF A = 0 THEN PRINT "/": A = 1: GOTO E1
IF A = 1 THEN PRINT "|": A = 2: GOTO E1
IF A = 2 THEN PRINT "\": A = 3: GOTO E1
IF A = 3 THEN PRINT "-": A = 4: GOTO E1
IF A = 4 THEN PRINT "/": A = 5: GOTO E1
IF A = 5 THEN PRINT "|": A = 6: GOTO E1
IF A = 6 THEN PRINT "\": A = 7: GOTO E1
IF A = 7 THEN PRINT "-": A = 0: GOTO E1
E1:
IF I >= 1 AND I <= 50 THEN PRINT "Beginning test of Virus.....                  "
IF I >= 51 AND I <= 100 THEN PRINT "Simulating Infection.......                         "
IF I >= 101 AND I <= 250 THEN PRINT "Simulating Infection results......."
IF I >= 251 AND I <= 800 THEN PRINT "Creating Virus.......                              "
NEXT I
PRINT "Virus replication complete."
INPUT "", A$: CLS
D1:
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
GOTO ENDING1
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
GOTO ENDING1
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
GOTO ENDING1
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
GOTO ENDING1
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
GOTO ENDING1
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
GOTO ENDING1
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
GOTO ENDING1
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
GOTO ENDING1
END IF
ENDING1: PRINT "Bio-Analysis of Attempted Virus complete."
IF VIRUS = 1 THEN
PRINT "The report done on this genetically engineered virus appears to indicate that"
PRINT "the virus will first cause hemophelia and then dissolve blood veins, causing"
PRINT "internal bleeding.  Death will come quickly, even to those immune to hemophelia."
IF F1 <= 24 THEN PRINT "Adding Viral creation to permanent record....."
IF F1 >= 25 THEN PRINT "Adding Viral creation to Medical Database under the name HD (Hemophelic": PRINT "Death.)........"
Dnao1 = 0: Strando$ = "": DNAo$ = "": Stopo1 = 0
Viral = 1
END IF
IF VIRUS = 0 THEN
PRINT "The virus is only able to infect ";
IF DoneThis2 = 0 THEN
StupidThing = INT(RND * 6) + 1
StupidThing2 = INT(RND * 6) + 1
DoneThis2 = 1
END IF
IF StupidThing = 1 THEN PRINT "small mammals ";
IF StupidThing = 2 THEN PRINT "evil fanatics ";
IF StupidThing = 3 THEN PRINT "normal reptiles ";
IF StupidThing = 4 THEN PRINT "hungry rodents ";
IF StupidThing = 5 THEN PRINT "old socks ";
IF StupidThing = 6 THEN PRINT "broken pencils ";
PRINT "and ";
IF StupidThing2 = 1 THEN PRINT "stupid playtesters."
IF StupidThing2 = 2 THEN PRINT "maze-free games."
IF StupidThing2 = 3 THEN PRINT "beserk designers."
IF StupidThing2 = 4 THEN PRINT "the Necromancer."
IF StupidThing2 = 5 THEN PRINT "rubies."
IF StupidThing2 = 6 THEN PRINT "dentures."
PRINT "Jettisoning Virus....."
Dnao1 = 0: Strando$ = "": DNAo$ = "": Stopo1 = 0
END IF
F1 = F1 + 1
IF F1 <= 50 THEN GOTO D1
INPUT "", A$: CLS
F1 = 0: VIRUS = 0
END IF
DoneThis2 = 0
PRINT : GOTO VIRUS
ENDSUB1:
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

