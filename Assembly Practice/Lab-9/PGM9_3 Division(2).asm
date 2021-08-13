.MODEL SMALL
.STACK 100H
.data
quo dw ?
rem dw ?
.CODE  
MAIN PROC  
    mov ax,@data
    mov ds,ax
    
    mov ax,56
    mov dx,0
    
    mov bx,0ah
    div bx
    mov quo,ax
    mov rem,dx
    
    mov dx,quo
    add dx,30h
    mov ah,2
    int 21h 
    
    mov dx,rem  
    add dx,30h
    mov ah,2   
    
    int 21h
    
    
  
    MOV AH,4CH
    INT 21H
    MAIN ENDP

END MAIN 