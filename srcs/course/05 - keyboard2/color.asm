org 100h

section .text
;set graphic mode 320x200 @ 256 colors
mov ax, 13h
int 10h

mov ax, 0xa000
mov es, ax

mov di, 0

mov al, 0h

loopColor: 
mov cx, 320
rep stosb

int 19h

inc al
cmp al, 200
jb loopColor

