.MODEL SMALL
.STACK 100H
.DATA
    ;VARIABLES WILL  BE DECLARED HERE
.CODE
    
    MAIN PROC
        
        ;STATEMENTS 
   	MOV 	AH, 1	; read character function
	INT 	21h	; char in AL

	CMP	AL,'Y'	; char = 'Y'
	JE 	THEN	; yes, display the char
	CMP	AL,'y'	; char = 'y'
	JE 	THEN	; yes, display the char
	JMP 	ELSE_
THEN:
	MOV 	DL, AL	; get the char
	MOV 	AH, 2	; display character function
	INT 	21h	    ; display the character
ELSE_:
       
    MOV AH,4CH  
    INT 21H   
        
    MAIN ENDP

    ;OTHER PROCEDURES (IF ANY)

END MAIN