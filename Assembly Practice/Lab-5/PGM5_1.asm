
;TITLE PGM5_l:CHECK FLAGS 
;used in DEBUG to check flag settings 

.MODEL SMALL      

.STACK 100H

.CODE
 
MAIN PROC  
    
    MOV AX,4000H  ;AX = 4000h 
    ADD AX,AX     ;AX = 8000h
    SUB AX,0FFFFH ;AX = 8001h
    NEG AX        ;AX = 7FFFh
    INC AX        ;AX = 8000H
    
    MOV AH,4CH 
    INT 21H       ;DOS exit 
    
MAIN ENDP
    END MAIN 