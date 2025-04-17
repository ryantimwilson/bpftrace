; ModuleID = 'bpftrace'
source_filename = "bpftrace"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "bpf-pc-linux"

%"struct map_t" = type { ptr, ptr }
%"struct map_t.0" = type { ptr, ptr, ptr, ptr }
%"int64_(string[13],int64)__tuple_t" = type { i64, %"string[13]_int64__tuple_t" }
%"string[13]_int64__tuple_t" = type { [13 x i8], i64 }
%"int64_(string[3],int64)__tuple_t" = type { i64, %"string[3]_int64__tuple_t" }
%"string[3]_int64__tuple_t" = type { [3 x i8], i64 }

@LICENSE = global [4 x i8] c"GPL\00", section "license", !dbg !0
@ringbuf = dso_local global %"struct map_t" zeroinitializer, section ".maps", !dbg !7
@event_loss_counter = dso_local global %"struct map_t.0" zeroinitializer, section ".maps", !dbg !22
@hi = global [3 x i8] c"hi\00"
@hellolongstr = global [13 x i8] c"hellolongstr\00"

; Function Attrs: nounwind
declare i64 @llvm.bpf.pseudo(i64 %0, i64 %1) #0

; Function Attrs: nounwind
define i64 @kprobe_f_1(ptr %0) #0 section "s_kprobe_f_1" !dbg !46 {
entry:
  %tuple3 = alloca %"int64_(string[13],int64)__tuple_t", align 8
  %tuple2 = alloca %"string[13]_int64__tuple_t", align 8
  %"$t" = alloca %"int64_(string[13],int64)__tuple_t", align 8
  call void @llvm.lifetime.start.p0(i64 -1, ptr %"$t")
  call void @llvm.memset.p0.i64(ptr align 1 %"$t", i8 0, i64 32, i1 false)
  %tuple1 = alloca %"int64_(string[3],int64)__tuple_t", align 8
  %tuple = alloca %"string[3]_int64__tuple_t", align 8
  call void @llvm.lifetime.start.p0(i64 -1, ptr %tuple)
  call void @llvm.memset.p0.i64(ptr align 1 %tuple, i8 0, i64 16, i1 false)
  %1 = getelementptr %"string[3]_int64__tuple_t", ptr %tuple, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 @hi, i64 3, i1 false)
  %2 = getelementptr %"string[3]_int64__tuple_t", ptr %tuple, i32 0, i32 1
  store i64 3, ptr %2, align 8
  call void @llvm.lifetime.start.p0(i64 -1, ptr %tuple1)
  call void @llvm.memset.p0.i64(ptr align 1 %tuple1, i8 0, i64 24, i1 false)
  %3 = getelementptr %"int64_(string[3],int64)__tuple_t", ptr %tuple1, i32 0, i32 0
  store i64 1, ptr %3, align 8
  %4 = getelementptr %"int64_(string[3],int64)__tuple_t", ptr %tuple1, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr align 1 %tuple, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 -1, ptr %tuple)
  call void @llvm.memset.p0.i64(ptr align 1 %"$t", i8 0, i64 32, i1 false)
  %5 = getelementptr [24 x i8], ptr %tuple1, i64 0, i64 0
  %6 = getelementptr %"int64_(string[13],int64)__tuple_t", ptr %"$t", i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %5, i64 8, i1 false)
  %7 = getelementptr [24 x i8], ptr %tuple1, i64 0, i64 8
  %8 = getelementptr %"int64_(string[13],int64)__tuple_t", ptr %"$t", i32 0, i32 1
  %9 = getelementptr [16 x i8], ptr %7, i64 0, i64 0
  %10 = getelementptr %"string[13]_int64__tuple_t", ptr %8, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %9, i64 3, i1 false)
  %11 = getelementptr [16 x i8], ptr %7, i64 0, i64 8
  %12 = getelementptr %"string[13]_int64__tuple_t", ptr %8, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %12, ptr align 1 %11, i64 8, i1 false)
  call void @llvm.lifetime.end.p0(i64 -1, ptr %tuple1)
  call void @llvm.lifetime.start.p0(i64 -1, ptr %tuple2)
  call void @llvm.memset.p0.i64(ptr align 1 %tuple2, i8 0, i64 24, i1 false)
  %13 = getelementptr %"string[13]_int64__tuple_t", ptr %tuple2, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %13, ptr align 1 @hellolongstr, i64 13, i1 false)
  %14 = getelementptr %"string[13]_int64__tuple_t", ptr %tuple2, i32 0, i32 1
  store i64 4, ptr %14, align 8
  call void @llvm.lifetime.start.p0(i64 -1, ptr %tuple3)
  call void @llvm.memset.p0.i64(ptr align 1 %tuple3, i8 0, i64 32, i1 false)
  %15 = getelementptr %"int64_(string[13],int64)__tuple_t", ptr %tuple3, i32 0, i32 0
  store i64 1, ptr %15, align 8
  %16 = getelementptr %"int64_(string[13],int64)__tuple_t", ptr %tuple3, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %16, ptr align 1 %tuple2, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 -1, ptr %tuple2)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %"$t", ptr align 1 %tuple3, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(i64 -1, ptr %tuple3)
  ret i64 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg %0, ptr nocapture %1) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly %0, i8 %1, i64 %2, i1 immarg %3) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly %0, ptr noalias nocapture readonly %1, i64 %2, i1 immarg %3) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg %0, ptr nocapture %1) #1

