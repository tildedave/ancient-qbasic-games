DECLARE SUB KeyInit ()
RANDOMIZE TIMER
COLOR 15, 0
ShipWorld = 1
CLS
INPUT "Enter Identity Code:", IdentityCode$: PRINT
PRINT "Identity Code Accepted, "; IdentityCode$; "."
PRINT "OBC6R unit ANX1201419 has been activated."
SLEEP
CLS
KeyInit
Battery = 1000
Battery2 = 50
'World = INT(RND * 4) + 1
World = 1
IF World = 1 THEN RM = 25
BEEP
PRINT "Startup Sequence Activated.": PRINT
PRINT "Systems Check:                   Status": PRINT
PRINT "Fusion Power:                    ";
FOR T = 1 TO 500: NEXT T
PRINT "Online"
PRINT "Backup Battery:                  ";
FOR T = 1 TO 500: NEXT T
PRINT "Online"
PRINT "Computer Brain:                  ";
FOR T = 1 TO 500: NEXT T
PRINT "Online"
PRINT "Artificial Intelligence:         ";
FOR T = 1 TO 500: NEXT T
PRINT "Online"
PRINT "Ethics Chip:                     ";
FOR T = 1 TO 500: NEXT T
PRINT "Online"
PRINT "Sensory Input:                   ";
FOR T = 1 TO 500: NEXT T
PRINT "Online"
PRINT "Movement:                        ";
FOR T = 1 TO 500: NEXT T
PRINT "Online"
PRINT "Hand Laser:                      ";
FOR T = 1 TO 500: NEXT T
PRINT "Online"
PRINT "Wireless Communication System:   ";
FOR T = 1 TO 500: NEXT T
PRINT "Online"
PRINT "Targetting and Recognition:      ";
FOR T = 1 TO 500: NEXT T
PRINT "Online"
PRINT "Computer Synthesized Voice Box:  ";
FOR T = 1 TO 500: NEXT T
PRINT "Online"
BEEP: BEEP: BEEP
PRINT
PRINT "Omega Blue Class 6 Robot Online.  All systems fully operational.": PRINT
N$ = MID$(IdentityCode$, 1, 8)
SAV$ = N$ + ".inf"
OPEN SAV$ FOR OUTPUT AS #1
PRINT #1, IdentityCode$
PRINT #1, World
PRINT #1, RM
PRINT #1, Battery
PRINT #1, Battery2
CLOSE #1
IF World = 1 THEN CHAIN "Sirrus5.bas"
IF World = 2 THEN CHAIN "beta2.bas"

SUB KeyInit
KEY ON
KEY 1, "power" + CHR$(13)
KEY 2, "data" + CHR$(13)
KEY 3, "scan" + CHR$(13)
KEY 4, "shoot "
KEY 6, "commands" + CHR$(13)
KEY 7, "systems check" + CHR$(13)
KEY 8, "equipment" + CHR$(13)
KEY 9, "look" + CHR$(13)
KEY 10, "terminate" + CHR$(13)
END SUB

