# hello.s
.data
str:
	.string "Hello World!\n"

.text
# Just using sys_write Linux syscall.
# For more info: `man 2 write`
main:
	li  a0, 1    # int fd - file descriptor id
	la  a1, str  # void buf - Buffer
	li  a2, 13   # size_t count - bytes from the buffer
	li  a7, 64   # sys_write
	ecall
	
	li  a0, 0    # exit code
	li  a7, 93   # exit
	ecall
