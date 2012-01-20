DECLARE SUB ChaosRealm ()
DECLARE SUB WoefulEscarad ()
DECLARE SUB Azzagrat ()
DECLARE SUB TwelveTrees ()
DECLARE SUB Fights ()
DECLARE SUB BrokenReach ()
COMMON SHARED MolyDead, RM, Sword, Talked, HP, Captured, Level, TIME, MaxHp, SonADead, RedShroud, MolyAppeared, Talked1, BlowUp, Free, Desc, Looked, Item, KeyTouched, Climbing, LinePlace, Citadel, A$, ChaosSonDead, PelnarDead, TriedIt, ChaosBeat, Book
CLS
VrockHp = 40: ChaosHp = 50: PelnarHp = 70: SonEHp = 55: MolyHp = 60: SonAHp = 50: HP = 100: MaxHp = 100: Level = 1: RM = 18: Sword = 1
RANDOMIZE TIMER
KEY 4, "regenerate"
KEY 6, "z"
KEY 7, "health"
KEY 8, "enter portal"
KEY 9, "look"
KEY 10, "fight"
GOSUB 400: GOSUB 5: GOTO 940
1 TIME = TIME + 1
ON ERROR GOTO ERR1
IF Level <> 45 THEN COLOR 7
IF Level = 45 THEN COLOR 8
IF Level = 45 AND DoneThis = 0 THEN MolyDead = 0: DoneThis = 1
KEY 5, A$
IF RM = 5 AND Talked = 1 AND Appeared = 0 AND SonADead = 0 AND Level = 1 THEN
PRINT "Suddenly, out of the shadows steps a half-human, half-fiend.  You encountered"
PRINT "others fiends like this in Carceri, except that here is seems stronger.  It"
PRINT "holds a sword in one hand.  'You have angered our Lady.  For your crime, the"
PRINT "penalty is death,' he says, in a tone much like that you heard the"
PRINT "Mercykillers speak in on Mechanus.  He leaps to the attack!": Appeared = 1
END IF
Fights
IF HP <> MaxHp THEN
Healing = Healing + 1
IF Healing >= 4 THEN
PRINT "You feel better."
HP = HP + 1
Healing = Healing - 4
END IF
END IF
IF Level = 1 THEN
IF RM = 12 OR RM = 14 THEN
Action = INT(RND * 4) + 1
IF Action = 1 THEN PRINT "A manes offers you the carcass of some dead animal."
IF Action = 2 THEN PRINT "A dretch munches on the skeleton of some small animal.  You back away in": PRINT "disgust."
IF Action = 3 THEN PRINT "A rutterkin shrieks as a huge, mutated worm emerges from the trash pile and": PRINT "snatches at it."
IF Action = 4 THEN PRINT "A balor steps out of the shadows.  The other demons cringe in fear as the balor": PRINT "grabs one and carries it away; no doubt the poor manes": PRINT "will be devoured as dinner."
END IF
IF Captured = 1 THEN
IF RedShroud = 0 THEN PRINT "The crowd is laughing at you and throwing various objects at you, none of": PRINT "which hit."
FiendPull = INT(RND * 4) + 1
IF FiendPull = 1 THEN
PRINT "The two fiends that are holding the chains that are tied to your wrists pull": PRINT "on them.  You grimice in pain as your shoulder blades are pulled back, and": PRINT "the crowd cheers."
HP = HP - 3
IF HP <= 0 THEN Killer = 3: Killer$ = "two fiend guards": GOTO Dead2
END IF
END IF
IF RedShroud > 0 THEN
RedShroud = RedShroud - 1
IF RedShroud = 6 THEN PRINT "Out of the crowd of jeering tanar'ri and thugs emerges what would be a beautiful": PRINT "woman, if it were not for the fact that two, huge bat-like wings were sprouting": PRINT "out of her back.  She smiles seductively at you, and approaches you."
IF RedShroud = 5 THEN PRINT "The beautiful woman addresses the crowd.  'I am Red Shroud, mistress of Broken": PRINT "Reach!'  This is met by screams and shouts of approval from the mob."
IF RedShroud = 4 THEN PRINT "Red Shroud steps up to you, and takes your head in her hands.  'So, you thought": PRINT "you could commit a crime in MY town and escape punishment.  You were wrong.": PRINT "Also, we have records of an elf, with your exact description, trying to storm": PRINT "the gates of Broken Reach.  Do you have anything to say in your own defense?'"
IF A$ <> "yes" AND RedShroud = 3 THEN PRINT "Red Shroud says, 'He remains silent!'  The crowd around you boos and jeers at": PRINT "you as you strain to get free from your shackles."
IF RedShroud = 3 THEN
PRINT "Red Shroud takes your head out of her hands, and thrusts it downward, causing": PRINT "you to cringe in pain.  The fiends holding your shackles pull back on them,": PRINT "causing further anguish."
HP = HP - 4
IF HP <= 0 THEN
PRINT
PRINT "The last thing you hear before your neck snaps is Red Shroud saying in a"
PRINT "seductive voice, 'Too bad.  Our little toy wasn't that strong, after all...'"
Killer = 2: Killer$ = "Red Shroud": GOTO Dead2
END IF
END IF
IF RedShroud = 2 THEN PRINT "'What should we do to him?' inquires Red of the crowd.  Not surprisingly, the": PRINT "answer is an overwhelming cry, with individual answers ranging from, 'Burn": PRINT "him!' to 'Snap his neck!'"
IF RedShroud = 1 THEN PRINT "Red Shroud thinks for a bit, and then says, 'I know!  Let's keep him here,": PRINT "bound by my favorite method - poison.  If this, 'Elf,' can escape this city and": PRINT "this layer of the Abyss, the poison with be nullified.  Otherwise, he'll die.'": PRINT "The answer is a resounding cheer.  Red Shroud scratches your face with her long": PRINT "nails.  'The poison is injected in him!'"
IF RedShroud = 0 THEN PRINT "Red Shroud smiles, and then vanishes.  The crowd murmers, and begins to laugh": PRINT "at you."
END IF
IF RM = 10 AND SonADead = 1 AND Captured = 0 THEN
PRINT "Suddenly, a molydeus guard walks up to you.  It says to you, 'Elf, you are"
PRINT "under arrest for the high crime of the murder of a fiend.  Come with me.'"
PRINT "Though you protest, you are stripped of your weapon and taken to a podium,"
PRINT "where you are chained to a platform.": Sword = 0: RedShroud = 7: Captured = 1: RM = 8: GOSUB 5: GOTO 940
END IF
IF GoingToDie = 0 THEN
IF RM = 17 OR RM = 18 OR RM = 19 THEN
Selling = INT(RND * 6) + 1
IF Selling = 1 THEN PRINT "'Buy this piece of wood from the Ship of Chaos!  Recently discovered in": PRINT "Elysium!  Amaze your friends!  Fool your enemies!'"
IF Selling = 2 THEN PRINT "'Buy this magical stone!  Carved from the Dark Heart of the Viper Woods of": PRINT "Zrintor!  A valuable piece of merchandise!'"
IF Selling = 3 THEN PRINT "'We here are selling unholy water!  Just the thing for you fiends looking to": PRINT "get ahead!' shouts out a merchant.  You look and see that the merchant is": PRINT "actually a Signer with black hair, attended by a githzerai mage."
IF Selling = 4 THEN PRINT "'I'm selling this bottled water, straight from Vudra!  Only fifty gold a": PRINT "bottle!' shouts out an obviously untrustworthy merchant."
IF Selling = 5 THEN PRINT "'Buy this hint book!  For THE BOOK, by David King!' shouts out a merchant. But,": PRINT "true to the pattern, another planeswalker buys it."
IF Selling = 6 THEN PRINT "'Buy this Book of Forbidden Lore!' shouts out a merchant.  You look, and see": PRINT "that the book that he is selling is only a cheap imitation."
END IF
END IF
IF GoingToDie > 0 THEN
GoingToDie = GoingToDie - 1
IF GoingToDie = 0 THEN PRINT "Without warning, the poison finally takes hold of your senses.  Your vision": PRINT "blurs and darkens as you fall to the floor of Broken Reach - dead.": Killer = 4: Killer$ = "poison": GOTO Dead2
IF GoingToDie <> 0 THEN PRINT "The mob of fiends surrounds you, preparing to rend you limb from limb.  They": PRINT "surround you, laughing at you, jeering at you."
END IF
END IF
IF Level = 12 THEN
PRINT "You can hear the terrified shrieks of voices what you would guess once were"
PRINT "almost angelic and beautiful.  But now they are frightened and terrified."
IF RM = 7 AND Talked1 = 1 THEN
MoodChange = INT(RND * 2) + 1
IF MID$(A$, 1, 4) = "talk" THEN MoodChange = 0
IF MoodChange = 1 THEN Mood = Mood - 1
IF MoodChange = 2 THEN Mood = Mood + 1
IF Mood <= 0 THEN Mood = 1
IF Mood >= 10 THEN Mood = 9
PRINT "A voice echoes in your head:  ";
IF Mood = 1 THEN PRINT "'Are you angels for working the!  Nothing do I": PRINT "will with have you to!'"
IF Mood = 2 THEN PRINT "'Trust I you not.  Evil not are good you are": PRINT "must be you.'"
IF Mood = 3 THEN PRINT "'Good you tendencies many have too.  Potential": PRINT "have you might, good purged of be you all must.'"
IF Mood = 4 THEN PRINT "'Steal you Arachnos Book from powerful?  Minion": PRINT "Chaos but of is Arachnos.'"
IF Mood = 5 THEN PRINT "'Forbidden the I know Book where Lore not.  News": PRINT "I not of Chaos hear realm of.'"
IF Mood = 6 THEN PRINT "'Chaos Lake lives center of Swans in.  Surrounded": PRINT "is citadels the by of Nobles Lake the is Arachnos.'"
IF Mood = 7 THEN PRINT "'Of death Chaos Angel is!  Clear stay realm her": PRINT "of!'"
IF Mood = 8 THEN PRINT "'Take life you hands of your into!  Enough not": PRINT "painful hanging yourself?  Food her pain is!  Like terror blood drinks she!'"
IF Mood = 9 THEN PRINT "'Resides 723 Chaos level she on.  Portal the": PRINT "barren is waste in the.  Me leave now, else kill I you will!'": Talked1 = 2
END IF
IF BlowUp > 0 THEN
BlowUp = BlowUp - 1
IF RM = 2 OR RM = 6 OR RM = 7 OR RM = 8 OR RM = 11 OR RM = 12 OR RM = 13 OR RM = 17 THEN
PRINT "The Ship of Chaos shakes around you, as if it were about to burst into flames."
IF BlowUp = 0 THEN
PRINT "Suddenly, the entire Ship of Chaos explodes without warning.  Unfortunately,"
PRINT "seeing how you were on it at the time, this is fatal.": Killer = 8: GOTO Dead2
GOTO Dead2
END IF
ELSE
IF BlowUp = 0 THEN
PRINT "You can see the Ship of Chaos shake, as if it were about to burst into flames."
PRINT "Suddenly, the entire Ship of Chaos explodes without warning.  The blast can"
PRINT "be seen all across this level of the Abyss, and for three brief minutes, this"
PRINT "entire level of the Abyss is encompassed in fire.  Unfortunately, seeing how"
PRINT "you were on that level at the time, this is fatal.": Killer = 8: GOTO Dead2
ELSE
PRINT "You can hear the Ship of Chaos shaking, as if it were about to erupt into"
PRINT "flames and explode, destroying everything on this layer!"
END IF
END IF
END IF
END IF
IF Level = 45 THEN
IF ViperTreeEatYou = 0 AND (RM = 3 OR RM = 4 OR RM = 5 OR RM = 9 OR RM = 10) THEN
ViperTreeEatYou = 6
END IF
IF RM <> 3 AND RM <> 4 AND RM <> 5 AND RM <> 9 AND RM <> 10 THEN ViperTreeEatYou = 0
IF ViperTreeEatYou > 0 THEN
ViperTreeEatYou = ViperTreeEatYou - 1
IF ViperTreeEatYou = 5 THEN PRINT "One of a viper tree's snake-like branches hovers over your head, sniffing at": PRINT "you, poking it's tongue in and out."
IF ViperTreeEatYou = 4 THEN PRINT "Another viper tree begins to examine you.  Now two snakes are sniffing at you."
IF ViperTreeEatYou = 3 THEN PRINT "Suddenly, one of the snakes strikes at you!  You dodge the blow, having seen": PRINT "it coming."
IF ViperTreeEatYou = 2 THEN PRINT "You feel as if the entire forest was watching you, just waiting for you to": PRINT "let down your guard."
IF ViperTreeEatYou = 1 THEN PRINT "Five snake-like branches surround your head, just waiting for you to let down": PRINT "you guard.  They are all sniffing you at once."
IF ViperTreeEatYou = 0 THEN PRINT "Suddenly, five snakes strike out at you at once from all directions.  Their": PRINT "venom works their way through your system in seconds.  Then, you fall to the": PRINT "groud, twitching.  In case you didn't realize, this is fatal.": Killer = 10: Killer$ = "a forest of Viper Trees": GOTO Dead2
END IF
IF GetOutOfTown > 0 AND RM <> 1 AND RM <> 2 AND RM <> 6 AND RM <> 7 AND RM <> 8 AND RM <> 11 AND RM <> 12 AND RM <> 13 THEN GetOutOfTown = 0
IF GetOutOfTown > 0 THEN
GetOutOfTown = GetOutOfTown - 1
IF GetOutOfTown <> 0 THEN PRINT "The tanar'ri of the town scream out at you, yelling at you, tearing at you,": PRINT "urging you to get out of town."
IF GetOutOfTown = 0 THEN PRINT "Suddenly, Graz'zt appears before you.  'Your pretensions and amusing, but": PRINT "futile,' he says to you.  With that, he reaches out with one of his hands, and": PRINT "snaps your neck.": Killer = 11: Killer$ = "Abyssal Lord Graz'zt": GOTO Dead2
END IF
IF Torture > 0 THEN
Torture = Torture - 1
IF Torture = 9 THEN PRINT "'I am Graz'zt, Lord of this Layer of the Abyss.  You have offended me,' says": PRINT "a voice from the corner.  'Therefore, you must be taught a lesson.'"
IF Torture = 8 THEN PRINT "'Let the punishment begin,' says Graz'zt.  An unknown assailant whips you in": PRINT "the back with a scourge!": GOSUB Whip
IF Torture <= 7 AND Torture >= 1 THEN PRINT "The whip bites again into your back.  'Again!' shouts a voice.": GOSUB Whip
IF Torture = 0 THEN PRINT "You can hear a voice saying, 'He lived, master!'  The reply is a firm, 'Take": PRINT "him to the block.'": PRINT : PRINT "You are unchained from the wall, and dragged out of the palace.  You are tied": PRINT "up again, and when you regain control of yourself, your head is on an": PRINT "executioner's block.": RM = 1: TimeToBehead = 6: GOSUB 5
END IF
IF TimeToBehead > 0 AND Free = 0 THEN
TimeToBehead = TimeToBehead - 1
IF TimeToBehead = 5 THEN PRINT "Out of the faded shadows steps a molydeus wearing a black hood.  It smiles, and": PRINT "raises its axe to the crowd, as if in salute."
IF TimeToBehead = 4 THEN PRINT "The crowd answers the Molydeus's salute.  Suddenly, a voice seems to speak from": PRINT "the very air.  It says, 'Graz'zt, Lord of this Layer of the Abyss, has decided": PRINT "you to be a threat.  The sentence is death.'"
IF TimeToBehead = 3 THEN PRINT "The molydeus with the black hood chuckles to itself as it approaches you with": PRINT "its sharp axe.  The crowd screams for blood."
IF TimeToBehead = 2 THEN PRINT "The molydeus smiles, and brings down its axe on your neck.  You scream, but": PRINT "in the middle of your pain, you note that the molydeus missed a bit.  He missed": PRINT "the center of your neck by about an inch to the left.": GOSUB ThatHurt
IF TimeToBehead = 1 THEN PRINT "The molydeus smiles, and once again brings down its axe on your neck.  You": PRINT "scream, but in the middle of your pain, you note that the molydeus missed a bit.": PRINT "He missed the center of your neck by about an inch to the right.": GOSUB ThatHurt
IF TimeToBehead = 0 THEN PRINT "The molydeus smiles, and once again brings down its axe on your neck.  You": PRINT "scream, but this time it's fatal.": Killer$ = "executioner Molydeus": Killer = 9: GOTO Dead2
END IF
END IF
IF Level = 400 THEN
IF RM = 5 THEN
LinePlace = LinePlace + 1
IF LinePlace = 1 THEN PRINT "A man ahead of you enters the cavern.  Seconds after he enters, you can hear": PRINT "screaming, and then the screaming is silenced."
IF LinePlace = 2 THEN PRINT "A woman ahead of you enters the cavern.  Soon after, you can hear shrieks from": PRINT "the inside.  The shrieks are then suddenly silenced."
IF LinePlace = 3 THEN PRINT "The man ahead of you, a gaunt and haggard man all in grey, steps into the": PRINT "cavern.  Nothing happens.  No screams, nothing."
IF LinePlace = 4 THEN PRINT "A molydeus pokes you in the back, saying, 'Your turn!'  You step inside the": PRINT "cavern.": RM = 2: GOSUB 5
END IF
IF NalfTalk > 0 AND RM = 2 THEN
NalfTalk = NalfTalk - 1
IF Punish = 0 THEN
IF NalfTalk = 3 THEN PRINT "'The Elf.  Born in Arborea, current occupation: adventurer,' intones a voice": PRINT "from the very walls the surround you."
IF NalfTalk = 2 THEN PRINT "'We are the nalfreshnee court, Elf.  Every traveller that enters the Abyss will": PRINT "stand before us sooner or later.  We judge each and every one fairly and": PRINT "justly.'"
IF NalfTalk = 1 THEN PRINT "'Caused a bit of trouble in Broken Reach.  Destroyed a Ship of Chaos.  Killed": PRINT "three fiends, maybe more, on Carceri.  Two of these were Sons of Chaos, while": PRINT "one was a shator.'"
IF NalfTalk = 0 THEN PRINT "'For these crimes, Elf, we sentence you to the burning death.  If you ever": PRINT "return to these courts again, you will be judged again accordingly.'  Suddenly,": PRINT "you are somewhere else.": RM = 3: GOSUB 5: GOTO 940
END IF
IF Punish = 1 THEN
IF NalfTalk = 3 THEN PRINT "'Once again the case of The Elf comes before us.  Born in Arborea, current": PRINT "occupation: adventurer.'"
IF NalfTalk = 2 THEN PRINT "'Let the record be shown that The Elf was strong enough to actually survive": PRINT "one of our punishments.  For this, he will be remembered.'"
IF NalfTalk = 1 THEN PRINT "'Elf, you shall be punished as the Lady of Pain punishes all in her realm.  We": PRINT "shall send you to the Mazes, from which you will never return.'"
IF NalfTalk = 0 THEN PRINT "Suddenly, a portal opens before you, and you are forced through by an unknown": PRINT "force.  Suddenly, you are somewhere else.": PRINT : RM = 1: GOSUB 5: GOTO 940
END IF
IF Punish = 2 THEN
IF NalfTalk = 3 THEN PRINT "'Once again does the case of The Elf come before us.'"
IF NalfTalk = 2 THEN PRINT "'The Elf has survived two of the most diabolic punishments devised by fiend or": PRINT "mortal alike of the millenia of existence.  Let the record show that The Elf is": PRINT "an extraordinary being.'"
IF NalfTalk = 1 THEN PRINT "'Our final punishment for you is one such that you will never again stand before": PRINT "us as long as you are alive, Elf.'"
IF NalfTalk = 0 THEN
PRINT "'We have decided to send you through a portal to the Seven Hundred and Twenty-"
PRINT "Third layer of the Abyss.  May whatever God you believe in have mercy upon"
PRINT "your soul.'"
PRINT "Suddenly, a glowing green portal appears before you.  You are pushed through"
PRINT "it, away from the nalfeshnee courts, into another layer of The Abyss.... You"
PRINT "feel disoriented.  When you look up again, you are somewhere else."
PRINT : Level = 723: RM = 7: GOSUB 5: GOTO 940
END IF
END IF
END IF
IF RM = 3 THEN
IF Climbing >= 3 THEN Dmg = 6 - Climbing
IF Climbing < 3 THEN Dmg = 6
HP = HP - Dmg
PRINT "The flames lick up at you, burning you, scorching you, leaving no part of your"
PRINT "body untouched."
IF HP <= 0 THEN PRINT "The flames were too much for you.  Your body falls from the chain into an": PRINT "eternal inferno.  Nobody ever hears from you again.": Killer = 13: GOTO Dead2
END IF
END IF
IF Level = 723 THEN
IF ChaosBeat = 4 THEN PRINT "Chaos resumes her place guarding the portal.": ChaosBeat = 3
IF ChaosBeat = 5 THEN ChaosBeat = 4
IF GoingToDie2 > 0 THEN GoingToDie2 = GoingToDie2 - 1
IF GoingToDie2 <= 0 AND ChaosBeat = 2 THEN
PRINT "Suddenly, Chaos appears before you, coming straight up out of the ground.  'I'm"
PRINT "sorry, mortal, but I've changed my mind.  You are to die now.'  She says this"
PRINT "quite calmly, right after she snaps your neck."
Killer = 14: Killer$ = "Chaos": GOTO Dead2
END IF
IF GoingToDie2 <= 0 AND ChaosBeat = 3 THEN PRINT "Chaos reaches for you, and snaps your neck quite calmly.": Killer = 14: Killer$ = "Chaos": GOTO Dead2
IF PelnarTalk > 0 THEN
PelnarTalk = PelnarTalk - 1
IF PelnarTalk = 4 THEN
PRINT "'Welcome, Elf.  You have come at last.  I have waited long,' says a voice."
PRINT "'Pelnar,' you say."
PRINT "'No, Pelnar was but a mortal name.  Here, they know me as Xarachos, the third": PRINT "of the four Arachnos.  However, soon my position will change.  When I give": PRINT "this book to my mistress,' Xarachos says, holding up the Book of Forbidden Lore": PRINT "in front of you, and then taking it back, 'I will be second only to Chaos": PRINT "herself.  Then again, I may keep The Book, and use it... yes, use it to destroy": PRINT "Chaos.'"
END IF
IF PelnarTalk = 3 THEN PRINT "'Well, you've broken through my guards,' says Xarachos.  'I guess I'm the only": PRINT "thing left in your way to get rid of.'"
IF PelnarTalk = 2 THEN PRINT "'It all comes down to this, now doesn't it.  My 'treachery' to you in Carceri;": PRINT "you actually think that means something.  Elf, I've done worse in my day, and": PRINT "I've done it better too.  If I had been you, I would have figured out my true": PRINT "identity long before you really did.'"
IF PelnarTalk = 1 THEN PRINT "'I guess I will be expected to fight you, won't I?  <Sigh>, things get so": PRINT "dreadfully boring around here.  Every once in a while a barmy adventurer": PRINT "actually thinks he's something, that he could actually kill me.  In the end,": PRINT "it's all the same.  I live, they don't.'"
IF PelnarTalk = 0 THEN PRINT "'Now, may the battle begin whenever you are ready, mortal,' Xarachos intones,": PRINT "and leans back on its throne of blackened human bones."
END IF
END IF
RETURN
5 IF A$ <> "look" AND A$ <> "load" THEN Looked = 0
IF Level = 1 THEN BrokenReach
IF Level = 12 THEN TwelveTrees
IF Level = 45 THEN Azzagrat
IF Level = 400 THEN WoefulEscarad
IF Level = 723 THEN ChaosRealm
RETURN
400
PRINT "Pelnar.  Your trusted friend.  He turned out to be one of the minions of Chaos."
PRINT "He stole the Book of Forbidden Lore from you.  Betrayal is an ugly thing, one"
PRINT "that you intend to punish him for.  You have passed through the gates to the"
PRINT "Abyss, back to the world of eternal pain and torture.  However, you are here"
PRINT "for a purpose.  Find the Book of Forbidden Lore, and then get out as quickly"
PRINT "as you can.  It will not be an easy task, but it is one that you intend to"
PRINT "carry out, do or die."
PRINT "[MORE]", A$
2 A$ = INKEY$
IF LEN(A$) = 0 THEN GOTO 2
CLS
LOCATE 10
PRINT "                         A       B       Y       S       S": PRINT
PRINT "                             The Land of Infinite Evil"
3 A$ = INKEY$
IF LEN(A$) = 0 THEN GOTO 3
CLS
PRINT
PRINT "Abyss 2:  Pelnar's Reward": PRINT
PRINT "  Designer:  David King"
PRINT "  Programmer:  David King"
PRINT "  Acknowledgments to TSR, inc."
PRINT "You are deposited onto the cold, hard street.  You moan, and get up."
RETURN
FightSonA:
Hit = INT(RND * 2) + 1
IF Hit = 1 THEN
PRINT "You swing your sword out at the fiend.  It screams out in pain as your magical"
PRINT "blade pierces it's hide!"
Dmg = INT(RND * 8) + 5
SonAHp = SonAHp - Dmg
IF SonAHp <= 0 THEN
BEEP
PRINT "The fiend gives out one final scream as it falls to the floor of the alley,"
PRINT "dead.  It's scream is heard all over town, and those that do not hear the"
PRINT "scream would obviously see the huge blast of fire and heat that emerged from"
PRINT "the spot where it fell."
SonADead = 1
END IF
END IF
IF Hit = 2 THEN PRINT "You slash your sword out at the fiend, but you miss!"
GOTO 940
FightMoly:
Hit = INT(RND * 2) + 1
IF Hit = 1 THEN
PRINT "You swing your sword at the Molydeus, and you hit!  The Molydeus cries out in"
PRINT "pain!"
Dmg = INT(RND * 8) + 5
MolyHp = MolyHp - Dmg
IF MolyHp <= 0 THEN
BEEP
PRINT "You bring your sword down on the Molydeus one last time, and it gives out a"
PRINT "final howl as it falls to the floor of the Abyss and explodes in a blast of"
PRINT "heat and fire."
MolyDead = 2: IF Level <> 45 THEN MolyHp = 60
IF Level = 45 THEN Free = 2: GetOutOfTown = 6
END IF
END IF
IF Hit = 2 THEN PRINT "You swing your sword at the Molydeus, but you miss!"
GOTO 940
FightFire:
Hit = INT(RND * 2) + 1
IF Hit = 1 THEN
PRINT "You bring your sword down through the living flame.  The flame recoils in pain"
PRINT "as it screams an odd sort of scream, one that sounds like fire burning!"
Dmg = INT(RND * 8) + 5
FlameHp = FlameHp - Dmg
IF FlameHp <= 0 THEN
BEEP
PRINT "You bring your sword down on the living flame one last time, and it seems to"
PRINT "lose all sort of will to live as if falls to the floor of the Ship of Chaos,"
PRINT "and just falls through it.  Suddenly, the entire Ship of Chaos shakes around"
PRINT "you, as if it was going to explode!"
Talked1 = 4
BlowUp = 8
END IF
END IF
IF Hit = 2 THEN PRINT "You swing your sword at the living flame, but your sword just goes right": PRINT "through it!"
GOTO 940
ERR1: PRINT "Save/load file error.": CLOSE #1: GOTO 940
940 GOSUB 1: PRINT : INPUT "Abyss>", A$: PRINT
IF MID$(A$, 1, 1) = "q" THEN
INPUT "Do you really want to quit?", A$
IF MID$(A$, 1, 1) = "y" THEN COLOR 0: END
PRINT "Good.  The battle must be continued.  Pelnar must be found, and destroyed.  The"
PRINT "book must be recovered."
GOTO 940
END IF
IF A$ = "health" THEN PRINT "You have"; HP; "hit points out of"; MaxHp; "maximum.": GOTO 940
IF A$ = "fight" AND Sword = 0 THEN PRINT "You'd better get a sword, first.": GOTO 940
IF A$ = "regenerate" THEN
IF RM = 3 AND Level = 400 THEN PRINT "Not now!!  You'd be burned to a crisp!": GOTO 940
IF Talked1 = 3 THEN PRINT "Not now!  You're under attack by living flame!": GOTO 940
IF RM = 5 AND Level = 400 THEN PRINT "You don't really have the time for that.": GOTO 940
IF PelnarDead = 1 THEN PRINT "Not now!  Xarachos is about to make meat out of you!": GOTO 940
IF ChaosBeat = 1 THEN PRINT "Not now!  Chaos is attacking you!": GOTO 940
IF MolyDead = 1 AND RM = 14 AND Level = 12 THEN PRINT "Not now!  You're being attacked by a Molydeus!": GOTO 940
IF Captured = 1 THEN PRINT "Not now.": GOTO 940
IF GetOutOfTown > 0 THEN PRINT "Not now!  You're being chased by a mob of tanar'ri!": GOTO 940
IF GoingToDie > 0 AND Level = 1 THEN PRINT "Not now!  You don't have enough time to regenerate!": GOTO 940
IF SonADead = 0 AND RM = 5 THEN PRINT "Not now!  You're in the middle of a fight!": GOTO 940
IF Torture > 0 THEN PRINT "Not now.  You're being scourged!": GOTO 940
IF Free = 0 AND RM = 1 THEN PRINT "Not now.  Definately not now!": GOTO 940
IF Free = 1 THEN PRINT "Not now!  You're being attacked by a Molydeus!": GOTO 940
IF ChaosSonDead = 1 THEN PRINT "Not now!  You're being attacked by a minion of Chaos!": GOTO 940
IF ChaosSonDead = 3 THEN PRINT "Not now!  You're being attacked by a minion of Chaos!": GOTO 940
IF ChaosSonDead = 5 THEN PRINT "Not now!  You're being attacked by a minion of Chaos!": GOTO 940
IF ChaosSonDead = 7 THEN PRINT "Not now!  You're being attacked by a minion of Chaos!": GOTO 940
PRINT "You clutch your body, and your wounds begin to knit themselves.  Soon, you are"
PRINT "completely healed.  No wounds remain; no blood covers your body."
MaxHp = MaxHp - 1: HP = MaxHp
GOTO 940
END IF
IF A$ = "look" OR A$ = "l" THEN GOSUB 5: GOTO 940
IF A$ = "i" THEN GOTO I
IF A$ = "save" THEN GOTO SAVE
IF A$ = "load" THEN GOTO LOAD
IF Level = 1 THEN
IF Captured = 1 AND MID$(A$, 1, 4) = "pull" THEN
PRINT "You pull on your chains with your mighty strength, and ";
Pull = Pull + 1
IF Pull <> 3 THEN PRINT "cause your two fiendish": PRINT "guards to scoot a bit forward, but they pull back.": GOTO 940
IF Pull >= 3 THEN
PRINT "your chain snaps loose!":
IF RedShroud = 0 THEN PRINT "Your two fiendish guards are tossed into the crowd.  The crowd gasps in fear,": PRINT "and half of them run away immediately.  Those that remain are helping the": PRINT "tanar'ri to their feet.  You'd better get your sword back and get out of": PRINT "here as soon as you can!": Captured = 2: GOTO 940
IF RedShroud <> 0 THEN PRINT "Red Shroud smiles, and snaps your neck.": Killer$ = "Red Shroud": Killer = 5: GOTO Dead2
END IF
END IF
IF Captured = 1 AND RM = 8 AND A$ = "s" THEN PRINT "You are chained to the platform.": GOTO 940
IF A$ = "yes" AND RedShroud = 4 THEN PRINT "You say, 'The fiend attacked me!  I had no choice but to--'  But your speech": PRINT "is cut off by Red Shroud's mocking laughter.  If it were under any other": PRINT "circumstance, you'd think she would have a sweet laugh.  But the subleties of": PRINT "the laugh are that of mocking and derision.": GOTO 940
IF A$ = "e" AND RM = 2 OR (A$ = "n" AND RM = 2) THEN PRINT "There is a locked door in that direction.": GOTO 940
IF A$ = "search" AND RM = 1 AND Sword = 0 THEN
PRINT "You search through the swords in the entire room, trying to find your own"
PRINT "blood-stained sword."
Sword = INT(RND * 4) + 1
IF Sword <> 1 THEN Sword = 0
IF Sword = 1 THEN PRINT "You find your sword in the hands of a suit of blackened armor.  You pry it": PRINT "free from the armor's grip."
GOTO 940
END IF
IF A$ = "talk" AND RM = 4 AND Talked = 0 THEN
PRINT "You walk up to the human.  'Hello, berk,' he says to you.  'What do you want,"
PRINT "sod?'"
PRINT "'I'm looking for Chaos's realm,' you say."
PRINT "'You're insane,' says the human, 'What, was hanging yourself not painful"
PRINT "enough?'"
PRINT "'Cut it out, sod,' you say.  'Tell me where I can find her level,' you say in"
PRINT "a menacing tone of voice."
PRINT "'I don't know anything!' the human says... 'Leave... leave me alone!'  He runs"
PRINT "out of the inn.  From across the room a voice calls out, 'There's a portal to"
PRINT "her level in an alley a bit to the east!'"
Talked = 1: GOTO 940
END IF
IF A$ = "fight" AND Appeared = 1 AND RM = 5 AND SonADead = 0 THEN GOTO FightSonA
IF A$ = "s" AND Appeared = 1 AND RM = 5 AND SonADead = 0 THEN PRINT "The fiend spreads his wings out, preventing your escape!": GOTO 940
IF A$ = "s" AND RM = 23 THEN PRINT "The gates to Broken Reach are shut tight.  No way you'll be getting out that": PRINT "way.": GOTO 940
IF A$ = "n" AND RM = 7 AND Captured <> 2 THEN PRINT "A tanar'ri guard stops you.  'No passing, sod!'": GOTO 940
IF A$ = "n" AND RM = 7 AND Captured = 2 AND SuckedUp = 0 THEN
PRINT "You rush inside the Armory, where you know that your sword will be.  A tanar'ri"
PRINT "appears next to you, but you slam it in the wall.  It mutters out something in"
PRINT "it's last moments about how, 'Stop him from reaching the portal in the east"
PRINT "tower!'"
SuckedUp = 1
END IF
IF A$ = "s" AND RM = 8 THEN PRINT "You quickly leap down from the podium.  Suddenly, a whistle goes off, a whistle": PRINT "that can be heard all over the town.  You suddenly find yourself the target of": PRINT "the glare of hundreds of tanar'ri.  You'd better get what needs to be done": PRINT "as soon as you can!": GoingToDie = 35
IF A$ = "n" AND RM >= 7 AND RM <> 8 AND RM <> 12 AND RM <> 13 AND RM <> 14 AND RM <> 17 AND RM <> 19 AND RM <> 21 AND RM <> 22 AND RM <> 24 AND RM <> 25 AND RM <> 27 AND RM <> 29 AND RM <> 30 AND RM <> 31 THEN RM = RM - 5: GOSUB 5: GOTO 940
IF A$ = "s" AND RM <> 1 AND RM <> 3 AND RM <> 7 AND RM <> 9 AND RM <> 12 AND RM <> 11 AND RM <> 14 AND RM <> 15 AND RM <> 17 AND RM <> 19 AND RM <> 21 AND RM <> 22 AND RM <> 24 AND RM <> 25 AND RM <= 30 THEN RM = RM + 5: GOSUB 5: GOTO 940
IF A$ = "e" AND RM <> 2 AND RM <> 3 AND RM <> 4 AND RM <> 5 AND RM <> 7 AND RM <> 8 AND RM <> 10 AND RM <> 12 AND RM <> 13 AND RM <> 15 AND RM <> 19 AND RM <> 21 AND RM <> 24 AND RM <> 25 AND RM <> 30 AND RM <> 35 THEN RM = RM + 1: GOSUB 5: GOTO 940
IF A$ = "w" AND RM <> 1 AND RM <> 3 AND RM <> 4 AND RM <> 5 AND RM <> 6 AND RM <> 8 AND RM <> 9 AND RM <> 11 AND RM <> 13 AND RM <> 14 AND RM <> 17 AND RM <> 21 AND RM <> 22 AND RM <> 25 AND RM <> 27 AND RM <> 31 THEN RM = RM - 1: GOSUB 5: GOTO 940
IF A$ = "ne" THEN
IF RM = 7 OR RM = 19 OR RM = 31 THEN RM = RM - 4: GOSUB 5: GOTO 940
END IF
IF A$ = "sw" THEN
IF RM = 3 OR RM = 15 OR RM = 27 THEN RM = RM + 4: GOSUB 5: GOTO 940
END IF
IF A$ = "nw" THEN
IF RM = 17 OR RM = 9 THEN RM = RM - 6: GOSUB 5: GOTO 940
END IF
IF A$ = "se" THEN
IF RM = 11 OR RM = 3 THEN RM = RM + 6: GOSUB 5: GOTO 940
END IF
IF A$ = "u" AND GoingToDie > 0 AND Sword = 0 AND RM = 24 AND MolyAppeared = 0 THEN PRINT "Suddenly, a molydeus appears before you.  He smiles in an odd way.": MolyAppeared = 1: GOTO 940
IF A$ = "u" AND GoingToDie > 0 AND Sword = 1 AND RM = 24 AND MolyDead = 0 AND MolyAppeared = 0 THEN PRINT "Suddenly, a molydeus appears before you.  You look at him, and swing your": PRINT "sword at him in a swing that is inflammed by a desire to live.  The molydeus's": PRINT "dog head falls to the ground, dead.": MolyDead = 1: GOTO 940
IF A$ = "u" AND GoingToDie > 0 AND Sword = 0 AND RM = 24 AND MolyAppeared = 1 THEN PRINT "The molydeus blocks the way."
IF A$ = "fight" AND GoingToDie > 0 AND Sword = 1 AND RM = 24 AND MolyApperead = 1 THEN PRINT "You swing your sword at the molydeus in a swing that is inflammed by a desire": PRINT "to live.  The molydeus's dog head falls to the ground, dead.": MolyDead = 1: GOTO 940
IF A$ = "u" AND GoingToDie = 0 AND RM = 24 THEN PRINT "Suddenly, a molydeus appears before you.  He smiles in an odd way, and leans": PRINT "on his axe.": MolyAppeared = 1: GOTO 940
IF A$ = "fight" AND GoingToDie = 0 AND RM = 24 THEN PRINT "The molydeus smiles, and swings his axe at you, decapitating you.  In case you": PRINT "did not guess, this is fatal.": Killer$ = "a Molydeus": Killer = 6: GOTO Dead2
IF A$ = "enter portal" AND RM = 25 THEN
PRINT "You leap into the portal.  Behind you, you can hear mocking laughter, which is"
PRINT "the laugh of Red Shroud.  It is a laugh that will haunt you for the rest of"
PRINT "your life.  You are suddenly somewhere else...": PRINT : PRINT : PRINT
MolyDead = 0: RM = 5: Level = 12: GOSUB 5: GOTO 940
END IF
IF A$ = "u" AND RM = 22 THEN RM = 21: GOSUB 5: GOTO 940
IF A$ = "u" AND RM = 24 THEN RM = 25: GOSUB 5: GOTO 940
IF A$ = "d" AND RM = 21 THEN RM = 22: GOSUB 5: GOTO 940
IF A$ = "d" AND RM = 25 THEN RM = 24: GOSUB 5: GOTO 940
END IF
IF Level = 12 THEN
IF MID$(A$, 1, 4) = "talk" AND RM = 7 AND Talked1 = 0 THEN
PRINT "You approach the glowing stone.  Suddenly, it flares to life and begins to"
PRINT "glow."
Talked1 = 1: Mood = 1: GOTO 940
END IF
IF A$ = "s" AND Talked1 = 2 AND RM = 7 THEN PRINT "Suddenly, a wall of force appears in that direction!  You can't seem to get": PRINT "past it!  You hear a voice in your head, 'Change my mind always.  Stay always": PRINT "here forever and ever you.'": GOTO 940
IF MID$(A$, 1, 4) = "talk" AND RM = 7 AND Talked1 = 1 THEN
IF Mood = 1 THEN PRINT "'No!  I am not working for angels!  I am only here to find the Book of": PRINT "Forbidden Lore!' you say."
IF Mood = 2 THEN PRINT "'I am as Evil and Chaotic as people get.  I recently broke out of Broken Reach,": PRINT "causing a riot there!' you say."
IF Mood = 3 THEN PRINT "'I have NO good tendencies.  I am Evil Incarnate,' you say."
IF Mood = 4 THEN PRINT "'Yes, a cross-trading Arachnos stole The Book of Forbidden Lore from me.  I": PRINT "need it back,' you say."
IF Mood = 5 THEN PRINT "'Surely you know more.  A magnificent ship like you ought to know more.'"
IF Mood = 6 THEN PRINT "'Thank you very much,' you say, 'Can you tell me about Chaos?'"
IF Mood = 7 THEN PRINT "'I am determined to get The Book of Forbidden Lore back,' you say."
IF Mood = 8 THEN PRINT "'The risks are not important.  Tell me what to do,' you say."
Mood = Mood + 1: GOTO 940
END IF
IF MID$(A$, 1, 4) = "talk" AND RM = 7 AND Talked1 = 2 THEN PRINT "'Told I you know all I!  Resides 723 Chaos level she on.  Portal the barren": PRINT "is waste in the.  Me leave now, else kill I you will!'": GOTO 940
IF A$ = "s" AND Talked1 = 3 THEN PRINT "The fire blocks your escape!": GOTO 940
IF RM = 7 AND Talked1 = 2 AND (A$ = "fight" OR MID$(A$, 1, 5) = "break" OR MID$(A$, 1, 5) = "smash") THEN
PRINT "You raise your sword up, and bring it down on the orb.  Suddenly, the entire"
PRINT "orb explodes, blasting you to the side of the ship.  It erupts in flame as"
PRINT "you hear a voice in your head, 'Destroyed you me!  Pay shall you!'  The entire"
PRINT "cabin is rocked by a magical explosion as you are thrown into the wall and a"
PRINT "large sprout of fire seems to take form as it moves closer to attack you!"
Talked1 = 3
HP = HP - 20: FlameHp = 20
IF HP <= 0 THEN PRINT : PRINT "Unfortunately, you don't get the chance to defend yourself from the fire, as": PRINT "the explosion was fatal.": Killer = 7: Killer$ = "the Ship of Chaos": GOTO Dead2
GOTO 940
END IF
IF A$ = "fight" AND RM = 7 AND Talked1 = 3 THEN GOTO FightFire
IF A$ = "fight" AND RM = 14 AND MolyDead = 1 THEN GOTO FightMoly
IF A$ = "fight" AND RM = 14 AND MolyDead = 0 THEN MolyDead = 1: GOTO FightMoly
IF MolyDead = 1 AND RM = 14 THEN
IF A$ = "n" OR A$ = "ne" THEN PRINT "The Molydeus stops you.": GOTO 940
END IF
IF A$ = "n" AND RM >= 9 AND RM <> 17 THEN RM = RM - 5: GOSUB 5: GOTO 940
IF A$ = "s" AND RM <> 2 AND RM <> 3 AND RM <= 9 THEN RM = RM + 5: GOSUB 5: GOTO 940
IF A$ = "e" AND RM <> 2 AND RM <> 5 AND RM <> 6 AND RM <> 7 AND RM <> 8 AND RM <> 10 AND RM <> 11 AND RM <> 13 AND RM <> 14 AND RM <> 17 THEN RM = RM + 1: GOSUB 5: GOTO 940
IF A$ = "w" AND RM <> 2 AND RM <> 3 AND RM <> 6 AND RM <> 7 AND RM <> 8 AND RM <> 9 AND RM <> 11 AND RM <> 12 AND RM <> 14 AND RM <> 17 THEN RM = RM - 1: GOSUB 5: GOTO 940
IF A$ = "enter portal" AND RM = 9 AND Talked1 = 4 THEN
BlowUp = 0
PRINT "You jump into the portal.  Behind you, you can hear the Ship of Chaos"
PRINT "exploding.  Looking back for a few seconds, you can see the entire level of"
PRINT "Twelvetrees being encompassed in fire.  That is a vision that you will see"
PRINT "every night before you sleep for the rest of your life.  It will haunt you"
PRINT "forever.....  When you look up again, you are somewhere else."
COLOR 8: RM = 7: Level = 45: GOSUB 5: GOTO 940
END IF
IF A$ = "ne" THEN
IF RM = 6 OR RM = 9 OR RM = 14 OR RM = 17 THEN RM = RM - 4: GOSUB 5: GOTO 940
END IF
IF A$ = "sw" THEN
IF RM = 2 OR RM = 5 OR RM = 10 OR RM = 13 THEN RM = RM + 4: GOSUB 5: GOTO 940
END IF
IF A$ = "nw" THEN
IF RM = 8 OR RM = 17 OR RM = 10 THEN RM = RM - 6: GOSUB 5: GOTO 940
END IF
IF A$ = "se" THEN
IF RM = 2 OR RM = 11 OR RM = 4 THEN RM = RM + 6: GOSUB 5: GOTO 940
END IF
IF A$ = "u" AND RM = 14 AND MolyDead = 0 THEN PRINT "The molydeus is guarding the ship.": GOTO 940
IF A$ = "u" AND RM = 14 THEN RM = 13: GOSUB 5: GOTO 940
IF A$ = "d" AND RM = 13 THEN RM = 14: GOSUB 5: GOTO 940
END IF
IF Level = 45 THEN
IF A$ = "e" AND RM = 13 AND Free <> 2 THEN PRINT "The gates are guarded by about four molydeus that wouldn't tolerate you": PRINT "leaving.": GOTO 940
IF A$ = "e" AND RM = 13 THEN
PRINT "You run out of town, escaping the mass of angry demons.  When you look back"
PRINT "to see if they have stopped chasing you, the only demon you see is a demon with"
PRINT "huge bat-like wings, with horns growing out of his head, a pentagram inscribed"
PRINT "in his forehead, and is wearing spectacles.  When you look closer, he is gone."
END IF
IF A$ = "w" AND RM = 14 THEN PRINT "Suicide is not something that this gate promotes.": GOTO 940
IF A$ = "w" AND RM = 12 AND Invite = 1 THEN PRINT : PRINT : PRINT "The molydeus guards take a look at your invitation, and laugh.  You are": PRINT "escorted inside, down long hallways, deep below the ground.  It is there that": PRINT "the dungeon is.": PRINT : Invite = 2: Torture = 10: PRINT "Suddenly, you are taken without warning and strapped to a wall!": PRINT
IF A$ = "w" AND RM = 12 AND Invite = 0 THEN PRINT "The molydeus guards stop you.": GOTO 940
IF A$ = "fight" AND RM = 12 THEN PRINT "Suicide is not something that this game promotes.": GOTO 940
IF A$ = "fight" AND RM = 1 AND Free = 1 THEN GOTO FightMoly
IF MID$(A$, 1, 4) = "talk" AND RM = 8 AND Invite = 0 THEN
PRINT "The half-elf looks at you in shock.  'Leave... leave me alone!  I don't know"
PRINT "anything!' With that, he runs out of the inn.  Suddenly, a fiend bursts in the"
PRINT "door.  He says, 'Is there 'The Elf' in here?'"
PRINT "'That's me,' you say.  'Why?'"
PRINT "'I have an invitation to the Argent Palace for you.  Here, take it.'  He hands"
PRINT "you an invitation.  The entire inn falls silent."
Invite = 1: GOTO 940
END IF
IF A$ = "n" AND RM = 15 AND SaidThis = 0 THEN PRINT "Maybe I misjudged you....": SaidThis = 1
IF A$ = "nw" AND RM = 15 AND SaidThis = 0 THEN PRINT "Maybe I misjudged you....": SaidThis = 1
IF A$ = "e" AND RM = 1 AND Free = 0 THEN PRINT "You are currently tied up and awaiting the executioners axe.  If you could": PRINT "get away, you would."
IF A$ = "e" AND RM = 1 AND Free = 2 THEN PRINT "You leap down from the executioner's block, into the mob of tanar'ri."
IF A$ = "e" AND RM = 1 AND Free = 1 THEN PRINT "The Molydeus snarls, 'Not so fast, Elf.  We have some business to take care": PRINT "of.'": GOTO 940
IF MID$(A$, 1, 5) = "break" AND Free = 0 AND RM = 1 THEN
Break = Break + 1
IF Break <> 3 THEN PRINT "Your bonds hold tight, though they seem to strain a bit.": GOTO 940
IF Break = 3 THEN PRINT "You snap your bonds!  Your molydeus executioner snarls, and leaps to the": PRINT "attack!": Free = 1: GOTO 940
END IF
IF A$ = "enter portal" AND RM = 3 THEN
PRINT "The viper trees close in at you as you throw yourself through the portal.  The"
PRINT "hissing of an entire forest of viper trees would be enough to drive anyone"
PRINT "barmy.  The last sight you see before you escape from that layer is a huge"
PRINT "snake-like branch staring straight at you.... You are suddenly somewhere else."
COLOR 15: NalfTalk = 4: Level = 400: RM = 8: GOSUB 5: GOTO 940
END IF
IF A$ = "e" AND RM = 11 THEN PRINT "You're strapped to the ceiling by chains to your hands.  Suffice to say, you're": PRINT "not going anywhere.": GOTO 940
IF A$ = "n" AND RM >= 7 AND RM <> 8 AND RM <> 11 AND RM <> 13 AND RM <> 14 THEN RM = RM - 5: GOSUB 5: GOTO 940
IF A$ = "s" AND RM <> 1 AND RM <> 3 AND RM <> 6 AND RM <> 8 AND RM <> 9 AND RM <= 10 THEN RM = RM + 5: GOSUB 5: GOTO 940
IF A$ = "e" AND RM <> 2 AND RM <> 5 AND RM <> 8 AND RM <> 10 AND RM <> 12 AND RM <> 15 THEN RM = RM + 1: GOSUB 5: GOTO 940
IF A$ = "w" AND RM <> 1 AND RM <> 2 AND RM <> 3 AND RM <> 6 AND RM <> 9 AND RM <> 11 AND RM <> 13 THEN RM = RM - 1: GOSUB 5: GOTO 940
IF A$ = "ne" AND RM = 9 THEN RM = 5: GOSUB 5: GOTO 940
IF A$ = "sw" AND RM = 5 THEN RM = 9: GOSUB 5: GOTO 940
IF A$ = "nw" THEN
IF RM = 9 OR RM = 10 OR RM = 15 OR RM = 13 THEN RM = RM - 6: GOSUB 5: GOTO 940
END IF
IF A$ = "se" THEN
IF RM = 3 OR RM = 4 OR RM = 9 OR RM = 7 THEN RM = RM + 6: GOSUB 5: GOTO 940
END IF
END IF
IF Level = 400 THEN
IF A$ = "s" AND RM = 2 THEN PRINT "A section of the floor rises up, blocking you from exiting the room.": GOTO 940
IF A$ = "enter portal" AND RM = 1 AND KeyTouched = 3 THEN
PRINT "You feel disoriented.  Suddenly, you are somewhere else.": Punish = 2: RM = 2: NalfTalk = 4: GOSUB 5: GOTO 940
END IF
IF A$ = "n" AND RM = 5 THEN PRINT "A molydeus stops you.  'Wait your turn, sod!'": GOTO 940
IF A$ = "s" AND RM = 5 THEN PRINT "A molydeus stops you.  'No way, sod.  Once you enter the line, you don't get": PRINT "out!'": GOTO 940
IF MID$(A$, 1, 4) = "take" AND RM = 1 THEN
IF Item = 1 THEN PRINT "Your hand goes right through the orb, and the orb vanishes.": Item = 11: GOTO 940
IF Item = 2 THEN PRINT "Your hand goes right through the dagger, and the dagger vanishes.": Item = 11: GOTO 940
IF Item = 3 THEN PRINT "Your hand goes right through the book, and the book vanishes.": Item = 11: GOTO 940
IF Item = 4 THEN PRINT "Your hand goes right through the bottle, and the bottle vanishes.": Item = 11: GOTO 940
IF Item = 5 THEN
PRINT "Your hand goes right through the key, and the key rises up above your head,": PRINT "circles it once, and then vanishes.": Item = 11
KeyTouched = KeyTouched + 1
IF KeyTouched = 3 THEN PRINT "Suddenly, a portal opens in mid-air here.  It is glowing green."
GOTO 940
END IF
IF Item = 6 THEN PRINT "Your hand goes right through the quill, and the quill vanishes.": Item = 11: GOTO 940
IF Item = 7 THEN PRINT "Your hand goes right through the ring, and the ring vanishes.": Item = 11: GOTO 940
IF Item = 8 THEN PRINT "Your hand goes right through the cube, and the cube vanishes.": Item = 11: GOTO 940
IF Item = 9 THEN PRINT "Your hand goes right through the small gold box, and the gold box vanishes.": Item = 11: GOTO 940
IF Item = 10 THEN PRINT "Your hand goes right through the sword, and the sword vanishes.": Item = 11: GOTO 940
END IF
IF RM = 1 AND (A$ = "n" OR A$ = "s" OR A$ = "e" OR A$ = "w") THEN RM = 1: GOSUB 5: GOTO 940
IF A$ = "n" THEN
IF RM = 5 OR RM = 8 THEN RM = RM - 3: GOSUB 5: GOTO 940
END IF
IF A$ = "s" THEN
IF RM = 5 OR RM = 2 THEN RM = RM + 3: GOSUB 5: GOTO 940
END IF
IF A$ = "u" AND RM = 3 AND Climbed < 3 THEN
Climbed = Climbed + 1
PRINT "You reach up at the chain that is holding you above you, trying to get a firm"
PRINT "grip on it.  ";
IF Climbed = 3 THEN
PRINT "You grab the chain, ignoring the barbed wires that sink": PRINT "into your flesh.":
HP = HP - 1
IF HP <= 0 THEN Killer$ = "rusty barbed wire": Killer = 12: GOTO Dead2
GOTO 940
END IF
PRINT "However, you can't quite seem to get a grip on it this time.": GOTO 940
END IF
IF A$ = "u" AND Climbed >= 3 THEN
Climbed = Climbed + 1
PRINT "You grab the chain, ignoring the barbed wires that sink into your flesh.  You"
PRINT "lift yourself up hand over hand.  ";
IF Climbed = 6 THEN PRINT "Finally, you reach the top of the barbed": PRINT "wire chain.  At the top of the chain is a portal, which you enter.  Suddenly,": PRINT "you are somewhere else.": PRINT : PRINT : NalfTalk = 4: Punish = 1: RM = 2: GOSUB 5: GOTO 940
HP = HP - 1
IF HP <= 0 THEN Killer$ = "rusty barbed wire": Killer = 12: GOTO Dead2
PRINT "": GOTO 940
END IF
END IF
IF Level = 723 THEN
IF A$ = "n" AND RM = 3 THEN PRINT "The citadel's gates are shut.": GOTO 940
IF A$ = "e" AND RM = 15 THEN PRINT "The citadel's gates are shut.": GOTO 940
IF A$ = "w" AND RM = 11 THEN PRINT "The citadel's gates are shut.": GOTO 940
IF A$ = "fight" AND RM = 23 AND ChaosSonDead = 0 THEN ChaosSonDead = 1: GOTO FightSonOfChaos
IF A$ = "fight" AND RM = 23 AND ChaosSonDead = 1 THEN GOTO FightSonOfChaos
IF A$ = "fight" AND RM = 24 AND ChaosSonDead = 2 THEN ChaosSonDead = 3: GOTO FightSonOfChaos
IF A$ = "fight" AND RM = 24 AND ChaosSonDead = 3 THEN GOTO FightSonOfChaos
IF A$ = "fight" AND RM = 22 AND ChaosSonDead = 4 THEN ChaosSonDead = 5: GOTO FightSonOfChaos
IF A$ = "fight" AND RM = 22 AND ChaosSonDead = 5 THEN GOTO FightSonOfChaos
IF A$ = "fight" AND RM = 21 AND ChaosSonDead = 6 THEN ChaosSonDead = 7: GOTO FightSonOfChaos
IF A$ = "fight" AND RM = 21 AND ChaosSonDead = 7 THEN GOTO FightSonOfChaos
IF A$ = "s" AND RM = 23 AND ChaosSonDead <= 1 THEN PRINT "The gates are being guarded by a minion of Chaos.": GOTO 940
IF A$ = "u" AND RM = 24 AND ChaosSonDead <= 3 THEN PRINT "The stairs are being guarded by a minion of Chaos.": GOTO 940
IF A$ = "u" AND RM = 22 AND ChaosSonDead <= 5 THEN PRINT "The stairs are being guarded by a minion of Chaos.": GOTO 940
IF A$ = "u" AND RM = 21 AND ChaosSonDead <= 7 THEN PRINT "The stairs are being guarded by a minion of Chaos.": GOTO 940
IF A$ = "s" AND RM = 23 AND ChaosSonDead = 2 THEN PRINT "You pass through the gates.": RM = 25: GOSUB 5: GOTO 940
IF A$ = "take book" AND RM = 16 AND PelnarDead = 2 AND Book = 0 THEN PRINT "You pick up the book.  Finally, you have it again.  You stow it away in your": PRINT "pack again.": Book = 1: GOTO 940
IF (A$ = "nw" OR A$ = "ne") AND RM = 23 AND ChaosSonDead = 1 THEN PRINT "The minion of Chaos blocks the exit.": GOTO 940
IF A$ = "ne" THEN
IF RM = 11 OR RM = 7 OR RM = 17 OR RM = 13 OR RM = 23 OR RM = 19 THEN RM = RM - 4: GOSUB 5: GOTO 940
END IF
IF A$ = "sw" THEN
IF RM = 3 OR RM = 7 OR RM = 9 OR RM = 13 OR RM = 15 OR RM = 19 THEN RM = RM + 4: GOSUB 5: GOTO 940
END IF
IF A$ = "fight" AND RM = 16 AND PelnarTalk > 0 THEN PRINT "Not now.  Xarachos is still talking.": GOTO 940
IF A$ = "fight" AND RM = 16 AND PelnarDead = 0 THEN PelnarDead = 1
IF A$ = "fight" AND RM = 16 AND PelnarDead = 1 THEN GOTO FightPelnar
IF A$ = "nw" THEN
IF RM = 23 OR RM = 17 OR RM = 19 OR RM = 13 OR RM = 15 OR RM = 9 THEN RM = RM - 6: GOSUB 5: GOTO 940
END IF
IF A$ = "se" THEN
IF RM = 11 OR RM = 17 OR RM = 7 OR RM = 13 OR RM = 3 OR RM = 9 THEN RM = RM + 6: GOSUB 5: GOTO 940
END IF
IF A$ = "d" AND RM = 16 AND PelnarDead <> 2 THEN PRINT "An invisible wall of force seems to block that exit.": GOTO 940
IF A$ = "u" AND RM = 21 AND PelnarDead <> 2 THEN PelnarTalk = 5
IF MID$(A$, 1, 4) = "talk" AND RM = 1 AND ChaosBeat = 0 AND ChaosTalked = 0 THEN
PRINT "'Greetings mortal.  I see you were able to not only get past all of the guards"
PRINT "in Xarachos's citadel, but also him.  I find that... admirable.  I will let"
PRINT "you live if you can defeat me in combat.  If you win, I will also show you a"
PRINT "way out of the Abyss.  What do you say?'"
ChaosTalked = 1: GOTO 940
END IF
IF A$ = "no" AND ChaosTalked = 1 AND ChaosBeat = 0 THEN PRINT "'You don't really have an option, mortal,' says Chaos.  'Now, what did you say?'": GOTO 940
IF A$ = "yes" AND ChaosTalked = 1 AND ChaosBeat = 0 THEN PRINT "'Good,' says Chaos.  'Let the battle begin.'": ChaosBeat = 1: GOTO 940
IF A$ = "enter portal" AND RM = 13 AND ChaosBeat = 2 THEN
ChaosBeat = 3
PRINT "Suddenly, Chaos appears out of nowhere, and hovers between you and the portal."
PRINT "'I'm sorry, but I've changed my mind.  I've decided you should die.'  She just"
PRINT "hovers between you and the mortal, though, and makes no moves to hurt you."
GOTO 940
END IF
IF A$ = "fight" AND ChaosBeat = 3 THEN ChaosBeat = 5: PRINT "You slash you sword at Chaos, and she recoils in pain.  For a few seconds, the": PRINT "portal is unguarded!": GOTO 940
IF A$ = "n" AND RM = 13 AND PelnarDead <> 2 THEN PRINT "An invisible wall blocks the entrance.": GOTO 940
IF A$ = "enter portal" AND ChaosBeat = 4 THEN
PRINT "You dive into the portal as Chaos tries to rush forward to stop you, but it's"
PRINT "too late.  The last thing you see before Chaos vanishes from your view is her"
PRINT "shaking her skeletal fist in your general direction.  You are sent through"
PRINT "the multiverse, away from Chaos's realm, away from Broken Reach, and away from"
PRINT "the Abyss....": PRINT : PRINT "But before you black out, you get a sudden glimse of your destination.": PRINT
GOTO WON
END IF
IF ChaosBeat = 3 AND (A$ = "n" OR A$ = "s" OR A$ = "e" OR A$ = "w" OR A$ = "se" OR A$ = "sw" OR A$ = "ne" OR A$ = "nw" OR A$ = "u" OR A$ = "d") THEN PRINT "Chaos blocks that exit.": GOTO 940
IF A$ = "fight" AND ChaosBeat = 1 THEN GOTO FightChaos
IF A$ = "s" AND RM = 1 AND ChaosBeat = 1 THEN PRINT "'Our contest is not yet over, mortal,' says Chaos.": GOTO 940
IF A$ = "u" THEN
IF RM = 24 THEN RM = 22: GOSUB 5: GOTO 940
IF RM = 22 THEN RM = 21: GOSUB 5: GOTO 940
IF RM = 21 THEN RM = 16: GOSUB 5: GOTO 940
END IF
IF A$ = "d" THEN
IF RM = 22 AND ChaosSonDead = 5 THEN PRINT "The minion of Chaos blocks the exit.  He laughs at you it a mocking tone of": PRINT "voice.": GOTO 940
IF RM = 21 AND ChaosSonDead = 7 THEN PRINT "The minion of Chaos blocks the exit.  He laughs at you it a mocking tone of": PRINT "voice.": GOTO 940
IF RM = 22 THEN RM = 24: GOSUB 5: GOTO 940
IF RM = 21 THEN RM = 22: GOSUB 5: GOTO 940
IF RM = 16 THEN RM = 21: GOSUB 5: GOTO 940
END IF
IF A$ = "s" AND RM = 8 THEN RM = 13: GOSUB 5: GOTO 940
IF A$ = "n" AND RM = 13 THEN RM = 8: GOSUB 5: GOTO 940
IF A$ = "n" AND RM = 24 AND ChaosSonDead = 3 THEN PRINT "The minion of Chaos blocks the exit.  He laughs at you it a mocking tone of": PRINT "voice.": GOTO 940
IF A$ = "s" AND RM = 25 THEN RM = 24: GOSUB 5: GOTO 940
IF A$ = "n" AND RM = 25 THEN RM = 23: GOSUB 5: GOTO 940
IF A$ = "n" AND RM = 24 THEN RM = 25: GOSUB 5: GOTO 940
IF A$ = "n" AND RM = 8 THEN RM = 2: GOSUB 5: GOTO 940
IF A$ = "n" AND RM = 2 THEN RM = 1: GOSUB 5: GOTO 940
IF A$ = "s" AND RM = 1 THEN RM = 2: GOSUB 5: GOTO 940
IF A$ = "s" AND RM = 2 THEN RM = 8: GOSUB 5: GOTO 940
END IF
IF A$ = "n" OR A$ = "s" OR A$ = "e" OR A$ = "w" OR A$ = "se" OR A$ = "sw" OR A$ = "ne" OR A$ = "nw" OR A$ = "u" OR A$ = "d" THEN PRINT "You can't go in that direction.": GOTO 940
IF MID$(A$, 1, 1) = "z" OR A$ = "wait" THEN PRINT "Time passes.....": Healing = Healing + 1: GOTO 940
PRINT "You can't do that.": GOTO 940
SAVE: INPUT "Enter filename:", N$
SAV$ = N$ + ".abs"
OPEN SAV$ FOR OUTPUT AS #1
PRINT #1, TIME
PRINT #1, Healing
PRINT #1, RM
PRINT #1, Level
PRINT #1, HP
PRINT #1, MaxHp
PRINT #1, Sword
PRINT #1, Talked
PRINT #1, SonADead
PRINT #1, Appeared
PRINT #1, SonAHp
PRINT #1, Captured
PRINT #1, RedShroud
PRINT #1, GoingToDie
PRINT #1, SuckedUp
PRINT #1, MolyDead
PRINT #1, MolyAppeared
PRINT #1, Talked1
PRINT #1, Mood
PRINT #1, MolyHp
PRINT #1, FlameHp
PRINT #1, Invite
PRINT #1, Free
PRINT #1, Book
PRINT #1, Torture
PRINT #1, DoneThis
PRINT #1, TimeToBehead
PRINT #1, ViperTreeEatYou
PRINT #1, GetOutOfTown
PRINT #1, SaidThis
PRINT #1, Climbed
PRINT #1, Punish
PRINT #1, NalfTalk
PRINT #1, Desc
PRINT #1, Looked
PRINT #1, KeyTouched
PRINT #1, LinePlace
PRINT #1, Break
PRINT #1, Citadel
PRINT #1, PelnarDead
PRINT #1, PelnarHp
PRINT #1, ChaosSonDead
PRINT #1, SonEHp
PRINT #1, PelnarTalk
PRINT #1, TriedIt
PRINT #1, ChaosHp
PRINT #1, ChaosTalked
CLOSE #1
PRINT "File saved.": GOTO 940
LOAD: INPUT "Enter filename:", N$
SAV$ = N$ + ".abs"
OPEN SAV$ FOR INPUT AS #1
INPUT #1, TIME
INPUT #1, Healing
INPUT #1, RM
INPUT #1, Level
INPUT #1, HP
INPUT #1, MaxHp
INPUT #1, Sword
INPUT #1, Talked
INPUT #1, SonADead
INPUT #1, Appeared
INPUT #1, SonAHp
INPUT #1, Captured
INPUT #1, RedShroud
INPUT #1, GoingToDie
INPUT #1, SuckedUp
INPUT #1, MolyDead
INPUT #1, MolyAppeared
INPUT #1, Talked1
INPUT #1, Mood
INPUT #1, MolyHp
INPUT #1, FlameHp
INPUT #1, Invite
INPUT #1, Free
INPUT #1, Book
INPUT #1, Torture
INPUT #1, DoneThis
INPUT #1, TimeToBehead
INPUT #1, ViperTreeEatYou
INPUT #1, GetOutOfTown
INPUT #1, SaidThis
INPUT #1, Climbed
INPUT #1, Punish
INPUT #1, NalfTalk
INPUT #1, Desc
INPUT #1, Looked
INPUT #1, KeyTouched
INPUT #1, LinePlace
INPUT #1, Break
INPUT #1, Citadel
INPUT #1, PelnarDead
INPUT #1, PelnarHp
INPUT #1, ChaosSonDead
INPUT #1, SonEHp
INPUT #1, PelnarTalk
INPUT #1, TriedIt
INPUT #1, ChaosHp
INPUT #1, ChaosTalked
CLOSE #1
PRINT "File loaded."
IF Level = 45 THEN COLOR 8
IF Level <> 45 THEN COLOR 15
GOSUB 5: GOTO 940
I: PRINT "You have:": PRINT
PRINT "  A small grey iron cube."
IF Book = 1 THEN PRINT "  A Book of Forbidden Lore."
IF Free = 0 AND RM = 1 AND Level = 45 THEN PRINT "  You are tied up by a thick rope."
IF Captured = 1 THEN PRINT "  You are wearing two manacles on your wrists.  Two fiends hold the chain that": PRINT " are attached to the manacles."
IF Captured = 2 THEN PRINT "  You are wearing two broken manacles on your wrists."
IF Sword = 1 THEN PRINT "  A blood-stained sword, covered in the red blood of uncounted fiends."
IF Invite = 1 THEN PRINT "  A summons to the Argent Palace, signed by a fiend calling himself Graz'zt."
PRINT : GOTO 940
Dead2: PRINT : INPUT "What is your name?", N$
IF N$ = "" THEN N$ = "Bean"
SAV$ = N$ + ".aby"
OPEN SAV$ FOR OUTPUT AS #1
IF Killer <> 8 AND Killer <> 13 THEN PRINT #1, N$; " killed by "; Killer$; " on ";
IF Killer = 8 THEN PRINT #1, N$; " blown to glory by the Ship of Chaos on ";
IF Killer = 13 THEN PRINT #1, N$; " fell into the eternal pit of flames on ";
IF Level = 1 THEN PRINT #1, "the Planes of Infinite Portals,": PRINT #1, "the first layer of the Abyss."
IF Level = 12 THEN PRINT #1, "Twelvetrees, the twelveth": PRINT #1, "layer of the Abyss."
IF Level = 45 THEN PRINT #1, "Azzagrat, the fourty-fifth": PRINT #1, "layer of the Abyss."
IF Level = 400 THEN PRINT #1, "Woeful Escarad, the four": PRINT #1, "hundreth layer of the Abyss."
IF Level = 723 THEN PRINT #1, "Chaos's Realm, the seven": PRINT #1, "hundred and twenty third layer of the Abyss."
PRINT #1, N$; " lived for"; TIME; "turns on the Abyss."
IF HP < 0 THEN PRINT #1, N$; " had "; HP; "hit points out of"; MaxHp; "maximum at the point of death."
IF HP >= 0 THEN PRINT #1, N$; " had"; HP; "hit points out of"; MaxHp; "maximum at the point of death."
PRINT #1, "A note to you, cutter:  ";
IF Killer = 2 THEN PRINT #1, "Red Shroud is a dangerous opponent.  Beware!"
IF Killer = 3 THEN PRINT #1, "When you are tied up, it's best to escape as soon as": PRINT #1, "you can."
IF Killer = 4 THEN PRINT #1, "Get out of Broken Reach as soon as you can with the": PRINT #1, "proper weapon when you are being hunted down by a mob of fiends!"
IF Killer = 5 THEN PRINT #1, "If you are planning an escape, you'd better wait until": PRINT #1, "after Red Shroud is gone."
IF Killer = 6 THEN PRINT #1, "Molydeus should not be reckoned with, unless you are": PRINT #1, "really in trouble.  That is, for example, unless the entire town is chasing": PRINT #1, "you, you'd better not fight the Molydeus."
IF Killer = 7 THEN PRINT #1, "Be prepared if you are going to break the brain of the": PRINT #1, "Ship of Chaos."
IF Killer = 8 THEN PRINT #1, "Get OUT of the Ship of Chaos as soon as you even suspect": PRINT #1, "it is going to be blown to glory!"
IF Killer = 9 THEN PRINT #1, "Get free of the executioner's block as soon as you can.": PRINT #1, "Break your bonds if you have to.  Just escape!"
IF Killer = 10 THEN PRINT #1, "Don't dawdle in the forest of Viper Trees."
IF Killer = 11 THEN PRINT #1, "Get OUT of town after you've broken free.  Very quickly."
IF Killer = 12 THEN PRINT #1, "Don't play with barbed wire."
IF Killer = 13 THEN PRINT #1, "Strive for the top; always ascend."
IF Killer = 14 THEN PRINT #1, "Never trust a fiend."
COLOR 0
END
Whip:
Dmg = INT(RND * 6) + 4
HP = HP - Dmg
IF HP <= 0 THEN PRINT "Unfortunately, you've lost too much blood from the repeated whippings.  In case": PRINT "you weren't aware of this, this is fatal.  The last sound you hear before you": PRINT "die is Graz'zt's voice, saying, 'Oh, too bad.  He wasn't so strong after all!'": Killer = 9: Killer$ = "a fiend with a whip": GOTO Dead2
RETURN
ThatHurt:
IF HP = 1 THEN Killer$ = "executioner Molydeus": Killer = 9: GOTO Dead2
HP = INT(HP / 2)
RETURN
FightSonOfChaos:
Hit = INT(RND * 2) + 1
IF Hit = 1 THEN
PRINT "You slash out at the fiend with skeletal arms, and hit.  He screams out in": PRINT "pain!"
Dmg = INT(RND * 8) + 5
SonEHp = SonEHp - Dmg
IF SonEHp <= 0 THEN
ChaosSonDead = ChaosSonDead + 1: SonEHp = 55
BEEP: PRINT "You bring your sword down on the fiend with skeletal arms.  It gives out one"
PRINT "last final scream, and falls to the floor of the Abyss in a magical explosion"
PRINT "of fire."
END IF
END IF
IF Hit = 2 THEN PRINT "You slash out at the fiend with skeletal arms, but you miss."
GOTO 940
FightPelnar:
Hit = INT(RND * 2) + 1
IF Hit = 1 THEN
PRINT "You slash out at Xarachos, hitting it.  Xarachos laughs at the blade goes right": PRINT "through it, but you notice a slight lack of co-ordination for a few seconds": PRINT "after the hit.  You hurt him, he's just not showing it."
Dmg = INT(RND * 8) + 5
PelnarHp = PelnarHp - Dmg
IF PelnarHp <= 0 THEN
PelnarDead = 2
BEEP
PRINT "One last time, you bring your sword down on Xarachos.  You strike for"
PRINT "vengeance; for freedom; for the multiverse.  This time, he shrieks in total"
PRINT "pain, and, with a surprised look on his face, he is torn apart, just as you saw"
PRINT "the shator in Carceri get torn apart.  In its place it the Book of Forbidden"
PRINT "Lore."
END IF
END IF
IF Hit = 2 THEN PRINT "You slash out at Xarachos, but the blow you strike just goes right through it!"
GOTO 940
FightChaos:
Hit = INT(RND * 2) + 1
IF Hit = 1 THEN
PRINT "You slash out at Chaos, hitting her.  Chaos laughs at the blade goes right": PRINT "through her, but you notice a slight lack of co-ordination for a few seconds": PRINT "after the hit.  You hurt her, she's just not showing it."
Dmg = INT(RND * 8) + 5
ChaosHp = ChaosHp - Dmg
IF ChaosHp <= 0 THEN
BEEP
ChaosBeat = 2
PRINT "Chaos stops.  'Okay, you win.'  You blink your eyes in disbelief."
PRINT "'I'm serious.  You win.  I know when I'm beaten.  There's a portal out of"
PRINT "the Abyss outside my Cathedral.  Congratulations.  I am also... in your"
PRINT "debt for you destroying Xarachos.  He was.... untrustworthy."
PRINT "'Goodbye, Elf,' Chaos says.  Before fading away into a wall, she says, 'We will"
PRINT "meet again, on that you can be sure.'"
GoingToDie2 = 10
END IF
END IF
IF Hit = 2 THEN PRINT "You slash out at Chaos, but the blow you strike just goes right through her!"
GOTO 940
WON: PRINT : INPUT "What is your name?", N$
IF N$ = "" THEN N$ = "The_Elf"
SAV$ = N$ + ".aby"
OPEN SAV$ FOR OUTPUT AS #1
PRINT #1, N$; " won on Chaos's Realm, the seven hundred and twenty third layer": PRINT #1, "of the Abyss."
PRINT #1, N$; " lived for"; TIME; "turns on the Abyss."
PRINT #1, N$; " had"; HP; "hit points out of"; MaxHp; "maximum when "; N$; " won."
PRINT #1, "A note to you, cutter:  You won and escaped the Abyss again.  May you live to": PRINT #1, "brag about it."
COLOR 0: END

