; ===== Counting ===================================


	MOV	AL,0	; Initial value stored in BL
	MOV     BL,1
	MOV	CL,1
	MOV	DL,0

Rep:			; Jump back to this label
	PUSH	CL
	POP	DL
	ADD     CL,AL
	ADD	CL,BL
	PUSH	BL
	POP	AL
	PUSH	DL
	POP	BL	; Add ONE to BL
	JMP	Rep	; Jump back to Rep

	END		; Program Ends

; ===== Program Ends ===============================

	TASK
	=====
	
	Rewrite the program to count backwards using DEC BL.
	
	Rewrite the program to count in threes using ADD BL,3.
	
	Rewrite the program to count 1 2 4 8 16 using MUL BL,2
	
	Here is a more difficult task.  
	Count 0 1 1 2 3 5 8 13 21 34 55 98 overflow.  
	Here each number is the sum of the previous two.  
	You will need to use registers or RAM locations 
	for temporary storage of the numbers.  
	If you have never programmed before, this is a real brain teaser. 
	Remember that the result will overflow when it goes above 127.
	
	This number sequence was first described by 
	Leonardo Fibonacci of Pisa (1170_1230)

