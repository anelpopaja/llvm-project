# RUN: llvm-mc %s -triple=riscv32 -mattr=+experimental-zbpbo -riscv-no-aliases \
# RUN:     | FileCheck -check-prefixes=CHECK-S-NOALIAS %s
# RUN: llvm-mc %s -triple=riscv32 -mattr=+experimental-zbpbo \
# RUN:     | FileCheck -check-prefixes=CHECK-S %s
# RUN: llvm-mc -filetype=obj -triple riscv32 -mattr=+experimental-zbpbo < %s \
# RUN:     | llvm-objdump -d -r -M no-aliases --mattr=+experimental-zbpbo - \
# RUN:     | FileCheck -check-prefixes=CHECK-S-OBJ-NOALIAS %s
# RUN: llvm-mc -filetype=obj -triple riscv32 -mattr=+experimental-zbpbo < %s \
# RUN:     | llvm-objdump -d -r --mattr=+experimental-zbpbo - \
# RUN:     | FileCheck -check-prefixes=CHECK-S %s

# CHECK-S-NOALIAS: grevi t0, t1, 8
# CHECK-S: rev8.h t0, t1
# CHECK-S-OBJ-NOALIAS: grevi t0, t1, 0x8
rev8.h x5, x6

# CHECK-S-NOALIAS: grevi t0, t1, 31
# CHECK-S: rev t0, t1
# CHECK-S-OBJ-NOALIAS: grevi t0, t1, 0x1f
rev x5, x6

# CHECK-S-NOALIAS: pack t0, t1, t2
# CHECK-S: pkbb16 t0, t1, t2
# CHECK-S-OBJ-NOALIAS: pack t0, t1, t2
pkbb16 x5, x6, x7

# CHECK-S-NOALIAS: packu t0, t1, t2
# CHECK-S: pktt16 t0, t1, t2
# CHECK-S-OBJ-NOALIAS: packu t0, t1, t2
pktt16 x5, x6, x7
