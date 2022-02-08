; Permutation = n!/(n-r)!
; Procedure / modular concept - subroutine
data segment
    org 2000h               ; points to that offset
    n equ 6                 ; setting n as constant value 6
    r equ 2
data ends
code segment
    assume cs:code ds:data
    factorial proc near
        mov cx,ax           ; value from function call moved to cx
        rpt:dec cx      
            mul cx          ; multiplied value available at ax
            cmp cx,0001h    ; compared with 1 since decrement mode
            jnz rpt
    ret                     ; value returned
    factorial endp          ; control trsnfered
    start:                  ; main program
        mov ax,n
        call factorial      ; value at ax passed to function - n!
        mov bx,ax           ; mov asnwer to bx
        mov cx,r
        sub ax,cx           ; n-r
        mov ds:[2000], n    ; store data in memory
        mov ds:[2001], r
        mov ds:[2002], al
        mov ds:[2003], bh
        mov ds:[2004], bl
        call factorial      ; (n-r)!
        mov dx,ax
        mov ds:[2005], dh
        mov ds:[2006], dl
        div dx
        hlt
end code
    end start