include "emu8086.inc"
.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
           
     mov ax,1Ah
     mov bl,5h
     div bl
     mov ch,ah
     mov cl,al
     
    
    print "quotient " 
     mov dl,cl 
     add dl,30h
     mov ah,2 
     int 21h
       
     print 0ah 
     print 0dh
     
        
     print "remainder "
     
      mov dl,ch 
     add dl,30h
     mov ah,2
     int 21h
    MOV AH,4CH
    INT 21H
    MAIN ENDP

END MAIN 