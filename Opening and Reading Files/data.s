section .data
        pathname dd "/home/styburek2002/Desktop/NASM_x86/Opening and Reading Files/file.txt"
section .bss
        buffer: resb 50
section .text

global main

main:
        mov eax,5
        mov ebx,pathname
        mov ecx,0
        int 80h

        mov ebx,eax
        mov eax,3
        mov ecx,buffer
        mov edx,1024
        int 80h

        mov eax,1
        mov ebx,0
        int 80h
