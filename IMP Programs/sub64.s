;Program to sub two 64-bit numbers
	AREA sub64, CODE, READONLY
	LDR R0, =LNUM1
	LDR R1, =UNUM1
	LDR R2, =LNUM2
	LDR R3, =UNUM2
	LDR R10, =LRESULT
	LDR R11, =URESULT
	
	LDR R4, [R0]
	LDR R5, [R1]
	LDR R6, [R2]
	LDR R7, [R3]
	
	SUBS R8, R4, R6
	SBC R9, R5, R7
	
	STR R8, [R10]
	STR R9, [R11]
	NOP
	NOP
	AREA data1, DATA, READWRITE
LRESULT DCD 0x0
URESULT DCD 0x0
LNUM1 DCD 0x0
UNUM1 DCD 0x0
LNUM2 DCD 0x0
UNUM2 DCD 0x0
	END