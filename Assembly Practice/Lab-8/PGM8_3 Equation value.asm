.MODEL SMALL
.STACK 100H
.DATA  
A DW  ?
.CODE
MAIN PROC  
    MOV AH,1
    INT 21H
    SUB AL,30H
    MOV A,AX  
    
    MOV AX,5
    IMUL A      ;AX=A*5
    SUB AX,7    ;AX=A*5-7
    MOV A,AX    ;A=AX
            
    ADD AX,30H 
    
    PUSH AX
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    POP AX
    MOV AH,2        
    MOV DL,AL
    
    INT 21H
    

 
    MAIN ENDP 

