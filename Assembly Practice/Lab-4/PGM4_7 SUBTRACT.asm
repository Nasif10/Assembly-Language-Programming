 .MODEL SMALL
.STACK 100H
.DATA
    ;VARIABLES WILL  BE DECLARED HERE  
    
    MSG1 DB 'ENTER 1ST NUMBER BIGGER THAN 2ND:$'
    MSG2 DB 10,13,'ENTER 2ND NUMBER:$'
    MSG3 DB 10,13,'DIFFERENCE BETWEEN 2 NUMBERS:$'
.CODE
    
    MAIN PROC   
        MOV AX,@DATA
        MOV DS,AX
        
        LEA DX,MSG1
        MOV AH,9
        INT 21H
        
        MOV AH, 1      ;INPUT
        INT 21H
        MOV BL, AL     ;SAVE INPUT IN BL  
           
        LEA DX,MSG2
        MOV AH,9
        INT 21H
        
        MOV AH,1
        INT 21H
        MOV CL, AL
        
        
        SUB BL,CL      ;BL = BL-CL
        ADD BL,30H      ;CONVERT HEX TO DECIMAL
        
       
             
        LEA DX,MSG3  
        MOV AH,9
        INT 21H
        
        MOV AH, 2
        MOV DL, BL
        INT 21H 
        
        
        
        MOV AH,4CH  
        INT 21H   
        
    MAIN ENDP

    ;OTHER PROCEDURES (IF ANY)

END MAIN