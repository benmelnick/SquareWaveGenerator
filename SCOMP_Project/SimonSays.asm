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


; IO address constants
Switches:  EQU &H000
LEDs:      EQU &H001
Timer:     EQU &H002
Hex0:      EQU &H004
Hex1:      EQU &H005
DPs:       EQU &H0E0
