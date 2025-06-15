.section .data
msg:
    .asciz "Hey from EL0, this message is for EL1\n"

.section .text
.global _start

_start:
    mov x8, #64          // syscall number for write
    mov x0, #1           // file descriptor (stdout)
    ldr x1, =msg         // pointer to message
    mov x2, #38          // length of message (actual length of string)
    svc #0               // perform syscall

    // exit syscall to gracefully terminate
    mov x8, #93          // syscall number for exit
    mov x0, #0           // exit status
    svc #0
