.MODEL SMALL
.STACK 100H

DATA SEGMENT
    MSG_1 DB 10,13,'ENTER ANY STRING : $'
    MSG_2 DB 10,13,'ENTERED STRING IS : $'
    MSG_3 DB 10,13,'CONVERTED STRING IS $' 
     
    P LABEL BYTE
    M DB 0FFH
    L DB ?
    Q DB 0FFH DUP ('$')
DATA ENDS

DISPLAY MACRO MSG
    MOV AH,9
    LEA DX,MSG
    INT 21H
ENDM   
CODE SEGMENT
    ASSUME CS:CODE,DS:DATA
START:
        MOV AX,DATA
        MOV DS,AX                
               
        DISPLAY MSG_1
       
        LEA DX,P
        MOV AH,0AH    
        INT 21H
       
        DISPLAY MSG_2
       
        DISPLAY Q
       
        DISPLAY MSG_3
               
        LEA SI,Q
        
        MOV CL,L
        MOV CH,0
              
CHECK:
        CMP [SI],41H
        JB DONE
        CMP [SI],61H
        JB DONE
        CMP [SI],78H
        JG DONE
        
             
UPR:
        SUB [SI],20H
        JMP DONE
              
DONE:
        INC SI
        LOOP CHECK
        DISPLAY Q     
               
        MOV AH,4CH
        INT 21H
CODE ENDS
END START