ASSUME CS:CODE, DS:DATA
DATA SEGMENT
STR1 DB 01H, 02H, 03H, 04H, 05H, 06H, 07H, 08H 
SUM DB ?
AVG DB ?
DATA ENDS

CODE SEGMENT
ASSUME CS:CODE, DS:DATA
START:
MOV AX, DATA
MOV DS, AX
XOR AX, AX
MOV SI, 2000H
LEA SI, STR1
MOV CX,08H

LOOP1: 
	MOV AL, [SI]
	MUL AL
	MOV [SI], AL
	XOR AL,AL
	INC SI
LOOP LOOP1
LEA SI, STR1
MOV CX, 08H
LOOP2:
ADD AL, STR1[SI]
INC SI
LOOP LOOP2
MOV SUM,AL
MOV BL, 08H
DIV BL
MOV AVG,AL
HLT
CODE ENDS
END START