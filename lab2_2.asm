data segment
    array dw 0005H, 5050H, F001H, 1010H
data ends

code segment
assume cs:code ds:datastart
start:
    mov ax,data
    mov ds,ax
    mov cl,05H
    mov ax,0000H
    RPT: add ax,array
    INC SI
    INC SI
    LOOP RPT