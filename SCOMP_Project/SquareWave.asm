; SquareWave.asm
; Assembly code that creates square waves using a variety of method
; Cole Biafore
; ECE 2031 CSB
; 10/13/2020

ORG 0
	LOAD   C4
	ADD    TwoFourth
	Call   WaitForSound
	OUT    SqGen
	LOAD   D4
	ADD    ThreeFourth
	Call   WaitForSound
	OUT    SqGen
	LOAD   E4
	ADD    FourFourth
	Call   WaitForSound
	OUT    SqGen
	LOAD   F4
	ADD    TwoFourth
	Call   WaitForSound
	OUT    SqGen
	LOAD   G4
	ADD    ThreeFourth
	Call   WaitForSound
	OUT    SqGen
	LOAD   A4
	ADD    TwoFourth
	Call   WaitForSound
	OUT    SqGen
	LOAD   B4
	ADD    ThreeFourth
	Call   WaitForSound
	OUT    SqGen
	LOAD   C5
	ADD    Unlimited
	Call   WaitForSound
	OUT    SqGen
Here:
	JUMP   Here
	
WaitForSound:
	IN	   SqGen
	JZERO  WaitForSound
	Return


; Useful values
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


; IO address constants
Switches:  EQU &H000
LEDs:	   EQU &H001
Timer:     EQU &H002
DPs:       EQU &H0E0
SqGen:     EQU &H0F0