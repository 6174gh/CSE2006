DATA SEGMENT
    MSG1 DB "ODD$"
    MSG2 DB "EVEN$"
DATA ENDS

CODE SEGMENT
    ASSUME CS:CODE, DS:DATA
    START:
    MOV AX,DATA
    MOV DS,AX
    MOV BX,5H
    MOV CX,8H
    LOOP1:
        ROR BX,01H
        JNC SKIP
    ADD AX,01H
    SKIP:
        LOOP LOOP1
        SHR AX,1
        JC ODD
    LEA DX,MSG1
    JMP TERMINATE
    ODD:
        LEA DX,MSG2
    TERMINATE:
        MOV AH,09H
        INT 21H
        MOV AH,4CH
        INT 21H

    HLT
CODE ENDS
    END START
