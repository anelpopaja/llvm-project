# RUN: not llvm-mc -triple riscv32 -mattr=+experimental-p < %s 2>&1 \
# RUN:        | FileCheck %s --check-prefix=CHECK-ERROR
# RUN: not llvm-mc -triple riscv32 -mattr=+experimental-zpsfoperand < %s 2>&1 \
# RUN:        | FileCheck %s --check-prefix=CHECK-ERROR

# Paired register operand

# CHECK-ERROR: error: register must be even
smal a0, a1, a2

# CHECK-ERROR: error: register must be even
add64 a0, a1, a4

# CHECK-ERROR: error: register must be even
radd64 a0, a2, a3

# CHECK-ERROR: error: register must be even
uradd64 a0, a1, a4

# CHECK-ERROR: error: register must be even
kadd64 a0, a2, a3

# CHECK-ERROR: error: register must be even
ukadd64 a0, a1, a4

# CHECK-ERROR: error: register must be even
sub64 a0, a1, a4

# CHECK-ERROR: error: register must be even
rsub64 a0, a2, a3

# CHECK-ERROR: error: register must be even
ursub64 a0, a1, a4

# CHECK-ERROR: error: register must be even
ksub64 a0, a2, a3

# CHECK-ERROR: error: register must be even
uksub64 a0, a1, a4

# CHECK-ERROR: error: register must be even
smar64 a1, a2, a3

# CHECK-ERROR: error: register must be even
smsr64 a5, a6, a7

# CHECK-ERROR: error: register must be even
umar64 a1, a2, a3

# CHECK-ERROR: error: register must be even
umsr64 a5, a6, a7

# CHECK-ERROR: error: register must be even
kmar64 a1, a2, a3

# CHECK-ERROR: error: register must be even
kmsr64 a5, a6, a7

# CHECK-ERROR: error: register must be even
ukmar64 a1, a2, a3

# CHECK-ERROR: error: register must be even
ukmsr64 a5, a6, a7

# CHECK-ERROR: error: register must be even
smalbb a1, a2, a3

# CHECK-ERROR: error: register must be even
smalbt a5, a6, a7

# CHECK-ERROR: error: register must be even
smaltt s3, s4, s5

# CHECK-ERROR: error: register must be even
smalda a1, a2, a3

# CHECK-ERROR: error: register must be even
smalxda a5, a6, a7

# CHECK-ERROR: error: register must be even
smalds a1, a2, a3

# CHECK-ERROR: error: register must be even
smaldrs a5, a6, a7

# CHECK-ERROR: error: register must be even
smalxds s3, s4, s5

# CHECK-ERROR: error: register must be even
smslda a1, a2, a3

# CHECK-ERROR: error: register must be even
smslxda a5, a6, a7

# CHECK-ERROR: error: register must be even
mulr64 a1, a2, a3

# CHECK-ERROR: error: register must be even
mulsr64 a5, a6, a7

# CHECK-ERROR: error: register must be even
umul8 a1, a2, a3

# CHECK-ERROR: error: register must be even
umulx8 a5, a6, a7

# CHECK-ERROR: error: register must be even
umul16 a1, a2, a3

# CHECK-ERROR: error: register must be even
umulx16 a5, a6, a7

# CHECK-ERROR: error: register must be even
smul8 a1, a2, a3

# CHECK-ERROR: error: register must be even
smulx8 a5, a6, a7

# CHECK-ERROR: error: register must be even
smul16 a1, a2, a3

# CHECK-ERROR: error: register must be even
smulx16 a5, a6, a7

# CHECK-ERROR: error: register must be even
wexti a0, a1, 16

# CHECK-ERROR: immediate must be an integer in the range [0, 31]
wexti a0, a2, 33

# CHECK-ERROR: error: register must be even
wext a0, a1, a2

# CHECK-ERROR: error: register must be even
add64 fa0, a1, a4

# CHECK-ERROR: error: register must be even
radd64 a0, fa1, a3

# CHECK-ERROR: error: invalid operand for instruction
kadd64 a0, a2, fa2
