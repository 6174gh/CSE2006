ASSUME CS: CODE, ds:data
data segment
org 2000h
arr dw 0738h, 1253h, 5674h, 9273h, 0AB3h, 58C4h, 8EFAh, 32CEh, 18CDh, 842Ah, 1357h, 0877h, 20E4h, 1687h, 573Ah
org 4000h
count dw ?
data ends

code segment
START:
mov ax, data
mov ds, ax
mov si, offset arr

mov ax, 0000h  
mov bx, 0000h
mov cx, 0Fh  

lo:
mov ax, [si] 
test ax, 03h  
jz loop1
jmp loop2

loop1:
inc bx 
jmp loop2

loop2:
add si, 02h  
loop lo

mov count, bx 


hlt
code ends
end start
end