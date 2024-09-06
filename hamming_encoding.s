.data
    num: .byte 0xa2

.text
    la x1, num
    lb x2, 0(x1)

    mv x3, x2

    srli x4, x3, 1
    srli x5, x3, 3
    srli x6, x3, 4
    srli x7, x3, 6
    xor x3, x3, x4
    xor x3, x3, x5
    xor x3, x3, x6
    xor x3, x3, x7
    andi x10, x3, 1

    mv x3, x2
    srli x4, x3, 2
    srli x5, x3, 3
    srli x6, x3, 5
    srli x7, x3, 6
    xor x3, x3, x4
    xor x3, x3, x5
    xor x3, x3, x6
    xor x3, x3, x7
    andi x4, x3, 1
    slli x4, x4, 1
    or x10, x10, x4

    mv x3, x2
    srli x4, x3, 1
    srli x5, x3, 2
    srli x6, x3, 3
    srli x7, x3, 7
    xor x3, x4, x5
    xor x3, x3, x6
    xor x3, x3, x7
    andi x4, x3, 1
    slli x4, x4, 3
    or x10, x10, x4

    mv x3, x2
    srli x4, x3, 4
    srli x5, x3, 5
    srli x6, x3, 6
    srli x7, x3, 7
    xor x3, x4, x5
    xor x3, x3, x6
    xor x3, x3, x7
    andi x4, x3, 1
    slli x4, x4, 7
    or x10, x10, x4

    andi x4, x2, 1
    or x10, x10, x4
    andi x4, x2, 0x0E
    slli x4, x4, 3
    or x10, x10, x4
    andi x4, x2, 0xF0
    slli x4, x4, 4
    or x10, x10, x4

    sw x10, 4(x1)
