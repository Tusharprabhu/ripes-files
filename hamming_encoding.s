.data
encoded: .word 0xCAF

.text
la x1, encoded
lw x2, 0(x1)

mv x3, x2
andi x4, x3, 1
srli x5, x3, 2
andi x5, x5, 1
xor x4, x4, x5
srli x5, x3, 4
andi x5, x5, 1
xor x4, x4, x5
srli x5, x3, 6
andi x5, x5, 1
xor x4, x4, x5
andi x4, x4, 1

srli x5, x3, 1
andi x6, x5, 1
srli x5, x3, 2
andi x5, x5, 1
xor x6, x6, x5
srli x5, x3, 5
andi x5, x5, 1
xor x6, x6, x5
srli x5, x3, 6
andi x5, x5, 1
xor x6, x6, x5
andi x6, x6, 1
slli x6, x6, 1
or x4, x4, x6

srli x5, x3, 3
andi x7, x5, 1
srli x5, x3, 4
andi x5, x5, 1
xor x7, x7, x5
srli x5, x3, 5
andi x5, x5, 1
xor x7, x7, x5
srli x5, x3, 6
andi x5, x5, 1
xor x7, x7, x5
andi x7, x7, 1
slli x7, x7, 2
or x4, x4, x7

srli x5, x3, 7
andi x8, x5, 1
srli x5, x3, 4
andi x5, x5, 1
xor x8, x8, x5
srli x5, x3, 5
andi x5, x5, 1
xor x8, x8, x5
srli x5, x3, 6
andi x5, x5, 1
xor x8, x8, x5
andi x8, x8, 1
slli x8, x8, 3
or x4, x4, x8

beqz x4, no_error

li x9, 1
sll x9, x9, x4
xor x2, x2, x9

no_error:
andi x3, x2, 0x02
srli x3, x3, 1

andi x5, x2, 0x0E
srli x5, x5, 1
or x3, x3, x5

andi x6, x2, 0x70
srli x6, x6, 3
or x3, x3, x6

sw x3, 4(x1)
