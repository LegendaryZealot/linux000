!
! boot.s
!
.global begtext,begdata,begbss,endtext,enddata,endbss
.text
begtext:
.data
begdata:
.bss
begbss:
.text
BOOTSEG=0x07c0

entry start
start:
    jmpi go,BOOTSEG
go:mov ax,cs
    mov ds,ax
    mov es,ax
    mov [msg+18],ah
    mov cx,#20
    mov dx,#0x1100
    mov bx,#0x000c
    mov bp,#msg
    mov ax,#0x1301
    int 0x10
loop1:jmp loop1
msg:.ascii "Loading system ..."
    .byte 13,10
.org 510
    .word 0xAA55
.text
endtext:
.data
enddata:
.bss
endbss:
