 .MODEL SMALL
.STACK 100H
.DATA
    ;VARIABLES WILL  BE DECLARED HERE
.CODE
    
    MAIN PROC
        
        ;STATEMENTS 
         mov al,10101010b 
         mov bl,10111011b  
         mov bh,10111111b
         MOV CH,10110111B
         and al,0a0h ;CLEARING
         or bl,0fh  ;SETTING
         xor bh,0BFh ;INVERSION
         AND CH,08H ;TESTING
          
   
                
        
        MOV AH,4CH  
        INT 21H   
        
    MAIN ENDP

    ;OTHER PROCEDURES (IF ANY)

END MAIN