    .thumb

@ USA: 0x080057D4
.org 0x080057D0, 0xFF
    ldr  r1, [pc, #0]   @ .byte 0x00, 0x49
    bx   r1             @ .byte 0x08, 0x47
    .4byte 0x08680001

@ USA: 0x08680000
.org 0x08680000, 0xFF
    ldr   r0, [pc, #0x18]
    movs  r1, #1
    strb  r1, [r0]
    ldr   r0, [pc, #0x18]
    movs  r1, #0
    ldr   r0, [pc, #0x18]
    ldrb  r0, [r0, #0xa]
    cmp   r0, #0
    bne   _08680016
    ldr   r1, [pc, #0x14]
    bx    r1
_08680016:
    ldr   r1, [pc, #0x14]
    bx    r1
    movs  r0, r0
    @ ここまで
    @ .byte 0x06, 0x48, 0x01, 0x21, 0x01, 0x70, 0x06, 0x48, 0x00, 0x21, 0x06, 0x48, 0x80, 0x7A, 0x00, 0x28, 0x01, 0xD1, 0x05, 0x49, 0x08, 0x47, 0x05, 0x49, 0x08, 0x47, 0x00, 0x00
    .4byte 0x0202572F @ USA: 0x0202572F (USA版と同じアドレス)
    .4byte 0x02025379 @ USA: 0x02025379 (USA版と同じアドレス)
    .4byte 0x02025FF0 @ USA: 0x02025FF0 (USA版と同じアドレス)
    .4byte 0x080057D9 @ USA: 0x080057DD
    .4byte 0x080057E1 @ USA: 0x080057E5

