;;; Directives
          PRESERVE8
          THUMB       
 
; Vector Table Mapped to Address 0 at Reset
; Linker requires __Vectors to be exported
 
          AREA    RESET, DATA, READONLY
          EXPORT  __Vectors
 
__Vectors 
	  DCD  0x20001000     ; stack pointer value when stack is empty
          DCD  Reset_Handler  ; reset vector
  
          ALIGN
 
; The program
; Linker requires Reset_Handler
 
          AREA    MYCODE, CODE, READONLY
 
   	  ENTRY
   	  EXPORT Reset_Handler
 
 
Reset_Handler
;;;;;;;;;;User Code Starts from the next line;;;;;;;;;;;;	

	MOV R0, 	#57			; R0 = ? 
	MOV R1, 	#'A'		; R0 = ? 
	MOV R2, 	#2_1101	    ; R0 = ?
	MOV	R3,		#0x05		; R0 = ?
	MOV	R4,		#0xCD		; R1 = ?
	MOV	R5,		#0x3D4A		; R5 = ?
	;MOV R6,     #0x3A4B7890 ;  test to compile with this line uncommented, what error message you got
	MOVW R6, 	#0x1234		; R6 = ? 
	MOVT R6, 	#0xABCD		; R6 = ?
	MOV32	R6, #0x76543210	; R6 = ?

	LDR	R7,	    = 0x87654321    ; R7 = ?


	ADD		R1,R2,R3				; R1 = ?
	MOV32   R3, 	#0xFFFFFFFF		; R3 = ?
	ADDS	R1,R2,R3				; R1 = ?   
	; specify Status bits updates

	SUBS	R1,R2,R3		; R1 = ?   
	; specify Status bits updates


	ADD	R1,R2,R3		; R1 = ?   
	; How did that operation affect the flags (Status bits) in CPSR?
	

	ADDS	R1,R2,R3	; R1 = ?  
	; Please specify Status bits updates, is there any difference between the previous operation
			

	MOV	R2,	#0x00000001	; R2 = ?
	ADDS	R1,R2,R3		; R1 = ?
	;again, what happened to the flags?


	MOV	R2,	#0x00000001	; R2 = ?
	MOV	R3,	#0x00000002	; R3 = ?
	ADDS	R1,R2,R3		; R1 = ?   
	; check the flags again......

	; What will be the effect of owerflow on status bits.  
	MOV32   R2, 	#0x7DDDDDDD	    ; R2 = ?
	MOV32	R3, 	#0x7FFFFFFF 	; R3 = ?
	; Are R2 and R3 positive or negative numbers? 

	ADDS    R1,R2,R3		; R1 = ? 
	;Is the result positive or negative. Check the status bits. What does it mean?
	
	
	;Trace and find out what this code is doing, write a C code that can do the same. 
		MOV r0, #1
		MOV r1, #10
		MOV r2, #1
Next	MUL  r2, r1, r2
		SUBS r1, r1, #1
		BNE  Next
	
	
	END