SUB Azzagrat
ON RM GOTO OnBlock, NearBlock, DarkHeart, ViperForest, ViperForest, DeadEnd, Street2, InTheInn, ViperForest, ViperForest, Dungeon, OutsideArgentPalace, OutsideGates, Road, OutsideViperWoods
GOTO EndSub
OnBlock: PRINT "Executioner's Block": PRINT
IF Free = 0 THEN
PRINT "You are tied up and are kneeling on an executioner's block.  The faded"
PRINT "landscape around you seem to exclude any scenery, excepting the block.  In"
PRINT "front of you, you can see a mass of fiends, screaming and yelling at you."
END IF
IF Free = 1 THEN
PRINT "You are battling with the Molydeus executioner.  His black hood does not hide"
PRINT "his eyes, glowing red with rage.  He wields an axe, and swings it towards you"
PRINT "frequently, attempting to behead you.  The crowd around you watches in awe at"
PRINT "the fight.  You, who seemed so helpless seconds ago, now a veritable danger."
END IF
IF Free = 2 THEN
PRINT "The crowd around you stares in amazement as you stand before them.  They look"
PRINT "at you in awe and in fear.  The Molydeus that was to execute you now is dead."
PRINT "You may descend into the crowd to the east from here."
END IF
GOTO EndSub
NearBlock: PRINT "Near Executioner's Block": PRINT
PRINT "The executioner's block, stands in the faded environment, to the west.  It seems"
PRINT "to stand on something.  Through the faded landscape, you can vaguely see a path"
PRINT "to the south."
GOTO EndSub
DarkHeart: PRINT "Dark Heart of the Viper Wood": PRINT
PRINT "This is the center of the forest of Viper Trees.  There is a glowing black stone"
PRINT "floating in mid-air here that seems to serve no real purpose.  However, you"
PRINT "can see a portal here, hovering in mid-air.  You may go east and southeast."
GOTO EndSub
ViperForest: PRINT "Viper Trees": PRINT
PRINT "You stand among a forest of Viper Trees.  Their hisses seem to get to your"
PRINT "head.  From here, you may go ";
IF RM = 4 THEN PRINT "south, west, southeast, and east."
IF RM = 5 THEN PRINT "west, southwest, and south."
IF RM = 9 THEN PRINT "northwest, north, southeast, and east."
IF RM = 10 THEN PRINT "north, south, northwest, and west."
PRINT "Details of the forest other than the trees seem hazy at best, as if they weren't"
PRINT "there, or that your brain just doesn't seem to want to register the scenery."
GOTO EndSub
DeadEnd: PRINT "Dead End": PRINT
PRINT "This is a dead end alley.  You may go east.  The walls around you are faded and"
PRINT "almost don't seem to be there, although if you touch them, they are solid.  Odd."
GOTO EndSub
Street2: PRINT "Street": PRINT
PRINT "This is a street, winding it's way through the town.  From here, you can"
PRINT "dimly make out details of places around you.  It's as if when you see the"
PRINT "scenery around you, it just vanishes from your mind.  Odd, the best you can"
PRINT "see the scenery is a dim blur, although the fiends and other beings around you"
PRINT "seem clear enough.  You may go north, south, east, west, and southeast.  You"
PRINT "can vaguely make out the gates to a large palace to the south.  There is an"
PRINT "inn to the east, and a large cleared area to the north."
GOTO EndSub
InTheInn: PRINT "Inn": PRINT
PRINT "You are in the, 'Screaming Elf Inn.'  Patrons of all known races and a few"
PRINT "unknown sit around the bar here, drinking whatever the fiendish bartender i"
PRINT "serving."
IF Invite = 0 THEN PRINT "There is a half-elf sitting at the bar here, having a drink."
GOTO EndSub
Dungeon: PRINT "Torture Chamber": PRINT
PRINT "You are in the torture chamber of this palace.  There is a shadowy figure"
PRINT "in the corner here whose eyes are glowing a burning red.  There is another"
PRINT "fiend next to him, holding a scourge.  You are hanging from the ceiling."
GOTO EndSub
OutsideArgentPalace: PRINT "Outside Argent Palace": PRINT
PRINT "To the west are the huge gates to the Argent Palace, a magnificent building"
PRINT "made of black ivory.  There is a street to the north.  There is a host of"
PRINT "molydeus guarding the entrance to the palace."
GOTO EndSub
OutsideGates: PRINT "Gates": PRINT
PRINT "These are the gates to the town.  The exit to the town is to the east, while"
PRINT "there is a street winding into town to the northwest."
GOTO EndSub
Road: PRINT "Road": PRINT
PRINT "This is a road winding through this layer of the Abyss.  The road goes to the"
PRINT "east and west."
GOTO EndSub
OutsideViperWoods: PRINT "Outside Viper Forest": PRINT
PRINT "You stand outside a forest of Viper Trees.  If you were crazy, desperate, or"
PRINT "both, you could get into that forest of living snake-trees by simply walking"
PRINT "north or northwest from here.  But you're smarter than that, right?"
GOTO EndSub
EndSub:
END SUB

