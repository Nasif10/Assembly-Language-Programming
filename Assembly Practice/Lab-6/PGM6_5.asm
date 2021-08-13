.MODEL SMALL
.STACK 100H
.DATA
    ;VARIABLES WILL  BE DECLARED HERE
.CODE
    
    MAIN PROC
        
        ;STATEMENTS 
        
         MOV 	CX, 10	; number of '*' to display
	MOV 	AH, 2	; char display function
	MOV 	DL, '*'	; char to display
TOP:
	INT 	21h	; display a star
	LOOP	TOP 
        
        MOV AH,4CH  
        INT 21H   
        
    MAIN ENDP

    ;OTHER PROCEDURES (IF ANY)

END MAIN