.MODEL SMALL
.STACK 100H
.DATA
    ;VARIABLES WILL  BE DECLARED HERE
.CODE
    
    MAIN PROC
        
     ;STATEMENTS
    MOV AX,0001H 
        
    CMP AX, 0		; test AX
	JL 	NEGATIVE	; AX < 0
	JE	ZERO		; AX = 0
	JG	POSITIVE	; AX > 0  
	
NEGATIVE:
	MOV 	BX, -1	; put -1 in BX
	JMP	END_CASE	; and exit
	
ZERO:	
	MOV 	BX, 0		; put 0 in BX
	JMP 	END_CASE	; and exit  
	
POSITIVE:
	MOV 	BX, 1		; put 1 in BX   
	
END_CASE:       
        MOV AH,4CH  
        INT 21H   
        
    MAIN ENDP

    ;OTHER PROCEDURES (IF ANY)

END MAIN