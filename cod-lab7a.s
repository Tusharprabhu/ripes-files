.data 
src:.word 20,-1,5,-3,7,0
.text
    addi x6,x0,0
    la x6,src
    lw, x7,0(x6)
    addi x5,x7,0
    beq x5,x0,end
    
loop: bge x7,x5,skip
      addi x7,x5,0
skip: addi x6,x6,4
      lw x5,0(x6)
      bne x5,x0,loop
end: addi x5,x7,0