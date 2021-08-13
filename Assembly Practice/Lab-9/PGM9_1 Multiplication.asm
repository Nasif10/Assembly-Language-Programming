                                                                      include "emu8086.inc"
.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
           
     mov ax,6h
     mov bx,5h
     mul bx
     
     
     aam
          ;for 2 digits
       mov ch,ah
       mov cl,al
  
      mov dl,ch
     add dx,30h
     mov ah,2
     int 21h 
     
      mov dl,cl
     add dx,30h
     mov ah,2
     int 21h
     
    MOV AH,4CH
    INT 21H
    MAIN ENDP

END MAIN 