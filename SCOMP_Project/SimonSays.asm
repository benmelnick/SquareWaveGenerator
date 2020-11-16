ORG 0

Init:
	CALL	GenerateFreqsSubset
	LOADI	0
	CALL	UpdateScore

InitPattern:
   	CALL  	GeneratePattern		; start of turn - store pattern in arrays
   	CALL  	PlayPattern			; play pattern on speaker and LEDs
	LOADI	InputPattern
	ADDI	1
	STORE	InputPatternPtr		; reset input pattern ptr to beginning of InputPattern array

GameLoop:
	CALL 	CheckSwitches		; check switches until not 0
	JNEG	GameLoop
	CALL	AppendToPattern		; append switch thrown to input pattern array
	JPOS	PatternEntered		; if AppendToPattern returns 1, reached end of array -> full pattern entered
	JUMP	GameLoop

PatternEntered:
	CALL	CheckPattern		; compare against played pattern
	CALL 	UpdateScore			; increment if correct, reset to 0 if not
	JZERO	Init
	JUMP	InitPattern

;*******************************************************************************
; CheckSwitches: Check if a switch has been flipped. If so, wait for it to be released.
; Returns the flipped switch through AC, or -1 if no switch is flipped
;*******************************************************************************
CheckSwitches:
	IN		Switches
	JZERO	NoSwitchFlipped
	STORE	FlippedSwitch
	LOADI	0
	ADDI	1
	STORE 	TimerParam
	CALL	WaitForTimer	; wait .1s for switch bounce
WaitingLoop:
	IN		Switches
	OUT		LEDs			; light LED of switch that's on
	JZERO	ReturnSwitch	; return if switch reset back to 0
	JUMP	WaitingLoop
ReturnSwitch:
	LOAD	FlippedSwitch
	RETURN
NoSwitchFlipped:
	LOADI	-1
	RETURN
FlippedSwitch:	DW 0

;*******************************************************************************
; GenerateFreqsSubset: Generates a subset of 9 random frequencies from the larger frequency list
; Stores frequencies in FreqsSubset array
;*******************************************************************************
GenerateFreqsSubset:
	LOAD    FreqsSubset		; load number of random frequencies to generate
	STORE   SubsetCnt
	LOADI   FreqsSubset 	
	ADDI    1				
	STORE   SubsetPtr		; store pointer to first element in subset array

GenerateFreqLoop:
	LOAD    Freqs        	; highest index into freqs array
	STORE   m
	CALL    LCGRand      	; get a random index into the array
	LOAD    Index
	STORE   FreqsIndex   	; store random index into freqs array
	LOADI   Freqs        	; load address of freqs list
	ADDI	1
	ADD     FreqsIndex		; add starting address to random index
	STORE   FreqsPtr		; update pointer
	ILOAD   FreqsPtr     	; load frequency at that pointer
	ISTORE  SubsetPtr    	; store frequency into subset array
	
	LOAD 	SubsetPtr	 	; increment subset pointer
	ADDI 	1
	STORE 	SubsetPtr

	LOAD    SubsetCnt   	; check if finished
	ADDI    -1      
	STORE   SubsetCnt
	JPOS    GenerateFreqLoop
	RETURN

SubsetCnt: 		DW 0
SubsetPtr:		DW 0
FreqsIndex:  	DW 0 		; numerical index into the freqs array
FreqsPtr:    	DW 0 		; memory address of the indexed value


;*******************************************************************************
; GeneratePattern: Generates a new random sequence of frequencies and stores it in FreqsPattern memory location
; Also stores a unique LED sequence in LEDPattern for each frequency stored in FreqsPattern.
; Indexes into Freqs array to get the values to send to SCOMP via an OUT instruction
; in order to play a sound of a particular frequency.
;*******************************************************************************
GeneratePattern:
	LOAD    FreqsPattern 		; load number of random frequencies to generate (default is 3)
	STORE   PatternCnt
	LOADI   FreqsPattern 		; load list address
	ADDI    1
	STORE   PatternPtr			; store pointer to first element in pattern array (hold frequencies)
	LOADI   LEDPattern 
	ADDI    1
	STORE   LEDPtr				; store pointer to first element in LED array (holds LEDs)

