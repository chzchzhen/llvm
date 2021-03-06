@ RUN: not llvm-mc -triple=armv7-linux-gnueabi %s 2>&1 | FileCheck %s

.text
.arm
@ CHECK: error: invalid instruction
@ CHECK:         ldrd    r12, [r0, #512]
        ldrd    r12, [r0, #512]

@ CHECK: error: invalid instruction
@ CHECK:         strd    r12, [r0, #512]
        strd    r12, [r0, #512]

@ CHECK: error: invalid instruction
@ CHECK:         ldrd    r1, [r0, #512]
        ldrd    r1, [r0, #512]

@ CHECK: error: invalid instruction
@ CHECK:         strd    r1, [r0, #512]
        strd    r1, [r0, #512]
