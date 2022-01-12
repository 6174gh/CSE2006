code segment
assume cs:code
start:
mov ax, 04h
mov bx, 02h
div bx
hlt
code ends
end start

