Dump of assembler code for function fibonacci:
13 {
   0x00010478 <+0>:  sub   sp, sp, #8
   0x0001047c <+4>:  ldr   r2, [pc, #148] ; 0x10518 <fibonacci+160>
   0x00010480 <+8>:  ldr   r3, [pc, #148] ; 0x1051c <fibonacci+164>
   0x00010484 <+12>: str   r0, [sp, #4]
   0x00010488 <+16>: str   r1, [sp]

14 /* XXX    if (seq == NULL || n < 2) return 0; */
15 
16    *seq++ = 0;  /* F[0] */
   0x0001048c <+20>: ldr   r0, [sp]
   0x00010490 <+24>: add   r1, r0, #4
   0x00010494 <+28>: str   r1, [sp]
   0x00010498 <+32>: str   r3, [r0]

17    *seq++ = 1;  /* F[1] */
   0x0001049c <+36>: ldr   r0, [sp]
   0x000104a0 <+40>: add   r1, r0, #4
   0x000104a4 <+44>: str   r1, [sp]
   0x000104a8 <+48>: str   r2, [r0]

18    n -= 2;
   0x000104ac <+52>: ldr   r0, [sp, #4]
   0x000104b0 <+56>: sub   r0, r0, #2
   0x000104b4 <+60>: str   r0, [sp, #4]
   0x000104b8 <+64>: ldr   r0, [pc, #96]  ; 0x10520 <fibonacci+168>

19    while (n-- > 0) {
   0x000104bc <+68>: ldr   r1, [sp, #4]
   0x000104c0 <+72>: add   r0, r1, r0
   0x000104c4 <+76>: str   r0, [sp, #4]
   0x000104c8 <+80>: cmp   r1, #0
   0x000104cc <+84>: ble   0x1050c <fibonacci+148>
   0x000104d0 <+88>: ldr   r0, [pc, #76]  ; 0x10524 <fibonacci+172>
   0x000104d4 <+92>: ldr   r1, [pc, #76]  ; 0x10528 <fibonacci+176>

20       *seq = *(seq - 1) + *(seq - 2);
   0x000104d8 <+96>: ldr   r2, [sp]
   0x000104dc <+100>:   add   r1, r2, r1
   0x000104e0 <+104>:   ldr   r1, [r1]
   0x000104e4 <+108>:   ldr   r2, [sp]
   0x000104e8 <+112>:   add   r0, r2, r0
   0x000104ec <+116>:   ldr   r0, [r0]
   0x000104f0 <+120>:   add   r0, r1, r0
   0x000104f4 <+124>:   ldr   r1, [sp]
   0x000104f8 <+128>:   str   r0, [r1]

21       seq++;
   0x000104fc <+132>:   ldr   r0, [sp]
   0x00010500 <+136>:   add   r0, r0, #4
   0x00010504 <+140>:   str   r0, [sp]

22    }
   0x00010508 <+144>:   b  0x104b8 <fibonacci+64>
   0x0001050c <+148>:   ldr   r0, [pc, #4]   ; 0x10518 <fibonacci+160>

23 
24    return 1;
   0x00010510 <+152>:   add   sp, sp, #8
   0x00010514 <+156>:   bx lr
   0x00010518 <+160>:   andeq r0, r0, r1
   0x0001051c <+164>:   andeq r0, r0, r0
   0x00010520 <+168>:         ; <UNDEFINED> instruction: 0xffffffff
   0x00010524 <+172>:         ; <UNDEFINED> instruction: 0xfffffff8
   0x00010528 <+176>:         ; <UNDEFINED> instruction: 0xfffffffc

End of assembler dump.
