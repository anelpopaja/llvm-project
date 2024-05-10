# RUN: llvm-mc %s -triple=riscv64 -mattr=+experimental-zpsfoperand -riscv-no-aliases \
# RUN:     | FileCheck -check-prefixes=CHECK-S-OBJ-NOALIAS %s
# RUN: llvm-mc %s  -triple=riscv64 -mattr=+experimental-zpsfoperand \
# RUN:     | FileCheck -check-prefixes=CHECK-S-OBJ %s
# RUN: llvm-mc -filetype=obj -triple riscv64 -mattr=+experimental-zpsfoperand < %s \
# RUN:     | llvm-objdump -d -r -M no-aliases --mattr=+experimental-zpsfoperand - \
# RUN:     | FileCheck -check-prefixes=CHECK-S-OBJ-NOALIAS %s
# RUN: llvm-mc -filetype=obj -triple riscv64 -mattr=+experimental-zpsfoperand < %s \
# RUN:     | llvm-objdump -d -r --mattr=+experimental-zpsfoperand - \
# RUN:     | FileCheck -check-prefixes=CHECK-S-OBJ %s

# CHECK-S-OBJ-NOALIAS: kmar64 t0, t1, t2
# CHECK-S-OBJ: kmada32 t0, t1, t2
kmada32 x5, x6, x7

# CHECK-S-OBJ-NOALIAS: mulsr64 t0, t1, t2
# CHECK-S-OBJ: smbb32 t0, t1, t2
smbb32 x5, x6, x7
