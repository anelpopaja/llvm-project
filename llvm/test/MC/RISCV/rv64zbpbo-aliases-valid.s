# RUN: llvm-mc %s -triple=riscv64 -mattr=+experimental-zbpbo -riscv-no-aliases \
# RUN:     | FileCheck -check-prefixes=CHECK-S-OBJ-NOALIAS %s
# RUN: llvm-mc %s  -triple=riscv64 -mattr=+experimental-zbpbo \
# RUN:     | FileCheck -check-prefixes=CHECK-S-OBJ %s
# RUN: llvm-mc -filetype=obj -triple riscv64 -mattr=+experimental-zbpbo < %s \
# RUN:     | llvm-objdump -d -r -M no-aliases --mattr=+experimental-zbpbo - \
# RUN:     | FileCheck -check-prefixes=CHECK-S-OBJ-NOALIAS %s
# RUN: llvm-mc -filetype=obj -triple riscv64 -mattr=+experimental-zbpbo < %s \
# RUN:     | llvm-objdump -d -r --mattr=+experimental-zbpbo - \
# RUN:     | FileCheck -check-prefixes=CHECK-S-OBJ %s

# CHECK-S-OBJ-NOALIAS: grevi t0, t1, 8
# CHECK-S-OBJ: rev8.h t0, t1
rev8.h x5, x6

# CHECK-S-OBJ-NOALIAS: grevi t0, t1, 63
# CHECK-S-OBJ: rev t0, t1
rev x5, x6
