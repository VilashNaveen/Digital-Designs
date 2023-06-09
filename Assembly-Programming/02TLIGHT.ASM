; ===== CONTROL THE TRAFFIC LIGHTS =============================

	CLO		; Close unwanted windows.
Start:
	MOV AL,00
	OUT 01	
	MOV AL,84	
	OUT 01
	
	MOV DL,9
rep:
	DEC DL
	JNZ rep
		
	MOV AL,48	
	OUT 01		
	MOV AL,30
	OUT 01

	MOV DL,4
rep2:
	DEC DL
	JNZ rep2
	
	JMP start

	END
	
	
	
; ===== Program Ends ==========================================

	YOUR TASK
	=========
	Use the help page on Hexadecimal and ASCII codes.
	Work out what hexadecimal numbers will activate the
	correct traffic lights. Modify the program to step
	the lights through a realistic sequence.
