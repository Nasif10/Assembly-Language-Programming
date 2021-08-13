.MODEL SMALL
.STACK 100H
.DATA
   ;VARIABLES WILL  BE DECLARED HERE
.CODE
    
    MAIN PROC
        
    MOV  AX,0FE77H  ;65143
    MOV  CL, 2   
    SHR  AX, CL     ;3F9D
        
    MOV AH,4CH  
    INT 21H   
        
    MAIN ENDP

    ;OTHER PROCEDURES (IF ANY)

END MAIN