.section .data
print_msg:
    .asciz "Hey from EL0, this message is for EL1\n"

.section .text
.global _start

_start:
    mov x8, #64           // syscall number for write
    mov x0, #1            // fd: stdout
    adr x1, print_msg     // pointer to message
    mov x2, #38           // length of message (fix length of full string)
    svc #0                // make syscall

    // exit syscall
    mov x8, #93           // syscall number for exit
    mov x0, #0            // exit code
    svc #0
