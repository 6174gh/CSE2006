DATA SEGMENT
    STR1 DB 'GOKUL$'
    LEN DW $-STR1-1
    STR2 DB ?
DATA ENDS

ASSUME CS:CODE, DS:DATA

    CODE SEGMENT
    START:
    MOV AX,DATA
    MOV DS,AX
    MOV CX,LEN
    LEA SI,STR1
    LEA DI,STR2
    ADD SI,LEN
    ADD SI,-1
    LOOP1:
        MOV AL,[SI]
        MOV [DI],AL
        INC DI
        DEC SI
    LOOP LOOP1
    MOV DL,'$'
    MOV [DI],DL
    LEA DX,STR2
    MOV AH,09H
    INT 21H
    MOV AH,4CH
    INT 21H
    HLT
CODE ENDS
    END START