		AREA BL_instruction, CODE, READWRITE
		ENTRY
		
		ADR		r4, P
		ADR		r5, Q
		
		LDR		r0, [r4]
		BL		Func1
		STR		r0, [r4, #8]
		
		LDR		r0, [r5]
		BL		Func1
		STR		r0, [r5, #8]	
		
		MOV		r0, #0x18
		LDR		r1, =20026
		SVC		#0x123456
		
Func1 	CMP		r0, #0
		MOVGT	r0, r0, LSL #4
		ADDGT	r0, r0, #1
		MOVLT	r0, r0, LSL #5
		MOV		pc, r14
		
		AREA BL_instruction, DATA, READWRITE
P		DCD		0x00000003    ;P = 3;
Q		DCD		0xFFFFFFFF	  ;Q = -1
		SPACE 8
		END