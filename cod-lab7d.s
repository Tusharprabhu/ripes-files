.data
array:.word 5, 3, 8, 6, 2
size:.word 5

.text
    la x1, size
    lw x2, 0(x1)
    li x3, 0

outerloop:
    addi x4, x2, -1
    bge x3, x4, done
    li x5, 0
innerloop:
    addi x6, x2, -1
    sub x6, x6, x3
    blt x5, x6, compare

    j inndone

compare:
    la x7, array
    slli x8, x5, 2
    add x11, x7, x8
    lw x9, 0(x11)
    lw x10, 4(x11)
    bgt x9, x10, skip
    sw x10, 0(x11)
    sw x9, 4(x11)

skip:
    addi x5, x5, 1
    j innerloop

inndone:
    addi x3, x3, 1
    j outerloop

done:
    nop
