# reply.s
# 1. Show a prompt message
# 2. Read stdin
# 3. Output a combined message based on data read from stdin.
.section .text
.globl _start
_start:
    .equ stdin, 0
    .equ stdout, 1
    li  a0, stdout
L1:
    li  a0, 1 # file descriptor id
    la  a1, msg # buffer
    li  a2, 13 # size_t of buffer
    li  a7, 64 # sys_write
    ecall
    
L2:
    lui a1, %hi(buff) # Load buffer into a1
    li  a0, stdin # file descriptor id
    li  a2, 5 # size_t of buffer
    li  a7, 63 # sys_read
    ecall

L3:
    lui a1, %hi(buff) # Load buffer into a1
    li a0, 1 # file descriptor id
    li a2, 5 # size_t of buffer
    li a7, 64 # sys_write
    ecall
    
epilogue: 
    li  a7, 93 # sys_exit
    li  a0, 0 # exit_code
    ecall

.data
msg:
    .string "Enter string\n"
buff:
    .zero   32 # size_t of expected buffer

