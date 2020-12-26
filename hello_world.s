        .arch   armv6
        .cpu    cortex-a53
        .syntax unified

        .extern printf
        .equ    FP_OFFSET, 4

        .section        .rodata
mesg:   .asciz  "Hello World!\n"

        .text
        .type   main, %function
        .global main

main:
        push {fp, lr}
        add fp, sp, FP_OFFSET
        ldr


.end