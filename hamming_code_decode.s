.data 
    num:.word 0xa13

.text
    la x1,num
    lw x2,0(x1)
    mv x3,x2
    srli x4,x3,8
    slli x5,x4,4
    slli x6,x3,24
    srli x6,x6,24
    srli x6,x6,3
    slli x7,x6,31
    add x5,x6,x5