SUB BrokenReach
ON RM GOTO Swords, InArmory, Street, inn, DarkAlley, Street, NearArmory, OnPodium, OutInn, Street, Slums, Dump, NearPodium, Dump, Slums, D, MarketW, MarketC, MarketE, D, TowerTop, WestTower, GatesToBrokenReach, EastTower, TowerTop
GOTO EndSubroutine
Swords: PRINT "Sword Room": PRINT
PRINT "This room is filled with all sorts of swords.  Swords hang on all of the walls,"
PRINT "swords cover the floor, and swords are held by suits of armor."
IF Sword = 0 THEN PRINT "You look bleakly around, and realize how long it will take to find your sword."
GOTO EndSubroutine
InArmory: PRINT "Inside Armory": PRINT
PRINT "You are inside the armory.  The only open door around here to the west.  The"
PRINT "other doors to the north and east and locked tight.  Over the west door is"
PRINT "a large scrawl, 'Swords.'  Over the north door is a large scrawl, 'Armor.'"
PRINT "And over the last door is another scrawl, labelled, 'Dangerous Weapons.'"
PRINT "You wonder for a second if that last door has any relation to the 'Dangerous"
PRINT "Volumes' section of the Fortress of Disciplined Enlightenment.  You eventually"
PRINT "shake you head and disregard you ponderings.  The exit to the armory is to the"
PRINT "south."
GOTO EndSubroutine
inn: PRINT "Inn": PRINT
PRINT "You stand inside the inn, 'The Maelephant's Trumpet.'  Fiends of all kinds are"
PRINT "patroning the bar.  Here and there you see the blue skeletal face of the minions"
PRINT "of Chaos.  Fortunately, they don't seem to see you.  You may go south."
IF Talked = 0 THEN PRINT "There is a human at the bar here, having a drink."
GOTO EndSubroutine
DarkAlley: PRINT "Dark Alley": PRINT
PRINT "This is a dark alley.  There is no exit from here, save south.  Razorvine grows"
PRINT "untamed on the walls, while the red sky ahead creates shadows on the floor of"
PRINT "the street."
GOTO EndSubroutine
Street: PRINT "Street": PRINT
PRINT "You are walking along a street in Broken Reach.  The dirt beneath your feet is"
PRINT "red.  The street goes ";
IF RM = 3 THEN PRINT "southeast and southwest."
IF RM = 10 THEN PRINT "north, south, and west.  There is a dark alley to the": PRINT "north."
IF RM = 6 THEN PRINT "south and east."
GOTO EndSubroutine
NearArmory: PRINT "Near Armory": PRINT
PRINT "You stand outside the Armory of Broken Reach.  Inside are rumored to be"
PRINT "thousands of powerful weapons.  The Armory itself is to the north, while the"
PRINT "street leads west and northeast."
GOTO EndSubroutine
OnPodium:
IF Captured = 1 THEN
PRINT "On Podium, in chains": PRINT
PRINT "You stand before a mob of tanar'ri, who are booing and jeering at you.  Two"
PRINT "molydeus each hold one chain, each attached to a manacle on one of your wrists."
PRINT "Whenever they feel like it, they pull on the chains hard, nearly tearing you"
PRINT "in two."
IF RedShroud >= 1 AND RedShroud <= 6 THEN PRINT "Red Shroud, beautiful mistress of Broken Reach, stands before you."
ELSE
PRINT "On Podium, free": PRINT
PRINT "You've somehow managed to break free of your fiend guards that we holding your"
PRINT "chains.  The molydeuses that were holding your chains are currently in the"
PRINT "crowd below you, a crowd that is scared of your super-human strength. You may"
PRINT "descend from the podium to the south."
END IF
GOTO EndSubroutine
OutInn: PRINT "Outside Inn": PRINT
PRINT "You stand outside of the inn, 'The Maelephant's Trumpet.'  The inn is to the"
PRINT "north, while a street goes from east to northwest.  The inn appears to be a"
PRINT "real dive; a seedy place where the lowlifes of the town gather."
GOTO EndSubroutine
Slums: PRINT "Slums": PRINT
PRINT "You stand in the slums of Broken Reach.  Miserable manes and other sorts of"
PRINT "fiends not evil enough to ascend to higher and more destructive forms.  Fiends"
PRINT "burrow into the city here, searching for food.  You may go north, ";
IF RM = 11 THEN PRINT "east,": PRINT "and southeast."
IF RM = 15 THEN PRINT "west,": PRINT "and southwest."
GOTO EndSubroutine
Dump: PRINT "Dump": PRINT
PRINT "You are in the middle of a dump.  Minor demons sit around the junk pile,"
PRINT "eating trash and junk that no other, more major, demons wanted."
PRINT "You can see the street to the ";
IF RM = 12 THEN PRINT "west." ELSE PRINT "east."
GOTO EndSubroutine
NearPodium: PRINT "Near Podium": PRINT
PRINT "To the north, you can see a large podium high above your head.  There doesn't"
PRINT "seem to be any way to reach it from here.  ";
IF Captured = 2 THEN
PRINT "There is a mob here, is in wild"
PRINT "disarray.  Some are helping the molydeuses that you threw into the mob to their"
PRINT "feet; others are staring at you, fearful of your power.  You may go south."
END IF
IF Captured <> 2 THEN
PRINT "This area is virtually empty."
PRINT "No fiends stand here, all in other places, most likely the marketplace."
PRINT "You may go south."
END IF
GOTO EndSubroutine
D: PRINT "Bug!"
GOTO EndSubroutine
MarketW: PRINT "Market, West": PRINT
PRINT "The merchants of the demon castes barter worthless items here."
PRINT "You may go northwest and east."
GOTO EndSubroutine
MarketC: PRINT "Market, Center": PRINT
PRINT "The merchants of the demon castes barter worthless items here.  You may go"
PRINT "north, south, east, and west.  To the south are the gates of Broken Reach."
GOTO EndSubroutine
MarketE: PRINT "Market, East": PRINT
PRINT "The merchants of the demon castes barter worthless items here."
PRINT "You may go west and northeast."
GOTO EndSubroutine
TowerTop: PRINT "Top of Tower": PRINT
IF RM = 21 THEN
PRINT "You stand at the top of the west tower.  There isn't much up here.  From here,"
PRINT "you can see all of Broken Reach.  You may go down."
ELSE
PRINT "You stand at the top of the east tower.  There is a glowing green portal,"
PRINT "floating in mid-air here.  From here, you can see all of Broken Reach.  You"
PRINT "may go down."
END IF
GOTO EndSubroutine
WestTower: PRINT "West Tower": PRINT
PRINT "You are standing at the base of the western tower of Broken Reach.  Blackened"
PRINT "stairs lead up from here, while you can see the gates to Broken Reach to the"
PRINT "east."
GOTO EndSubroutine
GatesToBrokenReach: PRINT "Gates to Broken Reach": PRINT
PRINT "You stand at the gates to Broken Reach.  The gates are to the south, but they"
PRINT "are closed tight, and chained up.  Apparently, Red Shroud, mistress of Broken"
PRINT "Reach, doesn't want anyone leaving.  There are two towers to the east and west."
GOTO EndSubroutine
EastTower: PRINT "East Tower": PRINT
PRINT "You are standing at the base of the eastern tower of Broken Reach.  Blackened"
PRINT "stairs lead up from here, while you can see the gates to Broken Reach to the"
PRINT "west."
IF MolyDead = 1 THEN PRINT "There is a decapitated molydeus lying on the floor here."
IF MolyAppeared = 1 AND MolyDead = 0 THEN PRINT "There is a molydeus here, leaning on his axe."
GOTO EndSubroutine
EndSubroutine:
END SUB

