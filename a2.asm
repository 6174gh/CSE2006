DATA SEGMENT
ORG 2000H
A1  DB 12H,23H,24H,44H,67H,77H,01H,02H
DATA ENDS
CODE SEGMENT
ASSUME CS:CODE, DS:DATA
START:
MOV AX, DATA
MOV DS,AX
XOR AX,AX 
MOV SI,2000H
MOV AX,SI
ADD AX,0008H
MOV DI,AX
XOR AX,AX
L1:
DEC DI
MOV AL,[SI]
MOV BL, AL
MOV AL, [DI]
MOV [SI], AL
MOV [DI], BL
INC SI
CMP DI,SI
JNZ L1
HLT
CODE ENDS
END START