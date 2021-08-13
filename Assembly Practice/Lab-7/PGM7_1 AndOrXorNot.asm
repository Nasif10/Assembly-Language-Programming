.MODEL SMALL
.STACK 100H
.DATA
    ;VARIABLES WILL  BE DECLARED HERE
.CODE
    
    MAIN PROC
        
        ;STATEMENTS 
          mov al,10 ; 00001010
          mov bl,11 ;00001011
          and al,bl  
          xor al,bl
          or al,bl 
          
          not bl
          
        
        MOV AH,4CH  
        INT 21H   
        
    MAIN ENDP

    ;OTHER PROCEDURES (IF ANY)

END MAIN