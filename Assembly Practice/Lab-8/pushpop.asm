Include 'emu8086.inc'
.model small
.stack 100h   ;ss:sp ss is the segment number of the stack segment :sp points the offset address of the top of the stack
.data
.code

main proc
       mov ax,2345h
       mov bx,3424h
    
        ;sp :100h
       
        
       push ax   ;  1.sp=sp-2 (00feh) 2.values of ax go to ->00feh
       push bx   ;  1.sp=sp-2 (00fch> 2.values of bx go to ->00fch ;
       
       pop cx    ; values of 00fch go to cx ;sp =sp+2 (00feh)
       pop dx    ; values of 00feh go to dx ;sp=sp+2 (100h)
       
        
    
    mov ah,4ch
    int 21h
    main endp
end main