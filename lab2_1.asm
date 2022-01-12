data segment
array DB 05H, 61H, 0FA, 10H, 23H
data ends
code segment
assume cs:code, ds:datastart
mov ax,5
mov ds,ax
RPT: add ax,array
INC SI
LOOP RPT
hlt
code ends
end start