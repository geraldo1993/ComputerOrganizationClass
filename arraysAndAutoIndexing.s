		AREA AutoIndexing, CODE, READWRITE
		
ENTRY
Len		EQU 8
		ADR r0, A-4
		ADR r1, B-4
		ADR r2, C-4
		MOV r5, #Len
Loop	LDR r3, [r0, #4]!
		LDR r4, [r1, #4]!
		ADD r3, r3, r4
		STR r3, [r2, #4]!
		SUBS r5, r5, #1
		BNE Loop
		NOP
		
		
		AREA AutoIndexing, DATA, READWRITE
A		DCD 1, 2, 3, 4, 5, 6, 7, 8
B		DCD 2, 5, 4, 6, 7, 2, 4, 1
C   	DCD 0, 0, 0, 0, 0, 0, 0, 0

		END