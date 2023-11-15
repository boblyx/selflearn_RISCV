.section .text
.globl _start
_start:
    .equ stdin, 0
    .equ stdout, 1
    li  a0, stdout
l1:
    li a0, 1
    la a1, msg
    li a2, 13
    li a7, 64
    ecall

    li a0, stdin
    li a2, 5
    li a7, 63
    ecall
    
    li a7, 93
    li a0, 13
    ecall

.data
msg:
    .string "Enter string\n"
buf:
    .zero 32

