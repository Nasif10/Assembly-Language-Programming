.MODEL SMALL
.STACK 100H
.DATA
   MSG1 DB 'ENTER FIRST NUMBER:$'
   MSG2 DB 10,13,'ENTER SECOND NUMBER:$'
   MSG3 DB 10,13,'RESULT IS:$'
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
        
        MOV AH, 1 
        INT 21H
        MOV CL, AL
        
        
        ADD BL,CL      ;BL = BL+CL
        SUB BL,30H      ;CONVERT ASCII TO DECIMAL
        
          
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