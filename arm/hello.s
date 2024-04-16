.data

msg:
    .ascii      "Hello World\n"
len = . - msg

.globl _start
_start:
    /* move */
    /* r0-6 general purpose */
    /* set 3 arguments for syscall(r7) */
    /* int fd, 1 means stdout */
    mov     %r0, $1
    /* load register 32-bit */
    ldr     %r1, =msg
    ldr     %r2, =len
    /* r7 holds syscall number */
    /* https://syscalls.w3challs.com/?arch=arm_strong */
    mov     %r7, $4
    /* software interrupt */
    swi     $0

    mov     %r0, $0
    mov     %r7, $1
    swi     $0
