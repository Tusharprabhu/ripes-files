.data
a:.word 18
divisor:.word 3
ans:.word 0
.text
la x11,ans
lw x10,a
lw x5,divisor
loop:
    blt x10,x0,not_div
    beq x10,x0,div
    sub x10,x10,x5
    j loop
not_div:
    addi x10,x0,0
    j exit
div:
    addi x10,x0,1
    j exit
exit:
    sw x10,0(x11)
    nop
    