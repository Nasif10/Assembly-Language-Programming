.MODEL SMALL 
.STACK 100H 
.CODE
MAIN PROC
    ;execute in DEBUG.Place in AX and B in BX
    CALL MULTIPLY
    ;DX will contain the product 
    mov ah,2 
    add dx,30h
    int 21h
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
MULTIPLY  PROC 
    ;multiplies two numbers A and B by shifting and addition     
    
    ;input: AX=A,BX=B. Numbers in range 0-FFh 
    ;output:DX=product                            
    mov ax,2h   ;010b
    mov bx,3h   ;011b
    PUSH AX
    PUSH BX
    XOR DX,DX
    REPEAT:
    ;if B is odd
    TEST BX,1   ; and bx,1 to check the lsb   ; b is odd
    JZ END_IF
    ;then
    ADD DX,AX ;dx=0+010b
    END_IF:  
    SHL AX,1
    SHR BX,1
    ;until
    JNZ REPEAT
    POP BX
    POP AX
    RET 
    MULTIPLY  ENDP
    END MAIN 