SUB ChaosRealm
ON RM GOTO ChaosThrone, MainHall, OutsideCitadel, G, G, G, NearLake, InsideCathedral, NearLake, G, OutsideCitadel, G, OutsideCathedral, G, OutsideCitadel, Top, NearLake, G, NearLake, G, ThirdLvl, SecondLvl, OutsideCitadel, Staircase, MainHall
G: PRINT "Bug!": GOTO EndOfThisParticularSubRoutine
ChaosThrone: PRINT "Throne of Chaos": PRINT
IF ChaosBeat <> 2 THEN
PRINT "You stand near a throne of blackened bones.  On it sits Chaos, a fiend with"
PRINT "huge blue wings sprouting out of her back, an oddly-distorted skull with black"
PRINT "horns, the trails of a dress as legs, and a skeletal ribcage.  Her eyes are"
PRINT "glowing red.  She is smiling at you.  You may go south."
END IF
IF ChaosBeat = 2 THEN
PRINT "You stand near a throne of blackened bones.  Chaos is nowhere to be seen.  You"
PRINT "may go south from here."
END IF
GOTO EndOfThisParticularSubRoutine
MainHall: PRINT "Main Hall": PRINT
IF RM = 25 THEN
PRINT "This hall is decorated with various instruments of torture and blackened"
PRINT "weapons.  From here, the hall goes to the north and south."
ELSE
PRINT "The stained glass window patterns here depict Chaos rising out of a lake,"
PRINT "surrounded by her troup of black swans.  Surrounding Chaos are her four"
PRINT "nobles, the Arachos.  You may go north and south."
END IF
GOTO EndOfThisParticularSubRoutine
OutsideCitadel: PRINT "Outside Citadel": PRINT
PRINT "You stand outside of a blackened citadel that is reaching miles into the sky."
PRINT "From here, the citadel is to your ";
IF RM = 3 THEN PRINT "north.  You may go southeast and southwest."
IF RM = 11 THEN PRINT "west.  You may go northeast and southeast."
IF RM = 15 THEN PRINT "east.  You may go northwest and southwest."
IF RM = 23 THEN PRINT "south.  You may go northeast and northwest."
IF RM = 23 AND ChaosSonDead = 0 THEN PRINT "There is a fiend with skeletal blue arms guarding the citadel to the south."
IF RM = 23 AND ChaosSonDead = 1 THEN PRINT "There is a fiend with skeletal blue arms attacking you!"
GOTO EndOfThisParticularSubRoutine
NearLake: PRINT "Near Lake": PRINT
PRINT "You stand near a lake.  The lake is pure blue, reflecting the moon's light"
PRINT "above you into the black night.  On the lake settle black swans, all black,"
PRINT "none of them white.  From here, you may go ";
IF RM = 7 THEN PRINT "northeast and southwest."
IF RM = 9 THEN PRINT "northwest and southeast."
IF RM = 17 THEN PRINT "northwest and southeast."
IF RM = 19 THEN PRINT "northeast and southwest."
PRINT "There is a bridge leading over the lake to the ";
IF RM = 7 THEN PRINT "southeast.  ";
IF RM = 9 THEN PRINT "southwest.  ";
IF RM = 17 THEN PRINT "northeast.  ";
IF RM = 19 THEN PRINT "northwest.  ";
PRINT "The bridge seems"
PRINT "to lead into the center of the lake, where it meets four other bridges at one"
PRINT "point; a huge building of black, blue, and red stained glass."
GOTO EndOfThisParticularSubRoutine
InsideCathedral: PRINT "Inside Cathedral": PRINT
PRINT "You are standing inside a cathedral where the walls are made entirely of red,"
PRINT "black, and blue stained glass.  The moonlight shining through the stained"
PRINT "glass, creating an odd sort of effect with the shadows.  The floor is covered"
PRINT "in the designs of the stained glass windows.  There is the great gate to the"
PRINT "cathedral to the south, while there is a long hall going on to the north."
GOTO EndOfThisParticularSubRoutine
OutsideCathedral: PRINT "Outside Cathedral": PRINT
PRINT "You stand outside of a huge building made of stained glass.  It is odd how"
PRINT "the moonlight streams through it, creating odd effects on the lake and the"
PRINT "bridges.  The Cathedral itself is to the north, while four bridges go off to"
PRINT "the northeast, southeast, northwest, and southwest."
IF ChaosBeat = 2 THEN PRINT "There is a portal here, hovering in mid-air."
IF ChaosBeat = 3 THEN PRINT "There is a portal here, hovering in mid-air.  Chaos stands between you and it."
IF ChaosBeat >= 4 THEN PRINT "There is a portal here, hovering in mid-air.  Chaos is recovering from your": PRINT "blow."
GOTO EndOfThisParticularSubRoutine
Top: PRINT "Citadel's Spire": PRINT
PRINT "You stand at the top of the Citadel.  There is a huge overlook here, giving you"
PRINT "a good view of the cresent moon.  You are so close to it; so close that you"
PRINT "feel that it was just a few miles above the lake that you can see off to the"
PRINT "north from here.  ";
IF Book = 0 AND PelnarDead = 2 THEN PRINT "There is The Book of Forbidden Lore here." ELSE PRINT ""
PRINT "There is a blackened and twisted staircase leading down from here."
IF PelnarDead = 0 THEN PRINT "An Arachnos stands before you, smiling at you.  In it's left hand is The Book": PRINT "of Forbidden Lore."
IF PelnarDead = 1 THEN PRINT "Xarachos is here, attacking you with it's scythe!"
GOTO EndOfThisParticularSubRoutine
ThirdLvl: PRINT "Third Level": PRINT
PRINT "This is the third level of the Citadel.  From here, the tower slopes steeply"
PRINT "inward.  The walls here are black, and covered in razorvine.  There is a"
PRINT "blackened staircase leading up and down here."
IF ChaosSonDead <= 6 THEN PRINT "There is a fiend with blue skeletal arms here, guarding the staircase."
IF ChaosSonDead = 7 THEN PRINT "There is a fiend with blue skeletal arms attacking you here!"
GOTO EndOfThisParticularSubRoutine
SecondLvl: PRINT "Second Level": PRINT
PRINT "This is the second level of the Citadel.  From here, the tower begins to slope"
PRINT "inward and begins to twist.  The walls here are black, and covered in razorvine."
PRINT "There is a blackened staircase leading up and down here."
IF ChaosSonDead <= 4 THEN PRINT "There is a fiend with blue skeletal arms here, guarding the staircase."
IF ChaosSonDead = 5 THEN PRINT "There is a fiend with blue skeletal arms attacking you here!"
GOTO EndOfThisParticularSubRoutine
Staircase: PRINT "Staircase Up": PRINT
PRINT "A staircase begins to lead up to the heavens here.  The staircase twists and"
PRINT "turns often, and seems to be made from a sort of glowing blackened rock."
PRINT "There is also a hall going north from here."
IF ChaosSonDead <= 2 THEN PRINT "There is a fiend with blue skeletal arms here, guarding the staircase."
IF ChaosSonDead = 3 THEN PRINT "There is a fiend with blue skeletal arms attacking you here!"
GOTO EndOfThisParticularSubRoutine
EndOfThisParticularSubRoutine:
END SUB

