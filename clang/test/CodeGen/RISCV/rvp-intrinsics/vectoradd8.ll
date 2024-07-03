; RUN: llc -mtriple=riscv32 -mattr=+experimental-p,+v < %s | FileCheck %s

target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-linux-gnu"

define dso_local <4 x i8> @vector_add8(<4 x i8> %a, <4 x i8> %b) {
; CHECK-LABEL: vector_add8:
; CHECK:       # %bb.0:
; CHECK-NEXT:    add8
; CHECK-NEXT:    ret
entry:
  %add = add <4 x i8> %a, %b
  ret <4 x i8> %add
}
