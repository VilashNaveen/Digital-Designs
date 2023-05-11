; ===== CONTROL THE TRAFFIC LIGHTS =============================

	CLO		; Close unwanted windows.
Start:
	MOV AL,00
	OUT 01
	MOV DL,10	
	MOV AL,84	
	OUT 01
	JMP rep
rep:	
	DEC DL
	JNZ rep
		
	MOV AL,FF	
	OUT 01		; Send AL to Port One (The traffic lights).
	JMP Start	; Jump back to the start.
	END		; Program ends.

	ORG 40
	
	
	
	
; ===== Program Ends ==========================================

	YOUR TASK
	=========
	Use the help page on Hexadecimal and ASCII codes.
	Work out what hexadecimal numbers will activate the
	correct traffic lights. Modify the program to step
	the lights through a realistic sequence.
