substore:
    addi sp,sp,-8
    sw ra,0(sp)
    sw a2 ,4(sp)
    jal x0,plus 
    lw a2 ,4(sp)
    sw a0,0(a2)
    lw ra,0(sp)
    addi sp,sp,8
    jalr x0, 0(ra)