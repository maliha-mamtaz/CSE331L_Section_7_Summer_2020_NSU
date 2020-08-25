
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.data
array: db 0,2,4,6,8,10,12,14,16,18,20
.code
mov si,0
mov cx,20
mov ax,0
sumlist:
add al,array[si]
inc si
inc si

loop sumlist
