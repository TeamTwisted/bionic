
#include <private/bionic_asm.h>

ENTRY(fma)
   vldr    d16, [sp]
   vmov    d18, r0, r1
   vmov    d19, r2, r3
   vmov.f64        d17, d16
   vfma.f64        d17, d18, d19
   vmov    r0, r1, d17
   bx      lr
END(fma)

#if (__LDBL_MANT_DIG__) == 53
    .weak       fmal
    .equ        fmal, fma
#endif

ENTRY(fmaf)
   vmov    s14, r0
   vmov    s13, r2
   vmov    s15, r1
   vfma.f32        s13, s14, s15
   vmov    r0, s13
   bx      lr
END(fmaf)
