   .text
   li x1,1
   li x2,2
   li x3,3
   li x4,4
   li x5,5
   li x6,6
    add x7, x1, x2   # x7 = y + m
    sub x8, x3, x4   # x8 = l - d
    add x9, x7, x8   # x9 = (y + m) - (l - d)
    add x10, x5, x6  # x10 = z + c
    add x11, x9, x10 # x11 = (y + m) - (l - d) + (z + c)
    add x12, x11, x4  # x0 = (y + m) - (l - d) + (z + c) + d
    sw x12 ,0(x21)