SUB Fights
IF Level = 1 THEN
IF RM = 5 AND SonADead = 0 AND Talked = 1 THEN
Hit = INT(RND * 2) + 1
IF Hit = 1 THEN
PRINT "The fiend slashes out at you with it's claws, and the claws bite deep.  You"
PRINT "feel an intense stinging where the wound is, but you disregard it."
Dmg = INT(RND * 6) + 2
HP = HP - Dmg
IF HP <= 0 THEN Killer = 1: Killer$ = "a Son of Chaos": GOTO Death
END IF
IF Hit = 2 THEN PRINT "The fiend slashes out at you with it's claws, but you dodge the blow!"
END IF
END IF
IF (MolyDead = 1 AND RM = 14 AND Level = 12) OR (MolyDead = 0 AND RM = 1 AND Free = 1 AND Level = 45) THEN
Hit = INT(RND * 6) + 1
IF Hit = 1 THEN PRINT "The molydeus swings its axe at you, and it slashes its way across your chest.": PRINT "You cry out in pain!": Dmg = INT(RND * 12) + 1: HP = HP - Dmg
IF Hit = 2 THEN PRINT "The molydeus swings its axe at you, but you dodge the blow!"
IF Hit = 3 THEN PRINT "The snake head of the molydeus strikes out at you, hitting you and causing the": PRINT "wound to burn like fire.": Dmg = INT(RND * 6) + 1: HP = HP - Dmg
IF Hit = 4 THEN PRINT "The snake head of the molydeus strikes out at you, but you dodge the blow!"
IF Hit = 5 THEN PRINT "The dog head of the molydeus strikes out at you, hitting you and ripping at": PRINT "your flesh with it's sharp teeth!": Dmg = INT(RND * 6) + 1: HP = HP - Dmg: Dmg = INT(RND * 6) + 1: HP = HP - Dmg
IF Hit = 6 THEN PRINT "The dog head of the molydeus strikes out at you, but you dodge the bite!"
IF HP <= 0 THEN Killer = 2: Killer$ = "a Molydeus guard": GOTO Death
END IF
IF Talked1 = 3 AND Level = 12 THEN
Hit = INT(RND * 2) + 1
IF Hit = 1 THEN
PRINT "The flame swings itself at you, like a chain of fire, and it goes right through": PRINT "you.  You yell out in pain as the fire sears your flesh!"
Dmg = INT(RND * 10) + 5
HP = HP - Dmg
IF HP <= 0 THEN Killer = 3: Killer$ = "living flame": GOTO Death
END IF
IF Hit = 2 THEN PRINT "The flame swings itself at you, like a chain of fire, but you dodge it!"
END IF
IF Level = 723 THEN
IF ChaosBeat = 1 THEN
Hit = INT(RND * 2) + 1
IF Hit = 1 THEN
PRINT "Chaos swings her scythe at you, hitting you.  She smiles in an odd sort of way."
Dmg = INT(RND * 12) + 5
HP = HP - Dmg
IF HP <= 0 THEN Killer$ = "Chaos": Killer = 6: GOTO Death
END IF
IF Hit = 2 THEN PRINT "Chaos swings her scythe at you, but you manage to dodge the blow!"
END IF
IF RM = 16 AND PelnarDead = 1 THEN
IF TriedIt = 0 THEN Hit = INT(RND * 3) + 1
IF TriedIt = 1 THEN Hit = INT(RND * 2) + 1
IF Hit = 3 THEN PRINT "Xarachos points its finger at you, as if hoping something will happen.  Nothing": PRINT "does.  Xarachos growls out in anger.": TriedIt = 1
IF Hit = 2 THEN
PRINT "Xarachos swings its scythe at you, hitting you.  He raises four of his eight"
PRINT "skeletal arms above him in triumph and laughs at your weakness."
Dmg = INT(RND * 10) + 5
HP = HP - Dmg
IF HP <= 0 THEN Killer$ = "Xarachos": Killer = 5: GOTO Death
END IF
IF Hit = 1 THEN PRINT "Xarachos swings its scythe at you, but you manage to dodge the blow!"
END IF
IF ChaosSonDead = 1 OR ChaosSonDead = 3 OR ChaosSonDead = 5 OR ChaosSonDead = 7 THEN
Hit = INT(RND * 2) + 1
IF Hit = 1 THEN
PRINT "The fiend with skeletal arms swings out at you, and hits you!  You cry out in": PRINT "pain!"
Dmg = INT(RND * 8) + 1
HP = HP - Dmg
IF HP <= 0 THEN Killer$ = "a Son of Chaos": Killer = 4: GOTO Death
END IF
IF Hit = 2 THEN PRINT "The fiend with skeletal arms slashes out at you, but you dodge the blow!"
END IF
END IF
GOTO EndFights
Death: PRINT "You fall to the ground of the Abyss, blood covering your body, and your final": PRINT "scream on your lips.": PRINT
DEAD: INPUT "What is your name?", N$
IF N$ = "fight" THEN PRINT : GOTO DEAD
IF N$ = "" THEN N$ = "Bean"
SAV$ = N$ + ".aby"
OPEN SAV$ FOR OUTPUT AS #1
PRINT #1, N$; " killed by "; Killer$; " on ";
IF Level = 1 THEN PRINT #1, "the Planes of Infinite Portals, the": PRINT #1, "first layer of the Abyss."
IF Level = 12 THEN PRINT #1, "Twelvetrees, the twelveth layer of": PRINT #1, "the Abyss."
IF Level = 45 THEN PRINT #1, "Azzagrat, the fourty-fifth": PRINT #1, "layer of the Abyss."
IF Level = 400 THEN PRINT #1, "Woeful Escarad, the four": PRINT #1, "hundreth layer of the Abyss."
IF Level = 723 THEN PRINT #1, "Chaos's Realm, the seven": PRINT #1, "hundred and twenty third layer of the Abyss."
PRINT #1, N$; " lived for"; TIME; "turns on the Abyss."
IF HP < 0 THEN PRINT #1, N$; " had "; HP; "hit points out of"; MaxHp; "maximum at the point of death."
IF HP >= 0 THEN PRINT #1, N$; " had"; HP; "hit points out of"; MaxHp; "maximum at the point of death."
PRINT #1, "A note to you, cutter:  ";
IF Killer = 1 THEN PRINT #1, "Be catious when dealing with the Sons of Chaos,": PRINT #1, "especially when they have orders to kill you."
IF Killer = 2 THEN PRINT #1, "Be cautious when dealing with the Molydeus.  There're": PRINT #1, "tough, but you're tougher.  Fight hard.  Hang tough."
IF Killer = 3 THEN PRINT #1, "Living flame is deadly.  Be VERY careful."
IF Killer = 4 THEN PRINT #1, "Fight hard against Chaos's minions.  Eventually, you": PRINT #1, "will succeed."
IF Killer = 5 THEN PRINT #1, "Xarachos is the major villan in the game, and": PRINT #1, "therefore he is very tough and hard to beat.  Keep trying, and ultimately you will": PRINT #1, "succeed."
IF Killer = 6 THEN PRINT #1, "Chaos really doesn't want to put you in the": PRINT #1, "dead-book.  Fight well, but the fight won't last all that long."
COLOR 0
END
EndFights:
END SUB

