ORG 0

Setup:
   	CALL  	GeneratePattern
   	CALL  	PlayPattern

GameLoop:
	LOAD	Score

WaitForCommand:
	CALL	CheckKeys
	JNEG 	WaitForCommand
	JZERO	EnterPatternLoop
	CALL	PlayPattern
	JUMP 	GameLoop

EnterPatternLoop:
	
	CALL 	CheckSwitches
	JZERO	SkipAppend
	CALL	AppendToPattern

SkipAppend:
	CALL	CheckKeys
	JNEG	EnterPatternLoop
	JUMP	PatternEntered

PatternEntered:
	CALL	CheckPattern
	CALL 	UpdateScore

EndGame:
	
	
;*******************************************************************************
; CheckKeys: Checks if Key0 or Key1 is pressed. If so, wait for it to be released. 
; Returns the key that was pressed through AC, -1 if no key is pressed
;*******************************************************************************
CheckKeys:


;*******************************************************************************
; CheckSwitches: Check if a switch has been flipped. If so, wait for it to be released.
; Returns the flipped switch through AC, or -1 if no switch is flipped
;*******************************************************************************
CheckSwitches:
	LOAD	Switches
	OR	0
	JZERO	NoSwitch
	STORE	FlippedSwitch
WaitingLoop:
	LOAD	Switches
	OR	0
	JZERO	ReturnSwitch
	JUMP	WaitingLoop
ReturnSwitch:
	LOAD	FlippedSwitch
	RETURN
NoSwitchFlipped:
	LOADI	-1
	RETURN

FlippedSwitch:	DW 0

;*******************************************************************************
; AppendToPattern: Adds the current value in the AC to the end of the EnteredPattern
;*******************************************************************************
AppendToPattern:

;*******************************************************************************
; GeneratePattern: Generates a new random pattern and stores it in Pattern memory location
;*******************************************************************************
GeneratePattern:

;*******************************************************************************
; PlayPattern: Plays the currently saved Pattern with lights and LEDs
;*******************************************************************************
PlayPattern:

;*******************************************************************************
; CheckPattern: Compares the value in EnteredPattern to the value in
; Pattern. Places a 1 in AC if they are equal and a 0 otherwise
;*******************************************************************************
CheckPattern:

;*******************************************************************************
; UpdateScore: If the AC contains 1, increment the current score. Otherwise, set score to 0.
;*******************************************************************************
UpdateScore:
	OR	0
	JZERO	StoreScore
	LOAD	Score
	ADDI	1
StoreScore:
	STORE	Score
	RETURN



; Variables
Temp:	  		DW 0
EnteredPattern:		DW 0
Pattern:  		DW 0
Score:    		DW 0

; Useful values
Zero:      DW 0
NegOne:    DW -1
One:	   DW 1
Bit0:      DW &B0000000001
Bit1:      DW &B0000000010
Bit2:      DW &B0000000100
Bit3:      DW &B0000001000
Bit4:      DW &B0000010000
Bit5:      DW &B0000100000
Bit6:      DW &B0001000000
Bit7:      DW &B0010000000
Bit8:      DW &B0100000000
Bit9:      DW &B1000000000

C2:			DW		7644
C2Sharp:	DW		7215
D2:			DW		6810
D2Sharp:	DW		6428
E2:			DW		6067
F2:			DW		5727
F2Sharp:	DW		5405
G2:			DW		5102
G2Sharp:	DW		4816
A2:			DW		4545
A2Sharp:	DW		4290
B2:			DW		4050
C3:			DW		3822
C3Sharp:	DW		3608
D3:			DW		3405
D3Sharp:	DW		3214
E3:			DW		3034
F3:			DW		2864
F3Sharp:	DW		2703
G3:			DW		2551
G3Sharp:	DW		2408
A3:			DW		2273
A3Sharp:	DW		2145
B3:			DW		2025
C4:			DW		1911
C4Sharp:	DW		1804
D4:			DW		1703
D4Sharp:	DW		1607
E4:			DW		1517
F4:			DW		1432
F4Sharp:	DW		1351
G4:			DW		1276
G4Sharp:	DW		1204
A4:			DW		1136
A4Sharp:	DW		1073
B4:			DW		1012
C5:			DW		956
C5Sharp:	DW		902
D5:			DW		851
D5Sharp:	DW		804
E5:			DW		758
F5:			DW		716
F5Sharp:	DW		676
G5:			DW		638
G5Sharp:	DW		602
A5:			DW		568
A5Sharp:	DW		536
B5:			DW		506
C6:			DW		478
C6Sharp:	DW		451
D6:			DW		426
D6Sharp:	DW		402
E6:			DW		379
F6:			DW		358
F6Sharp:	DW		338
G6:			DW		319
G6Sharp:	DW		301
A6:			DW		284
A6Sharp:	DW		268
B6:			DW		253
C7:			DW		239

Unlimited:	DW		&H0000
TwoFourth:	DW		&H4000
ThreeFourth:	DW		&H8000
FourFourth:		DW		&HC000
Disable:	DW		&H3FFF


; IO address constants
Switches:  EQU &H000
LEDs:      EQU &H001
Timer:     EQU &H002
Hex0:      EQU &H004
Hex1:      EQU &H005
DPs:       EQU &H0E0
WaveGen:     EQU &H0F0