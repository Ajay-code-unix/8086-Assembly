ASSUME CS:CODE,DS:DATA
DATA SEGMENT
A DB 34H
DATA ENDS
CODE SEGMENT
START:
MOV AX,DATA
MOV DS,AX
MOV AH,00
MOV AL,A
PUSH AX
MOV CX,2H
MOV BL,10H
LOOP1:
        DIV BL
        MOV DL,AH  ;REMAINDER
        MOV DH,00H
        PUSH DX
        

LOOP LOOP1
MOV CX,2H
PRNT:
        POP BX
        MOV DX,BX
        ADD DX,48
        MOV AH,02H
        INT 21H
LOOP PRNT

MOV AH,4CH
INT 21H
CODE ENDS
END START

