.MODEL SMALL
.STACK 100H
.DATA
A DB 5,2,1,3,4

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    LEA SI,A
    MOV BX,5
    CALL SELECT
    MOV AH,4CH
    INT 21H
    MAIN ENDP 
INCLUDE SELECT.ASM
END MAIN 


;SELECT PROC
    ;sorts a byte array by the selectsort method
    ;input: SI = array offset address and BX = number of elements
    ;output: SI = offset of sorted array