		AREA DaysOfWeek, CODE, READONLY
Sun		EQU 0
Mon		EQU 4
Tue		EQU 8
Wed		EQU 12
Thu		EQU 16
Fri	    EQU 20
Sat		EQU 24
ENTER	
		ADR r0, Week
		LDR r2, [r0, #Tue]
		LDR r3, [r0, #Wed]
		ADD r4, r2, r3
		STR r4, [r0, #Mon]
		NOP
		NOP
		AREA DaysOfWeek, DATA, READWRITE
Week	DCD 0x11111111
	    DCD 0x22222222
		DCD 0x33333333
		DCD 0x44444444
		DCD 0x55555555
		DCD 0x66666666
		DCD 0x77777777
		END
						
							