attributes #0 = { nounwind }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.dbg.cu = !{!42}
!llvm.module.flags = !{!44, !45}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "LICENSE", linkageName: "global", scope: !2, file: !2, type: !3, isLocal: false, isDefinition: true)
!2 = !DIFile(filename: "bpftrace.bpf.o", directory: ".")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !5)
!4 = !DIBasicType(name: "int8", size: 8, encoding: DW_ATE_signed)
!5 = !{!6}
!6 = !DISubrange(count: 4, lowerBound: 0)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "ringbuf", linkageName: "global", scope: !2, file: !2, type: !9, isLocal: false, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_structure_type, scope: !2, file: !2, size: 128, elements: !10)
!10 = !{!11, !17}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2, file: !2, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 864, elements: !15)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{!16}
!16 = !DISubrange(count: 27, lowerBound: 0)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "max_entries", scope: !2, file: !2, baseType: !18, size: 64, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 8388608, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 262144, lowerBound: 0)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "event_loss_counter", linkageName: "global", scope: !2, file: !2, type: !24, isLocal: false, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_structure_type, scope: !2, file: !2, size: 256, elements: !25)
!25 = !{!26, !31, !36, !39}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2, file: !2, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 64, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 2, lowerBound: 0)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "max_entries", scope: !2, file: !2, baseType: !32, size: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 32, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 1, lowerBound: 0)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2, file: !2, baseType: !37, size: 64, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIBasicType(name: "int32", size: 32, encoding: DW_ATE_signed)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2, file: !2, baseType: !40, size: 64, offset: 192)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIBasicType(name: "int64", size: 64, encoding: DW_ATE_signed)
!42 = distinct !DICompileUnit(language: DW_LANG_C, file: !2, producer: "bpftrace", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, globals: !43)
!43 = !{!0, !7, !22}
!44 = !{i32 2, !"Debug Info Version", i32 3}
!45 = !{i32 7, !"uwtable", i32 0}
!46 = distinct !DISubprogram(name: "kprobe_f_1", linkageName: "kprobe_f_1", scope: !2, file: !2, type: !47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !42, retainedNodes: !50)
!47 = !DISubroutineType(types: !48)
!48 = !{!41, !49}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!50 = !{!51}
!51 = !DILocalVariable(name: "ctx", arg: 1, scope: !46, file: !2, type: !49)