GeneratePatternLoop:
	LOAD    FreqsSubset  		; number of frequencies in subset (9)
	STORE   m
	CALL    LCGRand      		; get a random index into the subset array
	LOAD    Index
	;***************************************************************
	OUT		Hex1				; show the index retreived on the hex display
	; I put this here to show that the random subroutine keeps
	; returning 7 after a few calls
	;***************************************************************
	STORE   FreqsSubsetIndex  	; store index retreived

	LOADI   FreqsSubset  		; load address of freqs subset list
	ADDI	1
	ADD     FreqsSubsetIndex	; add starting address to random index
	STORE   FreqsSubsetPtr		; update pointer
	ILOAD   FreqsSubsetPtr    	; load frequency at that pointer
	ISTORE  PatternPtr  		; store the frequency into pattern array

	LOADI	Bit0				; load address of bits array
	ADD		FreqsSubsetIndex   	; use the random index from 0-8 as the index into the bits array
	STORE 	BitsPtr
	ILOAD 	BitsPtr				; get value in bits array (to light up a single LED)
	ISTORE  LEDPtr				; store LED number in LED array

	LOAD    PatternPtr   		; increment pattern ptr
	ADDI    1
	STORE   PatternPtr
	
	LOAD    LEDPtr				; increment LED ptr
	ADDI    1
	STORE   LEDPtr
	
	LOAD    PatternCnt   		; check if finished
	ADDI    -1      
	STORE   PatternCnt
	JPOS    GeneratePatternLoop
	RETURN

BitsPtr: 			DW 0 ; points into bits array
PatternCnt: 		DW 0 ; number of frequencies to generate
PatternPtr: 		DW 0 ; memory address pointing to a spot in the FreqsPattern array
LEDPtr: 			DW 0 ; memory address pointing to a spot in the LEDPattern array
FreqsSubsetIndex: 	DW 0 ; numerical index into the freq subset array
FreqsSubsetPtr:   	DW 0 ; memory address of the indexed value


;*******************************************************************************
; PlayPattern: Iterates through the FreqsPattern and LEDPattern arrays and
; plays the sounds and displays the LED patterns
;*******************************************************************************
PlayPattern:
	LOADI   10
	STORE   TimerParam
	CALL    WaitForTimer
	LOAD    FreqsPattern  ; load number of sounds to play
	STORE   PlayCnt
	LOADI   FreqsPattern  ; load address of list of stored frequencies
	ADDI    1
	STORE   PlayPtr
	LOADI   LEDPattern    ; load address of list of stored LED patterns
	ADDI    1
	STORE   DisplayPtr
PlayLoop:
    CALL    WaitForSound
    ILOAD   PlayPtr      ; load value stored in FreqsPattern array
	ADD     TwoFourth
	OUT     WaveGen      ; play the sound
	ILOAD   DisplayPtr   ; load stored LED FreqsPattern and display
	OUT     LEDs
	LOAD    PlayPtr      ; increment to next spot
	ADDI    1
	STORE   PlayPtr
	LOAD    DisplayPtr
	ADDI    1
	STORE   DisplayPtr
	LOAD    PlayCnt
	ADDI    -1
	STORE   PlayCnt
	JPOS    PlayLoop
	CALL    WaitForSound
	LOAD    Disable      ; stop playing noise
	OUT     WaveGen
	LOAD    Bit9         ; light up only far left LED to indicate pattern is done playing
	OUT     LEDs
	LOADI   20
	STORE   TimerParam
	CALL    WaitForTimer
	RETURN
PlayCnt:     DW 0  ; number of frequencies to play
PlayPtr:     DW 0  ; memory address pointing to a spot in the FreqsPattern array
DisplayPtr:  DW 0  ; memory address pointing to a spot in the LEDPattern array

;*******************************************************************************
; AppendToPattern: Adds the current value in the AC to the end of the InputPattern.
; Returns 1 if reached the end of the pattern array (full pattern has been entered)
; Returns 0 if user needs to enter more switches to complete pattern
;*******************************************************************************
AppendToPattern:
	ISTORE	InputPatternPtr		; store switch thrown in InputPattern array
	LOAD	InputPatternPtr
	ADDI	1
	STORE	InputPatternPtr		; increment pointer
	
	ILOAD	InputPatternPtr		; if end of InputPattern array (if value is -1) then full pattern has been entered
	JNEG	FinalInput

	LOADI	0					; return 0 if more switches need to be thrown to fill out pattern array
	RETURN

