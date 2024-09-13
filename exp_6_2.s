.data
a:  .word 10, 10, 10, 10, 10, 10, 10, 10, 10, 10
b:  .word 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
c:  .word 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

.text
    la   x10, a
    la   x11, b
    la   x12, c
    li   x13, 0
loop:
    li   x14, 10
    bge  x13, x14, end 
    slli x15, x13, 2
    add  x16, x12, x15
    addi x17, x15, -4
    add  x18, x12, x17
    lw   x19, 0(x10)
    lw   x20, 0(x11)
    beq  x13, x0,sol
    lw   x21, 0(x18)
    mul  x22, x19, x20
    add  x22, x22, x21
    sw   x22, 0(x16)
    j increment
sol:
    li   x21, 0
    mul  x22, x19, x20
    add  x22, x22, x21
    sw   x22, 0(x16)

increment:
    addi x13, x13, 1
    addi x10, x10, 4
    addi x11, x11, 4
    j loop

end:
    nop