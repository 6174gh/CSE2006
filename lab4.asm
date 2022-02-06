ata segment
array db 05h, 61h, 0Fh, 10h, 23h
data ends
code segment
assume cs:code,ds:data
start:
mov ax, data
mov ds, ax

inc si
loop rpt
mov ax, al
mov bx, 5
div bx
hlt
code ends
end start