FinalInput:
	LOADI 	1					; return 0 if full pattern entered
	RETURN

InputPatternPtr:	DW 0 ; pointer for indexing into InputPattern

;*******************************************************************************
; CheckPattern: Compares the values in InputPattern to the values in LEDPattern
; Places a 1 in AC if arrays are equal and 0 otherwise
; Determines if score should be incremented
;*******************************************************************************
CheckPattern:
	LOAD    LEDPattern			; load number of sounds/LEDs played
	STORE   PlayCnt
	
	LOADI	LEDPattern
	ADDI	1
	STORE 	LEDPtr				; create pointer to first element in LEDPattern array	
	LOADI	InputPattern
	ADDI	1
	STORE 	InputPtr			; create pointer to first element in InputPattern array
CheckEqual:
	ILOAD	LEDPtr			
	STORE	TempLED				; store LED value at current index as temp var
	ILOAD 	InputPtr
	SUB		TempLED				; AC <= inputted switch - LED played
	JZERO	Continue			; continue if same
	LOADI	0					; return 0 if not equal
	RETURN
	
Continue:
	LOAD	PlayCnt
	ADDI	-1
	STORE 	PlayCnt
	JPOS	IncrementPointers	; increment pointers if haven't checked full array yet
	LOADI	1					; return 1 if all LEDs played = all swtiches thrown
	RETURN

IncrementPointers:
	LOAD	LEDPtr
	ADDI	1
	STORE 	LEDPtr
	LOAD 	InputPtr
	ADDI	1
	STORE	InputPtr
	
	JUMP	CheckEqual		; continue to check next index
	
TempLED:	DW 0
InputPtr:	DW 0

;*******************************************************************************
; UpdateScore: If the AC contains 1, increment the current score. Otherwise, set score to 0.
;*******************************************************************************
UpdateScore:
	JZERO	StoreScore
	LOAD	Score
	ADDI	1
StoreScore:
	OUT		Hex0
	STORE	Score
	RETURN
	
