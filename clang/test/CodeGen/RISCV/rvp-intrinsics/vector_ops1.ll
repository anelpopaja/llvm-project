; ModuleID = '/home/syrmia/llvm-project/clang/test/CodeGen/RISCV/rvp-intrinsics/vector_ops.c'
source_filename = "/home/syrmia/llvm-project/clang/test/CodeGen/RISCV/rvp-intrinsics/vector_ops.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn
define dso_local i32 @vector_add8(i32 noundef %a.coerce, i32 noundef %b.coerce) local_unnamed_addr #0 {
entry:
  %0 = bitcast i32 %a.coerce to <4 x i8>
  %1 = bitcast i32 %b.coerce to <4 x i8>
  %add = add <4 x i8> %1, %0
  %2 = bitcast <4 x i8> %add to i32
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn
define dso_local i32 @vector_sub8(i32 noundef %a.coerce, i32 noundef %b.coerce) local_unnamed_addr #0 {
entry:
  %0 = bitcast i32 %a.coerce to <4 x i8>
  %1 = bitcast i32 %b.coerce to <4 x i8>
  %sub = sub <4 x i8> %0, %1
  %2 = bitcast <4 x i8> %sub to i32
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn
define dso_local i32 @vector_add16(i32 noundef %a.coerce, i32 noundef %b.coerce) local_unnamed_addr #0 {
entry:
  %0 = bitcast i32 %a.coerce to <2 x i16>
  %1 = bitcast i32 %b.coerce to <2 x i16>
  %add = add <2 x i16> %1, %0
  %2 = bitcast <2 x i16> %add to i32
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn
define dso_local i32 @vector_sub16(i32 noundef %a.coerce, i32 noundef %b.coerce) local_unnamed_addr #0 {
entry:
  %0 = bitcast i32 %a.coerce to <2 x i16>
  %1 = bitcast i32 %b.coerce to <2 x i16>
  %sub = sub <2 x i16> %0, %1
  %2 = bitcast <2 x i16> %sub to i32
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn
define dso_local i32 @main() local_unnamed_addr #0 {
entry:
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+experimental-p,+experimental-zbpbo,+experimental-zpn,+experimental-zpsfoperand,+relax,-save-restore" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"ilp32"}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 1, !"SmallDataLimit", i32 8}
!5 = !{!"clang version 15.0.0 (https://github.com/llvm/llvm-project.git f3e83881d10ba0b1df8019e556c4e564af03a487)"}
