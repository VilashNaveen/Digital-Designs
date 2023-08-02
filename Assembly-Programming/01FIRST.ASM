; ===== WORK OUT 2 PLUS 2 ======================================
START:
	MOV AL,8	;
	CALL 30  	;
	MOV AL,10	;
	CALL 30         ;
; ===== Program Ends ===========================================
JMP START;
	ORG 30;
	PUSH AL;
	PUSHF;
REP:
	DEC AL;
	JNZ REP;
	POPF;
	POP AL;
	RET;
END;
