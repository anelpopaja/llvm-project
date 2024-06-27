// RUN: rm -rf %t && split-file %s %t && cd %t
// RUN: %clang -target riscv32-unknown-linux-gnu -menable-experimental-extensions -march=rv32i2p0_p0p911_zbpbo0p911_zpn0p911_zpsfoperand0p911 -O2 -emit-llvm -S vector_ops.c -o - | FileCheck %s --check-prefix=CHECK-IR

// CHECK-IR-LABEL: define dso_local i32 @vector_add8(
// CHECK-IR: %add = add <4 x i8>

// CHECK-IR-LABEL: define dso_local i32 @vector_sub8(
// CHECK-IR: %sub = sub <4 x i8>

// CHECK-IR-LABEL: define dso_local i32 @vector_add16(
// CHECK-IR: %add = add <2 x i16>

// CHECK-IR-LABEL: define dso_local i32 @vector_sub16(
// CHECK-IR: %sub = sub <2 x i16>

//--- vector_ops.c
typedef signed char int8x4_t __attribute__((vector_size(4)));
typedef short int16x2_t __attribute__((vector_size(4)));
typedef unsigned char uint8x4_t __attribute__((vector_size(4)));
typedef unsigned short uint16x2_t __attribute__((vector_size(4)));

// Function to add two int8x4_t vectors
int8x4_t vector_add8(int8x4_t a, int8x4_t b) {
    return a + b;
}

int8x4_t vector_sub8(int8x4_t a, int8x4_t b) {
    return a - b;
}

int16x2_t vector_add16(int16x2_t a, int16x2_t b) {
    return a + b;
}

int16x2_t vector_sub16(int16x2_t a, int16x2_t b) {
    return a - b;
}

int main() {}
