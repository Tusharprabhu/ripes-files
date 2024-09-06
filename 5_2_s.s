.data
array:  .word 3, 5, 7, 9, 11  
target: .word 9              
size:   .word 5            
.text
    la x3, array               
    lw x4, target        
    lw x5, size              
    li x6, 0              
    li x7, 0               

loop:
    bge x6, x5, end  
    lw x8, 0(x3)             
    beq x8, x4, found   
    addi x6, x6, 1          
    addi x3, x3, 4              
    j loop       
found:
    li x7, 1                 
end:
nop