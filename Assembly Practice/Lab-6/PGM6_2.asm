.MODEL SMALL
.STACK 100H
.DATA
    ;VARIABLES WILL  BE DECLARED HERE
.CODE
    
    MAIN PROC
        
        ;STATEMENTS 
    MOV BL,33H
    MOV AL,31H    
    MOV	AH, 2	    ; prepare to display
	CMP  AL, BL	; AL <= BL?
	JNBE ELSE_   ; jump if Not Below/Equal

	MOV 	DL, AL
	JMP	DISPLAY
ELSE_:
	MOV 	DL, BL
DISPLAY:
	INT 	21h
END_IF:

        
    MOV AH,4CH  
    INT 21H   
        
    MAIN ENDP

;OTHER PROCEDURES (IF ANY)

END MAIN