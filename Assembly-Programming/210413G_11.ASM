;===== 210413G Multiply All Integers from 1 to 5 =============

start:
	MOV AL,5
	MOV BL,1
	
rep:
	MUL BL,AL
	DEC AL
	JNZ rep

	MOV	AL,8A	;
	OUT	02	

	MOV	AL,FF	;
	OUT	02

	MOV DL,66
	
	END