SUB TwelveTrees
ON RM GOTO Bug, MainDeck, Spirits, OldBattleField, Portal, MainDeck, Brains, MainDeck, BarrenWasteland, Plains, MainDeck, SteeringRm, MainDeck, OutsideShipOfChaos, Bug, Bug, MainDeck
Bug: PRINT "Bug!": GOTO EndOfThisSub
Spirits: PRINT "Scorched Earth": PRINT
PRINT "You stand in the middle of a barren wasteland here.  On the ground here are"
PRINT "the scorched burn marks, apparently where twelve humanoid figures with wings"
PRINT "were pressed into the ground while they were on fire, or something like that."
PRINT "From here, you may go east."
GOTO EndOfThisSub
OldBattleField: PRINT "Old Battlefield": PRINT
PRINT "You stand in the center of an old battlefield.  Dead bodies of tanar'ri and"
PRINT "baatezu cover the ground, as if they had just lain there since yesterday.  The"
PRINT "stench tells otherwise.  From here, you may go west, south, southeast, and"
PRINT "east."
GOTO EndOfThisSub
Portal: PRINT "Plain": PRINT
PRINT "This is a plain on this layer of the Abyss.  There are distinct paths leading"
PRINT "west, south, and southwest from here.  Looking around, you see that this is"
PRINT "where you arrived from the portal in Broken Reach."
GOTO EndOfThisSub
MainDeck: PRINT "Main Deck": PRINT
PRINT "You stand on the main deck of the Ship of Chaos.  The entire frame of the Ship"
PRINT "seems to have been made from the blackened skeletons of larva and manes."
IF RM = 2 THEN PRINT "You may go southeast and southwest."
IF RM = 6 THEN PRINT "You may go northeast and south."
IF RM = 8 THEN PRINT "You may go northwest and south."
IF RM = 11 THEN PRINT "You may go north and southeast."
IF RM = 17 THEN PRINT "You may go northeast and southwest."
IF RM = 13 THEN PRINT "You may go north, west, and southwest.  To the west is a cabin."
GOTO EndOfThisSub
Brains: PRINT "Brain": PRINT
PRINT "You stand at the center of the Ship of Chaos.  ";
IF Talked1 = 0 THEN PRINT "There is an orb in the center": PRINT "of the room here.  It is not glowing.  You somehow remember the legends of": PRINT "people actually trying to TALK to the Ship of Chaos.  You laugh."
IF Talked1 = 1 THEN PRINT "There is a glowing orb in the": PRINT "center of the room here.  It is what you guess to be the brain of the Ship."
IF Talked1 = 2 THEN PRINT "There is a glowing orb in the": PRINT "center of the room here.  It is what you guess to be the brain of the Ship.": PRINT "There is a wall of force to the south, blocking the exit."
IF Talked1 = 3 THEN PRINT "There is the remnants of a": PRINT "glowing orb in the center of the room here.  You smashed it to pieces in": PRINT "revenge.  Currently, a being of living flame is attacking you!  The walls of": PRINT "this cabin are charred and burned from the explosion the orb gave off when you": PRINT "broke it."
IF Talked1 = 4 THEN PRINT "There is the remnants of a": PRINT "glowing orb in the center of the room here.  You smashed it to pieces in": PRINT "revenge.  The walls of this cabin are charred and burned from the explosion": PRINT "the orb gave off when you broke it."
IF Talked1 <> 2 THEN PRINT "You may go south."
GOTO EndOfThisSub
BarrenWasteland: PRINT "Barren Wasteland": PRINT
PRINT "You stand in the midst of a barren wasteland.  Rocks of all shapes and sizes"
PRINT "line the ground here.  From here you may go north, south, east, and northeast."
IF Talked1 = 4 THEN PRINT "You look around, and you find the portal that the Ship's Brain told you about.": PRINT "It is hovering serenely in mid-air."
GOTO EndOfThisSub
Plains: PRINT "Plain": PRINT
PRINT "This is a plain on this layer of the Abyss.  There are distinct paths leading"
PRINT "north, west, southwest, and northwest from here.  Looking around, you can see"
PRINT "a huge ship with two heads on either side to the southwest.  You assume that"
PRINT "it must be one of the Ships of Chaos.  Fondly, you remember the githzerai mage"
PRINT "that stole one of the Ship of Chaos and went off to conquer the entire plane"
PRINT "of Elysium and shift it into Limbo.  You also fondly remember his death at the"
PRINT "hands of an army of guardianals and sword archons."
GOTO EndOfThisSub
SteeringRm: PRINT "Cabin": PRINT
PRINT "This is a cabin in the Ship of Chaos.  To the north is a dark corridor into"
PRINT "another room.  The outside of the Ship of Chaos is to the east."
GOTO EndOfThisSub
OutsideShipOfChaos: PRINT "Outside the Ship of Chaos": PRINT
PRINT "You stand outside of the Ship of Chaos.  There is a gangway leading up into"
PRINT "the Ship from here.  Distinct paths go off to the north and northeast into a"
PRINT "plain from here.  ";
IF MolyDead <> 2 THEN PRINT "There is a molydeus guarding the ship of Chaos here.  He": PRINT "blocks the way up the gangplank."
IF MolyDead = 2 THEN PRINT "The area is charred from the explosion that the molydeus gave": PRINT "off when he died here."
GOTO EndOfThisSub
EndOfThisSub:
END SUB

