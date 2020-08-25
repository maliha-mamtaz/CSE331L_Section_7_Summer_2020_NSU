
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

#include <stdio.h>
a DB 10;int a=10
b DW 15;int b=15
mov ax,k
add ax,k1
k equ 10
k1 equ 15
a DB 10;variable
a DB 10h,15h,11h,12h;array,int a[10]
b DB 10 DUP(?);int a[10]={}
int a[n]
c DB 5 DUP(1,2);1,2,1,2,1
mov bx ,10
mov bx,5
inc bx;c++
dec bx;c--
mov bx,35h
mov di,12h
lea si,[bx=di]
a db 0h,2h,0h,4h,0h,6h

ret