;*******************************************************************************
; LCGRand: generates a random index into the range [1, m] using the linear congruential
; generator (LCG) algorithm (https://en.wikipedia.org/wiki/Linear_congruential_generator)
; Written by Ben Melnick
; To use:
; - store the highest possibly generated value in m
; - call LCGRand
; - Result is stored in Index
; Requires Mult16s and Div16s subroutines
;*******************************************************************************
LCGRand:
	LOAD    x
	STORE   m16sa
	LOAD    a
	STORE   m16sb
	CALL    Mult16s
	LOAD    mres16sH
	SHIFT   8           ; move high word of result up 8 bits
	STORE   mres16sH
	LOAD    mres16sL
	SHIFT   -8          ; move low word of result down 8 bits
	AND     LoByte
	OR      mres16sH    ; combine high and low words of result
	ADD		c
	STORE   d16sN
	LOAD    m
	STORE   d16sD
	CALL    Div16s
	LOAD    dres16sR
	STORE   x
	STORE   Index
	RETURN
x:     DW 1
a:     DW 69069
c:     DW 1
m:     DW 0
Index: DW 0

;*******************************************************************************
; Div16s:  16bit/16bit -> 16bit R16bit signed division
; Written by Kevin Johnson.  No licence or copyright applied.
; Warning: results undefined if denominator = 0.
; To use:
; - Store numerator in d16sN and denominator in d16sD.
; - Call Div16s
; - Result is stored in dres16sQ and dres16sR (quotient and remainder).
; Requires Abs subroutine
;*******************************************************************************
Div16s:
	LOADI  0
	STORE  dres16sR     ; clear remainder result
	STORE  d16sC1       ; clear carry
	LOAD   d16sN
	XOR    d16sD
	STORE  d16sS        ; sign determination = N XOR D
	LOADI  17
	STORE  d16sT        ; preload counter with 17 (16+1)
	LOAD   d16sD
	CALL   Abs          ; take absolute value of denominator
	STORE  d16sD
	LOAD   d16sN
	CALL   Abs          ; take absolute value of numerator
	STORE  d16sN
Div16s_loop:
	LOAD   d16sN
	SHIFT  -15          ; get msb
	AND    One          ; only msb (because shift is arithmetic)
	STORE  d16sC2       ; store as carry
	LOAD   d16sN
	SHIFT  1            ; shift <<1
	OR     d16sC1       ; with carry
	STORE  d16sN
	LOAD   d16sT
	ADDI   -1           ; decrement counter
	JZERO  Div16s_sign  ; if finished looping, finalize result
	STORE  d16sT
	LOAD   dres16sR
	SHIFT  1            ; shift remainder
	OR     d16sC2       ; with carry from other shift
	SUB    d16sD        ; subtract denominator from remainder
	JNEG   Div16s_add   ; if negative, need to add it back
	STORE  dres16sR
	LOADI  1
	STORE  d16sC1       ; set carry
	JUMP   Div16s_loop
Div16s_add:
	ADD    d16sD        ; add denominator back in
	STORE  dres16sR
	LOADI  0
	STORE  d16sC1       ; clear carry
	JUMP   Div16s_loop
Div16s_sign:
	LOAD   d16sN
	STORE  dres16sQ     ; numerator was used to hold quotient result
	LOAD   d16sS        ; check the sign indicator
	JNEG   Div16s_neg
	RETURN
Div16s_neg:
	LOAD   dres16sQ     ; need to negate the result
	CALL   Neg
	STORE  dres16sQ
	RETURN	
d16sN: DW 0 ; numerator
d16sD: DW 0 ; denominator
d16sS: DW 0 ; sign value
d16sT: DW 0 ; temp counter
d16sC1: DW 0 ; carry value
d16sC2: DW 0 ; carry value
dres16sQ: DW 0 ; quotient result
dres16sR: DW 0 ; remainder result

;*******************************************************************************
; Mult16s:  16x16 -> 32-bit signed multiplication
; Based on Booth's algorithm.
; Written by Kevin Johnson.  No licence or copyright applied.
; Warning: does not work with factor B = -32768 (most-negative number).
; To use:
; - Store factors in m16sA and m16sB.
; - Call Mult16s
; - Result is stored in mres16sH and mres16sL (high and low words).
;*******************************************************************************
Mult16s:
	LOADI  0
	STORE  m16sc        ; clear carry
	STORE  mres16sH     ; clear result
	LOADI  16           ; load 16 to counter
Mult16s_loop:
	STORE  mcnt16s      
	LOAD   m16sc        ; check the carry (from previous iteration)
	JZERO  Mult16s_noc  ; if no carry, move on
	LOAD   mres16sH     ; if a carry, 
	ADD    m16sA        ;  add multiplicand to result H
	STORE  mres16sH
Mult16s_noc: ; no carry
	LOAD   m16sB
	AND    One          ; check bit 0 of multiplier
	STORE  m16sc        ; save as next carry
	JZERO  Mult16s_sh   ; if no carry, move on to shift
	LOAD   mres16sH     ; if bit 0 set,
	SUB    m16sA        ;  subtract multiplicand from result H
	STORE  mres16sH
Mult16s_sh:
	LOAD   m16sB
	SHIFT  -1           ; shift result L >>1
	AND    c7FFF        ; clear msb
	STORE  m16sB
	LOAD   mres16sH     ; load result H
	SHIFT  15           ; move lsb to msb
	OR     m16sB
	STORE  m16sB        ; result L now includes carry out from H
	LOAD   mres16sH
	SHIFT  -1
	STORE  mres16sH     ; shift result H >>1
	LOAD   mcnt16s
	ADDI   -1           ; check counter
	JPOS   Mult16s_loop ; need to iterate 16 times
	LOAD   m16sB
	STORE  mres16sL     ; multiplier and result L shared a word
	RETURN              ; Done
c7FFF: DW &H7FFF
m16sA: DW 0 ; multiplicand
m16sB: DW 0 ; multipler
m16sc: DW 0 ; carry
mcnt16s: DW 0 ; counter
mres16sL: DW 0 ; result low
mres16sH: DW 0 ; result high

;*******************************************************************************
; Abs: 2's complement absolute value
; Returns abs(AC) in AC
; Neg: 2's complement negation
; Returns -AC in AC
;*******************************************************************************
Abs:
	JPOS   Abs_r
Neg:
	XOR    NegOne       ; Flip all bits
	ADDI   1            ; Add one (i.e. negate number)
Abs_r:
	RETURN

;*******************************************************************************
; WaitForSound: Loops until the WaveGen peripheral is no longer playing sound
; When an IN is used with WaveGen, the device returns a value indicating if sound is
; being played - 0 if sound being played 
;*******************************************************************************
WaitForSound:
	IN	   WaveGen
	JZERO  WaitForSound
	RETURN

;*******************************************************************************
; DelayAC: Pause for some multiple of 0.1 seconds.
; Call this with the desired delay in TimerParam.
; E.g. if TimerParam is 10, this will delay for 10*0.1 = 1 second
;*******************************************************************************
WaitForTimer:
	OUT    Timer
TimerLoop:
	IN     Timer
	SUB    TimerParam
	JNEG   TimerLoop
	RETURN
TimerParam:  DW 0

; Game state variables
Temp:	  		DW 0

FreqsSubset:
	 DW 9
	 DW 0
	 DW 0
	 DW 0
	 DW 0
	 DW 0
	 DW 0
	 DW 0
	 DW 0
	 DW 0

FreqsPattern:   ; stores a randomly generated sequence of frequencies to be played by WaveGen peripheral
     DW 3       ; number of sequences to store in this array
	 DW 0
	 DW 0
	 DW 0
LEDPattern:     ; stores a sequence of LED patterns to display for each corresponding entry in Pattern
	 DW 3       ; number of LED patterns to store
	 DW 0 
	 DW 0
	 DW 0
InputPattern:	; stores user input
	 DW 3
	 DW 0
	 DW 0
	 DW 0
EndPattern:
	DW -1

Score:    	DW 0

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
LoByte:    DW &H00FF

Freqs: ; array of 61 frequencies that can be played
   DW 61   ; size of the array
   DW 7644 ; C2
   DW 7215 ; C2 sharp
   DW 6810 ; D2
   DW 6428 ; D2 sharp
   DW 6067 ; E2
   DW 5727 ; F2
   DW 5405 ; F2 sharp
   DW 5102 ; G2
   DW 4816 ; G2 sharp
   DW 4545 ; A2
   DW 4290 ; A2 sharp
   DW 4050 ; B2
   DW 3822 ; C3
   DW 3608 ; C3 sharp
   DW 3405 ; D3
   DW 3214 ; D3 sharp
   DW 3034 ; E3
   DW 2864 ; F3
   DW 2703 ; F3 sharp
   DW 2551 ; G3
   DW 2408 ; G3 sharp
   DW 2273 ; A3
   DW 2145 ; A3 sharp
   DW 2025 ; B3
   DW 1911 ; C4
   DW 1804 ; C4 sharp
   DW 1703 ; D4
   DW 1607 ; D4 sharp
   DW 1517 ; E4
   DW 1432 ; F4
   DW 1351 ; F4 sharp
   DW 1276 ; G4
   DW 1204 ; G4 sharp
   DW 1136 ; A4
   DW 1073 ; A4 sharp
   DW 1012 ; B4
   DW 956  ; C5
   DW 902  ; C5 sharp
   DW 851  ; D5 
   DW 804  ; D5 sharp
   DW 758  ; E5
   DW 716  ; F5
   DW 676  ; F5 sharp
   DW 638  ; G5
   DW 602  ; G5 sharp
   DW 568  ; A5
   DW 536  ; A5 sharp
   DW 506  ; B5
   DW 478  ; C6
   DW 451  ; C6 sharp
   DW 426  ; D6
   DW 402  ; D6 sharp
   DW 379  ; E6
   DW 358  ; F6
   DW 338  ; F6 sharp
   DW 319  ; G6
   DW 301  ; G6 sharp
   DW 284  ; A6
   DW 268  ; A6 sharp
   DW 253  ; B6
   DW 239  ; C7

; Duration constants for playing waves
Unlimited:	 DW &H0000
TwoFourth:	 DW &H4000
ThreeFourth: DW	&H8000
FourFourth:  DW	&HC000
; Value to send to disable sound output
Disable:	 DW	&H3FFF


; IO address constants
Switches:  EQU &H000
LEDs:      EQU &H001
Timer:     EQU &H002
Hex0:      EQU &H004
Hex1:      EQU &H005
DPs:       EQU &H0E0
SQGen:     EQU &H0F0
WaveGen:   EQU &H020
Keys:	   EQU &H021