SUB WoefulEscarad
ON RM GOTO Maze, ThroneRoom, HangingOverPitOfFlames, E, LongLine, E, E, OutsideMountain
E: PRINT "Bug!": GOTO EndOfSub
Maze:
IF Looked = 0 THEN Desc = INT(RND * 16) + 1: Item = INT(RND * 10) + 1: Looked = 1
IF Desc = 1 THEN PRINT "Tunnel": PRINT : PRINT "You stand in the middle of tight tunnels, surrounded on all sides by rock.": PRINT "Spiders and rats occasionally stop by to peek at you.  You may go north,": PRINT "south, east, and west."
IF Desc = 2 THEN PRINT "Rotting Plain": PRINT : PRINT "You stand in the middle of a plain made out of pure ash.  The entire area seems": PRINT "to eminate decay.  You may go north, south, east, and west."
IF Desc = 3 THEN PRINT "Ice Tunnels": PRINT : PRINT "You stand in the middle of a series of ice tunnels.  Bodies of people that are": PRINT "still alive are in the ice seem to call out at you for help.  You may": PRINT "go north, south, east, and west."
IF Desc = 4 THEN PRINT "Grey Plain": PRINT : PRINT "You stand in the center of a grey plain.  Nothing is around you to all sides.": PRINT "Flat, boring land surrounds you on all sides.  You may go north, south, east,": PRINT "and west."
IF Desc = 5 THEN PRINT "Fiery Mountain": PRINT : PRINT "You stand on a fiery mountain.  Not one section of this mountain seems to be": PRINT "flat at all, nor does any part of this mountain seem to be calm at all.  Paths": PRINT "go north, south, east, and west."
IF Desc = 6 THEN PRINT "Blasted Plain": PRINT : PRINT "You stand in the middle of a blasted plain.  Nothing surrounds you on any": PRINT "side, just a blasted wasteland as far a the eye can see.  Occasionally, a": PRINT "fireball sours past you, illuminating the landscape.  You may go north, south,": PRINT "east, and west."
IF Desc = 7 THEN PRINT "Iron Cube": PRINT : PRINT "You stand on an iron cube.  You can see thousands of iron cubes from your": PRINT "vantage point here, all of them off in space.  You may go north, south, east": PRINT "and west."
IF Desc = 8 THEN PRINT "Cog": PRINT : PRINT "You stand on what appears to be the center of a cog.  Paths from here go north,": PRINT "south, east, and west."
IF Desc = 9 THEN PRINT "Forest": PRINT : PRINT "You stand in the middle of a very orderly forest.  The trees and flowers grow": PRINT "in straight rows here, as if each had been planted like that.  Paths go north,": PRINT "south, east, and west."
IF Desc = 10 THEN PRINT "Golden Plain": PRINT : PRINT "You stand in the midst of a golden plain, where the sun's light high above": PRINT "shines down on, almost causing blindness.  You may go north, south, east, and": PRINT "west."
IF Desc = 11 THEN PRINT "Pastoral Meadow": PRINT : PRINT "You stand in the middle of a pastoral meadow.  Looking up from here, you can": PRINT "see other towns and cities above you.  Spires connecting the top and bottom of": PRINT "the area you are on can be seen around here.  You may go north, south, east,": PRINT "and west."
IF Desc = 12 THEN PRINT "Road": PRINT : PRINT "You are walking down a road.  The sun is shining down on you, making your day": PRINT "happy and bright.  You have come to a crossroads, where you can go north,": PRINT "south, east, and west."
IF Desc = 13 THEN PRINT "Deep Forest": PRINT : PRINT "Deep forest surrounds you on all sides.  You look over your shoulder every": PRINT "once in a while to make sure that nothing's watching you.": PRINT "Despite this, you are sure something is watching you.  You may go north,": PRINT "south, east, and west."
IF Desc = 14 THEN PRINT "Forest": PRINT : PRINT "Forest surrounds you on all sides.  You may go north, south, east, and west.": PRINT "The forest here seems untamed and wild."
IF Desc = 15 THEN PRINT "Earthberg": PRINT : PRINT "You stand where there obviously once was a battle.  The dead bodies of thousands": PRINT "of people surround you.  You may go north, south, east, and west."
IF Desc = 16 THEN PRINT "Chaos": PRINT : PRINT "You are in pure Chaos.  Primordal soup surrounds you.  You may go north,": PRINT "south, east, and west."
IF Item = 1 THEN PRINT "There is an orb here, lying on the ground."
IF Item = 2 THEN PRINT "There is a dagger here, lying on the ground."
IF Item = 3 THEN PRINT "There is a book here, lying on the ground."
IF Item = 4 THEN PRINT "There is a Bottle of Elven Vintage Wine here, lying on the ground."
IF Item = 5 THEN PRINT "There is a key here, lying on the ground."
IF Item = 6 THEN PRINT "There is a quill here, lying on the ground."
IF Item = 7 THEN PRINT "There is a ring here, lying on the ground."
IF Item = 8 THEN PRINT "There is a small metal cube here, lying on the ground."
IF Item = 9 THEN PRINT "There is a small golden box here, lying on the ground."
IF Item = 10 THEN PRINT "There is a sword labelled, 'Charles,' here, lying on the ground."
IF KeyTouched = 3 THEN PRINT "There is a portal here, hovering in mid-air."
GOTO EndOfSub
ThroneRoom: PRINT "Room of Judgement": PRINT
PRINT "You stand in the center of the Room of Judgement.  The entire room around you"
PRINT "seems to live and thrive, responding to your every move --- that is, to keep"
PRINT "you in this room."
GOTO EndOfSub
HangingOverPitOfFlames: PRINT "Hanging Over Pit of Flames": PRINT
PRINT "Below you is a pit of fire; eternal and unquenchable fire.  You are hanging"
PRINT "on to a chain of barbed wire from here.  The fire licks your feet, scorching"
PRINT "them.  The chain seems to ascend straight into the heavens."
GOTO EndOfSub
LongLine: PRINT "Line": PRINT
PRINT "There is a line here, leading into a cave to the north.  There is a clear"
PRINT "plain to the south.  Over the cavern entrance to the north is a plaque in gold,"
PRINT "reading, 'Enter your final judgement, mortal fools.'"
IF A$ = "n" THEN PRINT "A molydeus prods you, and you get into the line."
IF LinePlace = 0 THEN PRINT "There is a shifty-looking man, a flame-haired woman, and a gaunt and haggard": PRINT "man in front of you in line."
IF LinePlace = 1 THEN PRINT "There is a flame-haired woman and a gaunt and haggard man in front of you in": PRINT "line."
IF LinePlace = 2 THEN PRINT "There is a gaunt and haggard man in front of you in line."
IF LinePlace = 3 THEN PRINT "You are in front of the line."
GOTO EndOfSub
OutsideMountain: PRINT "Near Mountain": PRINT
PRINT "There is a mountain to the north from here.  You can see a long line of people"
PRINT "to the north, all apparently entering the mountain."
GOTO EndOfSub
EndOfSub:
END SUB

