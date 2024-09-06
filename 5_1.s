.data
str: .string "madam"
.text 
la x3,str
li sp,0x500
rpt:
    lbu x4,0(x3)
    beq x4,x0,retr
    addi x8,x8,1
    sb x4,-1(sp)
    addi x3,x3,1
    addi sp,sp,-1
    j rpt
retr:
    la x3,str
    next:
        lbu x6,0(sp)
        lbu x4,0(x3)
        bne x4,x6,exit
        addi sp,sp,1
        addi x3,x3,1
        addi x8,x8,-1
        bne x8,x0,next
        addi x1,x0,1
    loop: j loop
    exit:addi x1,x0,0
    last:j last