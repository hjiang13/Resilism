; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Mesh = type { %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector.0", %"class.std::vector.0", %"class.std::vector.0", %"class.std::vector.0", %"class.std::vector.0", %"class.std::vector.0", %"class.std::vector.0", %"class.std::vector.0", %"class.std::vector.0", %"class.std::vector.0", %"class.std::vector.0", %"class.std::vector.0", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, i32, i32, i32, i32, i32, i32 }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { i32*, i32*, i32* }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" = type { double*, double*, double* }
%struct.timeval = type { i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

$_ZN4MeshD2Ev = comdat any

$_ZN4Mesh22AllocateElemPersistentEm = comdat any

$_ZN4Mesh21AllocateElemTemporaryEm = comdat any

$_ZN4Mesh23AllocateNodalPersistentEm = comdat any

$_ZN4Mesh16AllocateNodesetsEm = comdat any

$_ZNSt6vectorIiSaIiEE17_M_default_appendEm = comdat any

$_ZNSt6vectorIdSaIdEE17_M_default_appendEm = comdat any

$_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd = comdat any

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_LULESH.cc, i8* null }]
@mesh = dso_local global %struct.Mesh zeroinitializer, align 8
@.str = private unnamed_addr constant [26 x i8] c"\0A\0AElapsed time = %12.6e\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"   Problem size        =  %i \0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"   Iteration count     =  %i \0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"   Final Origin Energy = %12.6e \0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"element.dat\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%f \0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"        MaxAbsDiff   = %12.6e\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"        TotalAbsDiff = %12.6e\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"        MaxRelDiff   = %12.6e\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1
@str = private unnamed_addr constant [17 x i8] c"Run completed:  \00", align 1
@str.14 = private unnamed_addr constant [36 x i8] c"   Testing Plane 0 of Energy Array:\00", align 1

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_LULESH.cc() #0 section ".text.startup" {
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1128) bitcast (%struct.Mesh* @mesh to i8*), i8 0, i64 1128, i1 false) #2
  %1 = tail call i32 @atexit(void ()* nonnull @__dtor_mesh) #2
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal void @__dtor_mesh() #0 section ".text.startup" {
  tail call void @_ZN4MeshD2Ev(%struct.Mesh* @mesh)
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZN4MeshD2Ev(%struct.Mesh* nonnull align 8 dereferenceable(1376) %0) unnamed_addr #3 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %2 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 46, i32 0, i32 0, i32 0, i32 0
  %3 = load double*, double** %2, align 8, !tbaa !3
  %4 = icmp eq double* %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = bitcast double* %3 to i8*
  tail call void @_ZdlPv(i8* nonnull %6) #2
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 45, i32 0, i32 0, i32 0, i32 0
  %9 = load double*, double** %8, align 8, !tbaa !3
  %10 = icmp eq double* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = bitcast double* %9 to i8*
  tail call void @_ZdlPv(i8* nonnull %12) #2
  br label %13

13:                                               ; preds = %11, %7
  %14 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 44, i32 0, i32 0, i32 0, i32 0
  %15 = load double*, double** %14, align 8, !tbaa !3
  %16 = icmp eq double* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = bitcast double* %15 to i8*
  tail call void @_ZdlPv(i8* nonnull %18) #2
  br label %19

19:                                               ; preds = %17, %13
  %20 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 43, i32 0, i32 0, i32 0, i32 0
  %21 = load double*, double** %20, align 8, !tbaa !3
  %22 = icmp eq double* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = bitcast double* %21 to i8*
  tail call void @_ZdlPv(i8* nonnull %24) #2
  br label %25

25:                                               ; preds = %23, %19
  %26 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 42, i32 0, i32 0, i32 0, i32 0
  %27 = load double*, double** %26, align 8, !tbaa !3
  %28 = icmp eq double* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = bitcast double* %27 to i8*
  tail call void @_ZdlPv(i8* nonnull %30) #2
  br label %31

31:                                               ; preds = %29, %25
  %32 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 41, i32 0, i32 0, i32 0, i32 0
  %33 = load double*, double** %32, align 8, !tbaa !3
  %34 = icmp eq double* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = bitcast double* %33 to i8*
  tail call void @_ZdlPv(i8* nonnull %36) #2
  br label %37

37:                                               ; preds = %35, %31
  %38 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 40, i32 0, i32 0, i32 0, i32 0
  %39 = load double*, double** %38, align 8, !tbaa !3
  %40 = icmp eq double* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = bitcast double* %39 to i8*
  tail call void @_ZdlPv(i8* nonnull %42) #2
  br label %43

43:                                               ; preds = %41, %37
  %44 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 39, i32 0, i32 0, i32 0, i32 0
  %45 = load double*, double** %44, align 8, !tbaa !3
  %46 = icmp eq double* %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = bitcast double* %45 to i8*
  tail call void @_ZdlPv(i8* nonnull %48) #2
  br label %49

49:                                               ; preds = %47, %43
  %50 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 38, i32 0, i32 0, i32 0, i32 0
  %51 = load double*, double** %50, align 8, !tbaa !3
  %52 = icmp eq double* %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = bitcast double* %51 to i8*
  tail call void @_ZdlPv(i8* nonnull %54) #2
  br label %55

55:                                               ; preds = %53, %49
  %56 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 37, i32 0, i32 0, i32 0, i32 0
  %57 = load double*, double** %56, align 8, !tbaa !3
  %58 = icmp eq double* %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = bitcast double* %57 to i8*
  tail call void @_ZdlPv(i8* nonnull %60) #2
  br label %61

61:                                               ; preds = %59, %55
  %62 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 36, i32 0, i32 0, i32 0, i32 0
  %63 = load double*, double** %62, align 8, !tbaa !3
  %64 = icmp eq double* %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = bitcast double* %63 to i8*
  tail call void @_ZdlPv(i8* nonnull %66) #2
  br label %67

67:                                               ; preds = %65, %61
  %68 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 35, i32 0, i32 0, i32 0, i32 0
  %69 = load double*, double** %68, align 8, !tbaa !3
  %70 = icmp eq double* %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %67
  %72 = bitcast double* %69 to i8*
  tail call void @_ZdlPv(i8* nonnull %72) #2
  br label %73

73:                                               ; preds = %71, %67
  %74 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 34, i32 0, i32 0, i32 0, i32 0
  %75 = load double*, double** %74, align 8, !tbaa !3
  %76 = icmp eq double* %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  %78 = bitcast double* %75 to i8*
  tail call void @_ZdlPv(i8* nonnull %78) #2
  br label %79

79:                                               ; preds = %77, %73
  %80 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 33, i32 0, i32 0, i32 0, i32 0
  %81 = load double*, double** %80, align 8, !tbaa !3
  %82 = icmp eq double* %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %79
  %84 = bitcast double* %81 to i8*
  tail call void @_ZdlPv(i8* nonnull %84) #2
  br label %85

85:                                               ; preds = %83, %79
  %86 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 32, i32 0, i32 0, i32 0, i32 0
  %87 = load double*, double** %86, align 8, !tbaa !3
  %88 = icmp eq double* %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %85
  %90 = bitcast double* %87 to i8*
  tail call void @_ZdlPv(i8* nonnull %90) #2
  br label %91

91:                                               ; preds = %89, %85
  %92 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 31, i32 0, i32 0, i32 0, i32 0
  %93 = load double*, double** %92, align 8, !tbaa !3
  %94 = icmp eq double* %93, null
  br i1 %94, label %97, label %95

95:                                               ; preds = %91
  %96 = bitcast double* %93 to i8*
  tail call void @_ZdlPv(i8* nonnull %96) #2
  br label %97

97:                                               ; preds = %95, %91
  %98 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 30, i32 0, i32 0, i32 0, i32 0
  %99 = load double*, double** %98, align 8, !tbaa !3
  %100 = icmp eq double* %99, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %97
  %102 = bitcast double* %99 to i8*
  tail call void @_ZdlPv(i8* nonnull %102) #2
  br label %103

103:                                              ; preds = %101, %97
  %104 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 29, i32 0, i32 0, i32 0, i32 0
  %105 = load double*, double** %104, align 8, !tbaa !3
  %106 = icmp eq double* %105, null
  br i1 %106, label %109, label %107

107:                                              ; preds = %103
  %108 = bitcast double* %105 to i8*
  tail call void @_ZdlPv(i8* nonnull %108) #2
  br label %109

109:                                              ; preds = %107, %103
  %110 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 28, i32 0, i32 0, i32 0, i32 0
  %111 = load double*, double** %110, align 8, !tbaa !3
  %112 = icmp eq double* %111, null
  br i1 %112, label %115, label %113

113:                                              ; preds = %109
  %114 = bitcast double* %111 to i8*
  tail call void @_ZdlPv(i8* nonnull %114) #2
  br label %115

115:                                              ; preds = %113, %109
  %116 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 27, i32 0, i32 0, i32 0, i32 0
  %117 = load double*, double** %116, align 8, !tbaa !3
  %118 = icmp eq double* %117, null
  br i1 %118, label %121, label %119

119:                                              ; preds = %115
  %120 = bitcast double* %117 to i8*
  tail call void @_ZdlPv(i8* nonnull %120) #2
  br label %121

121:                                              ; preds = %119, %115
  %122 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 26, i32 0, i32 0, i32 0, i32 0
  %123 = load double*, double** %122, align 8, !tbaa !3
  %124 = icmp eq double* %123, null
  br i1 %124, label %127, label %125

125:                                              ; preds = %121
  %126 = bitcast double* %123 to i8*
  tail call void @_ZdlPv(i8* nonnull %126) #2
  br label %127

127:                                              ; preds = %125, %121
  %128 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 25, i32 0, i32 0, i32 0, i32 0
  %129 = load double*, double** %128, align 8, !tbaa !3
  %130 = icmp eq double* %129, null
  br i1 %130, label %133, label %131

131:                                              ; preds = %127
  %132 = bitcast double* %129 to i8*
  tail call void @_ZdlPv(i8* nonnull %132) #2
  br label %133

133:                                              ; preds = %131, %127
  %134 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 24, i32 0, i32 0, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8, !tbaa !8
  %136 = icmp eq i32* %135, null
  br i1 %136, label %139, label %137

137:                                              ; preds = %133
  %138 = bitcast i32* %135 to i8*
  tail call void @_ZdlPv(i8* nonnull %138) #2
  br label %139

139:                                              ; preds = %137, %133
  %140 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 23, i32 0, i32 0, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8, !tbaa !8
  %142 = icmp eq i32* %141, null
  br i1 %142, label %145, label %143

143:                                              ; preds = %139
  %144 = bitcast i32* %141 to i8*
  tail call void @_ZdlPv(i8* nonnull %144) #2
  br label %145

145:                                              ; preds = %143, %139
  %146 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 22, i32 0, i32 0, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8, !tbaa !8
  %148 = icmp eq i32* %147, null
  br i1 %148, label %151, label %149

149:                                              ; preds = %145
  %150 = bitcast i32* %147 to i8*
  tail call void @_ZdlPv(i8* nonnull %150) #2
  br label %151

151:                                              ; preds = %149, %145
  %152 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 21, i32 0, i32 0, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8, !tbaa !8
  %154 = icmp eq i32* %153, null
  br i1 %154, label %157, label %155

155:                                              ; preds = %151
  %156 = bitcast i32* %153 to i8*
  tail call void @_ZdlPv(i8* nonnull %156) #2
  br label %157

157:                                              ; preds = %155, %151
  %158 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 20, i32 0, i32 0, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8, !tbaa !8
  %160 = icmp eq i32* %159, null
  br i1 %160, label %163, label %161

161:                                              ; preds = %157
  %162 = bitcast i32* %159 to i8*
  tail call void @_ZdlPv(i8* nonnull %162) #2
  br label %163

163:                                              ; preds = %161, %157
  %164 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 19, i32 0, i32 0, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8, !tbaa !8
  %166 = icmp eq i32* %165, null
  br i1 %166, label %169, label %167

167:                                              ; preds = %163
  %168 = bitcast i32* %165 to i8*
  tail call void @_ZdlPv(i8* nonnull %168) #2
  br label %169

169:                                              ; preds = %167, %163
  %170 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 18, i32 0, i32 0, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8, !tbaa !8
  %172 = icmp eq i32* %171, null
  br i1 %172, label %175, label %173

173:                                              ; preds = %169
  %174 = bitcast i32* %171 to i8*
  tail call void @_ZdlPv(i8* nonnull %174) #2
  br label %175

175:                                              ; preds = %173, %169
  %176 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 17, i32 0, i32 0, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8, !tbaa !8
  %178 = icmp eq i32* %177, null
  br i1 %178, label %181, label %179

179:                                              ; preds = %175
  %180 = bitcast i32* %177 to i8*
  tail call void @_ZdlPv(i8* nonnull %180) #2
  br label %181

181:                                              ; preds = %179, %175
  %182 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 16, i32 0, i32 0, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8, !tbaa !8
  %184 = icmp eq i32* %183, null
  br i1 %184, label %187, label %185

185:                                              ; preds = %181
  %186 = bitcast i32* %183 to i8*
  tail call void @_ZdlPv(i8* nonnull %186) #2
  br label %187

187:                                              ; preds = %185, %181
  %188 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 15, i32 0, i32 0, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8, !tbaa !8
  %190 = icmp eq i32* %189, null
  br i1 %190, label %193, label %191

191:                                              ; preds = %187
  %192 = bitcast i32* %189 to i8*
  tail call void @_ZdlPv(i8* nonnull %192) #2
  br label %193

193:                                              ; preds = %191, %187
  %194 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 14, i32 0, i32 0, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8, !tbaa !8
  %196 = icmp eq i32* %195, null
  br i1 %196, label %199, label %197

197:                                              ; preds = %193
  %198 = bitcast i32* %195 to i8*
  tail call void @_ZdlPv(i8* nonnull %198) #2
  br label %199

199:                                              ; preds = %197, %193
  %200 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 13, i32 0, i32 0, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8, !tbaa !8
  %202 = icmp eq i32* %201, null
  br i1 %202, label %205, label %203

203:                                              ; preds = %199
  %204 = bitcast i32* %201 to i8*
  tail call void @_ZdlPv(i8* nonnull %204) #2
  br label %205

205:                                              ; preds = %203, %199
  %206 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 12, i32 0, i32 0, i32 0, i32 0
  %207 = load double*, double** %206, align 8, !tbaa !3
  %208 = icmp eq double* %207, null
  br i1 %208, label %211, label %209

209:                                              ; preds = %205
  %210 = bitcast double* %207 to i8*
  tail call void @_ZdlPv(i8* nonnull %210) #2
  br label %211

211:                                              ; preds = %209, %205
  %212 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 11, i32 0, i32 0, i32 0, i32 0
  %213 = load double*, double** %212, align 8, !tbaa !3
  %214 = icmp eq double* %213, null
  br i1 %214, label %217, label %215

215:                                              ; preds = %211
  %216 = bitcast double* %213 to i8*
  tail call void @_ZdlPv(i8* nonnull %216) #2
  br label %217

217:                                              ; preds = %215, %211
  %218 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 10, i32 0, i32 0, i32 0, i32 0
  %219 = load double*, double** %218, align 8, !tbaa !3
  %220 = icmp eq double* %219, null
  br i1 %220, label %223, label %221

221:                                              ; preds = %217
  %222 = bitcast double* %219 to i8*
  tail call void @_ZdlPv(i8* nonnull %222) #2
  br label %223

223:                                              ; preds = %221, %217
  %224 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 9, i32 0, i32 0, i32 0, i32 0
  %225 = load double*, double** %224, align 8, !tbaa !3
  %226 = icmp eq double* %225, null
  br i1 %226, label %229, label %227

227:                                              ; preds = %223
  %228 = bitcast double* %225 to i8*
  tail call void @_ZdlPv(i8* nonnull %228) #2
  br label %229

229:                                              ; preds = %227, %223
  %230 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 8, i32 0, i32 0, i32 0, i32 0
  %231 = load double*, double** %230, align 8, !tbaa !3
  %232 = icmp eq double* %231, null
  br i1 %232, label %235, label %233

233:                                              ; preds = %229
  %234 = bitcast double* %231 to i8*
  tail call void @_ZdlPv(i8* nonnull %234) #2
  br label %235

235:                                              ; preds = %233, %229
  %236 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 7, i32 0, i32 0, i32 0, i32 0
  %237 = load double*, double** %236, align 8, !tbaa !3
  %238 = icmp eq double* %237, null
  br i1 %238, label %241, label %239

239:                                              ; preds = %235
  %240 = bitcast double* %237 to i8*
  tail call void @_ZdlPv(i8* nonnull %240) #2
  br label %241

241:                                              ; preds = %239, %235
  %242 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 6, i32 0, i32 0, i32 0, i32 0
  %243 = load double*, double** %242, align 8, !tbaa !3
  %244 = icmp eq double* %243, null
  br i1 %244, label %247, label %245

245:                                              ; preds = %241
  %246 = bitcast double* %243 to i8*
  tail call void @_ZdlPv(i8* nonnull %246) #2
  br label %247

247:                                              ; preds = %245, %241
  %248 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 5, i32 0, i32 0, i32 0, i32 0
  %249 = load double*, double** %248, align 8, !tbaa !3
  %250 = icmp eq double* %249, null
  br i1 %250, label %253, label %251

251:                                              ; preds = %247
  %252 = bitcast double* %249 to i8*
  tail call void @_ZdlPv(i8* nonnull %252) #2
  br label %253

253:                                              ; preds = %251, %247
  %254 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 0
  %255 = load double*, double** %254, align 8, !tbaa !3
  %256 = icmp eq double* %255, null
  br i1 %256, label %259, label %257

257:                                              ; preds = %253
  %258 = bitcast double* %255 to i8*
  tail call void @_ZdlPv(i8* nonnull %258) #2
  br label %259

259:                                              ; preds = %257, %253
  %260 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0
  %261 = load double*, double** %260, align 8, !tbaa !3
  %262 = icmp eq double* %261, null
  br i1 %262, label %265, label %263

263:                                              ; preds = %259
  %264 = bitcast double* %261 to i8*
  tail call void @_ZdlPv(i8* nonnull %264) #2
  br label %265

265:                                              ; preds = %263, %259
  %266 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0
  %267 = load double*, double** %266, align 8, !tbaa !3
  %268 = icmp eq double* %267, null
  br i1 %268, label %271, label %269

269:                                              ; preds = %265
  %270 = bitcast double* %267 to i8*
  tail call void @_ZdlPv(i8* nonnull %270) #2
  br label %271

271:                                              ; preds = %269, %265
  %272 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0
  %273 = load double*, double** %272, align 8, !tbaa !3
  %274 = icmp eq double* %273, null
  br i1 %274, label %277, label %275

275:                                              ; preds = %271
  %276 = bitcast double* %273 to i8*
  tail call void @_ZdlPv(i8* nonnull %276) #2
  br label %277

277:                                              ; preds = %275, %271
  %278 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %279 = load double*, double** %278, align 8, !tbaa !3
  %280 = icmp eq double* %279, null
  br i1 %280, label %283, label %281

281:                                              ; preds = %277
  %282 = bitcast double* %279 to i8*
  tail call void @_ZdlPv(i8* nonnull %282) #2
  br label %283

283:                                              ; preds = %281, %277
  ret void
}

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @_Z13TimeIncrementv() local_unnamed_addr #5 {
  %1 = load double, double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 52), align 8, !tbaa !10
  %2 = load double, double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 48), align 8, !tbaa !10
  %3 = fsub double %1, %2
  %4 = load double, double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 47), align 8, !tbaa !10
  %5 = fcmp ugt double %4, 0.000000e+00
  %6 = load i32, i32* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 75), align 8
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %5, i1 true, i1 %7
  %9 = load double, double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 49), align 8, !tbaa !10
  br i1 %8, label %37, label %10

10:                                               ; preds = %0
  %11 = load double, double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 72), align 8, !tbaa !10
  %12 = fcmp olt double %11, 1.000000e+20
  %13 = fmul double %11, 5.000000e-01
  %14 = select i1 %12, double %13, double 1.000000e+20
  %15 = load double, double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 73), align 8, !tbaa !10
  %16 = fcmp olt double %15, %14
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = fmul double %15, 2.000000e+00
  %19 = fdiv double %18, 3.000000e+00
  br label %20

20:                                               ; preds = %17, %10
  %21 = phi double [ %19, %17 ], [ %14, %10 ]
  %22 = fdiv double %21, %9
  %23 = fcmp ult double %22, 1.000000e+00
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = load double, double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 50), align 8, !tbaa !10
  %26 = fcmp olt double %22, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %24
  %28 = load double, double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 51), align 8, !tbaa !10
  %29 = fcmp ogt double %22, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = fmul double %9, %28
  br label %32

32:                                               ; preds = %30, %27, %24, %20
  %33 = phi double [ %31, %30 ], [ %21, %27 ], [ %21, %20 ], [ %9, %24 ]
  %34 = load double, double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 74), align 8, !tbaa !10
  %35 = fcmp ogt double %33, %34
  %36 = select i1 %35, double %34, double %33
  store double %36, double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 49), align 8, !tbaa !10
  br label %37

37:                                               ; preds = %32, %0
  %38 = phi double [ %36, %32 ], [ %9, %0 ]
  %39 = fcmp ogt double %3, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = fmul double %38, 4.000000e+00
  %42 = fdiv double %41, 3.000000e+00
  %43 = fcmp olt double %3, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = fmul double %38, 2.000000e+00
  %46 = fdiv double %45, 3.000000e+00
  br label %47

47:                                               ; preds = %44, %40, %37
  %48 = phi double [ %46, %44 ], [ %3, %40 ], [ %3, %37 ]
  %49 = fcmp olt double %48, %38
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store double %48, double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 49), align 8, !tbaa !10
  br label %51

51:                                               ; preds = %50, %47
  %52 = phi double [ %48, %50 ], [ %38, %47 ]
  %53 = fadd double %2, %52
  store double %53, double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 48), align 8, !tbaa !10
  %54 = add nsw i32 %6, 1
  store i32 %54, i32* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 75), align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable
define dso_local void @_Z23InitStressTermsForElemsiPdS_S_(i32 %0, double* nocapture %1, double* nocapture %2, double* nocapture %3) local_unnamed_addr #6 {
  %5 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 35, i32 0, i32 0, i32 0, i32 0), align 8
  %6 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 36, i32 0, i32 0, i32 0, i32 0), align 8
  %7 = icmp sgt i32 %0, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = zext i32 %0 to i64
  br label %11

10:                                               ; preds = %11, %4
  ret void

11:                                               ; preds = %11, %8
  %12 = phi i64 [ 0, %8 ], [ %22, %11 ]
  %13 = getelementptr inbounds double, double* %5, i64 %12
  %14 = load double, double* %13, align 8, !tbaa !10
  %15 = fneg double %14
  %16 = getelementptr inbounds double, double* %6, i64 %12
  %17 = load double, double* %16, align 8, !tbaa !10
  %18 = fsub double %15, %17
  %19 = getelementptr inbounds double, double* %3, i64 %12
  store double %18, double* %19, align 8, !tbaa !10
  %20 = getelementptr inbounds double, double* %2, i64 %12
  store double %18, double* %20, align 8, !tbaa !10
  %21 = getelementptr inbounds double, double* %1, i64 %12
  store double %18, double* %21, align 8, !tbaa !10
  %22 = add nuw nsw i64 %12, 1
  %23 = icmp eq i64 %22, %9
  br i1 %23, label %10, label %11, !llvm.loop !14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @_Z32CalcElemShapeFunctionDerivativesPKdS0_S0_PA8_dPd(double* nocapture readonly %0, double* nocapture readonly %1, double* nocapture readonly %2, [8 x double]* %3, double* nocapture %4) local_unnamed_addr #5 {
  %6 = load double, double* %0, align 8, !tbaa !10
  %7 = getelementptr inbounds double, double* %0, i64 1
  %8 = load double, double* %7, align 8, !tbaa !10
  %9 = getelementptr inbounds double, double* %0, i64 2
  %10 = load double, double* %9, align 8, !tbaa !10
  %11 = getelementptr inbounds double, double* %0, i64 3
  %12 = load double, double* %11, align 8, !tbaa !10
  %13 = getelementptr inbounds double, double* %0, i64 4
  %14 = load double, double* %13, align 8, !tbaa !10
  %15 = getelementptr inbounds double, double* %0, i64 5
  %16 = load double, double* %15, align 8, !tbaa !10
  %17 = getelementptr inbounds double, double* %0, i64 6
  %18 = load double, double* %17, align 8, !tbaa !10
  %19 = getelementptr inbounds double, double* %0, i64 7
  %20 = load double, double* %19, align 8, !tbaa !10
  %21 = load double, double* %1, align 8, !tbaa !10
  %22 = getelementptr inbounds double, double* %1, i64 1
  %23 = load double, double* %22, align 8, !tbaa !10
  %24 = getelementptr inbounds double, double* %1, i64 2
  %25 = load double, double* %24, align 8, !tbaa !10
  %26 = getelementptr inbounds double, double* %1, i64 3
  %27 = load double, double* %26, align 8, !tbaa !10
  %28 = getelementptr inbounds double, double* %1, i64 4
  %29 = load double, double* %28, align 8, !tbaa !10
  %30 = getelementptr inbounds double, double* %1, i64 5
  %31 = load double, double* %30, align 8, !tbaa !10
  %32 = getelementptr inbounds double, double* %1, i64 6
  %33 = load double, double* %32, align 8, !tbaa !10
  %34 = getelementptr inbounds double, double* %1, i64 7
  %35 = load double, double* %34, align 8, !tbaa !10
  %36 = load double, double* %2, align 8, !tbaa !10
  %37 = getelementptr inbounds double, double* %2, i64 1
  %38 = load double, double* %37, align 8, !tbaa !10
  %39 = getelementptr inbounds double, double* %2, i64 2
  %40 = load double, double* %39, align 8, !tbaa !10
  %41 = getelementptr inbounds double, double* %2, i64 3
  %42 = load double, double* %41, align 8, !tbaa !10
  %43 = getelementptr inbounds double, double* %2, i64 4
  %44 = load double, double* %43, align 8, !tbaa !10
  %45 = getelementptr inbounds double, double* %2, i64 5
  %46 = load double, double* %45, align 8, !tbaa !10
  %47 = getelementptr inbounds double, double* %2, i64 6
  %48 = load double, double* %47, align 8, !tbaa !10
  %49 = getelementptr inbounds double, double* %2, i64 7
  %50 = load double, double* %49, align 8, !tbaa !10
  %51 = insertelement <2 x double> poison, double %16, i32 0
  %52 = insertelement <2 x double> %51, double %33, i32 1
  %53 = insertelement <2 x double> poison, double %12, i32 0
  %54 = insertelement <2 x double> %53, double %21, i32 1
  %55 = fsub <2 x double> %52, %54
  %56 = insertelement <2 x double> poison, double %18, i32 0
  %57 = insertelement <2 x double> %56, double %31, i32 1
  %58 = insertelement <2 x double> poison, double %6, i32 0
  %59 = insertelement <2 x double> %58, double %27, i32 1
  %60 = fsub <2 x double> %57, %59
  %61 = fadd <2 x double> %55, %60
  %62 = extractelement <2 x double> %61, i32 0
  %63 = fsub double %20, %8
  %64 = insertelement <2 x double> poison, double %14, i32 0
  %65 = shufflevector <2 x double> %64, <2 x double> %61, <2 x i32> <i32 0, i32 2>
  %66 = insertelement <2 x double> poison, double %10, i32 0
  %67 = insertelement <2 x double> %66, double %63, i32 1
  %68 = fsub <2 x double> %65, %67
  %69 = fadd double %62, %63
  %70 = insertelement <2 x double> poison, double %69, i32 0
  %71 = shufflevector <2 x double> %70, <2 x double> %68, <2 x i32> <i32 0, i32 2>
  %72 = fadd <2 x double> %68, %71
  %73 = fsub <2 x double> %68, %71
  %74 = shufflevector <2 x double> %72, <2 x double> %73, <2 x i32> <i32 0, i32 3>
  %75 = fmul <2 x double> %74, <double 1.250000e-01, double 1.250000e-01>
  %76 = fsub <2 x double> %60, %55
  %77 = fadd <2 x double> %60, %55
  %78 = shufflevector <2 x double> %76, <2 x double> %77, <2 x i32> <i32 0, i32 3>
  %79 = extractelement <2 x double> %55, i32 1
  %80 = insertelement <2 x double> poison, double %79, i32 0
  %81 = insertelement <2 x double> %80, double %35, i32 1
  %82 = extractelement <2 x double> %60, i32 1
  %83 = insertelement <2 x double> poison, double %82, i32 0
  %84 = insertelement <2 x double> %83, double %23, i32 1
  %85 = fsub <2 x double> %81, %84
  %86 = insertelement <2 x double> %85, double %63, i32 0
  %87 = fadd <2 x double> %78, %86
  %88 = fsub <2 x double> %78, %86
  %89 = shufflevector <2 x double> %87, <2 x double> %88, <2 x i32> <i32 0, i32 3>
  %90 = fsub double %29, %25
  %91 = insertelement <2 x double> %68, double %90, i32 1
  %92 = fsub <2 x double> %89, %91
  %93 = fmul <2 x double> %92, <double 1.250000e-01, double 1.250000e-01>
  %94 = shufflevector <2 x double> %85, <2 x double> %77, <2 x i32> <i32 1, i32 3>
  %95 = fadd <2 x double> %85, %94
  %96 = insertelement <2 x double> poison, double %90, i32 0
  %97 = shufflevector <2 x double> %96, <2 x double> poison, <2 x i32> zeroinitializer
  %98 = fsub <2 x double> %95, %97
  %99 = fadd <2 x double> %95, %97
  %100 = shufflevector <2 x double> %98, <2 x double> %99, <2 x i32> <i32 0, i32 3>
  %101 = fmul <2 x double> %100, <double 1.250000e-01, double 1.250000e-01>
  %102 = fsub double %48, %36
  %103 = fsub double %46, %42
  %104 = fadd double %103, %102
  %105 = fsub double %50, %38
  %106 = insertelement <2 x double> poison, double %44, i32 0
  %107 = insertelement <2 x double> %106, double %104, i32 1
  %108 = insertelement <2 x double> poison, double %40, i32 0
  %109 = insertelement <2 x double> %108, double %105, i32 1
  %110 = fsub <2 x double> %107, %109
  %111 = fsub double %102, %103
  %112 = fadd double %111, %105
  %113 = extractelement <2 x double> %110, i32 0
  %114 = fsub double %112, %113
  %115 = fmul double %114, 1.250000e-01
  %116 = fadd double %104, %105
  %117 = insertelement <2 x double> poison, double %116, i32 0
  %118 = shufflevector <2 x double> %117, <2 x double> %110, <2 x i32> <i32 0, i32 2>
  %119 = fadd <2 x double> %110, %118
  %120 = fsub <2 x double> %110, %118
  %121 = shufflevector <2 x double> %119, <2 x double> %120, <2 x i32> <i32 0, i32 3>
  %122 = fmul <2 x double> %121, <double 1.250000e-01, double 1.250000e-01>
  %123 = fmul <2 x double> %101, %122
  %124 = extractelement <2 x double> %93, i32 1
  %125 = shufflevector <2 x double> %101, <2 x double> undef, <2 x i32> <i32 1, i32 undef>
  %126 = shufflevector <2 x double> %125, <2 x double> %93, <2 x i32> <i32 0, i32 3>
  %127 = insertelement <2 x double> poison, double %115, i32 0
  %128 = shufflevector <2 x double> %127, <2 x double> %122, <2 x i32> <i32 0, i32 2>
  %129 = fmul <2 x double> %126, %128
  %130 = fsub <2 x double> %123, %129
  %131 = fmul double %124, %115
  %132 = extractelement <2 x double> %101, i32 0
  %133 = extractelement <2 x double> %122, i32 1
  %134 = fmul double %132, %133
  %135 = fsub double %131, %134
  %136 = fmul <2 x double> %75, %128
  %137 = extractelement <2 x double> %93, i32 0
  %138 = shufflevector <2 x double> %93, <2 x double> %75, <2 x i32> <i32 0, i32 2>
  %139 = fmul <2 x double> %138, %122
  %140 = fsub <2 x double> %136, %139
  %141 = fmul double %137, %133
  %142 = extractelement <2 x double> %75, i32 1
  %143 = fmul double %142, %115
  %144 = fsub double %141, %143
  %145 = shufflevector <2 x double> %125, <2 x double> %75, <2 x i32> <i32 0, i32 2>
  %146 = fmul <2 x double> %93, %145
  %147 = fmul <2 x double> %75, %101
  %148 = fsub <2 x double> %146, %147
  %149 = fmul double %142, %132
  %150 = fmul double %137, %124
  %151 = fsub double %149, %150
  %152 = extractelement <2 x double> %130, i32 0
  %153 = fneg double %152
  %154 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 0, i64 0
  %155 = extractelement <2 x double> %130, i32 1
  %156 = insertelement <2 x double> poison, double %155, i32 0
  %157 = insertelement <2 x double> %156, double %153, i32 1
  %158 = fsub <2 x double> %157, %130
  %159 = insertelement <2 x double> poison, double %135, i32 0
  %160 = shufflevector <2 x double> %159, <2 x double> poison, <2 x i32> zeroinitializer
  %161 = fsub <2 x double> %158, %160
  %162 = extractelement <2 x double> %161, i32 1
  store double %162, double* %154, align 8, !tbaa !10
  %163 = fsub double %152, %155
  %164 = fsub double %163, %135
  %165 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 0, i64 1
  store double %164, double* %165, align 8, !tbaa !10
  %166 = fadd double %152, %155
  %167 = fsub double %166, %135
  %168 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 0, i64 2
  store double %167, double* %168, align 8, !tbaa !10
  %169 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 0, i64 3
  %170 = extractelement <2 x double> %161, i32 0
  store double %170, double* %169, align 8, !tbaa !10
  %171 = fneg double %167
  %172 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 0, i64 4
  store double %171, double* %172, align 8, !tbaa !10
  %173 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 0, i64 5
  %174 = fneg <2 x double> %161
  %175 = bitcast double* %173 to <2 x double>*
  store <2 x double> %174, <2 x double>* %175, align 8, !tbaa !10
  %176 = fneg double %164
  %177 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 0, i64 7
  store double %176, double* %177, align 8, !tbaa !10
  %178 = extractelement <2 x double> %140, i32 0
  %179 = fneg double %178
  %180 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 1, i64 0
  %181 = extractelement <2 x double> %140, i32 1
  %182 = insertelement <2 x double> poison, double %181, i32 0
  %183 = insertelement <2 x double> %182, double %179, i32 1
  %184 = fsub <2 x double> %183, %140
  %185 = insertelement <2 x double> poison, double %144, i32 0
  %186 = shufflevector <2 x double> %185, <2 x double> poison, <2 x i32> zeroinitializer
  %187 = fsub <2 x double> %184, %186
  %188 = extractelement <2 x double> %187, i32 1
  store double %188, double* %180, align 8, !tbaa !10
  %189 = fsub double %178, %181
  %190 = fsub double %189, %144
  %191 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 1, i64 1
  store double %190, double* %191, align 8, !tbaa !10
  %192 = fadd double %178, %181
  %193 = fsub double %192, %144
  %194 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 1, i64 2
  store double %193, double* %194, align 8, !tbaa !10
  %195 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 1, i64 3
  %196 = extractelement <2 x double> %187, i32 0
  store double %196, double* %195, align 8, !tbaa !10
  %197 = fneg double %193
  %198 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 1, i64 4
  store double %197, double* %198, align 8, !tbaa !10
  %199 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 1, i64 5
  %200 = fneg <2 x double> %187
  %201 = bitcast double* %199 to <2 x double>*
  store <2 x double> %200, <2 x double>* %201, align 8, !tbaa !10
  %202 = fneg double %190
  %203 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 1, i64 7
  store double %202, double* %203, align 8, !tbaa !10
  %204 = extractelement <2 x double> %148, i32 0
  %205 = fneg double %204
  %206 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 2, i64 0
  %207 = extractelement <2 x double> %148, i32 1
  %208 = insertelement <2 x double> poison, double %207, i32 0
  %209 = insertelement <2 x double> %208, double %205, i32 1
  %210 = fsub <2 x double> %209, %148
  %211 = insertelement <2 x double> poison, double %151, i32 0
  %212 = shufflevector <2 x double> %211, <2 x double> poison, <2 x i32> zeroinitializer
  %213 = fsub <2 x double> %210, %212
  %214 = extractelement <2 x double> %213, i32 1
  store double %214, double* %206, align 8, !tbaa !10
  %215 = fsub double %204, %207
  %216 = fsub double %215, %151
  %217 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 2, i64 1
  store double %216, double* %217, align 8, !tbaa !10
  %218 = fadd double %204, %207
  %219 = fsub double %218, %151
  %220 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 2, i64 2
  store double %219, double* %220, align 8, !tbaa !10
  %221 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 2, i64 3
  %222 = extractelement <2 x double> %213, i32 0
  store double %222, double* %221, align 8, !tbaa !10
  %223 = fneg double %219
  %224 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 2, i64 4
  store double %223, double* %224, align 8, !tbaa !10
  %225 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 2, i64 5
  %226 = fneg <2 x double> %213
  %227 = bitcast double* %225 to <2 x double>*
  store <2 x double> %226, <2 x double>* %227, align 8, !tbaa !10
  %228 = fneg double %216
  %229 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 2, i64 7
  store double %228, double* %229, align 8, !tbaa !10
  %230 = fmul double %137, %155
  %231 = fmul double %132, %181
  %232 = fadd double %230, %231
  %233 = fmul double %207, %115
  %234 = fadd double %233, %232
  %235 = fmul double %234, 8.000000e+00
  store double %235, double* %4, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @_Z17SumElemFaceNormalPdS_S_S_S_S_S_S_S_S_S_S_dddddddddddd(double* nocapture %0, double* nocapture %1, double* nocapture %2, double* nocapture %3, double* nocapture %4, double* nocapture %5, double* nocapture %6, double* nocapture %7, double* nocapture %8, double* nocapture %9, double* nocapture %10, double* nocapture %11, double %12, double %13, double %14, double %15, double %16, double %17, double %18, double %19, double %20, double %21, double %22, double %23) local_unnamed_addr #5 {
  %25 = fadd double %18, %21
  %26 = fsub double %25, %15
  %27 = fsub double %26, %12
  %28 = fmul double %27, 5.000000e-01
  %29 = fadd double %19, %22
  %30 = fsub double %29, %16
  %31 = fsub double %30, %13
  %32 = fmul double %31, 5.000000e-01
  %33 = fadd double %20, %23
  %34 = fsub double %33, %17
  %35 = fsub double %34, %14
  %36 = fmul double %35, 5.000000e-01
  %37 = fadd double %15, %18
  %38 = fsub double %37, %21
  %39 = fsub double %38, %12
  %40 = fmul double %39, 5.000000e-01
  %41 = fadd double %16, %19
  %42 = fsub double %41, %22
  %43 = fsub double %42, %13
  %44 = fmul double %43, 5.000000e-01
  %45 = fadd double %17, %20
  %46 = fsub double %45, %23
  %47 = fsub double %46, %14
  %48 = fmul double %47, 5.000000e-01
  %49 = fmul double %32, %48
  %50 = fmul double %44, %36
  %51 = fsub double %49, %50
  %52 = fmul double %51, 2.500000e-01
  %53 = fmul double %40, %36
  %54 = fmul double %28, %48
  %55 = fsub double %53, %54
  %56 = fmul double %55, 2.500000e-01
  %57 = fmul double %28, %44
  %58 = fmul double %40, %32
  %59 = fsub double %57, %58
  %60 = fmul double %59, 2.500000e-01
  %61 = load double, double* %0, align 8, !tbaa !10
  %62 = fadd double %52, %61
  store double %62, double* %0, align 8, !tbaa !10
  %63 = load double, double* %3, align 8, !tbaa !10
  %64 = fadd double %52, %63
  store double %64, double* %3, align 8, !tbaa !10
  %65 = load double, double* %6, align 8, !tbaa !10
  %66 = fadd double %52, %65
  store double %66, double* %6, align 8, !tbaa !10
  %67 = load double, double* %9, align 8, !tbaa !10
  %68 = fadd double %52, %67
  store double %68, double* %9, align 8, !tbaa !10
  %69 = load double, double* %1, align 8, !tbaa !10
  %70 = fadd double %56, %69
  store double %70, double* %1, align 8, !tbaa !10
  %71 = load double, double* %4, align 8, !tbaa !10
  %72 = fadd double %56, %71
  store double %72, double* %4, align 8, !tbaa !10
  %73 = load double, double* %7, align 8, !tbaa !10
  %74 = fadd double %56, %73
  store double %74, double* %7, align 8, !tbaa !10
  %75 = load double, double* %10, align 8, !tbaa !10
  %76 = fadd double %56, %75
  store double %76, double* %10, align 8, !tbaa !10
  %77 = load double, double* %2, align 8, !tbaa !10
  %78 = fadd double %60, %77
  store double %78, double* %2, align 8, !tbaa !10
  %79 = load double, double* %5, align 8, !tbaa !10
  %80 = fadd double %60, %79
  store double %80, double* %5, align 8, !tbaa !10
  %81 = load double, double* %8, align 8, !tbaa !10
  %82 = fadd double %60, %81
  store double %82, double* %8, align 8, !tbaa !10
  %83 = load double, double* %11, align 8, !tbaa !10
  %84 = fadd double %60, %83
  store double %84, double* %11, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable
define dso_local void @_Z19CalcElemNodeNormalsPdS_S_PKdS1_S1_(double* nocapture %0, double* nocapture %1, double* nocapture %2, double* nocapture readonly %3, double* nocapture readonly %4, double* nocapture readonly %5) local_unnamed_addr #6 {
  br label %122

7:                                                ; preds = %122
  %8 = getelementptr inbounds double, double* %0, i64 1
  %9 = getelementptr inbounds double, double* %1, i64 1
  %10 = getelementptr inbounds double, double* %2, i64 1
  %11 = getelementptr inbounds double, double* %0, i64 2
  %12 = getelementptr inbounds double, double* %1, i64 2
  %13 = getelementptr inbounds double, double* %2, i64 2
  %14 = getelementptr inbounds double, double* %0, i64 3
  %15 = getelementptr inbounds double, double* %1, i64 3
  %16 = getelementptr inbounds double, double* %2, i64 3
  %17 = load double, double* %3, align 8, !tbaa !10
  %18 = load double, double* %4, align 8, !tbaa !10
  %19 = load double, double* %5, align 8, !tbaa !10
  %20 = getelementptr inbounds double, double* %3, i64 1
  %21 = load double, double* %20, align 8, !tbaa !10
  %22 = getelementptr inbounds double, double* %4, i64 1
  %23 = load double, double* %22, align 8, !tbaa !10
  %24 = getelementptr inbounds double, double* %5, i64 1
  %25 = load double, double* %24, align 8, !tbaa !10
  %26 = getelementptr inbounds double, double* %3, i64 2
  %27 = load double, double* %26, align 8, !tbaa !10
  %28 = getelementptr inbounds double, double* %4, i64 2
  %29 = load double, double* %28, align 8, !tbaa !10
  %30 = getelementptr inbounds double, double* %5, i64 2
  %31 = load double, double* %30, align 8, !tbaa !10
  %32 = getelementptr inbounds double, double* %3, i64 3
  %33 = load double, double* %32, align 8, !tbaa !10
  %34 = getelementptr inbounds double, double* %4, i64 3
  %35 = load double, double* %34, align 8, !tbaa !10
  %36 = getelementptr inbounds double, double* %5, i64 3
  %37 = load double, double* %36, align 8, !tbaa !10
  tail call void @_Z17SumElemFaceNormalPdS_S_S_S_S_S_S_S_S_S_S_dddddddddddd(double* nonnull %0, double* nonnull %1, double* nonnull %2, double* nonnull %8, double* nonnull %9, double* nonnull %10, double* nonnull %11, double* nonnull %12, double* nonnull %13, double* nonnull %14, double* nonnull %15, double* nonnull %16, double %17, double %18, double %19, double %21, double %23, double %25, double %27, double %29, double %31, double %33, double %35, double %37)
  %38 = getelementptr inbounds double, double* %0, i64 4
  %39 = getelementptr inbounds double, double* %1, i64 4
  %40 = getelementptr inbounds double, double* %2, i64 4
  %41 = getelementptr inbounds double, double* %0, i64 5
  %42 = getelementptr inbounds double, double* %1, i64 5
  %43 = getelementptr inbounds double, double* %2, i64 5
  %44 = load double, double* %3, align 8, !tbaa !10
  %45 = load double, double* %4, align 8, !tbaa !10
  %46 = load double, double* %5, align 8, !tbaa !10
  %47 = getelementptr inbounds double, double* %3, i64 4
  %48 = load double, double* %47, align 8, !tbaa !10
  %49 = getelementptr inbounds double, double* %4, i64 4
  %50 = load double, double* %49, align 8, !tbaa !10
  %51 = getelementptr inbounds double, double* %5, i64 4
  %52 = load double, double* %51, align 8, !tbaa !10
  %53 = getelementptr inbounds double, double* %3, i64 5
  %54 = load double, double* %53, align 8, !tbaa !10
  %55 = getelementptr inbounds double, double* %4, i64 5
  %56 = load double, double* %55, align 8, !tbaa !10
  %57 = getelementptr inbounds double, double* %5, i64 5
  %58 = load double, double* %57, align 8, !tbaa !10
  %59 = load double, double* %20, align 8, !tbaa !10
  %60 = load double, double* %22, align 8, !tbaa !10
  %61 = load double, double* %24, align 8, !tbaa !10
  tail call void @_Z17SumElemFaceNormalPdS_S_S_S_S_S_S_S_S_S_S_dddddddddddd(double* nonnull %0, double* nonnull %1, double* nonnull %2, double* nonnull %38, double* nonnull %39, double* nonnull %40, double* nonnull %41, double* nonnull %42, double* nonnull %43, double* nonnull %8, double* nonnull %9, double* nonnull %10, double %44, double %45, double %46, double %48, double %50, double %52, double %54, double %56, double %58, double %59, double %60, double %61)
  %62 = getelementptr inbounds double, double* %0, i64 6
  %63 = getelementptr inbounds double, double* %1, i64 6
  %64 = getelementptr inbounds double, double* %2, i64 6
  %65 = load double, double* %20, align 8, !tbaa !10
  %66 = load double, double* %22, align 8, !tbaa !10
  %67 = load double, double* %24, align 8, !tbaa !10
  %68 = load double, double* %53, align 8, !tbaa !10
  %69 = load double, double* %55, align 8, !tbaa !10
  %70 = load double, double* %57, align 8, !tbaa !10
  %71 = getelementptr inbounds double, double* %3, i64 6
  %72 = load double, double* %71, align 8, !tbaa !10
  %73 = getelementptr inbounds double, double* %4, i64 6
  %74 = load double, double* %73, align 8, !tbaa !10
  %75 = getelementptr inbounds double, double* %5, i64 6
  %76 = load double, double* %75, align 8, !tbaa !10
  %77 = load double, double* %26, align 8, !tbaa !10
  %78 = load double, double* %28, align 8, !tbaa !10
  %79 = load double, double* %30, align 8, !tbaa !10
  tail call void @_Z17SumElemFaceNormalPdS_S_S_S_S_S_S_S_S_S_S_dddddddddddd(double* nonnull %8, double* nonnull %9, double* nonnull %10, double* nonnull %41, double* nonnull %42, double* nonnull %43, double* nonnull %62, double* nonnull %63, double* nonnull %64, double* nonnull %11, double* nonnull %12, double* nonnull %13, double %65, double %66, double %67, double %68, double %69, double %70, double %72, double %74, double %76, double %77, double %78, double %79)
  %80 = getelementptr inbounds double, double* %0, i64 7
  %81 = getelementptr inbounds double, double* %1, i64 7
  %82 = getelementptr inbounds double, double* %2, i64 7
  %83 = load double, double* %26, align 8, !tbaa !10
  %84 = load double, double* %28, align 8, !tbaa !10
  %85 = load double, double* %30, align 8, !tbaa !10
  %86 = load double, double* %71, align 8, !tbaa !10
  %87 = load double, double* %73, align 8, !tbaa !10
  %88 = load double, double* %75, align 8, !tbaa !10
  %89 = getelementptr inbounds double, double* %3, i64 7
  %90 = load double, double* %89, align 8, !tbaa !10
  %91 = getelementptr inbounds double, double* %4, i64 7
  %92 = load double, double* %91, align 8, !tbaa !10
  %93 = getelementptr inbounds double, double* %5, i64 7
  %94 = load double, double* %93, align 8, !tbaa !10
  %95 = load double, double* %32, align 8, !tbaa !10
  %96 = load double, double* %34, align 8, !tbaa !10
  %97 = load double, double* %36, align 8, !tbaa !10
  tail call void @_Z17SumElemFaceNormalPdS_S_S_S_S_S_S_S_S_S_S_dddddddddddd(double* nonnull %11, double* nonnull %12, double* nonnull %13, double* nonnull %62, double* nonnull %63, double* nonnull %64, double* nonnull %80, double* nonnull %81, double* nonnull %82, double* nonnull %14, double* nonnull %15, double* nonnull %16, double %83, double %84, double %85, double %86, double %87, double %88, double %90, double %92, double %94, double %95, double %96, double %97)
  %98 = load double, double* %32, align 8, !tbaa !10
  %99 = load double, double* %34, align 8, !tbaa !10
  %100 = load double, double* %36, align 8, !tbaa !10
  %101 = load double, double* %89, align 8, !tbaa !10
  %102 = load double, double* %91, align 8, !tbaa !10
  %103 = load double, double* %93, align 8, !tbaa !10
  %104 = load double, double* %47, align 8, !tbaa !10
  %105 = load double, double* %49, align 8, !tbaa !10
  %106 = load double, double* %51, align 8, !tbaa !10
  %107 = load double, double* %3, align 8, !tbaa !10
  %108 = load double, double* %4, align 8, !tbaa !10
  %109 = load double, double* %5, align 8, !tbaa !10
  tail call void @_Z17SumElemFaceNormalPdS_S_S_S_S_S_S_S_S_S_S_dddddddddddd(double* nonnull %14, double* nonnull %15, double* nonnull %16, double* nonnull %80, double* nonnull %81, double* nonnull %82, double* nonnull %38, double* nonnull %39, double* nonnull %40, double* nonnull %0, double* nonnull %1, double* nonnull %2, double %98, double %99, double %100, double %101, double %102, double %103, double %104, double %105, double %106, double %107, double %108, double %109)
  %110 = load double, double* %47, align 8, !tbaa !10
  %111 = load double, double* %49, align 8, !tbaa !10
  %112 = load double, double* %51, align 8, !tbaa !10
  %113 = load double, double* %89, align 8, !tbaa !10
  %114 = load double, double* %91, align 8, !tbaa !10
  %115 = load double, double* %93, align 8, !tbaa !10
  %116 = load double, double* %71, align 8, !tbaa !10
  %117 = load double, double* %73, align 8, !tbaa !10
  %118 = load double, double* %75, align 8, !tbaa !10
  %119 = load double, double* %53, align 8, !tbaa !10
  %120 = load double, double* %55, align 8, !tbaa !10
  %121 = load double, double* %57, align 8, !tbaa !10
  tail call void @_Z17SumElemFaceNormalPdS_S_S_S_S_S_S_S_S_S_S_dddddddddddd(double* nonnull %38, double* nonnull %39, double* nonnull %40, double* nonnull %80, double* nonnull %81, double* nonnull %82, double* nonnull %62, double* nonnull %63, double* nonnull %64, double* nonnull %41, double* nonnull %42, double* nonnull %43, double %110, double %111, double %112, double %113, double %114, double %115, double %116, double %117, double %118, double %119, double %120, double %121)
  ret void

122:                                              ; preds = %122, %6
  %123 = phi i64 [ 0, %6 ], [ %127, %122 ]
  %124 = getelementptr inbounds double, double* %0, i64 %123
  store double 0.000000e+00, double* %124, align 8, !tbaa !10
  %125 = getelementptr inbounds double, double* %1, i64 %123
  store double 0.000000e+00, double* %125, align 8, !tbaa !10
  %126 = getelementptr inbounds double, double* %2, i64 %123
  store double 0.000000e+00, double* %126, align 8, !tbaa !10
  %127 = add nuw nsw i64 %123, 1
  %128 = icmp eq i64 %127, 8
  br i1 %128, label %7, label %122, !llvm.loop !17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @_Z27SumElemStressesToNodeForcesPA8_KddddPdS2_S2_([8 x double]* readonly %0, double %1, double %2, double %3, double* nocapture %4, double* nocapture %5, double* nocapture %6) local_unnamed_addr #5 {
  %8 = bitcast [8 x double]* %0 to <2 x double>*
  %9 = load <2 x double>, <2 x double>* %8, align 8, !tbaa !10
  %10 = getelementptr inbounds [8 x double], [8 x double]* %0, i64 0, i64 2
  %11 = bitcast double* %10 to <2 x double>*
  %12 = load <2 x double>, <2 x double>* %11, align 8, !tbaa !10
  %13 = getelementptr inbounds [8 x double], [8 x double]* %0, i64 0, i64 4
  %14 = bitcast double* %13 to <2 x double>*
  %15 = load <2 x double>, <2 x double>* %14, align 8, !tbaa !10
  %16 = getelementptr inbounds [8 x double], [8 x double]* %0, i64 0, i64 6
  %17 = bitcast double* %16 to <2 x double>*
  %18 = load <2 x double>, <2 x double>* %17, align 8, !tbaa !10
  %19 = getelementptr inbounds [8 x double], [8 x double]* %0, i64 1, i64 0
  %20 = bitcast double* %19 to <2 x double>*
  %21 = load <2 x double>, <2 x double>* %20, align 8, !tbaa !10
  %22 = getelementptr inbounds [8 x double], [8 x double]* %0, i64 1, i64 2
  %23 = bitcast double* %22 to <2 x double>*
  %24 = load <2 x double>, <2 x double>* %23, align 8, !tbaa !10
  %25 = getelementptr inbounds [8 x double], [8 x double]* %0, i64 1, i64 4
  %26 = bitcast double* %25 to <2 x double>*
  %27 = load <2 x double>, <2 x double>* %26, align 8, !tbaa !10
  %28 = getelementptr inbounds [8 x double], [8 x double]* %0, i64 1, i64 6
  %29 = bitcast double* %28 to <2 x double>*
  %30 = load <2 x double>, <2 x double>* %29, align 8, !tbaa !10
  %31 = getelementptr inbounds [8 x double], [8 x double]* %0, i64 2, i64 0
  %32 = bitcast double* %31 to <2 x double>*
  %33 = load <2 x double>, <2 x double>* %32, align 8, !tbaa !10
  %34 = getelementptr inbounds [8 x double], [8 x double]* %0, i64 2, i64 2
  %35 = bitcast double* %34 to <2 x double>*
  %36 = load <2 x double>, <2 x double>* %35, align 8, !tbaa !10
  %37 = getelementptr inbounds [8 x double], [8 x double]* %0, i64 2, i64 4
  %38 = bitcast double* %37 to <2 x double>*
  %39 = load <2 x double>, <2 x double>* %38, align 8, !tbaa !10
  %40 = getelementptr inbounds [8 x double], [8 x double]* %0, i64 2, i64 6
  %41 = bitcast double* %40 to <2 x double>*
  %42 = load <2 x double>, <2 x double>* %41, align 8, !tbaa !10
  %43 = fneg <2 x double> %9
  %44 = insertelement <2 x double> poison, double %1, i32 0
  %45 = shufflevector <2 x double> %44, <2 x double> poison, <2 x i32> zeroinitializer
  %46 = fmul <2 x double> %45, %43
  %47 = bitcast double* %4 to <2 x double>*
  store <2 x double> %46, <2 x double>* %47, align 8, !tbaa !10
  %48 = getelementptr inbounds double, double* %4, i64 2
  %49 = fneg <2 x double> %12
  %50 = fmul <2 x double> %45, %49
  %51 = bitcast double* %48 to <2 x double>*
  store <2 x double> %50, <2 x double>* %51, align 8, !tbaa !10
  %52 = getelementptr inbounds double, double* %4, i64 4
  %53 = fneg <2 x double> %15
  %54 = fmul <2 x double> %45, %53
  %55 = bitcast double* %52 to <2 x double>*
  store <2 x double> %54, <2 x double>* %55, align 8, !tbaa !10
  %56 = getelementptr inbounds double, double* %4, i64 6
  %57 = fneg <2 x double> %18
  %58 = fmul <2 x double> %45, %57
  %59 = bitcast double* %56 to <2 x double>*
  store <2 x double> %58, <2 x double>* %59, align 8, !tbaa !10
  %60 = fneg <2 x double> %21
  %61 = insertelement <2 x double> poison, double %2, i32 0
  %62 = shufflevector <2 x double> %61, <2 x double> poison, <2 x i32> zeroinitializer
  %63 = fmul <2 x double> %62, %60
  %64 = bitcast double* %5 to <2 x double>*
  store <2 x double> %63, <2 x double>* %64, align 8, !tbaa !10
  %65 = getelementptr inbounds double, double* %5, i64 2
  %66 = fneg <2 x double> %24
  %67 = fmul <2 x double> %62, %66
  %68 = bitcast double* %65 to <2 x double>*
  store <2 x double> %67, <2 x double>* %68, align 8, !tbaa !10
  %69 = getelementptr inbounds double, double* %5, i64 4
  %70 = fneg <2 x double> %27
  %71 = fmul <2 x double> %62, %70
  %72 = bitcast double* %69 to <2 x double>*
  store <2 x double> %71, <2 x double>* %72, align 8, !tbaa !10
  %73 = getelementptr inbounds double, double* %5, i64 6
  %74 = fneg <2 x double> %30
  %75 = fmul <2 x double> %62, %74
  %76 = bitcast double* %73 to <2 x double>*
  store <2 x double> %75, <2 x double>* %76, align 8, !tbaa !10
  %77 = fneg <2 x double> %33
  %78 = insertelement <2 x double> poison, double %3, i32 0
  %79 = shufflevector <2 x double> %78, <2 x double> poison, <2 x i32> zeroinitializer
  %80 = fmul <2 x double> %79, %77
  %81 = bitcast double* %6 to <2 x double>*
  store <2 x double> %80, <2 x double>* %81, align 8, !tbaa !10
  %82 = getelementptr inbounds double, double* %6, i64 2
  %83 = fneg <2 x double> %36
  %84 = fmul <2 x double> %79, %83
  %85 = bitcast double* %82 to <2 x double>*
  store <2 x double> %84, <2 x double>* %85, align 8, !tbaa !10
  %86 = getelementptr inbounds double, double* %6, i64 4
  %87 = fneg <2 x double> %39
  %88 = fmul <2 x double> %79, %87
  %89 = bitcast double* %86 to <2 x double>*
  store <2 x double> %88, <2 x double>* %89, align 8, !tbaa !10
  %90 = getelementptr inbounds double, double* %6, i64 6
  %91 = fneg <2 x double> %42
  %92 = fmul <2 x double> %79, %91
  %93 = bitcast double* %90 to <2 x double>*
  store <2 x double> %92, <2 x double>* %93, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable
define dso_local void @_Z23IntegrateStressForElemsiPdS_S_S_(i32 %0, double* nocapture readonly %1, double* nocapture readonly %2, double* nocapture readonly %3, double* nocapture %4) local_unnamed_addr #7 {
  %6 = alloca [3 x [8 x double]], align 16
  %7 = alloca [8 x double], align 16
  %8 = alloca [8 x double], align 16
  %9 = alloca [8 x double], align 16
  %10 = alloca [8 x double], align 16
  %11 = alloca [8 x double], align 16
  %12 = alloca [8 x double], align 16
  %13 = bitcast [3 x [8 x double]]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %13) #2
  %14 = bitcast [8 x double]* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %14) #2
  %15 = bitcast [8 x double]* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %15) #2
  %16 = bitcast [8 x double]* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %16) #2
  %17 = bitcast [8 x double]* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %17) #2
  %18 = bitcast [8 x double]* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %18) #2
  %19 = bitcast [8 x double]* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %19) #2
  %20 = getelementptr inbounds [8 x double], [8 x double]* %7, i64 0, i64 0
  %21 = getelementptr inbounds [8 x double], [8 x double]* %8, i64 0, i64 0
  %22 = getelementptr inbounds [8 x double], [8 x double]* %9, i64 0, i64 0
  %23 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %6, i64 0, i64 0
  %24 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %6, i64 0, i64 0, i64 0
  %25 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %6, i64 0, i64 1, i64 0
  %26 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %6, i64 0, i64 2, i64 0
  %27 = getelementptr inbounds [8 x double], [8 x double]* %10, i64 0, i64 0
  %28 = getelementptr inbounds [8 x double], [8 x double]* %11, i64 0, i64 0
  %29 = getelementptr inbounds [8 x double], [8 x double]* %12, i64 0, i64 0
  %30 = icmp sgt i32 %0, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %5
  %32 = zext i32 %0 to i64
  br label %34

33:                                               ; preds = %69, %5
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %19) #2
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %18) #2
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %17) #2
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %16) #2
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %15) #2
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %14) #2
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %13) #2
  ret void

34:                                               ; preds = %69, %31
  %35 = phi i64 [ 0, %31 ], [ %70, %69 ]
  %36 = shl nsw i64 %35, 3
  %37 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 17, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !8
  %38 = getelementptr inbounds i32, i32* %37, i64 %36
  %39 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %40 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %41 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  br label %53

42:                                               ; preds = %53
  %43 = getelementptr inbounds double, double* %4, i64 %35
  call void @_Z32CalcElemShapeFunctionDerivativesPKdS0_S0_PA8_dPd(double* nonnull %20, double* nonnull %21, double* nonnull %22, [8 x double]* nonnull %23, double* %43)
  call void @_Z19CalcElemNodeNormalsPdS_S_PKdS1_S1_(double* nonnull %24, double* nonnull %25, double* nonnull %26, double* nonnull %20, double* nonnull %21, double* nonnull %22)
  %44 = getelementptr inbounds double, double* %1, i64 %35
  %45 = load double, double* %44, align 8, !tbaa !10
  %46 = getelementptr inbounds double, double* %2, i64 %35
  %47 = load double, double* %46, align 8, !tbaa !10
  %48 = getelementptr inbounds double, double* %3, i64 %35
  %49 = load double, double* %48, align 8, !tbaa !10
  call void @_Z27SumElemStressesToNodeForcesPA8_KddddPdS2_S2_([8 x double]* nonnull %23, double %45, double %47, double %49, double* nonnull %27, double* nonnull %28, double* nonnull %29)
  %50 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 9, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %51 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 10, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %52 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 11, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  br label %72

53:                                               ; preds = %53, %34
  %54 = phi i64 [ 0, %34 ], [ %67, %53 ]
  %55 = getelementptr inbounds i32, i32* %38, i64 %54
  %56 = load i32, i32* %55, align 4, !tbaa !12
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds double, double* %39, i64 %57
  %59 = load double, double* %58, align 8, !tbaa !10
  %60 = getelementptr inbounds [8 x double], [8 x double]* %7, i64 0, i64 %54
  store double %59, double* %60, align 8, !tbaa !10
  %61 = getelementptr inbounds double, double* %40, i64 %57
  %62 = load double, double* %61, align 8, !tbaa !10
  %63 = getelementptr inbounds [8 x double], [8 x double]* %8, i64 0, i64 %54
  store double %62, double* %63, align 8, !tbaa !10
  %64 = getelementptr inbounds double, double* %41, i64 %57
  %65 = load double, double* %64, align 8, !tbaa !10
  %66 = getelementptr inbounds [8 x double], [8 x double]* %9, i64 0, i64 %54
  store double %65, double* %66, align 8, !tbaa !10
  %67 = add nuw nsw i64 %54, 1
  %68 = icmp eq i64 %67, 8
  br i1 %68, label %42, label %53, !llvm.loop !18

69:                                               ; preds = %72
  %70 = add nuw nsw i64 %35, 1
  %71 = icmp eq i64 %70, %32
  br i1 %71, label %33, label %34, !llvm.loop !19

72:                                               ; preds = %72, %42
  %73 = phi i64 [ 0, %42 ], [ %92, %72 ]
  %74 = getelementptr inbounds i32, i32* %38, i64 %73
  %75 = load i32, i32* %74, align 4, !tbaa !12
  %76 = getelementptr inbounds [8 x double], [8 x double]* %10, i64 0, i64 %73
  %77 = load double, double* %76, align 8, !tbaa !10
  %78 = sext i32 %75 to i64
  %79 = getelementptr inbounds double, double* %50, i64 %78
  %80 = load double, double* %79, align 8, !tbaa !10
  %81 = fadd double %77, %80
  store double %81, double* %79, align 8, !tbaa !10
  %82 = getelementptr inbounds [8 x double], [8 x double]* %11, i64 0, i64 %73
  %83 = load double, double* %82, align 8, !tbaa !10
  %84 = getelementptr inbounds double, double* %51, i64 %78
  %85 = load double, double* %84, align 8, !tbaa !10
  %86 = fadd double %83, %85
  store double %86, double* %84, align 8, !tbaa !10
  %87 = getelementptr inbounds [8 x double], [8 x double]* %12, i64 0, i64 %73
  %88 = load double, double* %87, align 8, !tbaa !10
  %89 = getelementptr inbounds double, double* %52, i64 %78
  %90 = load double, double* %89, align 8, !tbaa !10
  %91 = fadd double %88, %90
  store double %91, double* %89, align 8, !tbaa !10
  %92 = add nuw nsw i64 %73, 1
  %93 = icmp eq i64 %92, 8
  br i1 %93, label %69, label %72, !llvm.loop !20
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @_Z29CollectDomainNodesToElemNodesPKiPdS1_S1_(i32* nocapture readonly %0, double* nocapture %1, double* nocapture %2, double* nocapture %3) local_unnamed_addr #5 {
  %5 = load i32, i32* %0, align 4, !tbaa !12
  %6 = getelementptr inbounds i32, i32* %0, i64 1
  %7 = load i32, i32* %6, align 4, !tbaa !12
  %8 = getelementptr inbounds i32, i32* %0, i64 2
  %9 = load i32, i32* %8, align 4, !tbaa !12
  %10 = getelementptr inbounds i32, i32* %0, i64 3
  %11 = load i32, i32* %10, align 4, !tbaa !12
  %12 = getelementptr inbounds i32, i32* %0, i64 4
  %13 = load i32, i32* %12, align 4, !tbaa !12
  %14 = getelementptr inbounds i32, i32* %0, i64 5
  %15 = load i32, i32* %14, align 4, !tbaa !12
  %16 = getelementptr inbounds i32, i32* %0, i64 6
  %17 = load i32, i32* %16, align 4, !tbaa !12
  %18 = getelementptr inbounds i32, i32* %0, i64 7
  %19 = load i32, i32* %18, align 4, !tbaa !12
  %20 = sext i32 %5 to i64
  %21 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %22 = getelementptr inbounds double, double* %21, i64 %20
  %23 = load double, double* %22, align 8, !tbaa !10
  store double %23, double* %1, align 8, !tbaa !10
  %24 = sext i32 %7 to i64
  %25 = getelementptr inbounds double, double* %21, i64 %24
  %26 = load double, double* %25, align 8, !tbaa !10
  %27 = getelementptr inbounds double, double* %1, i64 1
  store double %26, double* %27, align 8, !tbaa !10
  %28 = sext i32 %9 to i64
  %29 = getelementptr inbounds double, double* %21, i64 %28
  %30 = load double, double* %29, align 8, !tbaa !10
  %31 = getelementptr inbounds double, double* %1, i64 2
  store double %30, double* %31, align 8, !tbaa !10
  %32 = sext i32 %11 to i64
  %33 = getelementptr inbounds double, double* %21, i64 %32
  %34 = load double, double* %33, align 8, !tbaa !10
  %35 = getelementptr inbounds double, double* %1, i64 3
  store double %34, double* %35, align 8, !tbaa !10
  %36 = sext i32 %13 to i64
  %37 = getelementptr inbounds double, double* %21, i64 %36
  %38 = load double, double* %37, align 8, !tbaa !10
  %39 = getelementptr inbounds double, double* %1, i64 4
  store double %38, double* %39, align 8, !tbaa !10
  %40 = sext i32 %15 to i64
  %41 = getelementptr inbounds double, double* %21, i64 %40
  %42 = load double, double* %41, align 8, !tbaa !10
  %43 = getelementptr inbounds double, double* %1, i64 5
  store double %42, double* %43, align 8, !tbaa !10
  %44 = sext i32 %17 to i64
  %45 = getelementptr inbounds double, double* %21, i64 %44
  %46 = load double, double* %45, align 8, !tbaa !10
  %47 = getelementptr inbounds double, double* %1, i64 6
  store double %46, double* %47, align 8, !tbaa !10
  %48 = sext i32 %19 to i64
  %49 = getelementptr inbounds double, double* %21, i64 %48
  %50 = load double, double* %49, align 8, !tbaa !10
  %51 = getelementptr inbounds double, double* %1, i64 7
  store double %50, double* %51, align 8, !tbaa !10
  %52 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %53 = getelementptr inbounds double, double* %52, i64 %20
  %54 = load double, double* %53, align 8, !tbaa !10
  store double %54, double* %2, align 8, !tbaa !10
  %55 = getelementptr inbounds double, double* %52, i64 %24
  %56 = load double, double* %55, align 8, !tbaa !10
  %57 = getelementptr inbounds double, double* %2, i64 1
  store double %56, double* %57, align 8, !tbaa !10
  %58 = getelementptr inbounds double, double* %52, i64 %28
  %59 = load double, double* %58, align 8, !tbaa !10
  %60 = getelementptr inbounds double, double* %2, i64 2
  store double %59, double* %60, align 8, !tbaa !10
  %61 = getelementptr inbounds double, double* %52, i64 %32
  %62 = load double, double* %61, align 8, !tbaa !10
  %63 = getelementptr inbounds double, double* %2, i64 3
  store double %62, double* %63, align 8, !tbaa !10
  %64 = getelementptr inbounds double, double* %52, i64 %36
  %65 = load double, double* %64, align 8, !tbaa !10
  %66 = getelementptr inbounds double, double* %2, i64 4
  store double %65, double* %66, align 8, !tbaa !10
  %67 = getelementptr inbounds double, double* %52, i64 %40
  %68 = load double, double* %67, align 8, !tbaa !10
  %69 = getelementptr inbounds double, double* %2, i64 5
  store double %68, double* %69, align 8, !tbaa !10
  %70 = getelementptr inbounds double, double* %52, i64 %44
  %71 = load double, double* %70, align 8, !tbaa !10
  %72 = getelementptr inbounds double, double* %2, i64 6
  store double %71, double* %72, align 8, !tbaa !10
  %73 = getelementptr inbounds double, double* %52, i64 %48
  %74 = load double, double* %73, align 8, !tbaa !10
  %75 = getelementptr inbounds double, double* %2, i64 7
  store double %74, double* %75, align 8, !tbaa !10
  %76 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %77 = getelementptr inbounds double, double* %76, i64 %20
  %78 = load double, double* %77, align 8, !tbaa !10
  store double %78, double* %3, align 8, !tbaa !10
  %79 = getelementptr inbounds double, double* %76, i64 %24
  %80 = load double, double* %79, align 8, !tbaa !10
  %81 = getelementptr inbounds double, double* %3, i64 1
  store double %80, double* %81, align 8, !tbaa !10
  %82 = getelementptr inbounds double, double* %76, i64 %28
  %83 = load double, double* %82, align 8, !tbaa !10
  %84 = getelementptr inbounds double, double* %3, i64 2
  store double %83, double* %84, align 8, !tbaa !10
  %85 = getelementptr inbounds double, double* %76, i64 %32
  %86 = load double, double* %85, align 8, !tbaa !10
  %87 = getelementptr inbounds double, double* %3, i64 3
  store double %86, double* %87, align 8, !tbaa !10
  %88 = getelementptr inbounds double, double* %76, i64 %36
  %89 = load double, double* %88, align 8, !tbaa !10
  %90 = getelementptr inbounds double, double* %3, i64 4
  store double %89, double* %90, align 8, !tbaa !10
  %91 = getelementptr inbounds double, double* %76, i64 %40
  %92 = load double, double* %91, align 8, !tbaa !10
  %93 = getelementptr inbounds double, double* %3, i64 5
  store double %92, double* %93, align 8, !tbaa !10
  %94 = getelementptr inbounds double, double* %76, i64 %44
  %95 = load double, double* %94, align 8, !tbaa !10
  %96 = getelementptr inbounds double, double* %3, i64 6
  store double %95, double* %96, align 8, !tbaa !10
  %97 = getelementptr inbounds double, double* %76, i64 %48
  %98 = load double, double* %97, align 8, !tbaa !10
  %99 = getelementptr inbounds double, double* %3, i64 7
  store double %98, double* %99, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @_Z7VoluDerddddddddddddddddddPdS_S_(double %0, double %1, double %2, double %3, double %4, double %5, double %6, double %7, double %8, double %9, double %10, double %11, double %12, double %13, double %14, double %15, double %16, double %17, double* nocapture %18, double* nocapture %19, double* nocapture %20) local_unnamed_addr #5 {
  %22 = fadd double %7, %8
  %23 = fadd double %12, %13
  %24 = fmul double %22, %23
  %25 = fadd double %6, %7
  %26 = fadd double %13, %14
  %27 = fmul double %25, %26
  %28 = fsub double %24, %27
  %29 = fadd double %6, %10
  %30 = fadd double %15, %16
  %31 = fmul double %29, %30
  %32 = fadd double %28, %31
  %33 = fadd double %9, %10
  %34 = fadd double %12, %16
  %35 = fmul double %33, %34
  %36 = fsub double %32, %35
  %37 = fadd double %8, %11
  %38 = fadd double %15, %17
  %39 = fmul double %37, %38
  %40 = fsub double %36, %39
  %41 = fadd double %9, %11
  %42 = fadd double %14, %17
  %43 = fmul double %41, %42
  %44 = fadd double %43, %40
  store double %44, double* %18, align 8, !tbaa !10
  %45 = fadd double %1, %2
  %46 = fadd double %0, %1
  %47 = fmul double %46, %26
  %48 = fmul double %45, %23
  %49 = fsub double %47, %48
  %50 = fadd double %0, %4
  %51 = fmul double %50, %30
  %52 = fsub double %49, %51
  %53 = fadd double %3, %4
  %54 = fmul double %53, %34
  %55 = fadd double %54, %52
  %56 = fadd double %2, %5
  %57 = fmul double %56, %38
  %58 = fadd double %57, %55
  %59 = fadd double %3, %5
  %60 = fmul double %59, %42
  %61 = fsub double %58, %60
  store double %61, double* %19, align 8, !tbaa !10
  %62 = fmul double %45, %25
  %63 = fmul double %46, %22
  %64 = fsub double %62, %63
  %65 = fmul double %53, %29
  %66 = fsub double %64, %65
  %67 = fmul double %50, %33
  %68 = fadd double %67, %66
  %69 = fmul double %59, %37
  %70 = fadd double %69, %68
  %71 = fmul double %56, %41
  %72 = fsub double %70, %71
  store double %72, double* %20, align 8, !tbaa !10
  %73 = load double, double* %18, align 8, !tbaa !10
  %74 = fmul double %73, 0x3FB5555555555555
  store double %74, double* %18, align 8, !tbaa !10
  %75 = load double, double* %19, align 8, !tbaa !10
  %76 = fmul double %75, 0x3FB5555555555555
  store double %76, double* %19, align 8, !tbaa !10
  %77 = load double, double* %20, align 8, !tbaa !10
  %78 = fmul double %77, 0x3FB5555555555555
  store double %78, double* %20, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @_Z24CalcElemVolumeDerivativePdS_S_PKdS1_S1_(double* nocapture %0, double* nocapture %1, double* nocapture %2, double* nocapture readonly %3, double* nocapture readonly %4, double* nocapture readonly %5) local_unnamed_addr #5 {
  %7 = getelementptr inbounds double, double* %3, i64 1
  %8 = load double, double* %7, align 8, !tbaa !10
  %9 = getelementptr inbounds double, double* %3, i64 2
  %10 = load double, double* %9, align 8, !tbaa !10
  %11 = getelementptr inbounds double, double* %3, i64 3
  %12 = load double, double* %11, align 8, !tbaa !10
  %13 = getelementptr inbounds double, double* %3, i64 4
  %14 = load double, double* %13, align 8, !tbaa !10
  %15 = getelementptr inbounds double, double* %3, i64 5
  %16 = load double, double* %15, align 8, !tbaa !10
  %17 = getelementptr inbounds double, double* %3, i64 7
  %18 = load double, double* %17, align 8, !tbaa !10
  %19 = getelementptr inbounds double, double* %4, i64 1
  %20 = load double, double* %19, align 8, !tbaa !10
  %21 = getelementptr inbounds double, double* %4, i64 2
  %22 = load double, double* %21, align 8, !tbaa !10
  %23 = getelementptr inbounds double, double* %4, i64 3
  %24 = load double, double* %23, align 8, !tbaa !10
  %25 = getelementptr inbounds double, double* %4, i64 4
  %26 = load double, double* %25, align 8, !tbaa !10
  %27 = getelementptr inbounds double, double* %4, i64 5
  %28 = load double, double* %27, align 8, !tbaa !10
  %29 = getelementptr inbounds double, double* %4, i64 7
  %30 = load double, double* %29, align 8, !tbaa !10
  %31 = getelementptr inbounds double, double* %5, i64 1
  %32 = load double, double* %31, align 8, !tbaa !10
  %33 = getelementptr inbounds double, double* %5, i64 2
  %34 = load double, double* %33, align 8, !tbaa !10
  %35 = getelementptr inbounds double, double* %5, i64 3
  %36 = load double, double* %35, align 8, !tbaa !10
  %37 = getelementptr inbounds double, double* %5, i64 4
  %38 = load double, double* %37, align 8, !tbaa !10
  %39 = getelementptr inbounds double, double* %5, i64 5
  %40 = load double, double* %39, align 8, !tbaa !10
  %41 = getelementptr inbounds double, double* %5, i64 7
  %42 = load double, double* %41, align 8, !tbaa !10
  tail call void @_Z7VoluDerddddddddddddddddddPdS_S_(double %8, double %10, double %12, double %14, double %16, double %18, double %20, double %22, double %24, double %26, double %28, double %30, double %32, double %34, double %36, double %38, double %40, double %42, double* %0, double* %1, double* %2)
  %43 = load double, double* %3, align 8, !tbaa !10
  %44 = load double, double* %7, align 8, !tbaa !10
  %45 = load double, double* %9, align 8, !tbaa !10
  %46 = load double, double* %17, align 8, !tbaa !10
  %47 = load double, double* %13, align 8, !tbaa !10
  %48 = getelementptr inbounds double, double* %3, i64 6
  %49 = load double, double* %48, align 8, !tbaa !10
  %50 = load double, double* %4, align 8, !tbaa !10
  %51 = load double, double* %19, align 8, !tbaa !10
  %52 = load double, double* %21, align 8, !tbaa !10
  %53 = load double, double* %29, align 8, !tbaa !10
  %54 = load double, double* %25, align 8, !tbaa !10
  %55 = getelementptr inbounds double, double* %4, i64 6
  %56 = load double, double* %55, align 8, !tbaa !10
  %57 = load double, double* %5, align 8, !tbaa !10
  %58 = load double, double* %31, align 8, !tbaa !10
  %59 = load double, double* %33, align 8, !tbaa !10
  %60 = load double, double* %41, align 8, !tbaa !10
  %61 = load double, double* %37, align 8, !tbaa !10
  %62 = getelementptr inbounds double, double* %5, i64 6
  %63 = load double, double* %62, align 8, !tbaa !10
  %64 = getelementptr inbounds double, double* %0, i64 3
  %65 = getelementptr inbounds double, double* %1, i64 3
  %66 = getelementptr inbounds double, double* %2, i64 3
  tail call void @_Z7VoluDerddddddddddddddddddPdS_S_(double %43, double %44, double %45, double %46, double %47, double %49, double %50, double %51, double %52, double %53, double %54, double %56, double %57, double %58, double %59, double %60, double %61, double %63, double* nonnull %64, double* nonnull %65, double* nonnull %66)
  %67 = load double, double* %11, align 8, !tbaa !10
  %68 = load double, double* %3, align 8, !tbaa !10
  %69 = load double, double* %7, align 8, !tbaa !10
  %70 = load double, double* %48, align 8, !tbaa !10
  %71 = load double, double* %17, align 8, !tbaa !10
  %72 = load double, double* %15, align 8, !tbaa !10
  %73 = load double, double* %23, align 8, !tbaa !10
  %74 = load double, double* %4, align 8, !tbaa !10
  %75 = load double, double* %19, align 8, !tbaa !10
  %76 = load double, double* %55, align 8, !tbaa !10
  %77 = load double, double* %29, align 8, !tbaa !10
  %78 = load double, double* %27, align 8, !tbaa !10
  %79 = load double, double* %35, align 8, !tbaa !10
  %80 = load double, double* %5, align 8, !tbaa !10
  %81 = load double, double* %31, align 8, !tbaa !10
  %82 = load double, double* %62, align 8, !tbaa !10
  %83 = load double, double* %41, align 8, !tbaa !10
  %84 = load double, double* %39, align 8, !tbaa !10
  %85 = getelementptr inbounds double, double* %0, i64 2
  %86 = getelementptr inbounds double, double* %1, i64 2
  %87 = getelementptr inbounds double, double* %2, i64 2
  tail call void @_Z7VoluDerddddddddddddddddddPdS_S_(double %67, double %68, double %69, double %70, double %71, double %72, double %73, double %74, double %75, double %76, double %77, double %78, double %79, double %80, double %81, double %82, double %83, double %84, double* nonnull %85, double* nonnull %86, double* nonnull %87)
  %88 = load double, double* %9, align 8, !tbaa !10
  %89 = load double, double* %11, align 8, !tbaa !10
  %90 = load double, double* %3, align 8, !tbaa !10
  %91 = load double, double* %15, align 8, !tbaa !10
  %92 = load double, double* %48, align 8, !tbaa !10
  %93 = load double, double* %13, align 8, !tbaa !10
  %94 = load double, double* %21, align 8, !tbaa !10
  %95 = load double, double* %23, align 8, !tbaa !10
  %96 = load double, double* %4, align 8, !tbaa !10
  %97 = load double, double* %27, align 8, !tbaa !10
  %98 = load double, double* %55, align 8, !tbaa !10
  %99 = load double, double* %25, align 8, !tbaa !10
  %100 = load double, double* %33, align 8, !tbaa !10
  %101 = load double, double* %35, align 8, !tbaa !10
  %102 = load double, double* %5, align 8, !tbaa !10
  %103 = load double, double* %39, align 8, !tbaa !10
  %104 = load double, double* %62, align 8, !tbaa !10
  %105 = load double, double* %37, align 8, !tbaa !10
  %106 = getelementptr inbounds double, double* %0, i64 1
  %107 = getelementptr inbounds double, double* %1, i64 1
  %108 = getelementptr inbounds double, double* %2, i64 1
  tail call void @_Z7VoluDerddddddddddddddddddPdS_S_(double %88, double %89, double %90, double %91, double %92, double %93, double %94, double %95, double %96, double %97, double %98, double %99, double %100, double %101, double %102, double %103, double %104, double %105, double* nonnull %106, double* nonnull %107, double* nonnull %108)
  %109 = load double, double* %17, align 8, !tbaa !10
  %110 = load double, double* %48, align 8, !tbaa !10
  %111 = load double, double* %15, align 8, !tbaa !10
  %112 = load double, double* %3, align 8, !tbaa !10
  %113 = load double, double* %11, align 8, !tbaa !10
  %114 = load double, double* %7, align 8, !tbaa !10
  %115 = load double, double* %29, align 8, !tbaa !10
  %116 = load double, double* %55, align 8, !tbaa !10
  %117 = load double, double* %27, align 8, !tbaa !10
  %118 = load double, double* %4, align 8, !tbaa !10
  %119 = load double, double* %23, align 8, !tbaa !10
  %120 = load double, double* %19, align 8, !tbaa !10
  %121 = load double, double* %41, align 8, !tbaa !10
  %122 = load double, double* %62, align 8, !tbaa !10
  %123 = load double, double* %39, align 8, !tbaa !10
  %124 = load double, double* %5, align 8, !tbaa !10
  %125 = load double, double* %35, align 8, !tbaa !10
  %126 = load double, double* %31, align 8, !tbaa !10
  %127 = getelementptr inbounds double, double* %0, i64 4
  %128 = getelementptr inbounds double, double* %1, i64 4
  %129 = getelementptr inbounds double, double* %2, i64 4
  tail call void @_Z7VoluDerddddddddddddddddddPdS_S_(double %109, double %110, double %111, double %112, double %113, double %114, double %115, double %116, double %117, double %118, double %119, double %120, double %121, double %122, double %123, double %124, double %125, double %126, double* nonnull %127, double* nonnull %128, double* nonnull %129)
  %130 = load double, double* %13, align 8, !tbaa !10
  %131 = load double, double* %17, align 8, !tbaa !10
  %132 = load double, double* %48, align 8, !tbaa !10
  %133 = load double, double* %7, align 8, !tbaa !10
  %134 = load double, double* %3, align 8, !tbaa !10
  %135 = load double, double* %9, align 8, !tbaa !10
  %136 = load double, double* %25, align 8, !tbaa !10
  %137 = load double, double* %29, align 8, !tbaa !10
  %138 = load double, double* %55, align 8, !tbaa !10
  %139 = load double, double* %19, align 8, !tbaa !10
  %140 = load double, double* %4, align 8, !tbaa !10
  %141 = load double, double* %21, align 8, !tbaa !10
  %142 = load double, double* %37, align 8, !tbaa !10
  %143 = load double, double* %41, align 8, !tbaa !10
  %144 = load double, double* %62, align 8, !tbaa !10
  %145 = load double, double* %31, align 8, !tbaa !10
  %146 = load double, double* %5, align 8, !tbaa !10
  %147 = load double, double* %33, align 8, !tbaa !10
  %148 = getelementptr inbounds double, double* %0, i64 5
  %149 = getelementptr inbounds double, double* %1, i64 5
  %150 = getelementptr inbounds double, double* %2, i64 5
  tail call void @_Z7VoluDerddddddddddddddddddPdS_S_(double %130, double %131, double %132, double %133, double %134, double %135, double %136, double %137, double %138, double %139, double %140, double %141, double %142, double %143, double %144, double %145, double %146, double %147, double* nonnull %148, double* nonnull %149, double* nonnull %150)
  %151 = load double, double* %15, align 8, !tbaa !10
  %152 = load double, double* %13, align 8, !tbaa !10
  %153 = load double, double* %17, align 8, !tbaa !10
  %154 = load double, double* %9, align 8, !tbaa !10
  %155 = load double, double* %7, align 8, !tbaa !10
  %156 = load double, double* %11, align 8, !tbaa !10
  %157 = load double, double* %27, align 8, !tbaa !10
  %158 = load double, double* %25, align 8, !tbaa !10
  %159 = load double, double* %29, align 8, !tbaa !10
  %160 = load double, double* %21, align 8, !tbaa !10
  %161 = load double, double* %19, align 8, !tbaa !10
  %162 = load double, double* %23, align 8, !tbaa !10
  %163 = load double, double* %39, align 8, !tbaa !10
  %164 = load double, double* %37, align 8, !tbaa !10
  %165 = load double, double* %41, align 8, !tbaa !10
  %166 = load double, double* %33, align 8, !tbaa !10
  %167 = load double, double* %31, align 8, !tbaa !10
  %168 = load double, double* %35, align 8, !tbaa !10
  %169 = getelementptr inbounds double, double* %0, i64 6
  %170 = getelementptr inbounds double, double* %1, i64 6
  %171 = getelementptr inbounds double, double* %2, i64 6
  tail call void @_Z7VoluDerddddddddddddddddddPdS_S_(double %151, double %152, double %153, double %154, double %155, double %156, double %157, double %158, double %159, double %160, double %161, double %162, double %163, double %164, double %165, double %166, double %167, double %168, double* nonnull %169, double* nonnull %170, double* nonnull %171)
  %172 = load double, double* %48, align 8, !tbaa !10
  %173 = load double, double* %15, align 8, !tbaa !10
  %174 = load double, double* %13, align 8, !tbaa !10
  %175 = load double, double* %11, align 8, !tbaa !10
  %176 = load double, double* %9, align 8, !tbaa !10
  %177 = load double, double* %3, align 8, !tbaa !10
  %178 = load double, double* %55, align 8, !tbaa !10
  %179 = load double, double* %27, align 8, !tbaa !10
  %180 = load double, double* %25, align 8, !tbaa !10
  %181 = load double, double* %23, align 8, !tbaa !10
  %182 = load double, double* %21, align 8, !tbaa !10
  %183 = load double, double* %4, align 8, !tbaa !10
  %184 = load double, double* %62, align 8, !tbaa !10
  %185 = load double, double* %39, align 8, !tbaa !10
  %186 = load double, double* %37, align 8, !tbaa !10
  %187 = load double, double* %35, align 8, !tbaa !10
  %188 = load double, double* %33, align 8, !tbaa !10
  %189 = load double, double* %5, align 8, !tbaa !10
  %190 = getelementptr inbounds double, double* %0, i64 7
  %191 = getelementptr inbounds double, double* %1, i64 7
  %192 = getelementptr inbounds double, double* %2, i64 7
  tail call void @_Z7VoluDerddddddddddddddddddPdS_S_(double %172, double %173, double %174, double %175, double %176, double %177, double %178, double %179, double %180, double %181, double %182, double %183, double %184, double %185, double %186, double %187, double %188, double %189, double* nonnull %190, double* nonnull %191, double* nonnull %192)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @_Z24CalcElemFBHourglassForcePdS_S_S_S_S_S_S_S_S_S_dS_S_S_(double* nocapture readonly %0, double* nocapture readonly %1, double* nocapture readonly %2, double* nocapture readonly %3, double* nocapture readonly %4, double* nocapture readonly %5, double* nocapture readonly %6, double* nocapture readonly %7, double* nocapture readonly %8, double* nocapture readonly %9, double* nocapture readonly %10, double %11, double* nocapture %12, double* nocapture %13, double* nocapture %14) local_unnamed_addr #5 {
  %16 = load double, double* %3, align 8, !tbaa !10
  %17 = load double, double* %0, align 8, !tbaa !10
  %18 = fmul double %16, %17
  %19 = load double, double* %4, align 8, !tbaa !10
  %20 = getelementptr inbounds double, double* %0, i64 1
  %21 = load double, double* %20, align 8, !tbaa !10
  %22 = fmul double %19, %21
  %23 = fadd double %18, %22
  %24 = load double, double* %5, align 8, !tbaa !10
  %25 = getelementptr inbounds double, double* %0, i64 2
  %26 = load double, double* %25, align 8, !tbaa !10
  %27 = fmul double %24, %26
  %28 = fadd double %23, %27
  %29 = load double, double* %6, align 8, !tbaa !10
  %30 = getelementptr inbounds double, double* %0, i64 3
  %31 = load double, double* %30, align 8, !tbaa !10
  %32 = fmul double %29, %31
  %33 = fadd double %28, %32
  %34 = load double, double* %7, align 8, !tbaa !10
  %35 = getelementptr inbounds double, double* %0, i64 4
  %36 = load double, double* %35, align 8, !tbaa !10
  %37 = fmul double %34, %36
  %38 = fadd double %33, %37
  %39 = load double, double* %8, align 8, !tbaa !10
  %40 = getelementptr inbounds double, double* %0, i64 5
  %41 = load double, double* %40, align 8, !tbaa !10
  %42 = fmul double %39, %41
  %43 = fadd double %38, %42
  %44 = load double, double* %9, align 8, !tbaa !10
  %45 = getelementptr inbounds double, double* %0, i64 6
  %46 = load double, double* %45, align 8, !tbaa !10
  %47 = fmul double %44, %46
  %48 = fadd double %43, %47
  %49 = load double, double* %10, align 8, !tbaa !10
  %50 = getelementptr inbounds double, double* %0, i64 7
  %51 = load double, double* %50, align 8, !tbaa !10
  %52 = fmul double %49, %51
  %53 = fadd double %48, %52
  %54 = getelementptr inbounds double, double* %3, i64 1
  %55 = load double, double* %54, align 8, !tbaa !10
  %56 = fmul double %17, %55
  %57 = getelementptr inbounds double, double* %4, i64 1
  %58 = load double, double* %57, align 8, !tbaa !10
  %59 = fmul double %21, %58
  %60 = fadd double %56, %59
  %61 = getelementptr inbounds double, double* %5, i64 1
  %62 = load double, double* %61, align 8, !tbaa !10
  %63 = fmul double %26, %62
  %64 = fadd double %60, %63
  %65 = getelementptr inbounds double, double* %6, i64 1
  %66 = load double, double* %65, align 8, !tbaa !10
  %67 = fmul double %31, %66
  %68 = fadd double %64, %67
  %69 = getelementptr inbounds double, double* %7, i64 1
  %70 = load double, double* %69, align 8, !tbaa !10
  %71 = fmul double %36, %70
  %72 = fadd double %68, %71
  %73 = getelementptr inbounds double, double* %8, i64 1
  %74 = load double, double* %73, align 8, !tbaa !10
  %75 = fmul double %41, %74
  %76 = fadd double %72, %75
  %77 = getelementptr inbounds double, double* %9, i64 1
  %78 = load double, double* %77, align 8, !tbaa !10
  %79 = fmul double %46, %78
  %80 = fadd double %76, %79
  %81 = getelementptr inbounds double, double* %10, i64 1
  %82 = load double, double* %81, align 8, !tbaa !10
  %83 = fmul double %51, %82
  %84 = fadd double %80, %83
  %85 = getelementptr inbounds double, double* %3, i64 2
  %86 = load double, double* %85, align 8, !tbaa !10
  %87 = fmul double %17, %86
  %88 = getelementptr inbounds double, double* %4, i64 2
  %89 = load double, double* %88, align 8, !tbaa !10
  %90 = fmul double %21, %89
  %91 = fadd double %87, %90
  %92 = getelementptr inbounds double, double* %5, i64 2
  %93 = load double, double* %92, align 8, !tbaa !10
  %94 = fmul double %26, %93
  %95 = fadd double %91, %94
  %96 = getelementptr inbounds double, double* %6, i64 2
  %97 = load double, double* %96, align 8, !tbaa !10
  %98 = fmul double %31, %97
  %99 = fadd double %95, %98
  %100 = getelementptr inbounds double, double* %7, i64 2
  %101 = load double, double* %100, align 8, !tbaa !10
  %102 = fmul double %36, %101
  %103 = fadd double %99, %102
  %104 = getelementptr inbounds double, double* %8, i64 2
  %105 = load double, double* %104, align 8, !tbaa !10
  %106 = fmul double %41, %105
  %107 = fadd double %103, %106
  %108 = getelementptr inbounds double, double* %9, i64 2
  %109 = load double, double* %108, align 8, !tbaa !10
  %110 = fmul double %46, %109
  %111 = fadd double %107, %110
  %112 = getelementptr inbounds double, double* %10, i64 2
  %113 = load double, double* %112, align 8, !tbaa !10
  %114 = fmul double %51, %113
  %115 = fadd double %111, %114
  %116 = getelementptr inbounds double, double* %3, i64 3
  %117 = load double, double* %116, align 8, !tbaa !10
  %118 = fmul double %17, %117
  %119 = getelementptr inbounds double, double* %4, i64 3
  %120 = load double, double* %119, align 8, !tbaa !10
  %121 = fmul double %21, %120
  %122 = fadd double %118, %121
  %123 = getelementptr inbounds double, double* %5, i64 3
  %124 = load double, double* %123, align 8, !tbaa !10
  %125 = fmul double %26, %124
  %126 = fadd double %122, %125
  %127 = getelementptr inbounds double, double* %6, i64 3
  %128 = load double, double* %127, align 8, !tbaa !10
  %129 = fmul double %31, %128
  %130 = fadd double %126, %129
  %131 = getelementptr inbounds double, double* %7, i64 3
  %132 = load double, double* %131, align 8, !tbaa !10
  %133 = fmul double %36, %132
  %134 = fadd double %130, %133
  %135 = getelementptr inbounds double, double* %8, i64 3
  %136 = load double, double* %135, align 8, !tbaa !10
  %137 = fmul double %41, %136
  %138 = fadd double %134, %137
  %139 = getelementptr inbounds double, double* %9, i64 3
  %140 = load double, double* %139, align 8, !tbaa !10
  %141 = fmul double %46, %140
  %142 = fadd double %138, %141
  %143 = getelementptr inbounds double, double* %10, i64 3
  %144 = load double, double* %143, align 8, !tbaa !10
  %145 = fmul double %51, %144
  %146 = fadd double %142, %145
  %147 = fmul double %16, %53
  %148 = fmul double %55, %84
  %149 = fadd double %147, %148
  %150 = fmul double %86, %115
  %151 = fadd double %149, %150
  %152 = fmul double %117, %146
  %153 = fadd double %151, %152
  %154 = fmul double %153, %11
  store double %154, double* %12, align 8, !tbaa !10
  %155 = load double, double* %4, align 8, !tbaa !10
  %156 = fmul double %53, %155
  %157 = load double, double* %57, align 8, !tbaa !10
  %158 = fmul double %84, %157
  %159 = fadd double %156, %158
  %160 = load double, double* %88, align 8, !tbaa !10
  %161 = fmul double %115, %160
  %162 = fadd double %159, %161
  %163 = load double, double* %119, align 8, !tbaa !10
  %164 = fmul double %146, %163
  %165 = fadd double %162, %164
  %166 = fmul double %165, %11
  %167 = getelementptr inbounds double, double* %12, i64 1
  store double %166, double* %167, align 8, !tbaa !10
  %168 = load double, double* %5, align 8, !tbaa !10
  %169 = fmul double %53, %168
  %170 = load double, double* %61, align 8, !tbaa !10
  %171 = fmul double %84, %170
  %172 = fadd double %169, %171
  %173 = load double, double* %92, align 8, !tbaa !10
  %174 = fmul double %115, %173
  %175 = fadd double %172, %174
  %176 = load double, double* %123, align 8, !tbaa !10
  %177 = fmul double %146, %176
  %178 = fadd double %175, %177
  %179 = fmul double %178, %11
  %180 = getelementptr inbounds double, double* %12, i64 2
  store double %179, double* %180, align 8, !tbaa !10
  %181 = load double, double* %6, align 8, !tbaa !10
  %182 = fmul double %53, %181
  %183 = load double, double* %65, align 8, !tbaa !10
  %184 = fmul double %84, %183
  %185 = fadd double %182, %184
  %186 = load double, double* %96, align 8, !tbaa !10
  %187 = fmul double %115, %186
  %188 = fadd double %185, %187
  %189 = load double, double* %127, align 8, !tbaa !10
  %190 = fmul double %146, %189
  %191 = fadd double %188, %190
  %192 = fmul double %191, %11
  %193 = getelementptr inbounds double, double* %12, i64 3
  store double %192, double* %193, align 8, !tbaa !10
  %194 = load double, double* %7, align 8, !tbaa !10
  %195 = fmul double %53, %194
  %196 = load double, double* %69, align 8, !tbaa !10
  %197 = fmul double %84, %196
  %198 = fadd double %195, %197
  %199 = load double, double* %100, align 8, !tbaa !10
  %200 = fmul double %115, %199
  %201 = fadd double %198, %200
  %202 = load double, double* %131, align 8, !tbaa !10
  %203 = fmul double %146, %202
  %204 = fadd double %201, %203
  %205 = fmul double %204, %11
  %206 = getelementptr inbounds double, double* %12, i64 4
  store double %205, double* %206, align 8, !tbaa !10
  %207 = load double, double* %8, align 8, !tbaa !10
  %208 = fmul double %53, %207
  %209 = load double, double* %73, align 8, !tbaa !10
  %210 = fmul double %84, %209
  %211 = fadd double %208, %210
  %212 = load double, double* %104, align 8, !tbaa !10
  %213 = fmul double %115, %212
  %214 = fadd double %211, %213
  %215 = load double, double* %135, align 8, !tbaa !10
  %216 = fmul double %146, %215
  %217 = fadd double %214, %216
  %218 = fmul double %217, %11
  %219 = getelementptr inbounds double, double* %12, i64 5
  store double %218, double* %219, align 8, !tbaa !10
  %220 = load double, double* %9, align 8, !tbaa !10
  %221 = fmul double %53, %220
  %222 = load double, double* %77, align 8, !tbaa !10
  %223 = fmul double %84, %222
  %224 = fadd double %221, %223
  %225 = load double, double* %108, align 8, !tbaa !10
  %226 = fmul double %115, %225
  %227 = fadd double %224, %226
  %228 = load double, double* %139, align 8, !tbaa !10
  %229 = fmul double %146, %228
  %230 = fadd double %227, %229
  %231 = fmul double %230, %11
  %232 = getelementptr inbounds double, double* %12, i64 6
  store double %231, double* %232, align 8, !tbaa !10
  %233 = load double, double* %10, align 8, !tbaa !10
  %234 = fmul double %53, %233
  %235 = load double, double* %81, align 8, !tbaa !10
  %236 = fmul double %84, %235
  %237 = fadd double %234, %236
  %238 = load double, double* %112, align 8, !tbaa !10
  %239 = fmul double %115, %238
  %240 = fadd double %237, %239
  %241 = load double, double* %143, align 8, !tbaa !10
  %242 = fmul double %146, %241
  %243 = fadd double %240, %242
  %244 = fmul double %243, %11
  %245 = getelementptr inbounds double, double* %12, i64 7
  store double %244, double* %245, align 8, !tbaa !10
  %246 = load double, double* %3, align 8, !tbaa !10
  %247 = load double, double* %1, align 8, !tbaa !10
  %248 = fmul double %246, %247
  %249 = load double, double* %4, align 8, !tbaa !10
  %250 = getelementptr inbounds double, double* %1, i64 1
  %251 = load double, double* %250, align 8, !tbaa !10
  %252 = fmul double %249, %251
  %253 = fadd double %248, %252
  %254 = load double, double* %5, align 8, !tbaa !10
  %255 = getelementptr inbounds double, double* %1, i64 2
  %256 = load double, double* %255, align 8, !tbaa !10
  %257 = fmul double %254, %256
  %258 = fadd double %253, %257
  %259 = load double, double* %6, align 8, !tbaa !10
  %260 = getelementptr inbounds double, double* %1, i64 3
  %261 = load double, double* %260, align 8, !tbaa !10
  %262 = fmul double %259, %261
  %263 = fadd double %258, %262
  %264 = load double, double* %7, align 8, !tbaa !10
  %265 = getelementptr inbounds double, double* %1, i64 4
  %266 = load double, double* %265, align 8, !tbaa !10
  %267 = fmul double %264, %266
  %268 = fadd double %263, %267
  %269 = load double, double* %8, align 8, !tbaa !10
  %270 = getelementptr inbounds double, double* %1, i64 5
  %271 = load double, double* %270, align 8, !tbaa !10
  %272 = fmul double %269, %271
  %273 = fadd double %268, %272
  %274 = load double, double* %9, align 8, !tbaa !10
  %275 = getelementptr inbounds double, double* %1, i64 6
  %276 = load double, double* %275, align 8, !tbaa !10
  %277 = fmul double %274, %276
  %278 = fadd double %273, %277
  %279 = load double, double* %10, align 8, !tbaa !10
  %280 = getelementptr inbounds double, double* %1, i64 7
  %281 = load double, double* %280, align 8, !tbaa !10
  %282 = fmul double %279, %281
  %283 = fadd double %278, %282
  %284 = load double, double* %54, align 8, !tbaa !10
  %285 = fmul double %247, %284
  %286 = load double, double* %57, align 8, !tbaa !10
  %287 = fmul double %251, %286
  %288 = fadd double %285, %287
  %289 = load double, double* %61, align 8, !tbaa !10
  %290 = fmul double %256, %289
  %291 = fadd double %288, %290
  %292 = load double, double* %65, align 8, !tbaa !10
  %293 = fmul double %261, %292
  %294 = fadd double %291, %293
  %295 = load double, double* %69, align 8, !tbaa !10
  %296 = fmul double %266, %295
  %297 = fadd double %294, %296
  %298 = load double, double* %73, align 8, !tbaa !10
  %299 = fmul double %271, %298
  %300 = fadd double %297, %299
  %301 = load double, double* %77, align 8, !tbaa !10
  %302 = fmul double %276, %301
  %303 = fadd double %300, %302
  %304 = load double, double* %81, align 8, !tbaa !10
  %305 = fmul double %281, %304
  %306 = fadd double %303, %305
  %307 = load double, double* %85, align 8, !tbaa !10
  %308 = fmul double %247, %307
  %309 = load double, double* %88, align 8, !tbaa !10
  %310 = fmul double %251, %309
  %311 = fadd double %308, %310
  %312 = load double, double* %92, align 8, !tbaa !10
  %313 = fmul double %256, %312
  %314 = fadd double %311, %313
  %315 = load double, double* %96, align 8, !tbaa !10
  %316 = fmul double %261, %315
  %317 = fadd double %314, %316
  %318 = load double, double* %100, align 8, !tbaa !10
  %319 = fmul double %266, %318
  %320 = fadd double %317, %319
  %321 = load double, double* %104, align 8, !tbaa !10
  %322 = fmul double %271, %321
  %323 = fadd double %320, %322
  %324 = load double, double* %108, align 8, !tbaa !10
  %325 = fmul double %276, %324
  %326 = fadd double %323, %325
  %327 = load double, double* %112, align 8, !tbaa !10
  %328 = fmul double %281, %327
  %329 = fadd double %326, %328
  %330 = load double, double* %116, align 8, !tbaa !10
  %331 = fmul double %247, %330
  %332 = load double, double* %119, align 8, !tbaa !10
  %333 = fmul double %251, %332
  %334 = fadd double %331, %333
  %335 = load double, double* %123, align 8, !tbaa !10
  %336 = fmul double %256, %335
  %337 = fadd double %334, %336
  %338 = load double, double* %127, align 8, !tbaa !10
  %339 = fmul double %261, %338
  %340 = fadd double %337, %339
  %341 = load double, double* %131, align 8, !tbaa !10
  %342 = fmul double %266, %341
  %343 = fadd double %340, %342
  %344 = load double, double* %135, align 8, !tbaa !10
  %345 = fmul double %271, %344
  %346 = fadd double %343, %345
  %347 = load double, double* %139, align 8, !tbaa !10
  %348 = fmul double %276, %347
  %349 = fadd double %346, %348
  %350 = load double, double* %143, align 8, !tbaa !10
  %351 = fmul double %281, %350
  %352 = fadd double %349, %351
  %353 = fmul double %246, %283
  %354 = fmul double %284, %306
  %355 = fadd double %353, %354
  %356 = fmul double %307, %329
  %357 = fadd double %355, %356
  %358 = fmul double %330, %352
  %359 = fadd double %357, %358
  %360 = fmul double %359, %11
  store double %360, double* %13, align 8, !tbaa !10
  %361 = load double, double* %4, align 8, !tbaa !10
  %362 = fmul double %283, %361
  %363 = load double, double* %57, align 8, !tbaa !10
  %364 = fmul double %306, %363
  %365 = fadd double %362, %364
  %366 = load double, double* %88, align 8, !tbaa !10
  %367 = fmul double %329, %366
  %368 = fadd double %365, %367
  %369 = load double, double* %119, align 8, !tbaa !10
  %370 = fmul double %352, %369
  %371 = fadd double %368, %370
  %372 = fmul double %371, %11
  %373 = getelementptr inbounds double, double* %13, i64 1
  store double %372, double* %373, align 8, !tbaa !10
  %374 = load double, double* %5, align 8, !tbaa !10
  %375 = fmul double %283, %374
  %376 = load double, double* %61, align 8, !tbaa !10
  %377 = fmul double %306, %376
  %378 = fadd double %375, %377
  %379 = load double, double* %92, align 8, !tbaa !10
  %380 = fmul double %329, %379
  %381 = fadd double %378, %380
  %382 = load double, double* %123, align 8, !tbaa !10
  %383 = fmul double %352, %382
  %384 = fadd double %381, %383
  %385 = fmul double %384, %11
  %386 = getelementptr inbounds double, double* %13, i64 2
  store double %385, double* %386, align 8, !tbaa !10
  %387 = load double, double* %6, align 8, !tbaa !10
  %388 = fmul double %283, %387
  %389 = load double, double* %65, align 8, !tbaa !10
  %390 = fmul double %306, %389
  %391 = fadd double %388, %390
  %392 = load double, double* %96, align 8, !tbaa !10
  %393 = fmul double %329, %392
  %394 = fadd double %391, %393
  %395 = load double, double* %127, align 8, !tbaa !10
  %396 = fmul double %352, %395
  %397 = fadd double %394, %396
  %398 = fmul double %397, %11
  %399 = getelementptr inbounds double, double* %13, i64 3
  store double %398, double* %399, align 8, !tbaa !10
  %400 = load double, double* %7, align 8, !tbaa !10
  %401 = fmul double %283, %400
  %402 = load double, double* %69, align 8, !tbaa !10
  %403 = fmul double %306, %402
  %404 = fadd double %401, %403
  %405 = load double, double* %100, align 8, !tbaa !10
  %406 = fmul double %329, %405
  %407 = fadd double %404, %406
  %408 = load double, double* %131, align 8, !tbaa !10
  %409 = fmul double %352, %408
  %410 = fadd double %407, %409
  %411 = fmul double %410, %11
  %412 = getelementptr inbounds double, double* %13, i64 4
  store double %411, double* %412, align 8, !tbaa !10
  %413 = load double, double* %8, align 8, !tbaa !10
  %414 = fmul double %283, %413
  %415 = load double, double* %73, align 8, !tbaa !10
  %416 = fmul double %306, %415
  %417 = fadd double %414, %416
  %418 = load double, double* %104, align 8, !tbaa !10
  %419 = fmul double %329, %418
  %420 = fadd double %417, %419
  %421 = load double, double* %135, align 8, !tbaa !10
  %422 = fmul double %352, %421
  %423 = fadd double %420, %422
  %424 = fmul double %423, %11
  %425 = getelementptr inbounds double, double* %13, i64 5
  store double %424, double* %425, align 8, !tbaa !10
  %426 = load double, double* %9, align 8, !tbaa !10
  %427 = fmul double %283, %426
  %428 = load double, double* %77, align 8, !tbaa !10
  %429 = fmul double %306, %428
  %430 = fadd double %427, %429
  %431 = load double, double* %108, align 8, !tbaa !10
  %432 = fmul double %329, %431
  %433 = fadd double %430, %432
  %434 = load double, double* %139, align 8, !tbaa !10
  %435 = fmul double %352, %434
  %436 = fadd double %433, %435
  %437 = fmul double %436, %11
  %438 = getelementptr inbounds double, double* %13, i64 6
  store double %437, double* %438, align 8, !tbaa !10
  %439 = load double, double* %10, align 8, !tbaa !10
  %440 = fmul double %283, %439
  %441 = load double, double* %81, align 8, !tbaa !10
  %442 = fmul double %306, %441
  %443 = fadd double %440, %442
  %444 = load double, double* %112, align 8, !tbaa !10
  %445 = fmul double %329, %444
  %446 = fadd double %443, %445
  %447 = load double, double* %143, align 8, !tbaa !10
  %448 = fmul double %352, %447
  %449 = fadd double %446, %448
  %450 = fmul double %449, %11
  %451 = getelementptr inbounds double, double* %13, i64 7
  store double %450, double* %451, align 8, !tbaa !10
  %452 = load double, double* %3, align 8, !tbaa !10
  %453 = load double, double* %2, align 8, !tbaa !10
  %454 = fmul double %452, %453
  %455 = load double, double* %4, align 8, !tbaa !10
  %456 = getelementptr inbounds double, double* %2, i64 1
  %457 = load double, double* %456, align 8, !tbaa !10
  %458 = fmul double %455, %457
  %459 = fadd double %454, %458
  %460 = load double, double* %5, align 8, !tbaa !10
  %461 = getelementptr inbounds double, double* %2, i64 2
  %462 = load double, double* %461, align 8, !tbaa !10
  %463 = fmul double %460, %462
  %464 = fadd double %459, %463
  %465 = load double, double* %6, align 8, !tbaa !10
  %466 = getelementptr inbounds double, double* %2, i64 3
  %467 = load double, double* %466, align 8, !tbaa !10
  %468 = fmul double %465, %467
  %469 = fadd double %464, %468
  %470 = load double, double* %7, align 8, !tbaa !10
  %471 = getelementptr inbounds double, double* %2, i64 4
  %472 = load double, double* %471, align 8, !tbaa !10
  %473 = fmul double %470, %472
  %474 = fadd double %469, %473
  %475 = load double, double* %8, align 8, !tbaa !10
  %476 = getelementptr inbounds double, double* %2, i64 5
  %477 = load double, double* %476, align 8, !tbaa !10
  %478 = fmul double %475, %477
  %479 = fadd double %474, %478
  %480 = load double, double* %9, align 8, !tbaa !10
  %481 = getelementptr inbounds double, double* %2, i64 6
  %482 = load double, double* %481, align 8, !tbaa !10
  %483 = fmul double %480, %482
  %484 = fadd double %479, %483
  %485 = load double, double* %10, align 8, !tbaa !10
  %486 = getelementptr inbounds double, double* %2, i64 7
  %487 = load double, double* %486, align 8, !tbaa !10
  %488 = fmul double %485, %487
  %489 = fadd double %484, %488
  %490 = load double, double* %54, align 8, !tbaa !10
  %491 = fmul double %453, %490
  %492 = load double, double* %57, align 8, !tbaa !10
  %493 = fmul double %457, %492
  %494 = fadd double %491, %493
  %495 = load double, double* %61, align 8, !tbaa !10
  %496 = fmul double %462, %495
  %497 = fadd double %494, %496
  %498 = load double, double* %65, align 8, !tbaa !10
  %499 = fmul double %467, %498
  %500 = fadd double %497, %499
  %501 = load double, double* %69, align 8, !tbaa !10
  %502 = fmul double %472, %501
  %503 = fadd double %500, %502
  %504 = load double, double* %73, align 8, !tbaa !10
  %505 = fmul double %477, %504
  %506 = fadd double %503, %505
  %507 = load double, double* %77, align 8, !tbaa !10
  %508 = fmul double %482, %507
  %509 = fadd double %506, %508
  %510 = load double, double* %81, align 8, !tbaa !10
  %511 = fmul double %487, %510
  %512 = fadd double %509, %511
  %513 = load double, double* %85, align 8, !tbaa !10
  %514 = fmul double %453, %513
  %515 = load double, double* %88, align 8, !tbaa !10
  %516 = fmul double %457, %515
  %517 = fadd double %514, %516
  %518 = load double, double* %92, align 8, !tbaa !10
  %519 = fmul double %462, %518
  %520 = fadd double %517, %519
  %521 = load double, double* %96, align 8, !tbaa !10
  %522 = fmul double %467, %521
  %523 = fadd double %520, %522
  %524 = load double, double* %100, align 8, !tbaa !10
  %525 = fmul double %472, %524
  %526 = fadd double %523, %525
  %527 = load double, double* %104, align 8, !tbaa !10
  %528 = fmul double %477, %527
  %529 = fadd double %526, %528
  %530 = load double, double* %108, align 8, !tbaa !10
  %531 = fmul double %482, %530
  %532 = fadd double %529, %531
  %533 = load double, double* %112, align 8, !tbaa !10
  %534 = fmul double %487, %533
  %535 = fadd double %532, %534
  %536 = load double, double* %116, align 8, !tbaa !10
  %537 = fmul double %453, %536
  %538 = load double, double* %119, align 8, !tbaa !10
  %539 = fmul double %457, %538
  %540 = fadd double %537, %539
  %541 = load double, double* %123, align 8, !tbaa !10
  %542 = fmul double %462, %541
  %543 = fadd double %540, %542
  %544 = load double, double* %127, align 8, !tbaa !10
  %545 = fmul double %467, %544
  %546 = fadd double %543, %545
  %547 = load double, double* %131, align 8, !tbaa !10
  %548 = fmul double %472, %547
  %549 = fadd double %546, %548
  %550 = load double, double* %135, align 8, !tbaa !10
  %551 = fmul double %477, %550
  %552 = fadd double %549, %551
  %553 = load double, double* %139, align 8, !tbaa !10
  %554 = fmul double %482, %553
  %555 = fadd double %552, %554
  %556 = load double, double* %143, align 8, !tbaa !10
  %557 = fmul double %487, %556
  %558 = fadd double %555, %557
  %559 = fmul double %452, %489
  %560 = fmul double %490, %512
  %561 = fadd double %559, %560
  %562 = fmul double %513, %535
  %563 = fadd double %561, %562
  %564 = fmul double %536, %558
  %565 = fadd double %563, %564
  %566 = fmul double %565, %11
  store double %566, double* %14, align 8, !tbaa !10
  %567 = load double, double* %4, align 8, !tbaa !10
  %568 = fmul double %489, %567
  %569 = load double, double* %57, align 8, !tbaa !10
  %570 = fmul double %512, %569
  %571 = fadd double %568, %570
  %572 = load double, double* %88, align 8, !tbaa !10
  %573 = fmul double %535, %572
  %574 = fadd double %571, %573
  %575 = load double, double* %119, align 8, !tbaa !10
  %576 = fmul double %558, %575
  %577 = fadd double %574, %576
  %578 = fmul double %577, %11
  %579 = getelementptr inbounds double, double* %14, i64 1
  store double %578, double* %579, align 8, !tbaa !10
  %580 = load double, double* %5, align 8, !tbaa !10
  %581 = fmul double %489, %580
  %582 = load double, double* %61, align 8, !tbaa !10
  %583 = fmul double %512, %582
  %584 = fadd double %581, %583
  %585 = load double, double* %92, align 8, !tbaa !10
  %586 = fmul double %535, %585
  %587 = fadd double %584, %586
  %588 = load double, double* %123, align 8, !tbaa !10
  %589 = fmul double %558, %588
  %590 = fadd double %587, %589
  %591 = fmul double %590, %11
  %592 = getelementptr inbounds double, double* %14, i64 2
  store double %591, double* %592, align 8, !tbaa !10
  %593 = load double, double* %6, align 8, !tbaa !10
  %594 = fmul double %489, %593
  %595 = load double, double* %65, align 8, !tbaa !10
  %596 = fmul double %512, %595
  %597 = fadd double %594, %596
  %598 = load double, double* %96, align 8, !tbaa !10
  %599 = fmul double %535, %598
  %600 = fadd double %597, %599
  %601 = load double, double* %127, align 8, !tbaa !10
  %602 = fmul double %558, %601
  %603 = fadd double %600, %602
  %604 = fmul double %603, %11
  %605 = getelementptr inbounds double, double* %14, i64 3
  store double %604, double* %605, align 8, !tbaa !10
  %606 = load double, double* %7, align 8, !tbaa !10
  %607 = fmul double %489, %606
  %608 = load double, double* %69, align 8, !tbaa !10
  %609 = fmul double %512, %608
  %610 = fadd double %607, %609
  %611 = load double, double* %100, align 8, !tbaa !10
  %612 = fmul double %535, %611
  %613 = fadd double %610, %612
  %614 = load double, double* %131, align 8, !tbaa !10
  %615 = fmul double %558, %614
  %616 = fadd double %613, %615
  %617 = fmul double %616, %11
  %618 = getelementptr inbounds double, double* %14, i64 4
  store double %617, double* %618, align 8, !tbaa !10
  %619 = load double, double* %8, align 8, !tbaa !10
  %620 = fmul double %489, %619
  %621 = load double, double* %73, align 8, !tbaa !10
  %622 = fmul double %512, %621
  %623 = fadd double %620, %622
  %624 = load double, double* %104, align 8, !tbaa !10
  %625 = fmul double %535, %624
  %626 = fadd double %623, %625
  %627 = load double, double* %135, align 8, !tbaa !10
  %628 = fmul double %558, %627
  %629 = fadd double %626, %628
  %630 = fmul double %629, %11
  %631 = getelementptr inbounds double, double* %14, i64 5
  store double %630, double* %631, align 8, !tbaa !10
  %632 = load double, double* %9, align 8, !tbaa !10
  %633 = fmul double %489, %632
  %634 = load double, double* %77, align 8, !tbaa !10
  %635 = fmul double %512, %634
  %636 = fadd double %633, %635
  %637 = load double, double* %108, align 8, !tbaa !10
  %638 = fmul double %535, %637
  %639 = fadd double %636, %638
  %640 = load double, double* %139, align 8, !tbaa !10
  %641 = fmul double %558, %640
  %642 = fadd double %639, %641
  %643 = fmul double %642, %11
  %644 = getelementptr inbounds double, double* %14, i64 6
  store double %643, double* %644, align 8, !tbaa !10
  %645 = load double, double* %10, align 8, !tbaa !10
  %646 = fmul double %489, %645
  %647 = load double, double* %81, align 8, !tbaa !10
  %648 = fmul double %512, %647
  %649 = fadd double %646, %648
  %650 = load double, double* %112, align 8, !tbaa !10
  %651 = fmul double %535, %650
  %652 = fadd double %649, %651
  %653 = load double, double* %143, align 8, !tbaa !10
  %654 = fmul double %558, %653
  %655 = fadd double %652, %654
  %656 = fmul double %655, %11
  %657 = getelementptr inbounds double, double* %14, i64 7
  store double %656, double* %657, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable
define dso_local void @_Z28CalcFBHourglassForceForElemsPdS_S_S_S_S_S_d(double* nocapture readonly %0, double* nocapture readonly %1, double* nocapture readonly %2, double* nocapture readonly %3, double* nocapture readonly %4, double* nocapture readonly %5, double* nocapture readonly %6, double %7) local_unnamed_addr #7 {
  %9 = alloca [8 x double], align 16
  %10 = alloca [8 x double], align 16
  %11 = alloca [8 x double], align 16
  %12 = alloca [4 x [8 x double]], align 16
  %13 = alloca [4 x double], align 16
  %14 = alloca [4 x double], align 16
  %15 = alloca [4 x double], align 16
  %16 = alloca [4 x double], align 16
  %17 = alloca [4 x double], align 16
  %18 = alloca [4 x double], align 16
  %19 = alloca [4 x double], align 16
  %20 = alloca [4 x double], align 16
  %21 = alloca [8 x double], align 16
  %22 = alloca [8 x double], align 16
  %23 = alloca [8 x double], align 16
  %24 = load i32, i32* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 79), align 8, !tbaa !12
  %25 = bitcast [8 x double]* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %25) #2
  %26 = bitcast [8 x double]* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %26) #2
  %27 = bitcast [8 x double]* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %27) #2
  %28 = bitcast [4 x [8 x double]]* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %28) #2
  %29 = bitcast [4 x double]* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %29) #2
  %30 = bitcast [4 x double]* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %30) #2
  %31 = bitcast [4 x double]* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %31) #2
  %32 = bitcast [4 x double]* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %32) #2
  %33 = bitcast [4 x double]* %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %33) #2
  %34 = bitcast [4 x double]* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %34) #2
  %35 = bitcast [4 x double]* %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %35) #2
  %36 = bitcast [4 x double]* %20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %36) #2
  %37 = bitcast [8 x double]* %21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %37) #2
  %38 = bitcast [8 x double]* %22 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %38) #2
  %39 = bitcast [8 x double]* %23 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %39) #2
  %40 = bitcast [4 x [8 x double]]* %12 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %40, align 16, !tbaa !10
  %41 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %12, i64 0, i64 0, i64 2
  %42 = bitcast double* %41 to <2 x double>*
  store <2 x double> <double -1.000000e+00, double -1.000000e+00>, <2 x double>* %42, align 16, !tbaa !10
  %43 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %12, i64 0, i64 0, i64 4
  %44 = bitcast double* %43 to <2 x double>*
  store <2 x double> <double -1.000000e+00, double -1.000000e+00>, <2 x double>* %44, align 16, !tbaa !10
  %45 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %12, i64 0, i64 0, i64 6
  %46 = bitcast double* %45 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %46, align 16, !tbaa !10
  %47 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %12, i64 0, i64 1, i64 0
  %48 = bitcast double* %47 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double -1.000000e+00>, <2 x double>* %48, align 16, !tbaa !10
  %49 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %12, i64 0, i64 1, i64 2
  %50 = bitcast double* %49 to <2 x double>*
  store <2 x double> <double -1.000000e+00, double 1.000000e+00>, <2 x double>* %50, align 16, !tbaa !10
  %51 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %12, i64 0, i64 1, i64 4
  %52 = bitcast double* %51 to <2 x double>*
  store <2 x double> <double -1.000000e+00, double 1.000000e+00>, <2 x double>* %52, align 16, !tbaa !10
  %53 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %12, i64 0, i64 1, i64 6
  %54 = bitcast double* %53 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double -1.000000e+00>, <2 x double>* %54, align 16, !tbaa !10
  %55 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %12, i64 0, i64 2, i64 0
  %56 = bitcast double* %55 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double -1.000000e+00>, <2 x double>* %56, align 16, !tbaa !10
  %57 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %12, i64 0, i64 2, i64 2
  %58 = bitcast double* %57 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double -1.000000e+00>, <2 x double>* %58, align 16, !tbaa !10
  %59 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %12, i64 0, i64 2, i64 4
  %60 = bitcast double* %59 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double -1.000000e+00>, <2 x double>* %60, align 16, !tbaa !10
  %61 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %12, i64 0, i64 2, i64 6
  %62 = bitcast double* %61 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double -1.000000e+00>, <2 x double>* %62, align 16, !tbaa !10
  %63 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %12, i64 0, i64 3, i64 0
  %64 = bitcast double* %63 to <2 x double>*
  store <2 x double> <double -1.000000e+00, double 1.000000e+00>, <2 x double>* %64, align 16, !tbaa !10
  %65 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %12, i64 0, i64 3, i64 2
  %66 = bitcast double* %65 to <2 x double>*
  store <2 x double> <double -1.000000e+00, double 1.000000e+00>, <2 x double>* %66, align 16, !tbaa !10
  %67 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %12, i64 0, i64 3, i64 4
  %68 = bitcast double* %67 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double -1.000000e+00>, <2 x double>* %68, align 16, !tbaa !10
  %69 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %12, i64 0, i64 3, i64 6
  %70 = bitcast double* %69 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double -1.000000e+00>, <2 x double>* %70, align 16, !tbaa !10
  %71 = getelementptr inbounds [8 x double], [8 x double]* %21, i64 0, i64 0
  %72 = getelementptr inbounds [8 x double], [8 x double]* %21, i64 0, i64 1
  %73 = getelementptr inbounds [8 x double], [8 x double]* %21, i64 0, i64 2
  %74 = getelementptr inbounds [8 x double], [8 x double]* %21, i64 0, i64 3
  %75 = getelementptr inbounds [8 x double], [8 x double]* %21, i64 0, i64 4
  %76 = getelementptr inbounds [8 x double], [8 x double]* %21, i64 0, i64 5
  %77 = getelementptr inbounds [8 x double], [8 x double]* %21, i64 0, i64 6
  %78 = getelementptr inbounds [8 x double], [8 x double]* %21, i64 0, i64 7
  %79 = getelementptr inbounds [8 x double], [8 x double]* %22, i64 0, i64 0
  %80 = getelementptr inbounds [8 x double], [8 x double]* %22, i64 0, i64 1
  %81 = getelementptr inbounds [8 x double], [8 x double]* %22, i64 0, i64 2
  %82 = getelementptr inbounds [8 x double], [8 x double]* %22, i64 0, i64 3
  %83 = getelementptr inbounds [8 x double], [8 x double]* %22, i64 0, i64 4
  %84 = getelementptr inbounds [8 x double], [8 x double]* %22, i64 0, i64 5
  %85 = getelementptr inbounds [8 x double], [8 x double]* %22, i64 0, i64 6
  %86 = getelementptr inbounds [8 x double], [8 x double]* %22, i64 0, i64 7
  %87 = getelementptr inbounds [8 x double], [8 x double]* %23, i64 0, i64 0
  %88 = getelementptr inbounds [8 x double], [8 x double]* %23, i64 0, i64 1
  %89 = getelementptr inbounds [8 x double], [8 x double]* %23, i64 0, i64 2
  %90 = getelementptr inbounds [8 x double], [8 x double]* %23, i64 0, i64 3
  %91 = getelementptr inbounds [8 x double], [8 x double]* %23, i64 0, i64 4
  %92 = getelementptr inbounds [8 x double], [8 x double]* %23, i64 0, i64 5
  %93 = getelementptr inbounds [8 x double], [8 x double]* %23, i64 0, i64 6
  %94 = getelementptr inbounds [8 x double], [8 x double]* %23, i64 0, i64 7
  %95 = fmul double %7, -1.000000e-02
  %96 = getelementptr inbounds [4 x double], [4 x double]* %13, i64 0, i64 0
  %97 = getelementptr inbounds [4 x double], [4 x double]* %14, i64 0, i64 0
  %98 = getelementptr inbounds [4 x double], [4 x double]* %15, i64 0, i64 0
  %99 = getelementptr inbounds [4 x double], [4 x double]* %16, i64 0, i64 0
  %100 = getelementptr inbounds [4 x double], [4 x double]* %17, i64 0, i64 0
  %101 = getelementptr inbounds [4 x double], [4 x double]* %18, i64 0, i64 0
  %102 = getelementptr inbounds [4 x double], [4 x double]* %19, i64 0, i64 0
  %103 = getelementptr inbounds [4 x double], [4 x double]* %20, i64 0, i64 0
  %104 = getelementptr inbounds [8 x double], [8 x double]* %9, i64 0, i64 0
  %105 = getelementptr inbounds [8 x double], [8 x double]* %10, i64 0, i64 0
  %106 = getelementptr inbounds [8 x double], [8 x double]* %11, i64 0, i64 0
  %107 = getelementptr inbounds [8 x double], [8 x double]* %9, i64 0, i64 1
  %108 = getelementptr inbounds [8 x double], [8 x double]* %10, i64 0, i64 1
  %109 = getelementptr inbounds [8 x double], [8 x double]* %11, i64 0, i64 1
  %110 = getelementptr inbounds [8 x double], [8 x double]* %9, i64 0, i64 2
  %111 = getelementptr inbounds [8 x double], [8 x double]* %10, i64 0, i64 2
  %112 = getelementptr inbounds [8 x double], [8 x double]* %11, i64 0, i64 2
  %113 = getelementptr inbounds [8 x double], [8 x double]* %9, i64 0, i64 3
  %114 = getelementptr inbounds [8 x double], [8 x double]* %10, i64 0, i64 3
  %115 = getelementptr inbounds [8 x double], [8 x double]* %11, i64 0, i64 3
  %116 = getelementptr inbounds [8 x double], [8 x double]* %9, i64 0, i64 4
  %117 = getelementptr inbounds [8 x double], [8 x double]* %10, i64 0, i64 4
  %118 = getelementptr inbounds [8 x double], [8 x double]* %11, i64 0, i64 4
  %119 = getelementptr inbounds [8 x double], [8 x double]* %9, i64 0, i64 5
  %120 = getelementptr inbounds [8 x double], [8 x double]* %10, i64 0, i64 5
  %121 = getelementptr inbounds [8 x double], [8 x double]* %11, i64 0, i64 5
  %122 = getelementptr inbounds [8 x double], [8 x double]* %9, i64 0, i64 6
  %123 = getelementptr inbounds [8 x double], [8 x double]* %10, i64 0, i64 6
  %124 = getelementptr inbounds [8 x double], [8 x double]* %11, i64 0, i64 6
  %125 = getelementptr inbounds [8 x double], [8 x double]* %9, i64 0, i64 7
  %126 = getelementptr inbounds [8 x double], [8 x double]* %10, i64 0, i64 7
  %127 = getelementptr inbounds [8 x double], [8 x double]* %11, i64 0, i64 7
  %128 = icmp sgt i32 %24, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %8
  %130 = zext i32 %24 to i64
  br label %132

131:                                              ; preds = %472, %8
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %39) #2
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %38) #2
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %37) #2
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %36) #2
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %35) #2
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %34) #2
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %33) #2
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %32) #2
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %31) #2
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %30) #2
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %29) #2
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %28) #2
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %27) #2
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %26) #2
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %25) #2
  ret void

132:                                              ; preds = %472, %129
  %133 = phi i64 [ 0, %129 ], [ %657, %472 ]
  %134 = shl nsw i64 %133, 3
  %135 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 17, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !8
  %136 = getelementptr inbounds double, double* %0, i64 %133
  %137 = load double, double* %136, align 8, !tbaa !10
  %138 = or i64 %134, 1
  %139 = or i64 %134, 2
  %140 = or i64 %134, 3
  %141 = or i64 %134, 4
  %142 = or i64 %134, 5
  %143 = or i64 %134, 6
  %144 = or i64 %134, 7
  %145 = getelementptr inbounds double, double* %6, i64 %144
  %146 = load double, double* %145, align 8, !tbaa !10
  %147 = getelementptr inbounds double, double* %5, i64 %144
  %148 = load double, double* %147, align 8, !tbaa !10
  %149 = getelementptr inbounds double, double* %4, i64 %144
  %150 = load double, double* %149, align 8, !tbaa !10
  %151 = getelementptr inbounds double, double* %6, i64 %143
  %152 = load double, double* %151, align 8, !tbaa !10
  %153 = getelementptr inbounds double, double* %5, i64 %143
  %154 = load double, double* %153, align 8, !tbaa !10
  %155 = getelementptr inbounds double, double* %4, i64 %143
  %156 = load double, double* %155, align 8, !tbaa !10
  %157 = getelementptr inbounds double, double* %6, i64 %142
  %158 = load double, double* %157, align 8, !tbaa !10
  %159 = getelementptr inbounds double, double* %5, i64 %142
  %160 = load double, double* %159, align 8, !tbaa !10
  %161 = getelementptr inbounds double, double* %4, i64 %142
  %162 = load double, double* %161, align 8, !tbaa !10
  %163 = getelementptr inbounds double, double* %6, i64 %141
  %164 = load double, double* %163, align 8, !tbaa !10
  %165 = getelementptr inbounds double, double* %5, i64 %141
  %166 = load double, double* %165, align 8, !tbaa !10
  %167 = getelementptr inbounds double, double* %4, i64 %141
  %168 = load double, double* %167, align 8, !tbaa !10
  %169 = getelementptr inbounds double, double* %6, i64 %140
  %170 = load double, double* %169, align 8, !tbaa !10
  %171 = getelementptr inbounds double, double* %5, i64 %140
  %172 = load double, double* %171, align 8, !tbaa !10
  %173 = getelementptr inbounds double, double* %4, i64 %140
  %174 = load double, double* %173, align 8, !tbaa !10
  %175 = getelementptr inbounds double, double* %6, i64 %139
  %176 = load double, double* %175, align 8, !tbaa !10
  %177 = getelementptr inbounds double, double* %5, i64 %139
  %178 = load double, double* %177, align 8, !tbaa !10
  %179 = getelementptr inbounds double, double* %4, i64 %139
  %180 = load double, double* %179, align 8, !tbaa !10
  %181 = getelementptr inbounds double, double* %6, i64 %138
  %182 = load double, double* %181, align 8, !tbaa !10
  %183 = getelementptr inbounds double, double* %5, i64 %138
  %184 = load double, double* %183, align 8, !tbaa !10
  %185 = getelementptr inbounds double, double* %4, i64 %138
  %186 = load double, double* %185, align 8, !tbaa !10
  %187 = getelementptr inbounds double, double* %6, i64 %134
  %188 = load double, double* %187, align 8, !tbaa !10
  %189 = getelementptr inbounds double, double* %5, i64 %134
  %190 = load double, double* %189, align 8, !tbaa !10
  %191 = getelementptr inbounds double, double* %4, i64 %134
  %192 = load double, double* %191, align 8, !tbaa !10
  %193 = getelementptr inbounds double, double* %3, i64 %144
  %194 = load double, double* %193, align 8, !tbaa !10
  %195 = getelementptr inbounds double, double* %3, i64 %143
  %196 = load double, double* %195, align 8, !tbaa !10
  %197 = getelementptr inbounds double, double* %3, i64 %142
  %198 = load double, double* %197, align 8, !tbaa !10
  %199 = getelementptr inbounds double, double* %3, i64 %141
  %200 = load double, double* %199, align 8, !tbaa !10
  %201 = getelementptr inbounds double, double* %3, i64 %140
  %202 = load double, double* %201, align 8, !tbaa !10
  %203 = getelementptr inbounds double, double* %3, i64 %139
  %204 = load double, double* %203, align 8, !tbaa !10
  %205 = getelementptr inbounds double, double* %3, i64 %138
  %206 = load double, double* %205, align 8, !tbaa !10
  %207 = getelementptr inbounds double, double* %3, i64 %134
  %208 = load double, double* %207, align 8, !tbaa !10
  %209 = getelementptr inbounds double, double* %2, i64 %144
  %210 = load double, double* %209, align 8, !tbaa !10
  %211 = getelementptr inbounds double, double* %2, i64 %143
  %212 = load double, double* %211, align 8, !tbaa !10
  %213 = getelementptr inbounds double, double* %2, i64 %142
  %214 = load double, double* %213, align 8, !tbaa !10
  %215 = getelementptr inbounds double, double* %2, i64 %141
  %216 = load double, double* %215, align 8, !tbaa !10
  %217 = getelementptr inbounds double, double* %2, i64 %140
  %218 = load double, double* %217, align 8, !tbaa !10
  %219 = getelementptr inbounds double, double* %2, i64 %139
  %220 = load double, double* %219, align 8, !tbaa !10
  %221 = getelementptr inbounds double, double* %2, i64 %138
  %222 = load double, double* %221, align 8, !tbaa !10
  %223 = getelementptr inbounds double, double* %2, i64 %134
  %224 = load double, double* %223, align 8, !tbaa !10
  %225 = getelementptr inbounds double, double* %1, i64 %144
  %226 = load double, double* %225, align 8, !tbaa !10
  %227 = getelementptr inbounds double, double* %1, i64 %143
  %228 = load double, double* %227, align 8, !tbaa !10
  %229 = getelementptr inbounds double, double* %1, i64 %142
  %230 = load double, double* %229, align 8, !tbaa !10
  %231 = getelementptr inbounds double, double* %1, i64 %141
  %232 = load double, double* %231, align 8, !tbaa !10
  %233 = getelementptr inbounds double, double* %1, i64 %140
  %234 = load double, double* %233, align 8, !tbaa !10
  %235 = getelementptr inbounds double, double* %1, i64 %139
  %236 = load double, double* %235, align 8, !tbaa !10
  %237 = getelementptr inbounds double, double* %1, i64 %138
  %238 = load double, double* %237, align 8, !tbaa !10
  %239 = getelementptr inbounds double, double* %1, i64 %134
  %240 = load double, double* %239, align 8, !tbaa !10
  %241 = fdiv double 1.000000e+00, %137
  %242 = insertelement <2 x double> poison, double %240, i32 0
  %243 = shufflevector <2 x double> %242, <2 x double> poison, <2 x i32> zeroinitializer
  %244 = insertelement <2 x double> poison, double %238, i32 0
  %245 = shufflevector <2 x double> %244, <2 x double> poison, <2 x i32> zeroinitializer
  %246 = insertelement <2 x double> poison, double %236, i32 0
  %247 = shufflevector <2 x double> %246, <2 x double> poison, <2 x i32> zeroinitializer
  %248 = insertelement <2 x double> poison, double %234, i32 0
  %249 = shufflevector <2 x double> %248, <2 x double> poison, <2 x i32> zeroinitializer
  %250 = insertelement <2 x double> poison, double %232, i32 0
  %251 = shufflevector <2 x double> %250, <2 x double> poison, <2 x i32> zeroinitializer
  %252 = insertelement <2 x double> poison, double %230, i32 0
  %253 = shufflevector <2 x double> %252, <2 x double> poison, <2 x i32> zeroinitializer
  %254 = insertelement <2 x double> poison, double %228, i32 0
  %255 = shufflevector <2 x double> %254, <2 x double> poison, <2 x i32> zeroinitializer
  %256 = insertelement <2 x double> poison, double %226, i32 0
  %257 = shufflevector <2 x double> %256, <2 x double> poison, <2 x i32> zeroinitializer
  %258 = insertelement <2 x double> poison, double %224, i32 0
  %259 = shufflevector <2 x double> %258, <2 x double> poison, <2 x i32> zeroinitializer
  %260 = insertelement <2 x double> poison, double %222, i32 0
  %261 = shufflevector <2 x double> %260, <2 x double> poison, <2 x i32> zeroinitializer
  %262 = insertelement <2 x double> poison, double %220, i32 0
  %263 = shufflevector <2 x double> %262, <2 x double> poison, <2 x i32> zeroinitializer
  %264 = insertelement <2 x double> poison, double %218, i32 0
  %265 = shufflevector <2 x double> %264, <2 x double> poison, <2 x i32> zeroinitializer
  %266 = insertelement <2 x double> poison, double %216, i32 0
  %267 = shufflevector <2 x double> %266, <2 x double> poison, <2 x i32> zeroinitializer
  %268 = insertelement <2 x double> poison, double %214, i32 0
  %269 = shufflevector <2 x double> %268, <2 x double> poison, <2 x i32> zeroinitializer
  %270 = insertelement <2 x double> poison, double %212, i32 0
  %271 = shufflevector <2 x double> %270, <2 x double> poison, <2 x i32> zeroinitializer
  %272 = insertelement <2 x double> poison, double %210, i32 0
  %273 = shufflevector <2 x double> %272, <2 x double> poison, <2 x i32> zeroinitializer
  %274 = insertelement <2 x double> poison, double %208, i32 0
  %275 = shufflevector <2 x double> %274, <2 x double> poison, <2 x i32> zeroinitializer
  %276 = insertelement <2 x double> poison, double %206, i32 0
  %277 = shufflevector <2 x double> %276, <2 x double> poison, <2 x i32> zeroinitializer
  %278 = insertelement <2 x double> poison, double %204, i32 0
  %279 = shufflevector <2 x double> %278, <2 x double> poison, <2 x i32> zeroinitializer
  %280 = insertelement <2 x double> poison, double %202, i32 0
  %281 = shufflevector <2 x double> %280, <2 x double> poison, <2 x i32> zeroinitializer
  %282 = insertelement <2 x double> poison, double %200, i32 0
  %283 = shufflevector <2 x double> %282, <2 x double> poison, <2 x i32> zeroinitializer
  %284 = insertelement <2 x double> poison, double %198, i32 0
  %285 = shufflevector <2 x double> %284, <2 x double> poison, <2 x i32> zeroinitializer
  %286 = insertelement <2 x double> poison, double %196, i32 0
  %287 = shufflevector <2 x double> %286, <2 x double> poison, <2 x i32> zeroinitializer
  %288 = insertelement <2 x double> poison, double %194, i32 0
  %289 = shufflevector <2 x double> %288, <2 x double> poison, <2 x i32> zeroinitializer
  %290 = insertelement <2 x double> poison, double %192, i32 0
  %291 = shufflevector <2 x double> %290, <2 x double> poison, <2 x i32> zeroinitializer
  %292 = insertelement <2 x double> poison, double %190, i32 0
  %293 = shufflevector <2 x double> %292, <2 x double> poison, <2 x i32> zeroinitializer
  %294 = insertelement <2 x double> poison, double %188, i32 0
  %295 = shufflevector <2 x double> %294, <2 x double> poison, <2 x i32> zeroinitializer
  %296 = insertelement <2 x double> poison, double %241, i32 0
  %297 = shufflevector <2 x double> %296, <2 x double> poison, <2 x i32> zeroinitializer
  %298 = insertelement <2 x double> poison, double %186, i32 0
  %299 = shufflevector <2 x double> %298, <2 x double> poison, <2 x i32> zeroinitializer
  %300 = insertelement <2 x double> poison, double %184, i32 0
  %301 = shufflevector <2 x double> %300, <2 x double> poison, <2 x i32> zeroinitializer
  %302 = insertelement <2 x double> poison, double %182, i32 0
  %303 = shufflevector <2 x double> %302, <2 x double> poison, <2 x i32> zeroinitializer
  %304 = insertelement <2 x double> poison, double %180, i32 0
  %305 = shufflevector <2 x double> %304, <2 x double> poison, <2 x i32> zeroinitializer
  %306 = insertelement <2 x double> poison, double %178, i32 0
  %307 = shufflevector <2 x double> %306, <2 x double> poison, <2 x i32> zeroinitializer
  %308 = insertelement <2 x double> poison, double %176, i32 0
  %309 = shufflevector <2 x double> %308, <2 x double> poison, <2 x i32> zeroinitializer
  %310 = insertelement <2 x double> poison, double %174, i32 0
  %311 = shufflevector <2 x double> %310, <2 x double> poison, <2 x i32> zeroinitializer
  %312 = insertelement <2 x double> poison, double %172, i32 0
  %313 = shufflevector <2 x double> %312, <2 x double> poison, <2 x i32> zeroinitializer
  %314 = insertelement <2 x double> poison, double %170, i32 0
  %315 = shufflevector <2 x double> %314, <2 x double> poison, <2 x i32> zeroinitializer
  %316 = insertelement <2 x double> poison, double %168, i32 0
  %317 = shufflevector <2 x double> %316, <2 x double> poison, <2 x i32> zeroinitializer
  %318 = insertelement <2 x double> poison, double %166, i32 0
  %319 = shufflevector <2 x double> %318, <2 x double> poison, <2 x i32> zeroinitializer
  %320 = insertelement <2 x double> poison, double %164, i32 0
  %321 = shufflevector <2 x double> %320, <2 x double> poison, <2 x i32> zeroinitializer
  %322 = insertelement <2 x double> poison, double %162, i32 0
  %323 = shufflevector <2 x double> %322, <2 x double> poison, <2 x i32> zeroinitializer
  %324 = insertelement <2 x double> poison, double %160, i32 0
  %325 = shufflevector <2 x double> %324, <2 x double> poison, <2 x i32> zeroinitializer
  %326 = insertelement <2 x double> poison, double %158, i32 0
  %327 = shufflevector <2 x double> %326, <2 x double> poison, <2 x i32> zeroinitializer
  %328 = insertelement <2 x double> poison, double %156, i32 0
  %329 = shufflevector <2 x double> %328, <2 x double> poison, <2 x i32> zeroinitializer
  %330 = insertelement <2 x double> poison, double %154, i32 0
  %331 = shufflevector <2 x double> %330, <2 x double> poison, <2 x i32> zeroinitializer
  %332 = insertelement <2 x double> poison, double %152, i32 0
  %333 = shufflevector <2 x double> %332, <2 x double> poison, <2 x i32> zeroinitializer
  %334 = insertelement <2 x double> poison, double %150, i32 0
  %335 = shufflevector <2 x double> %334, <2 x double> poison, <2 x i32> zeroinitializer
  %336 = insertelement <2 x double> poison, double %148, i32 0
  %337 = shufflevector <2 x double> %336, <2 x double> poison, <2 x i32> zeroinitializer
  %338 = insertelement <2 x double> poison, double %146, i32 0
  %339 = shufflevector <2 x double> %338, <2 x double> poison, <2 x i32> zeroinitializer
  br label %340

340:                                              ; preds = %340, %132
  %341 = phi i64 [ 0, %132 ], [ %470, %340 ]
  %342 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %12, i64 0, i64 %341, i64 0
  %343 = bitcast double* %342 to <16 x double>*
  %344 = load <16 x double>, <16 x double>* %343, align 16, !tbaa !10
  %345 = shufflevector <16 x double> %344, <16 x double> poison, <2 x i32> <i32 0, i32 8>
  %346 = shufflevector <16 x double> %344, <16 x double> poison, <2 x i32> <i32 1, i32 9>
  %347 = shufflevector <16 x double> %344, <16 x double> poison, <2 x i32> <i32 2, i32 10>
  %348 = shufflevector <16 x double> %344, <16 x double> poison, <2 x i32> <i32 3, i32 11>
  %349 = shufflevector <16 x double> %344, <16 x double> poison, <2 x i32> <i32 4, i32 12>
  %350 = shufflevector <16 x double> %344, <16 x double> poison, <2 x i32> <i32 5, i32 13>
  %351 = shufflevector <16 x double> %344, <16 x double> poison, <2 x i32> <i32 6, i32 14>
  %352 = shufflevector <16 x double> %344, <16 x double> poison, <2 x i32> <i32 7, i32 15>
  %353 = fmul <2 x double> %243, %345
  %354 = fmul <2 x double> %245, %346
  %355 = fadd <2 x double> %353, %354
  %356 = fmul <2 x double> %247, %347
  %357 = fadd <2 x double> %355, %356
  %358 = fmul <2 x double> %249, %348
  %359 = fadd <2 x double> %357, %358
  %360 = fmul <2 x double> %251, %349
  %361 = fadd <2 x double> %359, %360
  %362 = fmul <2 x double> %253, %350
  %363 = fadd <2 x double> %361, %362
  %364 = fmul <2 x double> %255, %351
  %365 = fadd <2 x double> %363, %364
  %366 = fmul <2 x double> %257, %352
  %367 = fadd <2 x double> %365, %366
  %368 = fmul <2 x double> %345, %259
  %369 = fmul <2 x double> %346, %261
  %370 = fadd <2 x double> %368, %369
  %371 = fmul <2 x double> %347, %263
  %372 = fadd <2 x double> %370, %371
  %373 = fmul <2 x double> %348, %265
  %374 = fadd <2 x double> %372, %373
  %375 = fmul <2 x double> %349, %267
  %376 = fadd <2 x double> %374, %375
  %377 = fmul <2 x double> %350, %269
  %378 = fadd <2 x double> %376, %377
  %379 = fmul <2 x double> %351, %271
  %380 = fadd <2 x double> %378, %379
  %381 = fmul <2 x double> %352, %273
  %382 = fadd <2 x double> %380, %381
  %383 = fmul <2 x double> %345, %275
  %384 = fmul <2 x double> %346, %277
  %385 = fadd <2 x double> %383, %384
  %386 = fmul <2 x double> %347, %279
  %387 = fadd <2 x double> %385, %386
  %388 = fmul <2 x double> %348, %281
  %389 = fadd <2 x double> %387, %388
  %390 = fmul <2 x double> %349, %283
  %391 = fadd <2 x double> %389, %390
  %392 = fmul <2 x double> %350, %285
  %393 = fadd <2 x double> %391, %392
  %394 = fmul <2 x double> %351, %287
  %395 = fadd <2 x double> %393, %394
  %396 = fmul <2 x double> %352, %289
  %397 = fadd <2 x double> %395, %396
  %398 = fmul <2 x double> %367, %291
  %399 = fmul <2 x double> %382, %293
  %400 = fadd <2 x double> %398, %399
  %401 = fmul <2 x double> %397, %295
  %402 = fadd <2 x double> %400, %401
  %403 = fmul <2 x double> %297, %402
  %404 = fsub <2 x double> %345, %403
  %405 = getelementptr inbounds [4 x double], [4 x double]* %13, i64 0, i64 %341
  %406 = bitcast double* %405 to <2 x double>*
  store <2 x double> %404, <2 x double>* %406, align 16, !tbaa !10
  %407 = fmul <2 x double> %367, %299
  %408 = fmul <2 x double> %382, %301
  %409 = fadd <2 x double> %407, %408
  %410 = fmul <2 x double> %397, %303
  %411 = fadd <2 x double> %409, %410
  %412 = fmul <2 x double> %297, %411
  %413 = fsub <2 x double> %346, %412
  %414 = getelementptr inbounds [4 x double], [4 x double]* %14, i64 0, i64 %341
  %415 = bitcast double* %414 to <2 x double>*
  store <2 x double> %413, <2 x double>* %415, align 16, !tbaa !10
  %416 = fmul <2 x double> %367, %305
  %417 = fmul <2 x double> %382, %307
  %418 = fadd <2 x double> %416, %417
  %419 = fmul <2 x double> %397, %309
  %420 = fadd <2 x double> %418, %419
  %421 = fmul <2 x double> %297, %420
  %422 = fsub <2 x double> %347, %421
  %423 = getelementptr inbounds [4 x double], [4 x double]* %15, i64 0, i64 %341
  %424 = bitcast double* %423 to <2 x double>*
  store <2 x double> %422, <2 x double>* %424, align 16, !tbaa !10
  %425 = fmul <2 x double> %367, %311
  %426 = fmul <2 x double> %382, %313
  %427 = fadd <2 x double> %425, %426
  %428 = fmul <2 x double> %397, %315
  %429 = fadd <2 x double> %427, %428
  %430 = fmul <2 x double> %297, %429
  %431 = fsub <2 x double> %348, %430
  %432 = getelementptr inbounds [4 x double], [4 x double]* %16, i64 0, i64 %341
  %433 = bitcast double* %432 to <2 x double>*
  store <2 x double> %431, <2 x double>* %433, align 16, !tbaa !10
  %434 = fmul <2 x double> %367, %317
  %435 = fmul <2 x double> %382, %319
  %436 = fadd <2 x double> %434, %435
  %437 = fmul <2 x double> %397, %321
  %438 = fadd <2 x double> %436, %437
  %439 = fmul <2 x double> %297, %438
  %440 = fsub <2 x double> %349, %439
  %441 = getelementptr inbounds [4 x double], [4 x double]* %17, i64 0, i64 %341
  %442 = bitcast double* %441 to <2 x double>*
  store <2 x double> %440, <2 x double>* %442, align 16, !tbaa !10
  %443 = fmul <2 x double> %367, %323
  %444 = fmul <2 x double> %382, %325
  %445 = fadd <2 x double> %443, %444
  %446 = fmul <2 x double> %397, %327
  %447 = fadd <2 x double> %445, %446
  %448 = fmul <2 x double> %297, %447
  %449 = fsub <2 x double> %350, %448
  %450 = getelementptr inbounds [4 x double], [4 x double]* %18, i64 0, i64 %341
  %451 = bitcast double* %450 to <2 x double>*
  store <2 x double> %449, <2 x double>* %451, align 16, !tbaa !10
  %452 = fmul <2 x double> %367, %329
  %453 = fmul <2 x double> %382, %331
  %454 = fadd <2 x double> %452, %453
  %455 = fmul <2 x double> %397, %333
  %456 = fadd <2 x double> %454, %455
  %457 = fmul <2 x double> %297, %456
  %458 = fsub <2 x double> %351, %457
  %459 = getelementptr inbounds [4 x double], [4 x double]* %19, i64 0, i64 %341
  %460 = bitcast double* %459 to <2 x double>*
  store <2 x double> %458, <2 x double>* %460, align 16, !tbaa !10
  %461 = fmul <2 x double> %367, %335
  %462 = fmul <2 x double> %382, %337
  %463 = fadd <2 x double> %461, %462
  %464 = fmul <2 x double> %397, %339
  %465 = fadd <2 x double> %463, %464
  %466 = fmul <2 x double> %297, %465
  %467 = fsub <2 x double> %352, %466
  %468 = getelementptr inbounds [4 x double], [4 x double]* %20, i64 0, i64 %341
  %469 = bitcast double* %468 to <2 x double>*
  store <2 x double> %467, <2 x double>* %469, align 16, !tbaa !10
  %470 = add nuw i64 %341, 2
  %471 = icmp eq i64 %470, 4
  br i1 %471, label %472, label %340, !llvm.loop !21

472:                                              ; preds = %340
  %473 = getelementptr inbounds i32, i32* %135, i64 %134
  %474 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 45, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %475 = getelementptr inbounds double, double* %474, i64 %133
  %476 = load double, double* %475, align 8, !tbaa !10
  %477 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 46, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %478 = getelementptr inbounds double, double* %477, i64 %133
  %479 = load double, double* %478, align 8, !tbaa !10
  %480 = tail call double @cbrt(double %137) #31
  %481 = load i32, i32* %473, align 4, !tbaa !12
  %482 = getelementptr inbounds i32, i32* %473, i64 1
  %483 = load i32, i32* %482, align 4, !tbaa !12
  %484 = getelementptr inbounds i32, i32* %473, i64 2
  %485 = load i32, i32* %484, align 4, !tbaa !12
  %486 = getelementptr inbounds i32, i32* %473, i64 3
  %487 = load i32, i32* %486, align 4, !tbaa !12
  %488 = getelementptr inbounds i32, i32* %473, i64 4
  %489 = load i32, i32* %488, align 4, !tbaa !12
  %490 = getelementptr inbounds i32, i32* %473, i64 5
  %491 = load i32, i32* %490, align 4, !tbaa !12
  %492 = getelementptr inbounds i32, i32* %473, i64 6
  %493 = load i32, i32* %492, align 4, !tbaa !12
  %494 = getelementptr inbounds i32, i32* %473, i64 7
  %495 = load i32, i32* %494, align 4, !tbaa !12
  %496 = sext i32 %481 to i64
  %497 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %498 = getelementptr inbounds double, double* %497, i64 %496
  %499 = load double, double* %498, align 8, !tbaa !10
  store double %499, double* %71, align 16, !tbaa !10
  %500 = sext i32 %483 to i64
  %501 = getelementptr inbounds double, double* %497, i64 %500
  %502 = load double, double* %501, align 8, !tbaa !10
  store double %502, double* %72, align 8, !tbaa !10
  %503 = sext i32 %485 to i64
  %504 = getelementptr inbounds double, double* %497, i64 %503
  %505 = load double, double* %504, align 8, !tbaa !10
  store double %505, double* %73, align 16, !tbaa !10
  %506 = sext i32 %487 to i64
  %507 = getelementptr inbounds double, double* %497, i64 %506
  %508 = load double, double* %507, align 8, !tbaa !10
  store double %508, double* %74, align 8, !tbaa !10
  %509 = sext i32 %489 to i64
  %510 = getelementptr inbounds double, double* %497, i64 %509
  %511 = load double, double* %510, align 8, !tbaa !10
  store double %511, double* %75, align 16, !tbaa !10
  %512 = sext i32 %491 to i64
  %513 = getelementptr inbounds double, double* %497, i64 %512
  %514 = load double, double* %513, align 8, !tbaa !10
  store double %514, double* %76, align 8, !tbaa !10
  %515 = sext i32 %493 to i64
  %516 = getelementptr inbounds double, double* %497, i64 %515
  %517 = load double, double* %516, align 8, !tbaa !10
  store double %517, double* %77, align 16, !tbaa !10
  %518 = sext i32 %495 to i64
  %519 = getelementptr inbounds double, double* %497, i64 %518
  %520 = load double, double* %519, align 8, !tbaa !10
  store double %520, double* %78, align 8, !tbaa !10
  %521 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 4, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %522 = getelementptr inbounds double, double* %521, i64 %496
  %523 = load double, double* %522, align 8, !tbaa !10
  store double %523, double* %79, align 16, !tbaa !10
  %524 = getelementptr inbounds double, double* %521, i64 %500
  %525 = load double, double* %524, align 8, !tbaa !10
  store double %525, double* %80, align 8, !tbaa !10
  %526 = getelementptr inbounds double, double* %521, i64 %503
  %527 = load double, double* %526, align 8, !tbaa !10
  store double %527, double* %81, align 16, !tbaa !10
  %528 = getelementptr inbounds double, double* %521, i64 %506
  %529 = load double, double* %528, align 8, !tbaa !10
  store double %529, double* %82, align 8, !tbaa !10
  %530 = getelementptr inbounds double, double* %521, i64 %509
  %531 = load double, double* %530, align 8, !tbaa !10
  store double %531, double* %83, align 16, !tbaa !10
  %532 = getelementptr inbounds double, double* %521, i64 %512
  %533 = load double, double* %532, align 8, !tbaa !10
  store double %533, double* %84, align 8, !tbaa !10
  %534 = getelementptr inbounds double, double* %521, i64 %515
  %535 = load double, double* %534, align 8, !tbaa !10
  store double %535, double* %85, align 16, !tbaa !10
  %536 = getelementptr inbounds double, double* %521, i64 %518
  %537 = load double, double* %536, align 8, !tbaa !10
  store double %537, double* %86, align 8, !tbaa !10
  %538 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 5, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %539 = getelementptr inbounds double, double* %538, i64 %496
  %540 = load double, double* %539, align 8, !tbaa !10
  store double %540, double* %87, align 16, !tbaa !10
  %541 = getelementptr inbounds double, double* %538, i64 %500
  %542 = load double, double* %541, align 8, !tbaa !10
  store double %542, double* %88, align 8, !tbaa !10
  %543 = getelementptr inbounds double, double* %538, i64 %503
  %544 = load double, double* %543, align 8, !tbaa !10
  store double %544, double* %89, align 16, !tbaa !10
  %545 = getelementptr inbounds double, double* %538, i64 %506
  %546 = load double, double* %545, align 8, !tbaa !10
  store double %546, double* %90, align 8, !tbaa !10
  %547 = getelementptr inbounds double, double* %538, i64 %509
  %548 = load double, double* %547, align 8, !tbaa !10
  store double %548, double* %91, align 16, !tbaa !10
  %549 = getelementptr inbounds double, double* %538, i64 %512
  %550 = load double, double* %549, align 8, !tbaa !10
  store double %550, double* %92, align 8, !tbaa !10
  %551 = getelementptr inbounds double, double* %538, i64 %515
  %552 = load double, double* %551, align 8, !tbaa !10
  store double %552, double* %93, align 16, !tbaa !10
  %553 = getelementptr inbounds double, double* %538, i64 %518
  %554 = load double, double* %553, align 8, !tbaa !10
  store double %554, double* %94, align 8, !tbaa !10
  %555 = fmul double %95, %476
  %556 = fmul double %555, %479
  %557 = fdiv double %556, %480
  call void @_Z24CalcElemFBHourglassForcePdS_S_S_S_S_S_S_S_S_S_dS_S_S_(double* nonnull %71, double* nonnull %79, double* nonnull %87, double* nonnull %96, double* nonnull %97, double* nonnull %98, double* nonnull %99, double* nonnull %100, double* nonnull %101, double* nonnull %102, double* nonnull %103, double %557, double* nonnull %104, double* nonnull %105, double* nonnull %106)
  %558 = load double, double* %104, align 16, !tbaa !10
  %559 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 9, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %560 = getelementptr inbounds double, double* %559, i64 %496
  %561 = load double, double* %560, align 8, !tbaa !10
  %562 = fadd double %558, %561
  store double %562, double* %560, align 8, !tbaa !10
  %563 = load double, double* %105, align 16, !tbaa !10
  %564 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 10, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %565 = getelementptr inbounds double, double* %564, i64 %496
  %566 = load double, double* %565, align 8, !tbaa !10
  %567 = fadd double %563, %566
  store double %567, double* %565, align 8, !tbaa !10
  %568 = load double, double* %106, align 16, !tbaa !10
  %569 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 11, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %570 = getelementptr inbounds double, double* %569, i64 %496
  %571 = load double, double* %570, align 8, !tbaa !10
  %572 = fadd double %568, %571
  store double %572, double* %570, align 8, !tbaa !10
  %573 = load double, double* %107, align 8, !tbaa !10
  %574 = getelementptr inbounds double, double* %559, i64 %500
  %575 = load double, double* %574, align 8, !tbaa !10
  %576 = fadd double %573, %575
  store double %576, double* %574, align 8, !tbaa !10
  %577 = load double, double* %108, align 8, !tbaa !10
  %578 = getelementptr inbounds double, double* %564, i64 %500
  %579 = load double, double* %578, align 8, !tbaa !10
  %580 = fadd double %577, %579
  store double %580, double* %578, align 8, !tbaa !10
  %581 = load double, double* %109, align 8, !tbaa !10
  %582 = getelementptr inbounds double, double* %569, i64 %500
  %583 = load double, double* %582, align 8, !tbaa !10
  %584 = fadd double %581, %583
  store double %584, double* %582, align 8, !tbaa !10
  %585 = load double, double* %110, align 16, !tbaa !10
  %586 = getelementptr inbounds double, double* %559, i64 %503
  %587 = load double, double* %586, align 8, !tbaa !10
  %588 = fadd double %585, %587
  store double %588, double* %586, align 8, !tbaa !10
  %589 = load double, double* %111, align 16, !tbaa !10
  %590 = getelementptr inbounds double, double* %564, i64 %503
  %591 = load double, double* %590, align 8, !tbaa !10
  %592 = fadd double %589, %591
  store double %592, double* %590, align 8, !tbaa !10
  %593 = load double, double* %112, align 16, !tbaa !10
  %594 = getelementptr inbounds double, double* %569, i64 %503
  %595 = load double, double* %594, align 8, !tbaa !10
  %596 = fadd double %593, %595
  store double %596, double* %594, align 8, !tbaa !10
  %597 = load double, double* %113, align 8, !tbaa !10
  %598 = getelementptr inbounds double, double* %559, i64 %506
  %599 = load double, double* %598, align 8, !tbaa !10
  %600 = fadd double %597, %599
  store double %600, double* %598, align 8, !tbaa !10
  %601 = load double, double* %114, align 8, !tbaa !10
  %602 = getelementptr inbounds double, double* %564, i64 %506
  %603 = load double, double* %602, align 8, !tbaa !10
  %604 = fadd double %601, %603
  store double %604, double* %602, align 8, !tbaa !10
  %605 = load double, double* %115, align 8, !tbaa !10
  %606 = getelementptr inbounds double, double* %569, i64 %506
  %607 = load double, double* %606, align 8, !tbaa !10
  %608 = fadd double %605, %607
  store double %608, double* %606, align 8, !tbaa !10
  %609 = load double, double* %116, align 16, !tbaa !10
  %610 = getelementptr inbounds double, double* %559, i64 %509
  %611 = load double, double* %610, align 8, !tbaa !10
  %612 = fadd double %609, %611
  store double %612, double* %610, align 8, !tbaa !10
  %613 = load double, double* %117, align 16, !tbaa !10
  %614 = getelementptr inbounds double, double* %564, i64 %509
  %615 = load double, double* %614, align 8, !tbaa !10
  %616 = fadd double %613, %615
  store double %616, double* %614, align 8, !tbaa !10
  %617 = load double, double* %118, align 16, !tbaa !10
  %618 = getelementptr inbounds double, double* %569, i64 %509
  %619 = load double, double* %618, align 8, !tbaa !10
  %620 = fadd double %617, %619
  store double %620, double* %618, align 8, !tbaa !10
  %621 = load double, double* %119, align 8, !tbaa !10
  %622 = getelementptr inbounds double, double* %559, i64 %512
  %623 = load double, double* %622, align 8, !tbaa !10
  %624 = fadd double %621, %623
  store double %624, double* %622, align 8, !tbaa !10
  %625 = load double, double* %120, align 8, !tbaa !10
  %626 = getelementptr inbounds double, double* %564, i64 %512
  %627 = load double, double* %626, align 8, !tbaa !10
  %628 = fadd double %625, %627
  store double %628, double* %626, align 8, !tbaa !10
  %629 = load double, double* %121, align 8, !tbaa !10
  %630 = getelementptr inbounds double, double* %569, i64 %512
  %631 = load double, double* %630, align 8, !tbaa !10
  %632 = fadd double %629, %631
  store double %632, double* %630, align 8, !tbaa !10
  %633 = load double, double* %122, align 16, !tbaa !10
  %634 = getelementptr inbounds double, double* %559, i64 %515
  %635 = load double, double* %634, align 8, !tbaa !10
  %636 = fadd double %633, %635
  store double %636, double* %634, align 8, !tbaa !10
  %637 = load double, double* %123, align 16, !tbaa !10
  %638 = getelementptr inbounds double, double* %564, i64 %515
  %639 = load double, double* %638, align 8, !tbaa !10
  %640 = fadd double %637, %639
  store double %640, double* %638, align 8, !tbaa !10
  %641 = load double, double* %124, align 16, !tbaa !10
  %642 = getelementptr inbounds double, double* %569, i64 %515
  %643 = load double, double* %642, align 8, !tbaa !10
  %644 = fadd double %641, %643
  store double %644, double* %642, align 8, !tbaa !10
  %645 = load double, double* %125, align 8, !tbaa !10
  %646 = getelementptr inbounds double, double* %559, i64 %518
  %647 = load double, double* %646, align 8, !tbaa !10
  %648 = fadd double %645, %647
  store double %648, double* %646, align 8, !tbaa !10
  %649 = load double, double* %126, align 8, !tbaa !10
  %650 = getelementptr inbounds double, double* %564, i64 %518
  %651 = load double, double* %650, align 8, !tbaa !10
  %652 = fadd double %649, %651
  store double %652, double* %650, align 8, !tbaa !10
  %653 = load double, double* %127, align 8, !tbaa !10
  %654 = getelementptr inbounds double, double* %569, i64 %518
  %655 = load double, double* %654, align 8, !tbaa !10
  %656 = fadd double %653, %655
  store double %656, double* %654, align 8, !tbaa !10
  %657 = add nuw nsw i64 %133, 1
  %658 = icmp eq i64 %657, %130
  br i1 %658, label %131, label %132, !llvm.loop !23
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local double @cbrt(double) local_unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local void @_Z28CalcHourglassControlForElemsPdd(double* nocapture %0, double %1) local_unnamed_addr #10 {
  %3 = alloca [8 x double], align 16
  %4 = bitcast [8 x double]* %3 to i8*
  %5 = alloca [8 x double], align 16
  %6 = bitcast [8 x double]* %5 to i8*
  %7 = alloca [8 x double], align 16
  %8 = bitcast [8 x double]* %7 to i8*
  %9 = alloca [8 x double], align 16
  %10 = bitcast [8 x double]* %9 to i8*
  %11 = alloca [8 x double], align 16
  %12 = bitcast [8 x double]* %11 to i8*
  %13 = alloca [8 x double], align 16
  %14 = bitcast [8 x double]* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %4) #2
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %6) #2
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %8) #2
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %10) #2
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %12) #2
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %14) #2
  %15 = load i32, i32* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 79), align 8, !tbaa !12
  %16 = shl nsw i32 %15, 3
  %17 = sext i32 %16 to i64
  %18 = shl nsw i64 %17, 3
  %19 = tail call noalias align 16 i8* @malloc(i64 %18) #2
  %20 = bitcast i8* %19 to double*
  %21 = tail call noalias align 16 i8* @malloc(i64 %18) #2
  %22 = bitcast i8* %21 to double*
  %23 = tail call noalias align 16 i8* @malloc(i64 %18) #2
  %24 = bitcast i8* %23 to double*
  %25 = tail call noalias align 16 i8* @malloc(i64 %18) #2
  %26 = bitcast i8* %25 to double*
  %27 = tail call noalias align 16 i8* @malloc(i64 %18) #2
  %28 = bitcast i8* %27 to double*
  %29 = tail call noalias align 16 i8* @malloc(i64 %18) #2
  %30 = bitcast i8* %29 to double*
  %31 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 0, i64 0
  %32 = getelementptr inbounds [8 x double], [8 x double]* %5, i64 0, i64 0
  %33 = getelementptr inbounds [8 x double], [8 x double]* %7, i64 0, i64 0
  %34 = getelementptr inbounds [8 x double], [8 x double]* %9, i64 0, i64 0
  %35 = getelementptr inbounds [8 x double], [8 x double]* %11, i64 0, i64 0
  %36 = getelementptr inbounds [8 x double], [8 x double]* %13, i64 0, i64 0
  %37 = icmp sgt i32 %15, 0
  br i1 %37, label %38, label %66

38:                                               ; preds = %2
  %39 = zext i32 %15 to i64
  br label %42

40:                                               ; preds = %42
  %41 = icmp eq i64 %64, %39
  br i1 %41, label %66, label %42, !llvm.loop !24

42:                                               ; preds = %40, %38
  %43 = phi i64 [ 0, %38 ], [ %64, %40 ]
  %44 = shl nuw nsw i64 %43, 6
  %45 = getelementptr i8, i8* %29, i64 %44
  %46 = getelementptr i8, i8* %27, i64 %44
  %47 = getelementptr i8, i8* %25, i64 %44
  %48 = getelementptr i8, i8* %23, i64 %44
  %49 = getelementptr i8, i8* %21, i64 %44
  %50 = getelementptr i8, i8* %19, i64 %44
  %51 = shl nsw i64 %43, 3
  %52 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 17, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !8
  %53 = getelementptr inbounds i32, i32* %52, i64 %51
  call void @_Z29CollectDomainNodesToElemNodesPKiPdS1_S1_(i32* %53, double* nonnull %31, double* nonnull %32, double* nonnull %33)
  call void @_Z24CalcElemVolumeDerivativePdS_S_PKdS1_S1_(double* nonnull %34, double* nonnull %35, double* nonnull %36, double* nonnull %31, double* nonnull %32, double* nonnull %33)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %50, i8* noundef nonnull align 16 dereferenceable(64) %10, i64 64, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %49, i8* noundef nonnull align 16 dereferenceable(64) %12, i64 64, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %48, i8* noundef nonnull align 16 dereferenceable(64) %14, i64 64, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %47, i8* noundef nonnull align 16 dereferenceable(64) %4, i64 64, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %46, i8* noundef nonnull align 16 dereferenceable(64) %6, i64 64, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %45, i8* noundef nonnull align 16 dereferenceable(64) %8, i64 64, i1 false)
  %54 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 40, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %55 = getelementptr inbounds double, double* %54, i64 %43
  %56 = load double, double* %55, align 8, !tbaa !10
  %57 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 39, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %58 = getelementptr inbounds double, double* %57, i64 %43
  %59 = load double, double* %58, align 8, !tbaa !10
  %60 = fmul double %56, %59
  %61 = getelementptr inbounds double, double* %0, i64 %43
  store double %60, double* %61, align 8, !tbaa !10
  %62 = load double, double* %58, align 8, !tbaa !10
  %63 = fcmp ugt double %62, 0.000000e+00
  %64 = add nuw nsw i64 %43, 1
  br i1 %63, label %40, label %65

65:                                               ; preds = %42
  tail call void @exit(i32 -1) #32
  unreachable

66:                                               ; preds = %40, %2
  %67 = fcmp ogt double %1, 0.000000e+00
  br i1 %67, label %68, label %69

68:                                               ; preds = %66
  tail call void @_Z28CalcFBHourglassForceForElemsPdS_S_S_S_S_S_d(double* %0, double* %26, double* %28, double* %30, double* %20, double* %22, double* %24, double %1)
  br label %69

69:                                               ; preds = %68, %66
  %70 = icmp eq i8* %29, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %69
  tail call void @free(i8* nonnull %29) #2
  br label %72

72:                                               ; preds = %71, %69
  %73 = icmp eq i8* %27, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %72
  tail call void @free(i8* nonnull %27) #2
  br label %75

75:                                               ; preds = %74, %72
  %76 = icmp eq i8* %25, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %75
  tail call void @free(i8* nonnull %25) #2
  br label %78

78:                                               ; preds = %77, %75
  %79 = icmp eq i8* %23, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %78
  tail call void @free(i8* nonnull %23) #2
  br label %81

81:                                               ; preds = %80, %78
  %82 = icmp eq i8* %21, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %81
  tail call void @free(i8* nonnull %21) #2
  br label %84

84:                                               ; preds = %83, %81
  %85 = icmp eq i8* %19, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %84
  tail call void @free(i8* nonnull %19) #2
  br label %87

87:                                               ; preds = %86, %84
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %14) #2
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %12) #2
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %10) #2
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %8) #2
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %6) #2
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %4) #2
  ret void
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef align 16 i8* @malloc(i64 noundef) local_unnamed_addr #11

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #13

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #14

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local void @_Z23CalcVolumeForceForElemsv() local_unnamed_addr #10 {
  %1 = load i32, i32* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 79), align 8, !tbaa !12
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %40, label %3

3:                                                ; preds = %0
  %4 = load double, double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 54), align 8, !tbaa !10
  %5 = sext i32 %1 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call noalias align 16 i8* @malloc(i64 %6) #2
  %8 = bitcast i8* %7 to double*
  %9 = tail call noalias align 16 i8* @malloc(i64 %6) #2
  %10 = bitcast i8* %9 to double*
  %11 = tail call noalias align 16 i8* @malloc(i64 %6) #2
  %12 = bitcast i8* %11 to double*
  %13 = tail call noalias align 16 i8* @malloc(i64 %6) #2
  %14 = bitcast i8* %13 to double*
  tail call void @_Z23InitStressTermsForElemsiPdS_S_(i32 %1, double* %8, double* %10, double* %12)
  tail call void @_Z23IntegrateStressForElemsiPdS_S_S_(i32 %1, double* %8, double* %10, double* %12, double* %14)
  %15 = icmp sgt i32 %1, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = zext i32 %1 to i64
  br label %33

18:                                               ; preds = %33
  %19 = icmp eq i64 %38, %17
  br i1 %19, label %20, label %33, !llvm.loop !25

20:                                               ; preds = %18
  tail call void @_Z28CalcHourglassControlForElemsPdd(double* nonnull %14, double %4)
  br label %23

21:                                               ; preds = %3
  tail call void @_Z28CalcHourglassControlForElemsPdd(double* %14, double %4)
  %22 = icmp eq i8* %13, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %21, %20
  tail call void @free(i8* nonnull %13) #2
  br label %24

24:                                               ; preds = %23, %21
  %25 = icmp eq i8* %11, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %24
  tail call void @free(i8* nonnull %11) #2
  br label %27

27:                                               ; preds = %26, %24
  %28 = icmp eq i8* %9, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %27
  tail call void @free(i8* nonnull %9) #2
  br label %30

30:                                               ; preds = %29, %27
  %31 = icmp eq i8* %7, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %30
  tail call void @free(i8* nonnull %7) #2
  br label %40

33:                                               ; preds = %18, %16
  %34 = phi i64 [ 0, %16 ], [ %38, %18 ]
  %35 = getelementptr inbounds double, double* %14, i64 %34
  %36 = load double, double* %35, align 8, !tbaa !10
  %37 = fcmp ugt double %36, 0.000000e+00
  %38 = add nuw nsw i64 %34, 1
  br i1 %37, label %18, label %39

39:                                               ; preds = %33
  tail call void @exit(i32 -1) #32
  unreachable

40:                                               ; preds = %32, %30, %0
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local void @_Z17CalcForceForNodesv() local_unnamed_addr #10 {
  %1 = load i32, i32* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 80), align 4, !tbaa !12
  %2 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 9, i32 0, i32 0, i32 0, i32 0), align 8
  %3 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 10, i32 0, i32 0, i32 0, i32 0), align 8
  %4 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 11, i32 0, i32 0, i32 0, i32 0), align 8
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %40

6:                                                ; preds = %0
  %7 = zext i32 %1 to i64
  %8 = icmp eq i32 %1, 1
  br i1 %8, label %38, label %9

9:                                                ; preds = %6
  %10 = getelementptr double, double* %2, i64 %7
  %11 = getelementptr double, double* %3, i64 %7
  %12 = getelementptr double, double* %4, i64 %7
  %13 = icmp ult double* %2, %11
  %14 = icmp ult double* %3, %10
  %15 = and i1 %13, %14
  %16 = icmp ult double* %2, %12
  %17 = icmp ult double* %4, %10
  %18 = and i1 %16, %17
  %19 = or i1 %15, %18
  %20 = icmp ult double* %3, %12
  %21 = icmp ult double* %4, %11
  %22 = and i1 %20, %21
  %23 = or i1 %19, %22
  br i1 %23, label %38, label %24

24:                                               ; preds = %9
  %25 = and i64 %7, 4294967294
  br label %26

26:                                               ; preds = %26, %24
  %27 = phi i64 [ 0, %24 ], [ %34, %26 ]
  %28 = getelementptr inbounds double, double* %2, i64 %27
  %29 = bitcast double* %28 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %29, align 8, !tbaa !10, !alias.scope !26, !noalias !29
  %30 = getelementptr inbounds double, double* %3, i64 %27
  %31 = bitcast double* %30 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %31, align 8, !tbaa !10, !alias.scope !32, !noalias !33
  %32 = getelementptr inbounds double, double* %4, i64 %27
  %33 = bitcast double* %32 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %33, align 8, !tbaa !10, !alias.scope !33
  %34 = add nuw i64 %27, 2
  %35 = icmp eq i64 %34, %25
  br i1 %35, label %36, label %26, !llvm.loop !34

36:                                               ; preds = %26
  %37 = icmp eq i64 %25, %7
  br i1 %37, label %40, label %38

38:                                               ; preds = %36, %9, %6
  %39 = phi i64 [ 0, %9 ], [ 0, %6 ], [ %25, %36 ]
  br label %41

40:                                               ; preds = %41, %36, %0
  tail call void @_Z23CalcVolumeForceForElemsv()
  ret void

41:                                               ; preds = %41, %38
  %42 = phi i64 [ %46, %41 ], [ %39, %38 ]
  %43 = getelementptr inbounds double, double* %2, i64 %42
  store double 0.000000e+00, double* %43, align 8, !tbaa !10
  %44 = getelementptr inbounds double, double* %3, i64 %42
  store double 0.000000e+00, double* %44, align 8, !tbaa !10
  %45 = getelementptr inbounds double, double* %4, i64 %42
  store double 0.000000e+00, double* %45, align 8, !tbaa !10
  %46 = add nuw nsw i64 %42, 1
  %47 = icmp eq i64 %46, %7
  br i1 %47, label %40, label %41, !llvm.loop !35
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable
define dso_local void @_Z24CalcAccelerationForNodesv() local_unnamed_addr #6 {
  %1 = load i32, i32* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 80), align 4, !tbaa !12
  %2 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 9, i32 0, i32 0, i32 0, i32 0), align 8
  %3 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 12, i32 0, i32 0, i32 0, i32 0), align 8
  %4 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 6, i32 0, i32 0, i32 0, i32 0), align 8
  %5 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 10, i32 0, i32 0, i32 0, i32 0), align 8
  %6 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 7, i32 0, i32 0, i32 0, i32 0), align 8
  %7 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 11, i32 0, i32 0, i32 0, i32 0), align 8
  %8 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 8, i32 0, i32 0, i32 0, i32 0), align 8
  %9 = icmp sgt i32 %1, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = zext i32 %1 to i64
  br label %13

12:                                               ; preds = %13, %0
  ret void

13:                                               ; preds = %13, %10
  %14 = phi i64 [ 0, %10 ], [ %31, %13 ]
  %15 = getelementptr inbounds double, double* %2, i64 %14
  %16 = load double, double* %15, align 8, !tbaa !10
  %17 = getelementptr inbounds double, double* %3, i64 %14
  %18 = load double, double* %17, align 8, !tbaa !10
  %19 = fdiv double %16, %18
  %20 = getelementptr inbounds double, double* %4, i64 %14
  store double %19, double* %20, align 8, !tbaa !10
  %21 = getelementptr inbounds double, double* %5, i64 %14
  %22 = load double, double* %21, align 8, !tbaa !10
  %23 = load double, double* %17, align 8, !tbaa !10
  %24 = fdiv double %22, %23
  %25 = getelementptr inbounds double, double* %6, i64 %14
  store double %24, double* %25, align 8, !tbaa !10
  %26 = getelementptr inbounds double, double* %7, i64 %14
  %27 = load double, double* %26, align 8, !tbaa !10
  %28 = load double, double* %17, align 8, !tbaa !10
  %29 = fdiv double %27, %28
  %30 = getelementptr inbounds double, double* %8, i64 %14
  store double %29, double* %30, align 8, !tbaa !10
  %31 = add nuw nsw i64 %14, 1
  %32 = icmp eq i64 %31, %11
  br i1 %32, label %12, label %13, !llvm.loop !36
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable
define dso_local void @_Z43ApplyAccelerationBoundaryConditionsForNodesv() local_unnamed_addr #6 {
  %1 = load i32, i32* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 76), align 4, !tbaa !12
  %2 = add i32 %1, 1
  %3 = mul i32 %2, %2
  %4 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 13, i32 0, i32 0, i32 0, i32 0), align 8
  %5 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 6, i32 0, i32 0, i32 0, i32 0), align 8
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %35, label %7

7:                                                ; preds = %0
  %8 = zext i32 %3 to i64
  br label %14

9:                                                ; preds = %14
  %10 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 14, i32 0, i32 0, i32 0, i32 0), align 8
  %11 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 7, i32 0, i32 0, i32 0, i32 0), align 8
  br i1 %6, label %35, label %12

12:                                               ; preds = %9
  %13 = zext i32 %3 to i64
  br label %27

14:                                               ; preds = %14, %7
  %15 = phi i64 [ 0, %7 ], [ %20, %14 ]
  %16 = getelementptr inbounds i32, i32* %4, i64 %15
  %17 = load i32, i32* %16, align 4, !tbaa !12
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds double, double* %5, i64 %18
  store double 0.000000e+00, double* %19, align 8, !tbaa !10
  %20 = add nuw nsw i64 %15, 1
  %21 = icmp eq i64 %20, %8
  br i1 %21, label %9, label %14, !llvm.loop !37

22:                                               ; preds = %27
  %23 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 15, i32 0, i32 0, i32 0, i32 0), align 8
  %24 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 8, i32 0, i32 0, i32 0, i32 0), align 8
  br i1 %6, label %35, label %25

25:                                               ; preds = %22
  %26 = zext i32 %3 to i64
  br label %36

27:                                               ; preds = %27, %12
  %28 = phi i64 [ 0, %12 ], [ %33, %27 ]
  %29 = getelementptr inbounds i32, i32* %10, i64 %28
  %30 = load i32, i32* %29, align 4, !tbaa !12
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds double, double* %11, i64 %31
  store double 0.000000e+00, double* %32, align 8, !tbaa !10
  %33 = add nuw nsw i64 %28, 1
  %34 = icmp eq i64 %33, %13
  br i1 %34, label %22, label %27, !llvm.loop !38

35:                                               ; preds = %36, %22, %9, %0
  ret void

36:                                               ; preds = %36, %25
  %37 = phi i64 [ 0, %25 ], [ %42, %36 ]
  %38 = getelementptr inbounds i32, i32* %23, i64 %37
  %39 = load i32, i32* %38, align 4, !tbaa !12
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds double, double* %24, i64 %40
  store double 0.000000e+00, double* %41, align 8, !tbaa !10
  %42 = add nuw nsw i64 %37, 1
  %43 = icmp eq i64 %42, %26
  br i1 %43, label %35, label %36, !llvm.loop !39
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable
define dso_local void @_Z20CalcVelocityForNodesdd(double %0, double %1) local_unnamed_addr #7 {
  %3 = load i32, i32* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 80), align 4, !tbaa !12
  %4 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0), align 8
  %5 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 6, i32 0, i32 0, i32 0, i32 0), align 8
  %6 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 4, i32 0, i32 0, i32 0, i32 0), align 8
  %7 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 7, i32 0, i32 0, i32 0, i32 0), align 8
  %8 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 5, i32 0, i32 0, i32 0, i32 0), align 8
  %9 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 8, i32 0, i32 0, i32 0, i32 0), align 8
  %10 = icmp sgt i32 %3, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = zext i32 %3 to i64
  br label %14

13:                                               ; preds = %14, %2
  ret void

14:                                               ; preds = %14, %11
  %15 = phi i64 [ 0, %11 ], [ %43, %14 ]
  %16 = getelementptr inbounds double, double* %4, i64 %15
  %17 = load double, double* %16, align 8, !tbaa !10
  %18 = getelementptr inbounds double, double* %5, i64 %15
  %19 = load double, double* %18, align 8, !tbaa !10
  %20 = fmul double %19, %0
  %21 = fadd double %17, %20
  %22 = tail call double @llvm.fabs.f64(double %21) #2
  %23 = fcmp olt double %22, %1
  %24 = select i1 %23, double 0.000000e+00, double %21
  store double %24, double* %16, align 8, !tbaa !10
  %25 = getelementptr inbounds double, double* %6, i64 %15
  %26 = load double, double* %25, align 8, !tbaa !10
  %27 = getelementptr inbounds double, double* %7, i64 %15
  %28 = load double, double* %27, align 8, !tbaa !10
  %29 = fmul double %28, %0
  %30 = fadd double %26, %29
  %31 = tail call double @llvm.fabs.f64(double %30) #2
  %32 = fcmp olt double %31, %1
  %33 = select i1 %32, double 0.000000e+00, double %30
  store double %33, double* %25, align 8, !tbaa !10
  %34 = getelementptr inbounds double, double* %8, i64 %15
  %35 = load double, double* %34, align 8, !tbaa !10
  %36 = getelementptr inbounds double, double* %9, i64 %15
  %37 = load double, double* %36, align 8, !tbaa !10
  %38 = fmul double %37, %0
  %39 = fadd double %35, %38
  %40 = tail call double @llvm.fabs.f64(double %39) #2
  %41 = fcmp olt double %40, %1
  %42 = select i1 %41, double 0.000000e+00, double %39
  store double %42, double* %34, align 8, !tbaa !10
  %43 = add nuw nsw i64 %15, 1
  %44 = icmp eq i64 %43, %12
  br i1 %44, label %13, label %14, !llvm.loop !40
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #15

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable
define dso_local void @_Z20CalcPositionForNodesd(double %0) local_unnamed_addr #6 {
  %2 = load i32, i32* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 80), align 4, !tbaa !12
  %3 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0), align 8
  %4 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0), align 8
  %5 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 4, i32 0, i32 0, i32 0, i32 0), align 8
  %6 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0), align 8
  %7 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 5, i32 0, i32 0, i32 0, i32 0), align 8
  %8 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0), align 8
  %9 = icmp sgt i32 %2, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = zext i32 %2 to i64
  br label %13

12:                                               ; preds = %13, %1
  ret void

13:                                               ; preds = %13, %10
  %14 = phi i64 [ 0, %10 ], [ %33, %13 ]
  %15 = getelementptr inbounds double, double* %3, i64 %14
  %16 = load double, double* %15, align 8, !tbaa !10
  %17 = fmul double %16, %0
  %18 = getelementptr inbounds double, double* %4, i64 %14
  %19 = load double, double* %18, align 8, !tbaa !10
  %20 = fadd double %17, %19
  store double %20, double* %18, align 8, !tbaa !10
  %21 = getelementptr inbounds double, double* %5, i64 %14
  %22 = load double, double* %21, align 8, !tbaa !10
  %23 = fmul double %22, %0
  %24 = getelementptr inbounds double, double* %6, i64 %14
  %25 = load double, double* %24, align 8, !tbaa !10
  %26 = fadd double %23, %25
  store double %26, double* %24, align 8, !tbaa !10
  %27 = getelementptr inbounds double, double* %7, i64 %14
  %28 = load double, double* %27, align 8, !tbaa !10
  %29 = fmul double %28, %0
  %30 = getelementptr inbounds double, double* %8, i64 %14
  %31 = load double, double* %30, align 8, !tbaa !10
  %32 = fadd double %29, %31
  store double %32, double* %30, align 8, !tbaa !10
  %33 = add nuw nsw i64 %14, 1
  %34 = icmp eq i64 %33, %11
  br i1 %34, label %12, label %13, !llvm.loop !41
}

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local void @_Z13LagrangeNodalv() local_unnamed_addr #10 {
  %1 = load double, double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 49), align 8, !tbaa !10
  %2 = load double, double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 53), align 8, !tbaa !10
  tail call void @_Z17CalcForceForNodesv()
  tail call void @_Z24CalcAccelerationForNodesv()
  tail call void @_Z43ApplyAccelerationBoundaryConditionsForNodesv()
  tail call void @_Z20CalcVelocityForNodesdd(double %1, double %2)
  tail call void @_Z20CalcPositionForNodesd(double %1)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local double @_Z14CalcElemVolumedddddddddddddddddddddddd(double %0, double %1, double %2, double %3, double %4, double %5, double %6, double %7, double %8, double %9, double %10, double %11, double %12, double %13, double %14, double %15, double %16, double %17, double %18, double %19, double %20, double %21, double %22, double %23) local_unnamed_addr #16 {
  %25 = fsub double %7, %0
  %26 = fsub double %15, %8
  %27 = fsub double %23, %16
  %28 = insertelement <2 x double> poison, double %6, i32 0
  %29 = shufflevector <2 x double> %28, <2 x double> poison, <2 x i32> zeroinitializer
  %30 = insertelement <2 x double> poison, double %1, i32 0
  %31 = insertelement <2 x double> %30, double %3, i32 1
  %32 = fsub <2 x double> %29, %31
  %33 = insertelement <2 x double> poison, double %14, i32 0
  %34 = shufflevector <2 x double> %33, <2 x double> poison, <2 x i32> zeroinitializer
  %35 = insertelement <2 x double> poison, double %9, i32 0
  %36 = insertelement <2 x double> %35, double %11, i32 1
  %37 = fsub <2 x double> %34, %36
  %38 = insertelement <2 x double> poison, double %22, i32 0
  %39 = shufflevector <2 x double> %38, <2 x double> poison, <2 x i32> zeroinitializer
  %40 = insertelement <2 x double> poison, double %17, i32 0
  %41 = insertelement <2 x double> %40, double %19, i32 1
  %42 = fsub <2 x double> %39, %41
  %43 = insertelement <2 x double> poison, double %5, i32 0
  %44 = insertelement <2 x double> %43, double %2, i32 1
  %45 = insertelement <2 x double> poison, double %0, i32 0
  %46 = shufflevector <2 x double> %45, <2 x double> poison, <2 x i32> zeroinitializer
  %47 = fsub <2 x double> %44, %46
  %48 = insertelement <2 x double> poison, double %13, i32 0
  %49 = insertelement <2 x double> %48, double %10, i32 1
  %50 = insertelement <2 x double> poison, double %8, i32 0
  %51 = shufflevector <2 x double> %50, <2 x double> poison, <2 x i32> zeroinitializer
  %52 = fsub <2 x double> %49, %51
  %53 = insertelement <2 x double> poison, double %21, i32 0
  %54 = insertelement <2 x double> %53, double %18, i32 1
  %55 = insertelement <2 x double> poison, double %16, i32 0
  %56 = shufflevector <2 x double> %55, <2 x double> poison, <2 x i32> zeroinitializer
  %57 = fsub <2 x double> %54, %56
  %58 = fsub double %6, %4
  %59 = fsub double %14, %12
  %60 = fsub double %22, %20
  %61 = fsub double %4, %3
  %62 = fsub double %12, %11
  %63 = fsub double %20, %19
  %64 = fsub double %5, %7
  %65 = fsub double %13, %15
  %66 = fsub double %21, %23
  %67 = insertelement <2 x double> poison, double %4, i32 0
  %68 = insertelement <2 x double> %67, double %1, i32 1
  %69 = fsub <2 x double> %31, %68
  %70 = insertelement <2 x double> poison, double %12, i32 0
  %71 = insertelement <2 x double> %70, double %9, i32 1
  %72 = fsub <2 x double> %36, %71
  %73 = insertelement <2 x double> poison, double %20, i32 0
  %74 = insertelement <2 x double> %73, double %17, i32 1
  %75 = fsub <2 x double> %41, %74
  %76 = insertelement <2 x double> poison, double %2, i32 0
  %77 = insertelement <2 x double> %76, double %7, i32 1
  %78 = fsub <2 x double> %77, %44
  %79 = insertelement <2 x double> poison, double %10, i32 0
  %80 = insertelement <2 x double> %79, double %15, i32 1
  %81 = fsub <2 x double> %80, %49
  %82 = insertelement <2 x double> poison, double %18, i32 0
  %83 = insertelement <2 x double> %82, double %23, i32 1
  %84 = fsub <2 x double> %83, %54
  %85 = fadd double %61, %64
  %86 = fmul double %59, %27
  %87 = fmul double %26, %60
  %88 = fsub double %86, %87
  %89 = fmul double %85, %88
  %90 = fadd double %62, %65
  %91 = fmul double %25, %60
  %92 = fmul double %58, %27
  %93 = fsub double %91, %92
  %94 = fmul double %90, %93
  %95 = fadd double %89, %94
  %96 = fadd double %63, %66
  %97 = fmul double %58, %26
  %98 = fmul double %25, %59
  %99 = fsub double %97, %98
  %100 = fmul double %99, %96
  %101 = fadd double %100, %95
  %102 = fadd <2 x double> %69, %78
  %103 = fmul <2 x double> %37, %57
  %104 = fmul <2 x double> %52, %42
  %105 = fsub <2 x double> %103, %104
  %106 = fmul <2 x double> %102, %105
  %107 = fadd <2 x double> %72, %81
  %108 = fmul <2 x double> %47, %42
  %109 = fmul <2 x double> %32, %57
  %110 = fsub <2 x double> %108, %109
  %111 = fmul <2 x double> %107, %110
  %112 = fadd <2 x double> %106, %111
  %113 = fadd <2 x double> %75, %84
  %114 = fmul <2 x double> %32, %52
  %115 = fmul <2 x double> %47, %37
  %116 = fsub <2 x double> %114, %115
  %117 = fmul <2 x double> %116, %113
  %118 = fadd <2 x double> %117, %112
  %119 = extractelement <2 x double> %118, i32 1
  %120 = fadd double %119, %101
  %121 = extractelement <2 x double> %118, i32 0
  %122 = fadd double %121, %120
  %123 = fmul double %122, 0x3FB5555555555555
  ret double %123
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local double @_Z14CalcElemVolumePKdS0_S0_(double* nocapture readonly %0, double* nocapture readonly %1, double* nocapture readonly %2) local_unnamed_addr #17 {
  %4 = load double, double* %0, align 8, !tbaa !10
  %5 = getelementptr inbounds double, double* %0, i64 1
  %6 = load double, double* %5, align 8, !tbaa !10
  %7 = getelementptr inbounds double, double* %0, i64 2
  %8 = load double, double* %7, align 8, !tbaa !10
  %9 = getelementptr inbounds double, double* %0, i64 3
  %10 = load double, double* %9, align 8, !tbaa !10
  %11 = getelementptr inbounds double, double* %0, i64 4
  %12 = load double, double* %11, align 8, !tbaa !10
  %13 = getelementptr inbounds double, double* %0, i64 5
  %14 = load double, double* %13, align 8, !tbaa !10
  %15 = getelementptr inbounds double, double* %0, i64 6
  %16 = load double, double* %15, align 8, !tbaa !10
  %17 = getelementptr inbounds double, double* %0, i64 7
  %18 = load double, double* %17, align 8, !tbaa !10
  %19 = load double, double* %1, align 8, !tbaa !10
  %20 = getelementptr inbounds double, double* %1, i64 1
  %21 = load double, double* %20, align 8, !tbaa !10
  %22 = getelementptr inbounds double, double* %1, i64 2
  %23 = load double, double* %22, align 8, !tbaa !10
  %24 = getelementptr inbounds double, double* %1, i64 3
  %25 = load double, double* %24, align 8, !tbaa !10
  %26 = getelementptr inbounds double, double* %1, i64 4
  %27 = load double, double* %26, align 8, !tbaa !10
  %28 = getelementptr inbounds double, double* %1, i64 5
  %29 = load double, double* %28, align 8, !tbaa !10
  %30 = getelementptr inbounds double, double* %1, i64 6
  %31 = load double, double* %30, align 8, !tbaa !10
  %32 = getelementptr inbounds double, double* %1, i64 7
  %33 = load double, double* %32, align 8, !tbaa !10
  %34 = load double, double* %2, align 8, !tbaa !10
  %35 = getelementptr inbounds double, double* %2, i64 1
  %36 = load double, double* %35, align 8, !tbaa !10
  %37 = getelementptr inbounds double, double* %2, i64 2
  %38 = load double, double* %37, align 8, !tbaa !10
  %39 = getelementptr inbounds double, double* %2, i64 3
  %40 = load double, double* %39, align 8, !tbaa !10
  %41 = getelementptr inbounds double, double* %2, i64 4
  %42 = load double, double* %41, align 8, !tbaa !10
  %43 = getelementptr inbounds double, double* %2, i64 5
  %44 = load double, double* %43, align 8, !tbaa !10
  %45 = getelementptr inbounds double, double* %2, i64 6
  %46 = load double, double* %45, align 8, !tbaa !10
  %47 = getelementptr inbounds double, double* %2, i64 7
  %48 = load double, double* %47, align 8, !tbaa !10
  %49 = tail call double @_Z14CalcElemVolumedddddddddddddddddddddddd(double %4, double %6, double %8, double %10, double %12, double %14, double %16, double %18, double %19, double %21, double %23, double %25, double %27, double %29, double %31, double %33, double %34, double %36, double %38, double %40, double %42, double %44, double %46, double %48)
  ret double %49
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local double @_Z8AreaFacedddddddddddd(double %0, double %1, double %2, double %3, double %4, double %5, double %6, double %7, double %8, double %9, double %10, double %11) local_unnamed_addr #16 {
  %13 = fsub double %2, %0
  %14 = fsub double %3, %1
  %15 = fsub double %13, %14
  %16 = fsub double %6, %4
  %17 = fsub double %7, %5
  %18 = fsub double %16, %17
  %19 = fsub double %10, %8
  %20 = fsub double %11, %9
  %21 = fsub double %19, %20
  %22 = fadd double %13, %14
  %23 = fadd double %16, %17
  %24 = fadd double %19, %20
  %25 = fmul double %22, %22
  %26 = fmul double %23, %23
  %27 = fadd double %25, %26
  %28 = fmul double %24, %24
  %29 = fadd double %27, %28
  %30 = insertelement <2 x double> poison, double %15, i32 0
  %31 = shufflevector <2 x double> %30, <2 x double> poison, <2 x i32> zeroinitializer
  %32 = insertelement <2 x double> %30, double %22, i32 1
  %33 = fmul <2 x double> %31, %32
  %34 = insertelement <2 x double> poison, double %18, i32 0
  %35 = shufflevector <2 x double> %34, <2 x double> poison, <2 x i32> zeroinitializer
  %36 = insertelement <2 x double> %34, double %23, i32 1
  %37 = fmul <2 x double> %35, %36
  %38 = fadd <2 x double> %33, %37
  %39 = insertelement <2 x double> poison, double %21, i32 0
  %40 = shufflevector <2 x double> %39, <2 x double> poison, <2 x i32> zeroinitializer
  %41 = insertelement <2 x double> %39, double %24, i32 1
  %42 = fmul <2 x double> %40, %41
  %43 = fadd <2 x double> %38, %42
  %44 = insertelement <2 x double> %43, double %29, i32 0
  %45 = fmul <2 x double> %43, %44
  %46 = shufflevector <2 x double> %45, <2 x double> poison, <2 x i32> <i32 1, i32 undef>
  %47 = fsub <2 x double> %45, %46
  %48 = extractelement <2 x double> %47, i32 0
  ret double %48
}

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define dso_local double @_Z28CalcElemCharacteristicLengthPKdS0_S0_d(double* nocapture readonly %0, double* nocapture readonly %1, double* nocapture readonly %2, double %3) local_unnamed_addr #18 {
  %5 = load double, double* %0, align 8, !tbaa !10
  %6 = getelementptr inbounds double, double* %0, i64 1
  %7 = load double, double* %6, align 8, !tbaa !10
  %8 = getelementptr inbounds double, double* %0, i64 2
  %9 = load double, double* %8, align 8, !tbaa !10
  %10 = getelementptr inbounds double, double* %0, i64 3
  %11 = load double, double* %10, align 8, !tbaa !10
  %12 = load double, double* %1, align 8, !tbaa !10
  %13 = getelementptr inbounds double, double* %1, i64 1
  %14 = load double, double* %13, align 8, !tbaa !10
  %15 = getelementptr inbounds double, double* %1, i64 2
  %16 = load double, double* %15, align 8, !tbaa !10
  %17 = getelementptr inbounds double, double* %1, i64 3
  %18 = load double, double* %17, align 8, !tbaa !10
  %19 = load double, double* %2, align 8, !tbaa !10
  %20 = getelementptr inbounds double, double* %2, i64 1
  %21 = load double, double* %20, align 8, !tbaa !10
  %22 = getelementptr inbounds double, double* %2, i64 2
  %23 = load double, double* %22, align 8, !tbaa !10
  %24 = getelementptr inbounds double, double* %2, i64 3
  %25 = load double, double* %24, align 8, !tbaa !10
  %26 = tail call double @_Z8AreaFacedddddddddddd(double %5, double %7, double %9, double %11, double %12, double %14, double %16, double %18, double %19, double %21, double %23, double %25)
  %27 = fcmp olt double %26, 0.000000e+00
  %28 = select i1 %27, double 0.000000e+00, double %26
  %29 = getelementptr inbounds double, double* %0, i64 4
  %30 = load double, double* %29, align 8, !tbaa !10
  %31 = getelementptr inbounds double, double* %0, i64 5
  %32 = load double, double* %31, align 8, !tbaa !10
  %33 = getelementptr inbounds double, double* %0, i64 6
  %34 = load double, double* %33, align 8, !tbaa !10
  %35 = getelementptr inbounds double, double* %0, i64 7
  %36 = load double, double* %35, align 8, !tbaa !10
  %37 = getelementptr inbounds double, double* %1, i64 4
  %38 = load double, double* %37, align 8, !tbaa !10
  %39 = getelementptr inbounds double, double* %1, i64 5
  %40 = load double, double* %39, align 8, !tbaa !10
  %41 = getelementptr inbounds double, double* %1, i64 6
  %42 = load double, double* %41, align 8, !tbaa !10
  %43 = getelementptr inbounds double, double* %1, i64 7
  %44 = load double, double* %43, align 8, !tbaa !10
  %45 = getelementptr inbounds double, double* %2, i64 4
  %46 = load double, double* %45, align 8, !tbaa !10
  %47 = getelementptr inbounds double, double* %2, i64 5
  %48 = load double, double* %47, align 8, !tbaa !10
  %49 = getelementptr inbounds double, double* %2, i64 6
  %50 = load double, double* %49, align 8, !tbaa !10
  %51 = getelementptr inbounds double, double* %2, i64 7
  %52 = load double, double* %51, align 8, !tbaa !10
  %53 = tail call double @_Z8AreaFacedddddddddddd(double %30, double %32, double %34, double %36, double %38, double %40, double %42, double %44, double %46, double %48, double %50, double %52)
  %54 = fcmp olt double %53, %28
  %55 = select i1 %54, double %28, double %53
  %56 = tail call double @_Z8AreaFacedddddddddddd(double %5, double %7, double %32, double %30, double %12, double %14, double %40, double %38, double %19, double %21, double %48, double %46)
  %57 = fcmp olt double %56, %55
  %58 = select i1 %57, double %55, double %56
  %59 = tail call double @_Z8AreaFacedddddddddddd(double %7, double %9, double %34, double %32, double %14, double %16, double %42, double %40, double %21, double %23, double %50, double %48)
  %60 = fcmp olt double %59, %58
  %61 = select i1 %60, double %58, double %59
  %62 = tail call double @_Z8AreaFacedddddddddddd(double %9, double %11, double %36, double %34, double %16, double %18, double %44, double %42, double %23, double %25, double %52, double %50)
  %63 = fcmp olt double %62, %61
  %64 = select i1 %63, double %61, double %62
  %65 = tail call double @_Z8AreaFacedddddddddddd(double %11, double %5, double %30, double %36, double %18, double %12, double %38, double %44, double %25, double %19, double %46, double %52)
  %66 = fcmp olt double %65, %64
  %67 = select i1 %66, double %64, double %65
  %68 = fmul double %3, 4.000000e+00
  %69 = tail call double @sqrt(double %67) #2
  %70 = fdiv double %68, %69
  ret double %70
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare dso_local double @sqrt(double) local_unnamed_addr #19

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @_Z25CalcElemVelocityGrandientPKdS0_S0_PA8_S_dPd(double* nocapture readonly %0, double* nocapture readonly %1, double* nocapture readonly %2, [8 x double]* nocapture readonly %3, double %4, double* nocapture %5) local_unnamed_addr #5 {
  %7 = fdiv double 1.000000e+00, %4
  %8 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 0, i64 0
  %9 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 1, i64 0
  %10 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 2, i64 0
  %11 = load double, double* %8, align 8, !tbaa !10
  %12 = load double, double* %0, align 8, !tbaa !10
  %13 = getelementptr inbounds double, double* %0, i64 6
  %14 = load double, double* %13, align 8, !tbaa !10
  %15 = fsub double %12, %14
  %16 = fmul double %11, %15
  %17 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 0, i64 1
  %18 = load double, double* %17, align 8, !tbaa !10
  %19 = getelementptr inbounds double, double* %0, i64 1
  %20 = load double, double* %19, align 8, !tbaa !10
  %21 = getelementptr inbounds double, double* %0, i64 7
  %22 = load double, double* %21, align 8, !tbaa !10
  %23 = fsub double %20, %22
  %24 = fmul double %18, %23
  %25 = fadd double %16, %24
  %26 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 0, i64 2
  %27 = load double, double* %26, align 8, !tbaa !10
  %28 = getelementptr inbounds double, double* %0, i64 2
  %29 = load double, double* %28, align 8, !tbaa !10
  %30 = getelementptr inbounds double, double* %0, i64 4
  %31 = load double, double* %30, align 8, !tbaa !10
  %32 = fsub double %29, %31
  %33 = fmul double %27, %32
  %34 = fadd double %25, %33
  %35 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 0, i64 3
  %36 = load double, double* %35, align 8, !tbaa !10
  %37 = getelementptr inbounds double, double* %0, i64 3
  %38 = load double, double* %37, align 8, !tbaa !10
  %39 = getelementptr inbounds double, double* %0, i64 5
  %40 = load double, double* %39, align 8, !tbaa !10
  %41 = fsub double %38, %40
  %42 = fmul double %36, %41
  %43 = fadd double %34, %42
  %44 = fmul double %7, %43
  store double %44, double* %5, align 8, !tbaa !10
  %45 = load double, double* %9, align 8, !tbaa !10
  %46 = load double, double* %1, align 8, !tbaa !10
  %47 = getelementptr inbounds double, double* %1, i64 6
  %48 = load double, double* %47, align 8, !tbaa !10
  %49 = fsub double %46, %48
  %50 = fmul double %45, %49
  %51 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 1, i64 1
  %52 = load double, double* %51, align 8, !tbaa !10
  %53 = getelementptr inbounds double, double* %1, i64 1
  %54 = load double, double* %53, align 8, !tbaa !10
  %55 = getelementptr inbounds double, double* %1, i64 7
  %56 = load double, double* %55, align 8, !tbaa !10
  %57 = fsub double %54, %56
  %58 = fmul double %52, %57
  %59 = fadd double %50, %58
  %60 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 1, i64 2
  %61 = load double, double* %60, align 8, !tbaa !10
  %62 = getelementptr inbounds double, double* %1, i64 2
  %63 = load double, double* %62, align 8, !tbaa !10
  %64 = getelementptr inbounds double, double* %1, i64 4
  %65 = load double, double* %64, align 8, !tbaa !10
  %66 = fsub double %63, %65
  %67 = fmul double %61, %66
  %68 = fadd double %59, %67
  %69 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 1, i64 3
  %70 = load double, double* %69, align 8, !tbaa !10
  %71 = getelementptr inbounds double, double* %1, i64 3
  %72 = load double, double* %71, align 8, !tbaa !10
  %73 = getelementptr inbounds double, double* %1, i64 5
  %74 = load double, double* %73, align 8, !tbaa !10
  %75 = fsub double %72, %74
  %76 = fmul double %70, %75
  %77 = fadd double %68, %76
  %78 = fmul double %7, %77
  %79 = getelementptr inbounds double, double* %5, i64 1
  store double %78, double* %79, align 8, !tbaa !10
  %80 = load double, double* %10, align 8, !tbaa !10
  %81 = load double, double* %2, align 8, !tbaa !10
  %82 = getelementptr inbounds double, double* %2, i64 6
  %83 = load double, double* %82, align 8, !tbaa !10
  %84 = fsub double %81, %83
  %85 = fmul double %80, %84
  %86 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 2, i64 1
  %87 = load double, double* %86, align 8, !tbaa !10
  %88 = getelementptr inbounds double, double* %2, i64 1
  %89 = load double, double* %88, align 8, !tbaa !10
  %90 = getelementptr inbounds double, double* %2, i64 7
  %91 = load double, double* %90, align 8, !tbaa !10
  %92 = fsub double %89, %91
  %93 = fmul double %87, %92
  %94 = fadd double %85, %93
  %95 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 2, i64 2
  %96 = load double, double* %95, align 8, !tbaa !10
  %97 = getelementptr inbounds double, double* %2, i64 2
  %98 = load double, double* %97, align 8, !tbaa !10
  %99 = getelementptr inbounds double, double* %2, i64 4
  %100 = load double, double* %99, align 8, !tbaa !10
  %101 = fsub double %98, %100
  %102 = fmul double %96, %101
  %103 = fadd double %94, %102
  %104 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 2, i64 3
  %105 = load double, double* %104, align 8, !tbaa !10
  %106 = getelementptr inbounds double, double* %2, i64 3
  %107 = load double, double* %106, align 8, !tbaa !10
  %108 = getelementptr inbounds double, double* %2, i64 5
  %109 = load double, double* %108, align 8, !tbaa !10
  %110 = fsub double %107, %109
  %111 = fmul double %105, %110
  %112 = fadd double %103, %111
  %113 = fmul double %7, %112
  %114 = getelementptr inbounds double, double* %5, i64 2
  store double %113, double* %114, align 8, !tbaa !10
  %115 = load double, double* %8, align 8, !tbaa !10
  %116 = load double, double* %1, align 8, !tbaa !10
  %117 = load double, double* %47, align 8, !tbaa !10
  %118 = load double, double* %19, align 8, !tbaa !10
  %119 = load double, double* %21, align 8, !tbaa !10
  %120 = insertelement <2 x double> poison, double %116, i32 0
  %121 = insertelement <2 x double> %120, double %118, i32 1
  %122 = insertelement <2 x double> poison, double %117, i32 0
  %123 = insertelement <2 x double> %122, double %119, i32 1
  %124 = fsub <2 x double> %121, %123
  %125 = extractelement <2 x double> %124, i32 0
  %126 = fmul double %115, %125
  %127 = load double, double* %17, align 8, !tbaa !10
  %128 = load double, double* %53, align 8, !tbaa !10
  %129 = load double, double* %55, align 8, !tbaa !10
  %130 = load double, double* %0, align 8, !tbaa !10
  %131 = load double, double* %13, align 8, !tbaa !10
  %132 = insertelement <2 x double> poison, double %128, i32 0
  %133 = insertelement <2 x double> %132, double %130, i32 1
  %134 = insertelement <2 x double> poison, double %129, i32 0
  %135 = insertelement <2 x double> %134, double %131, i32 1
  %136 = fsub <2 x double> %133, %135
  %137 = extractelement <2 x double> %136, i32 0
  %138 = fmul double %127, %137
  %139 = fadd double %126, %138
  %140 = load double, double* %26, align 8, !tbaa !10
  %141 = load double, double* %62, align 8, !tbaa !10
  %142 = load double, double* %64, align 8, !tbaa !10
  %143 = load double, double* %28, align 8, !tbaa !10
  %144 = load double, double* %30, align 8, !tbaa !10
  %145 = insertelement <2 x double> poison, double %141, i32 0
  %146 = insertelement <2 x double> %145, double %143, i32 1
  %147 = insertelement <2 x double> poison, double %142, i32 0
  %148 = insertelement <2 x double> %147, double %144, i32 1
  %149 = fsub <2 x double> %146, %148
  %150 = extractelement <2 x double> %149, i32 0
  %151 = fmul double %140, %150
  %152 = fadd double %139, %151
  %153 = load double, double* %35, align 8, !tbaa !10
  %154 = load double, double* %71, align 8, !tbaa !10
  %155 = load double, double* %73, align 8, !tbaa !10
  %156 = load double, double* %37, align 8, !tbaa !10
  %157 = load double, double* %39, align 8, !tbaa !10
  %158 = insertelement <2 x double> poison, double %154, i32 0
  %159 = insertelement <2 x double> %158, double %156, i32 1
  %160 = insertelement <2 x double> poison, double %155, i32 0
  %161 = insertelement <2 x double> %160, double %157, i32 1
  %162 = fsub <2 x double> %159, %161
  %163 = extractelement <2 x double> %162, i32 0
  %164 = fmul double %153, %163
  %165 = fadd double %152, %164
  %166 = fmul double %7, %165
  %167 = load double, double* %9, align 8, !tbaa !10
  %168 = extractelement <2 x double> %136, i32 1
  %169 = fmul double %167, %168
  %170 = load double, double* %51, align 8, !tbaa !10
  %171 = extractelement <2 x double> %124, i32 1
  %172 = fmul double %170, %171
  %173 = fadd double %169, %172
  %174 = load double, double* %60, align 8, !tbaa !10
  %175 = extractelement <2 x double> %149, i32 1
  %176 = fmul double %174, %175
  %177 = fadd double %173, %176
  %178 = load double, double* %69, align 8, !tbaa !10
  %179 = extractelement <2 x double> %162, i32 1
  %180 = fmul double %178, %179
  %181 = fadd double %177, %180
  %182 = fmul double %7, %181
  %183 = load double, double* %2, align 8, !tbaa !10
  %184 = load double, double* %82, align 8, !tbaa !10
  %185 = fsub double %183, %184
  %186 = load double, double* %88, align 8, !tbaa !10
  %187 = load double, double* %90, align 8, !tbaa !10
  %188 = fsub double %186, %187
  %189 = load double, double* %97, align 8, !tbaa !10
  %190 = load double, double* %99, align 8, !tbaa !10
  %191 = fsub double %189, %190
  %192 = load double, double* %106, align 8, !tbaa !10
  %193 = load double, double* %108, align 8, !tbaa !10
  %194 = fsub double %192, %193
  %195 = bitcast double* %10 to <2 x double>*
  %196 = load <2 x double>, <2 x double>* %195, align 8, !tbaa !10
  %197 = load double, double* %95, align 8, !tbaa !10
  %198 = load double, double* %104, align 8, !tbaa !10
  %199 = insertelement <2 x double> poison, double %167, i32 0
  %200 = insertelement <2 x double> %199, double %115, i32 1
  %201 = insertelement <2 x double> poison, double %185, i32 0
  %202 = shufflevector <2 x double> %201, <2 x double> poison, <2 x i32> zeroinitializer
  %203 = fmul <2 x double> %200, %202
  %204 = insertelement <2 x double> poison, double %170, i32 0
  %205 = insertelement <2 x double> %204, double %127, i32 1
  %206 = insertelement <2 x double> poison, double %188, i32 0
  %207 = shufflevector <2 x double> %206, <2 x double> poison, <2 x i32> zeroinitializer
  %208 = fmul <2 x double> %205, %207
  %209 = fadd <2 x double> %203, %208
  %210 = insertelement <2 x double> poison, double %174, i32 0
  %211 = insertelement <2 x double> %210, double %140, i32 1
  %212 = insertelement <2 x double> poison, double %191, i32 0
  %213 = shufflevector <2 x double> %212, <2 x double> poison, <2 x i32> zeroinitializer
  %214 = fmul <2 x double> %211, %213
  %215 = fadd <2 x double> %209, %214
  %216 = insertelement <2 x double> poison, double %178, i32 0
  %217 = insertelement <2 x double> %216, double %153, i32 1
  %218 = insertelement <2 x double> poison, double %194, i32 0
  %219 = shufflevector <2 x double> %218, <2 x double> poison, <2 x i32> zeroinitializer
  %220 = fmul <2 x double> %217, %219
  %221 = fadd <2 x double> %215, %220
  %222 = insertelement <2 x double> poison, double %7, i32 0
  %223 = shufflevector <2 x double> %222, <2 x double> poison, <2 x i32> zeroinitializer
  %224 = fmul <2 x double> %223, %221
  %225 = fmul <2 x double> %124, %196
  %226 = shufflevector <2 x double> %196, <2 x double> undef, <2 x i32> <i32 1, i32 0>
  %227 = fmul <2 x double> %136, %226
  %228 = fadd <2 x double> %225, %227
  %229 = insertelement <2 x double> poison, double %197, i32 0
  %230 = shufflevector <2 x double> %229, <2 x double> poison, <2 x i32> zeroinitializer
  %231 = fmul <2 x double> %149, %230
  %232 = fadd <2 x double> %228, %231
  %233 = insertelement <2 x double> poison, double %198, i32 0
  %234 = shufflevector <2 x double> %233, <2 x double> poison, <2 x i32> zeroinitializer
  %235 = fmul <2 x double> %162, %234
  %236 = fadd <2 x double> %232, %235
  %237 = fmul <2 x double> %223, %236
  %238 = fadd double %166, %182
  %239 = fmul double %238, 5.000000e-01
  %240 = getelementptr inbounds double, double* %5, i64 5
  store double %239, double* %240, align 8, !tbaa !10
  %241 = fadd <2 x double> %224, %237
  %242 = fmul <2 x double> %241, <double 5.000000e-01, double 5.000000e-01>
  %243 = getelementptr inbounds double, double* %5, i64 3
  %244 = bitcast double* %243 to <2 x double>*
  store <2 x double> %242, <2 x double>* %244, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind uwtable
define dso_local void @_Z22CalcKinematicsForElemsid(i32 %0, double %1) local_unnamed_addr #20 {
  %3 = alloca [3 x [8 x double]], align 16
  %4 = alloca [6 x double], align 16
  %5 = alloca [8 x double], align 16
  %6 = alloca [8 x double], align 16
  %7 = alloca [8 x double], align 16
  %8 = alloca [8 x double], align 16
  %9 = alloca [8 x double], align 16
  %10 = alloca [8 x double], align 16
  %11 = alloca double, align 8
  %12 = bitcast [3 x [8 x double]]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %12) #2
  %13 = bitcast [6 x double]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %13) #2
  %14 = bitcast [8 x double]* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %14) #2
  %15 = bitcast [8 x double]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %15) #2
  %16 = bitcast [8 x double]* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %16) #2
  %17 = bitcast [8 x double]* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %17) #2
  %18 = bitcast [8 x double]* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %18) #2
  %19 = bitcast [8 x double]* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %19) #2
  %20 = bitcast double* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %20) #2
  store double 0.000000e+00, double* %11, align 8, !tbaa !10
  %21 = getelementptr inbounds [8 x double], [8 x double]* %5, i64 0, i64 0
  %22 = getelementptr inbounds [8 x double], [8 x double]* %6, i64 0, i64 0
  %23 = getelementptr inbounds [8 x double], [8 x double]* %7, i64 0, i64 0
  %24 = fmul double %1, 5.000000e-01
  %25 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %3, i64 0, i64 0
  %26 = getelementptr inbounds [8 x double], [8 x double]* %8, i64 0, i64 0
  %27 = getelementptr inbounds [8 x double], [8 x double]* %9, i64 0, i64 0
  %28 = getelementptr inbounds [8 x double], [8 x double]* %10, i64 0, i64 0
  %29 = getelementptr inbounds [6 x double], [6 x double]* %4, i64 0, i64 0
  %30 = getelementptr inbounds [6 x double], [6 x double]* %4, i64 0, i64 1
  %31 = getelementptr inbounds [6 x double], [6 x double]* %4, i64 0, i64 2
  %32 = icmp sgt i32 %0, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %2
  %34 = zext i32 %0 to i64
  %35 = insertelement <2 x double> poison, double %24, i32 0
  %36 = shufflevector <2 x double> %35, <2 x double> poison, <2 x i32> zeroinitializer
  br label %38

37:                                               ; preds = %129, %2
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %20) #2
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %19) #2
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %18) #2
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %17) #2
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %16) #2
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %15) #2
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %14) #2
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %13) #2
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %12) #2
  ret void

38:                                               ; preds = %129, %33
  %39 = phi i64 [ 0, %33 ], [ %140, %129 ]
  %40 = shl nsw i64 %39, 3
  %41 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 17, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !8
  %42 = getelementptr inbounds i32, i32* %41, i64 %40
  %43 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %44 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %45 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  br label %66

46:                                               ; preds = %66
  %47 = call double @_Z14CalcElemVolumePKdS0_S0_(double* nonnull %21, double* nonnull %22, double* nonnull %23)
  %48 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 40, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %49 = getelementptr inbounds double, double* %48, i64 %39
  %50 = load double, double* %49, align 8, !tbaa !10
  %51 = fdiv double %47, %50
  %52 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 41, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %53 = getelementptr inbounds double, double* %52, i64 %39
  store double %51, double* %53, align 8, !tbaa !10
  %54 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 39, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %55 = getelementptr inbounds double, double* %54, i64 %39
  %56 = load double, double* %55, align 8, !tbaa !10
  %57 = fsub double %51, %56
  %58 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 42, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %59 = getelementptr inbounds double, double* %58, i64 %39
  store double %57, double* %59, align 8, !tbaa !10
  %60 = call double @_Z28CalcElemCharacteristicLengthPKdS0_S0_d(double* nonnull %21, double* nonnull %22, double* nonnull %23, double %47)
  %61 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 44, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %62 = getelementptr inbounds double, double* %61, i64 %39
  store double %60, double* %62, align 8, !tbaa !10
  %63 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %64 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 4, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %65 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 5, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  br label %82

66:                                               ; preds = %66, %38
  %67 = phi i64 [ 0, %38 ], [ %80, %66 ]
  %68 = getelementptr inbounds i32, i32* %42, i64 %67
  %69 = load i32, i32* %68, align 4, !tbaa !12
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds double, double* %43, i64 %70
  %72 = load double, double* %71, align 8, !tbaa !10
  %73 = getelementptr inbounds [8 x double], [8 x double]* %5, i64 0, i64 %67
  store double %72, double* %73, align 8, !tbaa !10
  %74 = getelementptr inbounds double, double* %44, i64 %70
  %75 = load double, double* %74, align 8, !tbaa !10
  %76 = getelementptr inbounds [8 x double], [8 x double]* %6, i64 0, i64 %67
  store double %75, double* %76, align 8, !tbaa !10
  %77 = getelementptr inbounds double, double* %45, i64 %70
  %78 = load double, double* %77, align 8, !tbaa !10
  %79 = getelementptr inbounds [8 x double], [8 x double]* %7, i64 0, i64 %67
  store double %78, double* %79, align 8, !tbaa !10
  %80 = add nuw nsw i64 %67, 1
  %81 = icmp eq i64 %80, 8
  br i1 %81, label %46, label %66, !llvm.loop !42

82:                                               ; preds = %82, %46
  %83 = phi i64 [ 0, %46 ], [ %96, %82 ]
  %84 = getelementptr inbounds i32, i32* %42, i64 %83
  %85 = load i32, i32* %84, align 4, !tbaa !12
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds double, double* %63, i64 %86
  %88 = load double, double* %87, align 8, !tbaa !10
  %89 = getelementptr inbounds [8 x double], [8 x double]* %8, i64 0, i64 %83
  store double %88, double* %89, align 8, !tbaa !10
  %90 = getelementptr inbounds double, double* %64, i64 %86
  %91 = load double, double* %90, align 8, !tbaa !10
  %92 = getelementptr inbounds [8 x double], [8 x double]* %9, i64 0, i64 %83
  store double %91, double* %92, align 8, !tbaa !10
  %93 = getelementptr inbounds double, double* %65, i64 %86
  %94 = load double, double* %93, align 8, !tbaa !10
  %95 = getelementptr inbounds [8 x double], [8 x double]* %10, i64 0, i64 %83
  store double %94, double* %95, align 8, !tbaa !10
  %96 = add nuw nsw i64 %83, 1
  %97 = icmp eq i64 %96, 8
  br i1 %97, label %98, label %82, !llvm.loop !43

98:                                               ; preds = %98, %82
  %99 = phi i64 [ %127, %98 ], [ 0, %82 ]
  %100 = getelementptr inbounds [8 x double], [8 x double]* %8, i64 0, i64 %99
  %101 = bitcast double* %100 to <2 x double>*
  %102 = load <2 x double>, <2 x double>* %101, align 16, !tbaa !10
  %103 = fmul <2 x double> %36, %102
  %104 = getelementptr inbounds [8 x double], [8 x double]* %5, i64 0, i64 %99
  %105 = bitcast double* %104 to <2 x double>*
  %106 = load <2 x double>, <2 x double>* %105, align 16, !tbaa !10
  %107 = fsub <2 x double> %106, %103
  %108 = bitcast double* %104 to <2 x double>*
  store <2 x double> %107, <2 x double>* %108, align 16, !tbaa !10
  %109 = getelementptr inbounds [8 x double], [8 x double]* %9, i64 0, i64 %99
  %110 = bitcast double* %109 to <2 x double>*
  %111 = load <2 x double>, <2 x double>* %110, align 16, !tbaa !10
  %112 = fmul <2 x double> %36, %111
  %113 = getelementptr inbounds [8 x double], [8 x double]* %6, i64 0, i64 %99
  %114 = bitcast double* %113 to <2 x double>*
  %115 = load <2 x double>, <2 x double>* %114, align 16, !tbaa !10
  %116 = fsub <2 x double> %115, %112
  %117 = bitcast double* %113 to <2 x double>*
  store <2 x double> %116, <2 x double>* %117, align 16, !tbaa !10
  %118 = getelementptr inbounds [8 x double], [8 x double]* %10, i64 0, i64 %99
  %119 = bitcast double* %118 to <2 x double>*
  %120 = load <2 x double>, <2 x double>* %119, align 16, !tbaa !10
  %121 = fmul <2 x double> %36, %120
  %122 = getelementptr inbounds [8 x double], [8 x double]* %7, i64 0, i64 %99
  %123 = bitcast double* %122 to <2 x double>*
  %124 = load <2 x double>, <2 x double>* %123, align 16, !tbaa !10
  %125 = fsub <2 x double> %124, %121
  %126 = bitcast double* %122 to <2 x double>*
  store <2 x double> %125, <2 x double>* %126, align 16, !tbaa !10
  %127 = add nuw i64 %99, 2
  %128 = icmp eq i64 %127, 8
  br i1 %128, label %129, label %98, !llvm.loop !44

129:                                              ; preds = %98
  call void @_Z32CalcElemShapeFunctionDerivativesPKdS0_S0_PA8_dPd(double* nonnull %21, double* nonnull %22, double* nonnull %23, [8 x double]* nonnull %25, double* nonnull %11)
  %130 = load double, double* %11, align 8, !tbaa !10
  call void @_Z25CalcElemVelocityGrandientPKdS0_S0_PA8_S_dPd(double* nonnull %26, double* nonnull %27, double* nonnull %28, [8 x double]* nonnull %25, double %130, double* nonnull %29)
  %131 = load double, double* %29, align 16, !tbaa !10
  %132 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 25, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %133 = getelementptr inbounds double, double* %132, i64 %39
  store double %131, double* %133, align 8, !tbaa !10
  %134 = load double, double* %30, align 8, !tbaa !10
  %135 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 26, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %136 = getelementptr inbounds double, double* %135, i64 %39
  store double %134, double* %136, align 8, !tbaa !10
  %137 = load double, double* %31, align 16, !tbaa !10
  %138 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 27, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %139 = getelementptr inbounds double, double* %138, i64 %39
  store double %137, double* %139, align 8, !tbaa !10
  %140 = add nuw nsw i64 %39, 1
  %141 = icmp eq i64 %140, %34
  br i1 %141, label %37, label %38, !llvm.loop !45
}

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local void @_Z20CalcLagrangeElementsd(double %0) local_unnamed_addr #10 {
  %2 = load i32, i32* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 79), align 8, !tbaa !12
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %36

4:                                                ; preds = %1
  tail call void @_Z22CalcKinematicsForElemsid(i32 %2, double %0)
  %5 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 25, i32 0, i32 0, i32 0, i32 0), align 8
  %6 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 26, i32 0, i32 0, i32 0, i32 0), align 8
  %7 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 27, i32 0, i32 0, i32 0, i32 0), align 8
  %8 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 43, i32 0, i32 0, i32 0, i32 0), align 8
  %9 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 41, i32 0, i32 0, i32 0, i32 0), align 8
  %10 = zext i32 %2 to i64
  br label %13

11:                                               ; preds = %13
  %12 = icmp eq i64 %34, %10
  br i1 %12, label %36, label %13, !llvm.loop !46

13:                                               ; preds = %11, %4
  %14 = phi i64 [ 0, %4 ], [ %34, %11 ]
  %15 = getelementptr inbounds double, double* %5, i64 %14
  %16 = load double, double* %15, align 8, !tbaa !10
  %17 = getelementptr inbounds double, double* %6, i64 %14
  %18 = load double, double* %17, align 8, !tbaa !10
  %19 = fadd double %16, %18
  %20 = getelementptr inbounds double, double* %7, i64 %14
  %21 = load double, double* %20, align 8, !tbaa !10
  %22 = fadd double %19, %21
  %23 = fdiv double %22, 3.000000e+00
  %24 = getelementptr inbounds double, double* %8, i64 %14
  store double %22, double* %24, align 8, !tbaa !10
  %25 = load double, double* %15, align 8, !tbaa !10
  %26 = fsub double %25, %23
  store double %26, double* %15, align 8, !tbaa !10
  %27 = load double, double* %17, align 8, !tbaa !10
  %28 = fsub double %27, %23
  store double %28, double* %17, align 8, !tbaa !10
  %29 = load double, double* %20, align 8, !tbaa !10
  %30 = fsub double %29, %23
  store double %30, double* %20, align 8, !tbaa !10
  %31 = getelementptr inbounds double, double* %9, i64 %14
  %32 = load double, double* %31, align 8, !tbaa !10
  %33 = fcmp ugt double %32, 0.000000e+00
  %34 = add nuw nsw i64 %14, 1
  br i1 %33, label %11, label %35

35:                                               ; preds = %13
  tail call void @exit(i32 -1) #32
  unreachable

36:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind uwtable
define dso_local void @_Z31CalcMonotonicQGradientsForElemsv() local_unnamed_addr #20 {
  %1 = load i32, i32* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 79), align 8, !tbaa !12
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = zext i32 %1 to i64
  br label %6

5:                                                ; preds = %6, %0
  ret void

6:                                                ; preds = %6, %3
  %7 = phi i64 [ 0, %3 ], [ %370, %6 ]
  %8 = shl nsw i64 %7, 3
  %9 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 17, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !8
  %10 = getelementptr inbounds i32, i32* %9, i64 %8
  %11 = load i32, i32* %10, align 4, !tbaa !12
  %12 = getelementptr inbounds i32, i32* %10, i64 1
  %13 = load i32, i32* %12, align 4, !tbaa !12
  %14 = getelementptr inbounds i32, i32* %10, i64 2
  %15 = load i32, i32* %14, align 4, !tbaa !12
  %16 = getelementptr inbounds i32, i32* %10, i64 3
  %17 = load i32, i32* %16, align 4, !tbaa !12
  %18 = getelementptr inbounds i32, i32* %10, i64 4
  %19 = load i32, i32* %18, align 4, !tbaa !12
  %20 = getelementptr inbounds i32, i32* %10, i64 5
  %21 = load i32, i32* %20, align 4, !tbaa !12
  %22 = getelementptr inbounds i32, i32* %10, i64 6
  %23 = load i32, i32* %22, align 4, !tbaa !12
  %24 = getelementptr inbounds i32, i32* %10, i64 7
  %25 = load i32, i32* %24, align 4, !tbaa !12
  %26 = sext i32 %11 to i64
  %27 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %28 = getelementptr inbounds double, double* %27, i64 %26
  %29 = load double, double* %28, align 8, !tbaa !10
  %30 = sext i32 %13 to i64
  %31 = getelementptr inbounds double, double* %27, i64 %30
  %32 = load double, double* %31, align 8, !tbaa !10
  %33 = sext i32 %15 to i64
  %34 = getelementptr inbounds double, double* %27, i64 %33
  %35 = load double, double* %34, align 8, !tbaa !10
  %36 = sext i32 %17 to i64
  %37 = getelementptr inbounds double, double* %27, i64 %36
  %38 = load double, double* %37, align 8, !tbaa !10
  %39 = sext i32 %19 to i64
  %40 = getelementptr inbounds double, double* %27, i64 %39
  %41 = load double, double* %40, align 8, !tbaa !10
  %42 = sext i32 %21 to i64
  %43 = getelementptr inbounds double, double* %27, i64 %42
  %44 = load double, double* %43, align 8, !tbaa !10
  %45 = sext i32 %23 to i64
  %46 = getelementptr inbounds double, double* %27, i64 %45
  %47 = load double, double* %46, align 8, !tbaa !10
  %48 = sext i32 %25 to i64
  %49 = getelementptr inbounds double, double* %27, i64 %48
  %50 = load double, double* %49, align 8, !tbaa !10
  %51 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %52 = getelementptr inbounds double, double* %51, i64 %26
  %53 = load double, double* %52, align 8, !tbaa !10
  %54 = getelementptr inbounds double, double* %51, i64 %30
  %55 = load double, double* %54, align 8, !tbaa !10
  %56 = getelementptr inbounds double, double* %51, i64 %33
  %57 = load double, double* %56, align 8, !tbaa !10
  %58 = getelementptr inbounds double, double* %51, i64 %36
  %59 = load double, double* %58, align 8, !tbaa !10
  %60 = getelementptr inbounds double, double* %51, i64 %39
  %61 = load double, double* %60, align 8, !tbaa !10
  %62 = getelementptr inbounds double, double* %51, i64 %42
  %63 = load double, double* %62, align 8, !tbaa !10
  %64 = getelementptr inbounds double, double* %51, i64 %45
  %65 = load double, double* %64, align 8, !tbaa !10
  %66 = getelementptr inbounds double, double* %51, i64 %48
  %67 = load double, double* %66, align 8, !tbaa !10
  %68 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %69 = getelementptr inbounds double, double* %68, i64 %26
  %70 = load double, double* %69, align 8, !tbaa !10
  %71 = getelementptr inbounds double, double* %68, i64 %30
  %72 = load double, double* %71, align 8, !tbaa !10
  %73 = getelementptr inbounds double, double* %68, i64 %33
  %74 = load double, double* %73, align 8, !tbaa !10
  %75 = getelementptr inbounds double, double* %68, i64 %36
  %76 = load double, double* %75, align 8, !tbaa !10
  %77 = getelementptr inbounds double, double* %68, i64 %39
  %78 = load double, double* %77, align 8, !tbaa !10
  %79 = getelementptr inbounds double, double* %68, i64 %42
  %80 = load double, double* %79, align 8, !tbaa !10
  %81 = getelementptr inbounds double, double* %68, i64 %45
  %82 = load double, double* %81, align 8, !tbaa !10
  %83 = getelementptr inbounds double, double* %68, i64 %48
  %84 = load double, double* %83, align 8, !tbaa !10
  %85 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %86 = getelementptr inbounds double, double* %85, i64 %26
  %87 = load double, double* %86, align 8, !tbaa !10
  %88 = getelementptr inbounds double, double* %85, i64 %30
  %89 = load double, double* %88, align 8, !tbaa !10
  %90 = getelementptr inbounds double, double* %85, i64 %33
  %91 = load double, double* %90, align 8, !tbaa !10
  %92 = getelementptr inbounds double, double* %85, i64 %36
  %93 = load double, double* %92, align 8, !tbaa !10
  %94 = getelementptr inbounds double, double* %85, i64 %39
  %95 = load double, double* %94, align 8, !tbaa !10
  %96 = getelementptr inbounds double, double* %85, i64 %42
  %97 = load double, double* %96, align 8, !tbaa !10
  %98 = getelementptr inbounds double, double* %85, i64 %45
  %99 = load double, double* %98, align 8, !tbaa !10
  %100 = getelementptr inbounds double, double* %85, i64 %48
  %101 = load double, double* %100, align 8, !tbaa !10
  %102 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 4, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %103 = getelementptr inbounds double, double* %102, i64 %26
  %104 = load double, double* %103, align 8, !tbaa !10
  %105 = getelementptr inbounds double, double* %102, i64 %30
  %106 = load double, double* %105, align 8, !tbaa !10
  %107 = getelementptr inbounds double, double* %102, i64 %33
  %108 = load double, double* %107, align 8, !tbaa !10
  %109 = getelementptr inbounds double, double* %102, i64 %36
  %110 = load double, double* %109, align 8, !tbaa !10
  %111 = getelementptr inbounds double, double* %102, i64 %39
  %112 = load double, double* %111, align 8, !tbaa !10
  %113 = getelementptr inbounds double, double* %102, i64 %42
  %114 = load double, double* %113, align 8, !tbaa !10
  %115 = getelementptr inbounds double, double* %102, i64 %45
  %116 = load double, double* %115, align 8, !tbaa !10
  %117 = getelementptr inbounds double, double* %102, i64 %48
  %118 = load double, double* %117, align 8, !tbaa !10
  %119 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 5, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %120 = getelementptr inbounds double, double* %119, i64 %26
  %121 = load double, double* %120, align 8, !tbaa !10
  %122 = getelementptr inbounds double, double* %119, i64 %30
  %123 = load double, double* %122, align 8, !tbaa !10
  %124 = getelementptr inbounds double, double* %119, i64 %33
  %125 = load double, double* %124, align 8, !tbaa !10
  %126 = getelementptr inbounds double, double* %119, i64 %36
  %127 = load double, double* %126, align 8, !tbaa !10
  %128 = getelementptr inbounds double, double* %119, i64 %39
  %129 = load double, double* %128, align 8, !tbaa !10
  %130 = getelementptr inbounds double, double* %119, i64 %42
  %131 = load double, double* %130, align 8, !tbaa !10
  %132 = getelementptr inbounds double, double* %119, i64 %45
  %133 = load double, double* %132, align 8, !tbaa !10
  %134 = getelementptr inbounds double, double* %119, i64 %48
  %135 = load double, double* %134, align 8, !tbaa !10
  %136 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 40, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %137 = getelementptr inbounds double, double* %136, i64 %7
  %138 = load double, double* %137, align 8, !tbaa !10
  %139 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 41, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %140 = getelementptr inbounds double, double* %139, i64 %7
  %141 = load double, double* %140, align 8, !tbaa !10
  %142 = fmul double %138, %141
  %143 = fadd double %142, 0x38754484932D2E72
  %144 = fdiv double 1.000000e+00, %143
  %145 = fadd double %29, %32
  %146 = fadd double %145, %44
  %147 = fadd double %41, %146
  %148 = fadd double %35, %38
  %149 = fadd double %148, %47
  %150 = fadd double %149, %50
  %151 = fsub double %147, %150
  %152 = fmul double %151, -2.500000e-01
  %153 = fadd double %53, %55
  %154 = fadd double %153, %63
  %155 = fadd double %61, %154
  %156 = fadd double %57, %59
  %157 = fadd double %156, %65
  %158 = fadd double %157, %67
  %159 = fsub double %155, %158
  %160 = fmul double %159, -2.500000e-01
  %161 = fadd double %70, %72
  %162 = fadd double %161, %80
  %163 = fadd double %78, %162
  %164 = fadd double %74, %76
  %165 = fadd double %164, %82
  %166 = fadd double %165, %84
  %167 = fsub double %163, %166
  %168 = fmul double %167, -2.500000e-01
  %169 = fadd double %32, %35
  %170 = fadd double %169, %47
  %171 = fadd double %44, %170
  %172 = fadd double %29, %38
  %173 = fadd double %172, %50
  %174 = fadd double %41, %173
  %175 = fsub double %171, %174
  %176 = fmul double %175, 2.500000e-01
  %177 = fadd double %55, %57
  %178 = fadd double %177, %65
  %179 = fadd double %63, %178
  %180 = fadd double %53, %59
  %181 = fadd double %180, %67
  %182 = fadd double %61, %181
  %183 = fsub double %179, %182
  %184 = fmul double %183, 2.500000e-01
  %185 = fadd double %72, %74
  %186 = fadd double %185, %82
  %187 = fadd double %80, %186
  %188 = fadd double %70, %76
  %189 = fadd double %188, %84
  %190 = fadd double %78, %189
  %191 = fsub double %187, %190
  %192 = fmul double %191, 2.500000e-01
  %193 = fadd double %41, %44
  %194 = fadd double %193, %47
  %195 = fadd double %194, %50
  %196 = fadd double %145, %35
  %197 = fadd double %196, %38
  %198 = fsub double %195, %197
  %199 = fmul double %198, 2.500000e-01
  %200 = fadd double %61, %63
  %201 = fadd double %200, %65
  %202 = fadd double %201, %67
  %203 = fadd double %153, %57
  %204 = fadd double %203, %59
  %205 = fsub double %202, %204
  %206 = fmul double %205, 2.500000e-01
  %207 = fadd double %78, %80
  %208 = fadd double %207, %82
  %209 = fadd double %208, %84
  %210 = fadd double %161, %74
  %211 = fadd double %210, %76
  %212 = fsub double %209, %211
  %213 = fmul double %212, 2.500000e-01
  %214 = fmul double %184, %168
  %215 = fmul double %160, %192
  %216 = fsub double %214, %215
  %217 = fmul double %152, %192
  %218 = fmul double %176, %168
  %219 = fsub double %217, %218
  %220 = fmul double %176, %160
  %221 = fmul double %152, %184
  %222 = fsub double %220, %221
  %223 = fmul double %216, %216
  %224 = fmul double %219, %219
  %225 = fadd double %223, %224
  %226 = fmul double %222, %222
  %227 = fadd double %226, %225
  %228 = fadd double %227, 0x38754484932D2E72
  %229 = tail call double @sqrt(double %228) #2
  %230 = fdiv double %142, %229
  %231 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 33, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %232 = getelementptr inbounds double, double* %231, i64 %7
  store double %230, double* %232, align 8, !tbaa !10
  %233 = fmul double %216, %144
  %234 = fmul double %219, %144
  %235 = fmul double %222, %144
  %236 = fadd double %95, %97
  %237 = fadd double %236, %99
  %238 = fadd double %237, %101
  %239 = fadd double %87, %89
  %240 = fadd double %239, %91
  %241 = fadd double %240, %93
  %242 = fsub double %238, %241
  %243 = fmul double %242, 2.500000e-01
  %244 = fadd double %112, %114
  %245 = fadd double %244, %116
  %246 = fadd double %245, %118
  %247 = fadd double %104, %106
  %248 = fadd double %247, %108
  %249 = fadd double %248, %110
  %250 = fsub double %246, %249
  %251 = fmul double %250, 2.500000e-01
  %252 = fadd double %129, %131
  %253 = fadd double %252, %133
  %254 = fadd double %253, %135
  %255 = fadd double %121, %123
  %256 = fadd double %255, %125
  %257 = fadd double %256, %127
  %258 = fsub double %254, %257
  %259 = fmul double %258, 2.500000e-01
  %260 = fmul double %243, %233
  %261 = fmul double %251, %234
  %262 = fadd double %260, %261
  %263 = fmul double %259, %235
  %264 = fadd double %263, %262
  %265 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 30, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %266 = getelementptr inbounds double, double* %265, i64 %7
  store double %264, double* %266, align 8, !tbaa !10
  %267 = fmul double %160, %213
  %268 = fmul double %206, %168
  %269 = fsub double %267, %268
  %270 = fmul double %199, %168
  %271 = fmul double %152, %213
  %272 = fsub double %270, %271
  %273 = fmul double %152, %206
  %274 = fmul double %199, %160
  %275 = fsub double %273, %274
  %276 = fmul double %269, %269
  %277 = fmul double %272, %272
  %278 = fadd double %276, %277
  %279 = fmul double %275, %275
  %280 = fadd double %279, %278
  %281 = fadd double %280, 0x38754484932D2E72
  %282 = tail call double @sqrt(double %281) #2
  %283 = fdiv double %142, %282
  %284 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 31, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %285 = getelementptr inbounds double, double* %284, i64 %7
  store double %283, double* %285, align 8, !tbaa !10
  %286 = fmul double %269, %144
  %287 = fmul double %272, %144
  %288 = fmul double %275, %144
  %289 = fadd double %89, %91
  %290 = fadd double %289, %99
  %291 = fadd double %97, %290
  %292 = fadd double %87, %93
  %293 = fadd double %292, %101
  %294 = fadd double %95, %293
  %295 = fsub double %291, %294
  %296 = fmul double %295, 2.500000e-01
  %297 = fadd double %106, %108
  %298 = fadd double %297, %116
  %299 = fadd double %114, %298
  %300 = fadd double %104, %110
  %301 = fadd double %300, %118
  %302 = fadd double %112, %301
  %303 = fsub double %299, %302
  %304 = fmul double %303, 2.500000e-01
  %305 = fadd double %123, %125
  %306 = fadd double %305, %133
  %307 = fadd double %131, %306
  %308 = fadd double %121, %127
  %309 = fadd double %308, %135
  %310 = fadd double %129, %309
  %311 = fsub double %307, %310
  %312 = fmul double %311, 2.500000e-01
  %313 = fmul double %296, %286
  %314 = fmul double %304, %287
  %315 = fadd double %313, %314
  %316 = fmul double %312, %288
  %317 = fadd double %316, %315
  %318 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 28, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %319 = getelementptr inbounds double, double* %318, i64 %7
  store double %317, double* %319, align 8, !tbaa !10
  %320 = fmul double %206, %192
  %321 = fmul double %184, %213
  %322 = fsub double %320, %321
  %323 = fmul double %176, %213
  %324 = fmul double %199, %192
  %325 = fsub double %323, %324
  %326 = fmul double %199, %184
  %327 = fmul double %176, %206
  %328 = fsub double %326, %327
  %329 = fmul double %322, %322
  %330 = fmul double %325, %325
  %331 = fadd double %329, %330
  %332 = fmul double %328, %328
  %333 = fadd double %332, %331
  %334 = fadd double %333, 0x38754484932D2E72
  %335 = tail call double @sqrt(double %334) #2
  %336 = fdiv double %142, %335
  %337 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 32, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %338 = getelementptr inbounds double, double* %337, i64 %7
  store double %336, double* %338, align 8, !tbaa !10
  %339 = fmul double %322, %144
  %340 = fmul double %325, %144
  %341 = fmul double %328, %144
  %342 = fadd double %239, %97
  %343 = fadd double %95, %342
  %344 = fadd double %91, %93
  %345 = fadd double %344, %99
  %346 = fadd double %345, %101
  %347 = fsub double %343, %346
  %348 = fmul double %347, -2.500000e-01
  %349 = fadd double %247, %114
  %350 = fadd double %112, %349
  %351 = fadd double %108, %110
  %352 = fadd double %351, %116
  %353 = fadd double %352, %118
  %354 = fsub double %350, %353
  %355 = fmul double %354, 2.500000e-01
  %356 = fadd double %255, %131
  %357 = fadd double %129, %356
  %358 = fadd double %125, %127
  %359 = fadd double %358, %133
  %360 = fadd double %359, %135
  %361 = fsub double %357, %360
  %362 = fmul double %361, 2.500000e-01
  %363 = fmul double %348, %339
  %364 = fmul double %355, %340
  %365 = fsub double %363, %364
  %366 = fmul double %362, %341
  %367 = fsub double %365, %366
  %368 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 29, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %369 = getelementptr inbounds double, double* %368, i64 %7
  store double %367, double* %369, align 8, !tbaa !10
  %370 = add nuw nsw i64 %7, 1
  %371 = icmp eq i64 %370, %4
  br i1 %371, label %5, label %6, !llvm.loop !47
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable
define dso_local void @_Z28CalcMonotonicQRegionForElemsdddddi(double %0, double %1, double %2, double %3, double %4, i32 %5) local_unnamed_addr #6 {
  %7 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 16, i32 0, i32 0, i32 0, i32 0), align 8
  %8 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 24, i32 0, i32 0, i32 0, i32 0), align 8
  %9 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 28, i32 0, i32 0, i32 0, i32 0), align 8
  %10 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 18, i32 0, i32 0, i32 0, i32 0), align 8
  %11 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 19, i32 0, i32 0, i32 0, i32 0), align 8
  %12 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 29, i32 0, i32 0, i32 0, i32 0), align 8
  %13 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 20, i32 0, i32 0, i32 0, i32 0), align 8
  %14 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 21, i32 0, i32 0, i32 0, i32 0), align 8
  %15 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 30, i32 0, i32 0, i32 0, i32 0), align 8
  %16 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 22, i32 0, i32 0, i32 0, i32 0), align 8
  %17 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 23, i32 0, i32 0, i32 0, i32 0), align 8
  %18 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 43, i32 0, i32 0, i32 0, i32 0), align 8
  %19 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 31, i32 0, i32 0, i32 0, i32 0), align 8
  %20 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 32, i32 0, i32 0, i32 0, i32 0), align 8
  %21 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 33, i32 0, i32 0, i32 0, i32 0), align 8
  %22 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 46, i32 0, i32 0, i32 0, i32 0), align 8
  %23 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 40, i32 0, i32 0, i32 0, i32 0), align 8
  %24 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 41, i32 0, i32 0, i32 0, i32 0), align 8
  %25 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 38, i32 0, i32 0, i32 0, i32 0), align 8
  %26 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 37, i32 0, i32 0, i32 0, i32 0), align 8
  %27 = icmp sgt i32 %5, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %6
  %29 = fneg double %0
  %30 = zext i32 %5 to i64
  %31 = insertelement <2 x double> poison, double %1, i32 0
  %32 = insertelement <2 x double> %31, double %29, i32 1
  br label %34

33:                                               ; preds = %221, %6
  ret void

34:                                               ; preds = %221, %28
  %35 = phi i64 [ 0, %28 ], [ %227, %221 ]
  %36 = phi double [ undef, %28 ], [ %155, %221 ]
  %37 = phi double [ undef, %28 ], [ %154, %221 ]
  %38 = getelementptr inbounds i32, i32* %7, i64 %35
  %39 = load i32, i32* %38, align 4, !tbaa !12
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %8, i64 %40
  %42 = load i32, i32* %41, align 4, !tbaa !12
  %43 = getelementptr inbounds double, double* %9, i64 %40
  %44 = load double, double* %43, align 8, !tbaa !10
  %45 = fadd double %44, %4
  %46 = fdiv double 1.000000e+00, %45
  %47 = and i32 %42, 3
  switch i32 %47, label %56 [
    i32 0, label %48
    i32 1, label %54
    i32 2, label %55
  ]

48:                                               ; preds = %34
  %49 = getelementptr inbounds i32, i32* %10, i64 %40
  %50 = load i32, i32* %49, align 4, !tbaa !12
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds double, double* %9, i64 %51
  %53 = load double, double* %52, align 8, !tbaa !10
  br label %56

54:                                               ; preds = %34
  br label %56

55:                                               ; preds = %34
  br label %56

56:                                               ; preds = %55, %54, %48, %34
  %57 = phi double [ %37, %34 ], [ 0.000000e+00, %55 ], [ %44, %54 ], [ %53, %48 ]
  %58 = and i32 %42, 12
  switch i32 %58, label %67 [
    i32 0, label %59
    i32 4, label %65
    i32 8, label %66
  ]

59:                                               ; preds = %56
  %60 = getelementptr inbounds i32, i32* %11, i64 %40
  %61 = load i32, i32* %60, align 4, !tbaa !12
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds double, double* %9, i64 %62
  %64 = load double, double* %63, align 8, !tbaa !10
  br label %67

65:                                               ; preds = %56
  br label %67

66:                                               ; preds = %56
  br label %67

67:                                               ; preds = %66, %65, %59, %56
  %68 = phi double [ %36, %56 ], [ 0.000000e+00, %66 ], [ %44, %65 ], [ %64, %59 ]
  %69 = fmul double %46, %57
  %70 = fmul double %46, %68
  %71 = fadd double %69, %70
  %72 = fmul double %71, 5.000000e-01
  %73 = fmul double %69, %2
  %74 = fmul double %70, %2
  %75 = fcmp olt double %73, %72
  %76 = select i1 %75, double %73, double %72
  %77 = fcmp olt double %74, %76
  %78 = select i1 %77, double %74, double %76
  %79 = fcmp olt double %78, 0.000000e+00
  %80 = select i1 %79, double 0.000000e+00, double %78
  %81 = fcmp ogt double %80, %3
  %82 = select i1 %81, double %3, double %80
  %83 = getelementptr inbounds double, double* %12, i64 %40
  %84 = load double, double* %83, align 8, !tbaa !10
  %85 = fadd double %84, %4
  %86 = fdiv double 1.000000e+00, %85
  %87 = and i32 %42, 48
  switch i32 %87, label %96 [
    i32 0, label %88
    i32 16, label %94
    i32 32, label %95
  ]

88:                                               ; preds = %67
  %89 = getelementptr inbounds i32, i32* %13, i64 %40
  %90 = load i32, i32* %89, align 4, !tbaa !12
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds double, double* %12, i64 %91
  %93 = load double, double* %92, align 8, !tbaa !10
  br label %96

94:                                               ; preds = %67
  br label %96

95:                                               ; preds = %67
  br label %96

96:                                               ; preds = %95, %94, %88, %67
  %97 = phi double [ %73, %67 ], [ 0.000000e+00, %95 ], [ %84, %94 ], [ %93, %88 ]
  %98 = trunc i32 %42 to i8
  %99 = and i8 %98, -64
  switch i8 %99, label %108 [
    i8 0, label %100
    i8 64, label %106
    i8 -128, label %107
  ]

100:                                              ; preds = %96
  %101 = getelementptr inbounds i32, i32* %14, i64 %40
  %102 = load i32, i32* %101, align 4, !tbaa !12
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds double, double* %12, i64 %103
  %105 = load double, double* %104, align 8, !tbaa !10
  br label %108

106:                                              ; preds = %96
  br label %108

107:                                              ; preds = %96
  br label %108

108:                                              ; preds = %107, %106, %100, %96
  %109 = phi double [ %74, %96 ], [ 0.000000e+00, %107 ], [ %84, %106 ], [ %105, %100 ]
  %110 = fmul double %86, %97
  %111 = fmul double %86, %109
  %112 = fadd double %110, %111
  %113 = fmul double %112, 5.000000e-01
  %114 = fmul double %110, %2
  %115 = fmul double %111, %2
  %116 = fcmp olt double %114, %113
  %117 = select i1 %116, double %114, double %113
  %118 = fcmp olt double %115, %117
  %119 = select i1 %118, double %115, double %117
  %120 = fcmp olt double %119, 0.000000e+00
  %121 = select i1 %120, double 0.000000e+00, double %119
  %122 = fcmp ogt double %121, %3
  %123 = select i1 %122, double %3, double %121
  %124 = getelementptr inbounds double, double* %15, i64 %40
  %125 = load double, double* %124, align 8, !tbaa !10
  %126 = fadd double %125, %4
  %127 = fdiv double 1.000000e+00, %126
  %128 = and i32 %42, 768
  switch i32 %128, label %137 [
    i32 0, label %129
    i32 256, label %135
    i32 512, label %136
  ]

129:                                              ; preds = %108
  %130 = getelementptr inbounds i32, i32* %16, i64 %40
  %131 = load i32, i32* %130, align 4, !tbaa !12
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds double, double* %15, i64 %132
  %134 = load double, double* %133, align 8, !tbaa !10
  br label %137

135:                                              ; preds = %108
  br label %137

136:                                              ; preds = %108
  br label %137

137:                                              ; preds = %136, %135, %129, %108
  %138 = phi double [ %114, %108 ], [ 0.000000e+00, %136 ], [ %125, %135 ], [ %134, %129 ]
  %139 = and i32 %42, 3072
  switch i32 %139, label %148 [
    i32 0, label %140
    i32 1024, label %146
    i32 2048, label %147
  ]

140:                                              ; preds = %137
  %141 = getelementptr inbounds i32, i32* %17, i64 %40
  %142 = load i32, i32* %141, align 4, !tbaa !12
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds double, double* %15, i64 %143
  %145 = load double, double* %144, align 8, !tbaa !10
  br label %148

146:                                              ; preds = %137
  br label %148

147:                                              ; preds = %137
  br label %148

148:                                              ; preds = %147, %146, %140, %137
  %149 = phi double [ %115, %137 ], [ 0.000000e+00, %147 ], [ %125, %146 ], [ %145, %140 ]
  %150 = fmul double %127, %138
  %151 = fmul double %127, %149
  %152 = fadd double %150, %151
  %153 = fmul double %152, 5.000000e-01
  %154 = fmul double %150, %2
  %155 = fmul double %151, %2
  %156 = fcmp olt double %154, %153
  %157 = select i1 %156, double %154, double %153
  %158 = fcmp olt double %155, %157
  %159 = select i1 %158, double %155, double %157
  %160 = fcmp olt double %159, 0.000000e+00
  %161 = select i1 %160, double 0.000000e+00, double %159
  %162 = fcmp ogt double %161, %3
  %163 = select i1 %162, double %3, double %161
  %164 = getelementptr inbounds double, double* %18, i64 %40
  %165 = load double, double* %164, align 8, !tbaa !10
  %166 = fcmp ogt double %165, 0.000000e+00
  br i1 %166, label %221, label %167

167:                                              ; preds = %148
  %168 = getelementptr inbounds double, double* %19, i64 %40
  %169 = load double, double* %168, align 8, !tbaa !10
  %170 = fmul double %44, %169
  %171 = getelementptr inbounds double, double* %20, i64 %40
  %172 = load double, double* %171, align 8, !tbaa !10
  %173 = fmul double %84, %172
  %174 = getelementptr inbounds double, double* %21, i64 %40
  %175 = load double, double* %174, align 8, !tbaa !10
  %176 = fmul double %125, %175
  %177 = fcmp ogt double %170, 0.000000e+00
  %178 = select i1 %177, double 0.000000e+00, double %170
  %179 = fcmp ogt double %173, 0.000000e+00
  %180 = select i1 %179, double 0.000000e+00, double %173
  %181 = fcmp ogt double %176, 0.000000e+00
  %182 = select i1 %181, double 0.000000e+00, double %176
  %183 = getelementptr inbounds double, double* %22, i64 %40
  %184 = load double, double* %183, align 8, !tbaa !10
  %185 = getelementptr inbounds double, double* %23, i64 %40
  %186 = load double, double* %185, align 8, !tbaa !10
  %187 = getelementptr inbounds double, double* %24, i64 %40
  %188 = load double, double* %187, align 8, !tbaa !10
  %189 = fmul double %186, %188
  %190 = fdiv double %184, %189
  %191 = insertelement <2 x double> poison, double %190, i32 0
  %192 = shufflevector <2 x double> %191, <2 x double> poison, <2 x i32> zeroinitializer
  %193 = fmul <2 x double> %192, %32
  %194 = fmul double %178, %178
  %195 = fmul double %82, %82
  %196 = insertelement <2 x double> poison, double %195, i32 0
  %197 = insertelement <2 x double> %196, double %82, i32 1
  %198 = fsub <2 x double> <double 1.000000e+00, double 1.000000e+00>, %197
  %199 = insertelement <2 x double> poison, double %194, i32 0
  %200 = insertelement <2 x double> %199, double %178, i32 1
  %201 = fmul <2 x double> %198, %200
  %202 = fmul double %180, %180
  %203 = fmul double %123, %123
  %204 = insertelement <2 x double> poison, double %203, i32 0
  %205 = insertelement <2 x double> %204, double %123, i32 1
  %206 = fsub <2 x double> <double 1.000000e+00, double 1.000000e+00>, %205
  %207 = insertelement <2 x double> poison, double %202, i32 0
  %208 = insertelement <2 x double> %207, double %180, i32 1
  %209 = fmul <2 x double> %206, %208
  %210 = fadd <2 x double> %201, %209
  %211 = fmul double %182, %182
  %212 = fmul double %163, %163
  %213 = insertelement <2 x double> poison, double %212, i32 0
  %214 = insertelement <2 x double> %213, double %163, i32 1
  %215 = fsub <2 x double> <double 1.000000e+00, double 1.000000e+00>, %214
  %216 = insertelement <2 x double> poison, double %211, i32 0
  %217 = insertelement <2 x double> %216, double %182, i32 1
  %218 = fmul <2 x double> %215, %217
  %219 = fadd <2 x double> %210, %218
  %220 = fmul <2 x double> %219, %193
  br label %221

221:                                              ; preds = %167, %148
  %222 = phi <2 x double> [ %220, %167 ], [ zeroinitializer, %148 ]
  %223 = getelementptr inbounds double, double* %25, i64 %40
  %224 = extractelement <2 x double> %222, i32 0
  store double %224, double* %223, align 8, !tbaa !10
  %225 = getelementptr inbounds double, double* %26, i64 %40
  %226 = extractelement <2 x double> %222, i32 1
  store double %226, double* %225, align 8, !tbaa !10
  %227 = add nuw nsw i64 %35, 1
  %228 = icmp eq i64 %227, %30
  br i1 %228, label %33, label %34, !llvm.loop !48
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable
define dso_local void @_Z22CalcMonotonicQForElemsv() local_unnamed_addr #6 {
  %1 = load i32, i32* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 79), align 8, !tbaa !12
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  %4 = load double, double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 57), align 8, !tbaa !10
  %5 = load double, double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 56), align 8, !tbaa !10
  %6 = load double, double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 63), align 8, !tbaa !10
  %7 = load double, double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 64), align 8, !tbaa !10
  tail call void @_Z28CalcMonotonicQRegionForElemsdddddi(double %6, double %7, double %4, double %5, double 0x38754484932D2E72, i32 %1)
  br label %8

8:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local void @_Z13CalcQForElemsv() local_unnamed_addr #10 {
  %1 = load double, double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 55), align 8, !tbaa !10
  %2 = load i32, i32* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 79), align 8, !tbaa !12
  tail call void @_Z31CalcMonotonicQGradientsForElemsv()
  tail call void @_Z22CalcMonotonicQForElemsv()
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %18, label %4

4:                                                ; preds = %0
  %5 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 36, i32 0, i32 0, i32 0, i32 0), align 8
  %6 = icmp sgt i32 %2, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %4
  %8 = zext i32 %2 to i64
  br label %11

9:                                                ; preds = %11
  %10 = icmp eq i64 %16, %8
  br i1 %10, label %18, label %11, !llvm.loop !49

11:                                               ; preds = %9, %7
  %12 = phi i64 [ 0, %7 ], [ %16, %9 ]
  %13 = getelementptr inbounds double, double* %5, i64 %12
  %14 = load double, double* %13, align 8, !tbaa !10
  %15 = fcmp ogt double %14, %1
  %16 = add nuw nsw i64 %12, 1
  br i1 %15, label %17, label %9

17:                                               ; preds = %11
  tail call void @exit(i32 -2) #32
  unreachable

18:                                               ; preds = %9, %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable
define dso_local void @_Z20CalcPressureForElemsPdS_S_S_S_S_dddi(double* nocapture %0, double* nocapture %1, double* nocapture %2, double* nocapture readonly %3, double* nocapture readonly %4, double* nocapture readonly %5, double %6, double %7, double %8, i32 %9) local_unnamed_addr #7 {
  %11 = icmp sgt i32 %9, 0
  br i1 %11, label %12, label %129

12:                                               ; preds = %10
  %13 = zext i32 %9 to i64
  %14 = icmp eq i32 %9, 1
  br i1 %14, label %47, label %15

15:                                               ; preds = %12
  %16 = getelementptr double, double* %1, i64 %13
  %17 = getelementptr double, double* %2, i64 %13
  %18 = getelementptr double, double* %4, i64 %13
  %19 = icmp ugt double* %17, %1
  %20 = icmp ugt double* %16, %2
  %21 = and i1 %19, %20
  %22 = icmp ugt double* %18, %1
  %23 = icmp ugt double* %16, %4
  %24 = and i1 %22, %23
  %25 = or i1 %21, %24
  %26 = icmp ugt double* %18, %2
  %27 = icmp ugt double* %17, %4
  %28 = and i1 %26, %27
  %29 = or i1 %25, %28
  br i1 %29, label %47, label %30

30:                                               ; preds = %15
  %31 = and i64 %13, 4294967294
  br label %32

32:                                               ; preds = %32, %30
  %33 = phi i64 [ 0, %30 ], [ %43, %32 ]
  %34 = getelementptr inbounds double, double* %4, i64 %33
  %35 = bitcast double* %34 to <2 x double>*
  %36 = load <2 x double>, <2 x double>* %35, align 8, !tbaa !10, !alias.scope !50
  %37 = fadd <2 x double> %36, <double 1.000000e+00, double 1.000000e+00>
  %38 = fmul <2 x double> %37, <double 0x3FE5555555555555, double 0x3FE5555555555555>
  %39 = getelementptr inbounds double, double* %1, i64 %33
  %40 = bitcast double* %39 to <2 x double>*
  store <2 x double> %38, <2 x double>* %40, align 8, !tbaa !10, !alias.scope !53, !noalias !55
  %41 = getelementptr inbounds double, double* %2, i64 %33
  %42 = bitcast double* %41 to <2 x double>*
  store <2 x double> <double 0x3FE5555555555555, double 0x3FE5555555555555>, <2 x double>* %42, align 8, !tbaa !10, !alias.scope !57, !noalias !50
  %43 = add nuw i64 %33, 2
  %44 = icmp eq i64 %43, %31
  br i1 %44, label %45, label %32, !llvm.loop !58

45:                                               ; preds = %32
  %46 = icmp eq i64 %31, %13
  br i1 %46, label %49, label %47

47:                                               ; preds = %45, %15, %12
  %48 = phi i64 [ 0, %15 ], [ 0, %12 ], [ %31, %45 ]
  br label %119

49:                                               ; preds = %119, %45
  br i1 %11, label %50, label %129

50:                                               ; preds = %49
  %51 = zext i32 %9 to i64
  %52 = icmp eq i32 %9, 1
  br i1 %52, label %117, label %53

53:                                               ; preds = %50
  %54 = getelementptr double, double* %0, i64 %13
  %55 = getelementptr double, double* %1, i64 %13
  %56 = getelementptr double, double* %3, i64 %13
  %57 = getelementptr double, double* %5, i64 %13
  %58 = icmp ugt double* %55, %0
  %59 = icmp ugt double* %54, %1
  %60 = and i1 %58, %59
  %61 = icmp ugt double* %56, %0
  %62 = icmp ugt double* %54, %3
  %63 = and i1 %61, %62
  %64 = or i1 %60, %63
  %65 = icmp ugt double* %57, %0
  %66 = icmp ugt double* %54, %5
  %67 = and i1 %65, %66
  %68 = or i1 %64, %67
  br i1 %68, label %117, label %69

69:                                               ; preds = %53
  %70 = and i64 %13, 4294967294
  %71 = insertelement <2 x double> poison, double %7, i32 0
  %72 = shufflevector <2 x double> %71, <2 x double> poison, <2 x i32> zeroinitializer
  %73 = insertelement <2 x double> poison, double %8, i32 0
  %74 = shufflevector <2 x double> %73, <2 x double> poison, <2 x i32> zeroinitializer
  %75 = insertelement <2 x double> poison, double %6, i32 0
  %76 = shufflevector <2 x double> %75, <2 x double> poison, <2 x i32> zeroinitializer
  br label %77

77:                                               ; preds = %112, %69
  %78 = phi i64 [ 0, %69 ], [ %113, %112 ]
  %79 = getelementptr inbounds double, double* %1, i64 %78
  %80 = bitcast double* %79 to <2 x double>*
  %81 = load <2 x double>, <2 x double>* %80, align 8, !tbaa !10, !alias.scope !59
  %82 = getelementptr inbounds double, double* %3, i64 %78
  %83 = bitcast double* %82 to <2 x double>*
  %84 = load <2 x double>, <2 x double>* %83, align 8, !tbaa !10, !alias.scope !62
  %85 = fmul <2 x double> %81, %84
  %86 = getelementptr inbounds double, double* %0, i64 %78
  %87 = call <2 x double> @llvm.fabs.v2f64(<2 x double> %85)
  %88 = fcmp olt <2 x double> %87, %72
  %89 = select <2 x i1> %88, <2 x double> zeroinitializer, <2 x double> %85
  %90 = bitcast double* %86 to <2 x double>*
  store <2 x double> %89, <2 x double>* %90, align 8, !tbaa !10, !alias.scope !64, !noalias !66
  %91 = getelementptr inbounds double, double* %5, i64 %78
  %92 = bitcast double* %91 to <2 x double>*
  %93 = load <2 x double>, <2 x double>* %92, align 8, !tbaa !10, !alias.scope !68
  %94 = fcmp ult <2 x double> %93, %74
  %95 = select <2 x i1> %94, <2 x double> %89, <2 x double> zeroinitializer
  %96 = fcmp olt <2 x double> %95, %76
  %97 = xor <2 x i1> %94, <i1 true, i1 true>
  %98 = or <2 x i1> %96, %97
  %99 = extractelement <2 x i1> %98, i32 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %77
  %101 = extractelement <2 x i1> %96, i32 0
  %102 = extractelement <2 x double> %95, i32 0
  %103 = select i1 %101, double %6, double %102
  store double %103, double* %86, align 8, !tbaa !10, !alias.scope !64, !noalias !66
  br label %104

104:                                              ; preds = %100, %77
  %105 = extractelement <2 x i1> %98, i32 1
  br i1 %105, label %106, label %112

106:                                              ; preds = %104
  %107 = or i64 %78, 1
  %108 = getelementptr inbounds double, double* %0, i64 %107
  %109 = extractelement <2 x i1> %96, i32 1
  %110 = extractelement <2 x double> %95, i32 1
  %111 = select i1 %109, double %6, double %110
  store double %111, double* %108, align 8, !tbaa !10, !alias.scope !64, !noalias !66
  br label %112

112:                                              ; preds = %106, %104
  %113 = add nuw i64 %78, 2
  %114 = icmp eq i64 %113, %70
  br i1 %114, label %115, label %77, !llvm.loop !69

115:                                              ; preds = %112
  %116 = icmp eq i64 %70, %13
  br i1 %116, label %129, label %117

117:                                              ; preds = %115, %53, %50
  %118 = phi i64 [ 0, %53 ], [ 0, %50 ], [ %70, %115 ]
  br label %130

119:                                              ; preds = %119, %47
  %120 = phi i64 [ %127, %119 ], [ %48, %47 ]
  %121 = getelementptr inbounds double, double* %4, i64 %120
  %122 = load double, double* %121, align 8, !tbaa !10
  %123 = fadd double %122, 1.000000e+00
  %124 = fmul double %123, 0x3FE5555555555555
  %125 = getelementptr inbounds double, double* %1, i64 %120
  store double %124, double* %125, align 8, !tbaa !10
  %126 = getelementptr inbounds double, double* %2, i64 %120
  store double 0x3FE5555555555555, double* %126, align 8, !tbaa !10
  %127 = add nuw nsw i64 %120, 1
  %128 = icmp eq i64 %127, %13
  br i1 %128, label %49, label %119, !llvm.loop !70

129:                                              ; preds = %150, %115, %49, %10
  ret void

130:                                              ; preds = %150, %117
  %131 = phi i64 [ %151, %150 ], [ %118, %117 ]
  %132 = getelementptr inbounds double, double* %1, i64 %131
  %133 = load double, double* %132, align 8, !tbaa !10
  %134 = getelementptr inbounds double, double* %3, i64 %131
  %135 = load double, double* %134, align 8, !tbaa !10
  %136 = fmul double %133, %135
  %137 = getelementptr inbounds double, double* %0, i64 %131
  %138 = tail call double @llvm.fabs.f64(double %136) #2
  %139 = fcmp olt double %138, %7
  %140 = select i1 %139, double 0.000000e+00, double %136
  store double %140, double* %137, align 8, !tbaa !10
  %141 = getelementptr inbounds double, double* %5, i64 %131
  %142 = load double, double* %141, align 8, !tbaa !10
  %143 = fcmp ult double %142, %8
  %144 = select i1 %143, double %140, double 0.000000e+00
  %145 = fcmp olt double %144, %6
  %146 = xor i1 %143, true
  %147 = or i1 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %130
  %149 = select i1 %145, double %6, double %144
  store double %149, double* %137, align 8, !tbaa !10
  br label %150

150:                                              ; preds = %148, %130
  %151 = add nuw nsw i64 %131, 1
  %152 = icmp eq i64 %151, %51
  br i1 %152, label %129, label %130, !llvm.loop !71
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #15

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local void @_Z18CalcEnergyForElemsPdS_S_S_S_S_S_S_S_S_S_S_S_dddddS_S_ddi(double* nocapture %0, double* nocapture %1, double* nocapture %2, double* nocapture %3, double* nocapture %4, double* nocapture readonly %5, double* nocapture readonly %6, double* nocapture readonly %7, double* nocapture readonly %8, double* nocapture readonly %9, double* nocapture readonly %10, double* nocapture readonly %11, double* nocapture readonly %12, double %13, double %14, double %15, double %16, double %17, double* nocapture readonly %18, double* nocapture readonly %19, double %20, double %21, i32 %22) local_unnamed_addr #10 {
  %24 = sext i32 %22 to i64
  %25 = shl nsw i64 %24, 3
  %26 = tail call noalias align 16 i8* @malloc(i64 %25) #2
  %27 = bitcast i8* %26 to double*
  %28 = icmp sgt i32 %22, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  tail call void @_Z20CalcPressureForElemsPdS_S_S_S_S_dddi(double* %27, double* %3, double* %4, double* %1, double* %9, double* %10, double %13, double %14, double %21, i32 %22)
  br label %220

30:                                               ; preds = %23
  %31 = zext i32 %22 to i64
  %32 = icmp eq i32 %22, 1
  br i1 %32, label %94, label %33

33:                                               ; preds = %30
  %34 = getelementptr double, double* %1, i64 %31
  %35 = getelementptr double, double* %6, i64 %31
  %36 = getelementptr double, double* %12, i64 %31
  %37 = getelementptr double, double* %5, i64 %31
  %38 = getelementptr double, double* %7, i64 %31
  %39 = getelementptr double, double* %11, i64 %31
  %40 = icmp ugt double* %35, %1
  %41 = icmp ugt double* %34, %6
  %42 = and i1 %40, %41
  %43 = icmp ugt double* %36, %1
  %44 = icmp ugt double* %34, %12
  %45 = and i1 %43, %44
  %46 = or i1 %42, %45
  %47 = icmp ugt double* %37, %1
  %48 = icmp ugt double* %34, %5
  %49 = and i1 %47, %48
  %50 = or i1 %46, %49
  %51 = icmp ugt double* %38, %1
  %52 = icmp ugt double* %34, %7
  %53 = and i1 %51, %52
  %54 = or i1 %50, %53
  %55 = icmp ugt double* %39, %1
  %56 = icmp ugt double* %34, %11
  %57 = and i1 %55, %56
  %58 = or i1 %54, %57
  br i1 %58, label %94, label %59

59:                                               ; preds = %33
  %60 = and i64 %31, 4294967294
  %61 = insertelement <2 x double> poison, double %17, i32 0
  %62 = shufflevector <2 x double> %61, <2 x double> poison, <2 x i32> zeroinitializer
  br label %63

63:                                               ; preds = %63, %59
  %64 = phi i64 [ 0, %59 ], [ %90, %63 ]
  %65 = getelementptr inbounds double, double* %6, i64 %64
  %66 = bitcast double* %65 to <2 x double>*
  %67 = load <2 x double>, <2 x double>* %66, align 8, !tbaa !10, !alias.scope !72
  %68 = getelementptr inbounds double, double* %12, i64 %64
  %69 = bitcast double* %68 to <2 x double>*
  %70 = load <2 x double>, <2 x double>* %69, align 8, !tbaa !10, !alias.scope !75
  %71 = fmul <2 x double> %70, <double 5.000000e-01, double 5.000000e-01>
  %72 = getelementptr inbounds double, double* %5, i64 %64
  %73 = bitcast double* %72 to <2 x double>*
  %74 = load <2 x double>, <2 x double>* %73, align 8, !tbaa !10, !alias.scope !77
  %75 = getelementptr inbounds double, double* %7, i64 %64
  %76 = bitcast double* %75 to <2 x double>*
  %77 = load <2 x double>, <2 x double>* %76, align 8, !tbaa !10, !alias.scope !79
  %78 = fadd <2 x double> %74, %77
  %79 = fmul <2 x double> %71, %78
  %80 = fsub <2 x double> %67, %79
  %81 = getelementptr inbounds double, double* %11, i64 %64
  %82 = bitcast double* %81 to <2 x double>*
  %83 = load <2 x double>, <2 x double>* %82, align 8, !tbaa !10, !alias.scope !81
  %84 = fmul <2 x double> %83, <double 5.000000e-01, double 5.000000e-01>
  %85 = fadd <2 x double> %84, %80
  %86 = getelementptr inbounds double, double* %1, i64 %64
  %87 = fcmp olt <2 x double> %85, %62
  %88 = select <2 x i1> %87, <2 x double> %62, <2 x double> %85
  %89 = bitcast double* %86 to <2 x double>*
  store <2 x double> %88, <2 x double>* %89, align 8, !tbaa !10, !alias.scope !83, !noalias !85
  %90 = add nuw i64 %64, 2
  %91 = icmp eq i64 %90, %60
  br i1 %91, label %92, label %63, !llvm.loop !86

92:                                               ; preds = %63
  %93 = icmp eq i64 %60, %31
  br i1 %93, label %96, label %94

94:                                               ; preds = %92, %33, %30
  %95 = phi i64 [ 0, %33 ], [ 0, %30 ], [ %60, %92 ]
  br label %99

96:                                               ; preds = %99, %92
  tail call void @_Z20CalcPressureForElemsPdS_S_S_S_S_dddi(double* %27, double* %3, double* %4, double* nonnull %1, double* %9, double* %10, double %13, double %14, double %21, i32 %22)
  br i1 %28, label %97, label %220

97:                                               ; preds = %96
  %98 = zext i32 %22 to i64
  br label %160

99:                                               ; preds = %99, %94
  %100 = phi i64 [ %120, %99 ], [ %95, %94 ]
  %101 = getelementptr inbounds double, double* %6, i64 %100
  %102 = load double, double* %101, align 8, !tbaa !10
  %103 = getelementptr inbounds double, double* %12, i64 %100
  %104 = load double, double* %103, align 8, !tbaa !10
  %105 = fmul double %104, 5.000000e-01
  %106 = getelementptr inbounds double, double* %5, i64 %100
  %107 = load double, double* %106, align 8, !tbaa !10
  %108 = getelementptr inbounds double, double* %7, i64 %100
  %109 = load double, double* %108, align 8, !tbaa !10
  %110 = fadd double %107, %109
  %111 = fmul double %105, %110
  %112 = fsub double %102, %111
  %113 = getelementptr inbounds double, double* %11, i64 %100
  %114 = load double, double* %113, align 8, !tbaa !10
  %115 = fmul double %114, 5.000000e-01
  %116 = fadd double %115, %112
  %117 = getelementptr inbounds double, double* %1, i64 %100
  %118 = fcmp olt double %116, %17
  %119 = select i1 %118, double %17, double %116
  store double %119, double* %117, align 8, !tbaa !10
  %120 = add nuw nsw i64 %100, 1
  %121 = icmp eq i64 %120, %31
  br i1 %121, label %96, label %99, !llvm.loop !87

122:                                              ; preds = %200
  br i1 %28, label %123, label %220

123:                                              ; preds = %122
  %124 = zext i32 %22 to i64
  %125 = icmp eq i32 %22, 1
  br i1 %125, label %158, label %126

126:                                              ; preds = %123
  %127 = getelementptr double, double* %1, i64 %31
  %128 = getelementptr double, double* %11, i64 %31
  %129 = icmp ugt double* %128, %1
  %130 = icmp ugt double* %127, %11
  %131 = and i1 %129, %130
  br i1 %131, label %158, label %132

132:                                              ; preds = %126
  %133 = and i64 %31, 4294967294
  %134 = insertelement <2 x double> poison, double %15, i32 0
  %135 = shufflevector <2 x double> %134, <2 x double> poison, <2 x i32> zeroinitializer
  %136 = insertelement <2 x double> poison, double %17, i32 0
  %137 = shufflevector <2 x double> %136, <2 x double> poison, <2 x i32> zeroinitializer
  br label %138

138:                                              ; preds = %138, %132
  %139 = phi i64 [ 0, %132 ], [ %154, %138 ]
  %140 = getelementptr inbounds double, double* %11, i64 %139
  %141 = bitcast double* %140 to <2 x double>*
  %142 = load <2 x double>, <2 x double>* %141, align 8, !tbaa !10, !alias.scope !88
  %143 = fmul <2 x double> %142, <double 5.000000e-01, double 5.000000e-01>
  %144 = getelementptr inbounds double, double* %1, i64 %139
  %145 = bitcast double* %144 to <2 x double>*
  %146 = load <2 x double>, <2 x double>* %145, align 8, !tbaa !10, !alias.scope !91, !noalias !88
  %147 = fadd <2 x double> %146, %143
  %148 = call <2 x double> @llvm.fabs.v2f64(<2 x double> %147)
  %149 = fcmp olt <2 x double> %148, %135
  %150 = select <2 x i1> %149, <2 x double> zeroinitializer, <2 x double> %147
  %151 = fcmp olt <2 x double> %150, %137
  %152 = select <2 x i1> %151, <2 x double> %137, <2 x double> %150
  %153 = bitcast double* %144 to <2 x double>*
  store <2 x double> %152, <2 x double>* %153, align 8, !tbaa !10, !alias.scope !91, !noalias !88
  %154 = add nuw i64 %139, 2
  %155 = icmp eq i64 %154, %133
  br i1 %155, label %156, label %138, !llvm.loop !93

156:                                              ; preds = %138
  %157 = icmp eq i64 %133, %31
  br i1 %157, label %221, label %158

158:                                              ; preds = %156, %126, %123
  %159 = phi i64 [ 0, %126 ], [ 0, %123 ], [ %133, %156 ]
  br label %224

160:                                              ; preds = %200, %97
  %161 = phi i64 [ 0, %97 ], [ %218, %200 ]
  %162 = getelementptr inbounds double, double* %9, i64 %161
  %163 = load double, double* %162, align 8, !tbaa !10
  %164 = fadd double %163, 1.000000e+00
  %165 = fdiv double 1.000000e+00, %164
  %166 = getelementptr inbounds double, double* %12, i64 %161
  %167 = load double, double* %166, align 8, !tbaa !10
  %168 = fcmp ogt double %167, 0.000000e+00
  br i1 %168, label %169, label %173

169:                                              ; preds = %160
  %170 = getelementptr inbounds double, double* %2, i64 %161
  store double 0.000000e+00, double* %170, align 8, !tbaa !10
  %171 = getelementptr inbounds double, double* %27, i64 %161
  %172 = load double, double* %171, align 8, !tbaa !10
  br label %200

173:                                              ; preds = %160
  %174 = getelementptr inbounds double, double* %4, i64 %161
  %175 = load double, double* %174, align 8, !tbaa !10
  %176 = getelementptr inbounds double, double* %1, i64 %161
  %177 = load double, double* %176, align 8, !tbaa !10
  %178 = fmul double %175, %177
  %179 = fmul double %165, %165
  %180 = getelementptr inbounds double, double* %3, i64 %161
  %181 = load double, double* %180, align 8, !tbaa !10
  %182 = fmul double %179, %181
  %183 = getelementptr inbounds double, double* %27, i64 %161
  %184 = load double, double* %183, align 8, !tbaa !10
  %185 = fmul double %182, %184
  %186 = fadd double %178, %185
  %187 = fdiv double %186, %20
  %188 = fcmp ugt double %187, 1.111110e-37
  br i1 %188, label %189, label %191

189:                                              ; preds = %173
  %190 = tail call double @sqrt(double %187) #2
  br label %191

191:                                              ; preds = %189, %173
  %192 = phi double [ %190, %189 ], [ 3.333330e-19, %173 ]
  %193 = getelementptr inbounds double, double* %19, i64 %161
  %194 = load double, double* %193, align 8, !tbaa !10
  %195 = fmul double %192, %194
  %196 = getelementptr inbounds double, double* %18, i64 %161
  %197 = load double, double* %196, align 8, !tbaa !10
  %198 = fadd double %195, %197
  %199 = getelementptr inbounds double, double* %2, i64 %161
  store double %198, double* %199, align 8, !tbaa !10
  br label %200

200:                                              ; preds = %191, %169
  %201 = phi double [ %198, %191 ], [ 0.000000e+00, %169 ]
  %202 = phi double [ %184, %191 ], [ %172, %169 ]
  %203 = getelementptr inbounds double, double* %1, i64 %161
  %204 = load double, double* %203, align 8, !tbaa !10
  %205 = load double, double* %166, align 8, !tbaa !10
  %206 = fmul double %205, 5.000000e-01
  %207 = getelementptr inbounds double, double* %5, i64 %161
  %208 = load double, double* %207, align 8, !tbaa !10
  %209 = getelementptr inbounds double, double* %7, i64 %161
  %210 = load double, double* %209, align 8, !tbaa !10
  %211 = fadd double %208, %210
  %212 = fmul double %211, 3.000000e+00
  %213 = fadd double %202, %201
  %214 = fmul double %213, 4.000000e+00
  %215 = fsub double %212, %214
  %216 = fmul double %206, %215
  %217 = fadd double %204, %216
  store double %217, double* %203, align 8, !tbaa !10
  %218 = add nuw nsw i64 %161, 1
  %219 = icmp eq i64 %218, %98
  br i1 %219, label %122, label %160, !llvm.loop !94

220:                                              ; preds = %122, %96, %29
  tail call void @_Z20CalcPressureForElemsPdS_S_S_S_S_dddi(double* %0, double* %3, double* %4, double* %1, double* %8, double* %10, double %13, double %14, double %21, i32 %22)
  br label %239

221:                                              ; preds = %224, %156
  tail call void @_Z20CalcPressureForElemsPdS_S_S_S_S_dddi(double* %0, double* %3, double* %4, double* nonnull %1, double* %8, double* %10, double %13, double %14, double %21, i32 %22)
  br i1 %28, label %222, label %239

222:                                              ; preds = %221
  %223 = zext i32 %22 to i64
  br label %243

224:                                              ; preds = %224, %158
  %225 = phi i64 [ %237, %224 ], [ %159, %158 ]
  %226 = getelementptr inbounds double, double* %11, i64 %225
  %227 = load double, double* %226, align 8, !tbaa !10
  %228 = fmul double %227, 5.000000e-01
  %229 = getelementptr inbounds double, double* %1, i64 %225
  %230 = load double, double* %229, align 8, !tbaa !10
  %231 = fadd double %230, %228
  %232 = tail call double @llvm.fabs.f64(double %231) #2
  %233 = fcmp olt double %232, %15
  %234 = select i1 %233, double 0.000000e+00, double %231
  %235 = fcmp olt double %234, %17
  %236 = select i1 %235, double %17, double %234
  store double %236, double* %229, align 8, !tbaa !10
  %237 = add nuw nsw i64 %225, 1
  %238 = icmp eq i64 %237, %124
  br i1 %238, label %221, label %224, !llvm.loop !95

239:                                              ; preds = %221, %220
  tail call void @_Z20CalcPressureForElemsPdS_S_S_S_S_dddi(double* %0, double* %3, double* %4, double* %1, double* %8, double* %10, double %13, double %14, double %21, i32 %22)
  br label %314

240:                                              ; preds = %278
  tail call void @_Z20CalcPressureForElemsPdS_S_S_S_S_dddi(double* nonnull %0, double* %3, double* %4, double* nonnull %1, double* %8, double* %10, double %13, double %14, double %21, i32 %22)
  br i1 %28, label %241, label %316

241:                                              ; preds = %240
  %242 = zext i32 %22 to i64
  br label %318

243:                                              ; preds = %278, %222
  %244 = phi i64 [ 0, %222 ], [ %312, %278 ]
  %245 = getelementptr inbounds double, double* %12, i64 %244
  %246 = load double, double* %245, align 8, !tbaa !10
  %247 = fcmp ogt double %246, 0.000000e+00
  br i1 %247, label %278, label %248

248:                                              ; preds = %243
  %249 = getelementptr inbounds double, double* %4, i64 %244
  %250 = load double, double* %249, align 8, !tbaa !10
  %251 = getelementptr inbounds double, double* %1, i64 %244
  %252 = load double, double* %251, align 8, !tbaa !10
  %253 = fmul double %250, %252
  %254 = getelementptr inbounds double, double* %10, i64 %244
  %255 = load double, double* %254, align 8, !tbaa !10
  %256 = fmul double %255, %255
  %257 = getelementptr inbounds double, double* %3, i64 %244
  %258 = load double, double* %257, align 8, !tbaa !10
  %259 = fmul double %256, %258
  %260 = getelementptr inbounds double, double* %0, i64 %244
  %261 = load double, double* %260, align 8, !tbaa !10
  %262 = fmul double %259, %261
  %263 = fadd double %253, %262
  %264 = fdiv double %263, %20
  %265 = fcmp ugt double %264, 1.111110e-37
  br i1 %265, label %266, label %269

266:                                              ; preds = %248
  %267 = tail call double @sqrt(double %264) #2
  %268 = load double, double* %245, align 8, !tbaa !10
  br label %269

269:                                              ; preds = %266, %248
  %270 = phi double [ %268, %266 ], [ %246, %248 ]
  %271 = phi double [ %267, %266 ], [ 3.333330e-19, %248 ]
  %272 = getelementptr inbounds double, double* %19, i64 %244
  %273 = load double, double* %272, align 8, !tbaa !10
  %274 = fmul double %271, %273
  %275 = getelementptr inbounds double, double* %18, i64 %244
  %276 = load double, double* %275, align 8, !tbaa !10
  %277 = fadd double %274, %276
  br label %278

278:                                              ; preds = %269, %243
  %279 = phi double [ %270, %269 ], [ %246, %243 ]
  %280 = phi double [ %277, %269 ], [ 0.000000e+00, %243 ]
  %281 = getelementptr inbounds double, double* %1, i64 %244
  %282 = load double, double* %281, align 8, !tbaa !10
  %283 = getelementptr inbounds double, double* %5, i64 %244
  %284 = load double, double* %283, align 8, !tbaa !10
  %285 = getelementptr inbounds double, double* %7, i64 %244
  %286 = load double, double* %285, align 8, !tbaa !10
  %287 = getelementptr inbounds double, double* %27, i64 %244
  %288 = load double, double* %287, align 8, !tbaa !10
  %289 = getelementptr inbounds double, double* %2, i64 %244
  %290 = load double, double* %289, align 8, !tbaa !10
  %291 = insertelement <2 x double> poison, double %284, i32 0
  %292 = insertelement <2 x double> %291, double %288, i32 1
  %293 = insertelement <2 x double> poison, double %286, i32 0
  %294 = insertelement <2 x double> %293, double %290, i32 1
  %295 = fadd <2 x double> %292, %294
  %296 = fmul <2 x double> %295, <double 7.000000e+00, double 8.000000e+00>
  %297 = shufflevector <2 x double> %296, <2 x double> poison, <2 x i32> <i32 1, i32 undef>
  %298 = fsub <2 x double> %296, %297
  %299 = extractelement <2 x double> %298, i32 0
  %300 = getelementptr inbounds double, double* %0, i64 %244
  %301 = load double, double* %300, align 8, !tbaa !10
  %302 = fadd double %280, %301
  %303 = fadd double %302, %299
  %304 = fmul double %279, %303
  %305 = fmul double %304, 0x3FC5555555555555
  %306 = fsub double %282, %305
  %307 = tail call double @llvm.fabs.f64(double %306) #2
  %308 = fcmp olt double %307, %15
  %309 = select i1 %308, double 0.000000e+00, double %306
  %310 = fcmp olt double %309, %17
  %311 = select i1 %310, double %17, double %309
  store double %311, double* %281, align 8, !tbaa !10
  %312 = add nuw nsw i64 %244, 1
  %313 = icmp eq i64 %312, %223
  br i1 %313, label %240, label %243, !llvm.loop !96

314:                                              ; preds = %355, %239
  %315 = icmp eq i8* %26, null
  br i1 %315, label %317, label %316

316:                                              ; preds = %314, %240
  tail call void @free(i8* nonnull %26) #2
  br label %317

317:                                              ; preds = %316, %314
  ret void

318:                                              ; preds = %355, %241
  %319 = phi i64 [ 0, %241 ], [ %356, %355 ]
  %320 = getelementptr inbounds double, double* %12, i64 %319
  %321 = load double, double* %320, align 8, !tbaa !10
  %322 = fcmp ugt double %321, 0.000000e+00
  br i1 %322, label %355, label %323

323:                                              ; preds = %318
  %324 = getelementptr inbounds double, double* %4, i64 %319
  %325 = load double, double* %324, align 8, !tbaa !10
  %326 = getelementptr inbounds double, double* %1, i64 %319
  %327 = load double, double* %326, align 8, !tbaa !10
  %328 = fmul double %325, %327
  %329 = getelementptr inbounds double, double* %10, i64 %319
  %330 = load double, double* %329, align 8, !tbaa !10
  %331 = fmul double %330, %330
  %332 = getelementptr inbounds double, double* %3, i64 %319
  %333 = load double, double* %332, align 8, !tbaa !10
  %334 = fmul double %331, %333
  %335 = getelementptr inbounds double, double* %0, i64 %319
  %336 = load double, double* %335, align 8, !tbaa !10
  %337 = fmul double %334, %336
  %338 = fadd double %328, %337
  %339 = fdiv double %338, %20
  %340 = fcmp ugt double %339, 1.111110e-37
  br i1 %340, label %341, label %343

341:                                              ; preds = %323
  %342 = tail call double @sqrt(double %339) #2
  br label %343

343:                                              ; preds = %341, %323
  %344 = phi double [ %342, %341 ], [ 3.333330e-19, %323 ]
  %345 = getelementptr inbounds double, double* %19, i64 %319
  %346 = load double, double* %345, align 8, !tbaa !10
  %347 = fmul double %344, %346
  %348 = getelementptr inbounds double, double* %18, i64 %319
  %349 = load double, double* %348, align 8, !tbaa !10
  %350 = fadd double %347, %349
  %351 = getelementptr inbounds double, double* %2, i64 %319
  store double %350, double* %351, align 8, !tbaa !10
  %352 = tail call double @llvm.fabs.f64(double %350) #2
  %353 = fcmp olt double %352, %16
  br i1 %353, label %354, label %355

354:                                              ; preds = %343
  store double 0.000000e+00, double* %351, align 8, !tbaa !10
  br label %355

355:                                              ; preds = %354, %343, %318
  %356 = add nuw nsw i64 %319, 1
  %357 = icmp eq i64 %356, %242
  br i1 %357, label %314, label %318, !llvm.loop !97
}

; Function Attrs: mustprogress nofree noinline nounwind uwtable
define dso_local void @_Z22CalcSoundSpeedForElemsPddS_S_S_S_di(double* nocapture readonly %0, double %1, double* nocapture readonly %2, double* nocapture readonly %3, double* nocapture readonly %4, double* nocapture readonly %5, double %6, i32 %7) local_unnamed_addr #20 {
  %9 = icmp sgt i32 %7, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %8
  %11 = zext i32 %7 to i64
  br label %13

12:                                               ; preds = %13, %8
  ret void

13:                                               ; preds = %13, %10
  %14 = phi i64 [ 0, %10 ], [ %40, %13 ]
  %15 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 16, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !8
  %16 = getelementptr inbounds i32, i32* %15, i64 %14
  %17 = load i32, i32* %16, align 4, !tbaa !12
  %18 = getelementptr inbounds double, double* %4, i64 %14
  %19 = load double, double* %18, align 8, !tbaa !10
  %20 = getelementptr inbounds double, double* %2, i64 %14
  %21 = load double, double* %20, align 8, !tbaa !10
  %22 = fmul double %19, %21
  %23 = getelementptr inbounds double, double* %0, i64 %14
  %24 = load double, double* %23, align 8, !tbaa !10
  %25 = fmul double %24, %24
  %26 = getelementptr inbounds double, double* %5, i64 %14
  %27 = load double, double* %26, align 8, !tbaa !10
  %28 = fmul double %25, %27
  %29 = getelementptr inbounds double, double* %3, i64 %14
  %30 = load double, double* %29, align 8, !tbaa !10
  %31 = fmul double %28, %30
  %32 = fadd double %22, %31
  %33 = fdiv double %32, %1
  %34 = fcmp ole double %33, 1.111110e-37
  %35 = select i1 %34, double 1.111110e-37, double %33
  %36 = tail call double @sqrt(double %35) #2
  %37 = sext i32 %17 to i64
  %38 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 45, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %39 = getelementptr inbounds double, double* %38, i64 %37
  store double %36, double* %39, align 8, !tbaa !10
  %40 = add nuw nsw i64 %14, 1
  %41 = icmp eq i64 %40, %11
  br i1 %41, label %12, label %13, !llvm.loop !98
}

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local void @_Z15EvalEOSForElemsPdi(double* nocapture readonly %0, i32 %1) local_unnamed_addr #10 {
  %3 = load double, double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 58), align 8, !tbaa !10
  %4 = load double, double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 59), align 8, !tbaa !10
  %5 = load double, double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 61), align 8, !tbaa !10
  %6 = load double, double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 66), align 8, !tbaa !10
  %7 = load double, double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 67), align 8, !tbaa !10
  %8 = load double, double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 68), align 8, !tbaa !10
  %9 = load double, double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 69), align 8, !tbaa !10
  %10 = load double, double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 71), align 8, !tbaa !10
  %11 = sext i32 %1 to i64
  %12 = shl nsw i64 %11, 3
  %13 = tail call noalias align 16 i8* @malloc(i64 %12) #2
  %14 = bitcast i8* %13 to double*
  %15 = tail call noalias align 16 i8* @malloc(i64 %12) #2
  %16 = bitcast i8* %15 to double*
  %17 = tail call noalias align 16 i8* @malloc(i64 %12) #2
  %18 = bitcast i8* %17 to double*
  %19 = tail call noalias align 16 i8* @malloc(i64 %12) #2
  %20 = bitcast i8* %19 to double*
  %21 = tail call noalias align 16 i8* @malloc(i64 %12) #2
  %22 = bitcast i8* %21 to double*
  %23 = tail call noalias align 16 i8* @malloc(i64 %12) #2
  %24 = bitcast i8* %23 to double*
  %25 = tail call noalias align 16 i8* @malloc(i64 %12) #2
  %26 = bitcast i8* %25 to double*
  %27 = tail call noalias align 16 i8* @malloc(i64 %12) #2
  %28 = bitcast i8* %27 to double*
  %29 = tail call noalias align 16 i8* @malloc(i64 %12) #2
  %30 = bitcast i8* %29 to double*
  %31 = tail call noalias align 16 i8* @malloc(i64 %12) #2
  %32 = bitcast i8* %31 to double*
  %33 = tail call noalias align 16 i8* @malloc(i64 %12) #2
  %34 = bitcast i8* %33 to double*
  %35 = tail call noalias align 16 i8* @malloc(i64 %12) #2
  %36 = bitcast i8* %35 to double*
  %37 = tail call noalias align 16 i8* @malloc(i64 %12) #2
  %38 = bitcast i8* %37 to double*
  %39 = tail call noalias align 16 i8* @malloc(i64 %12) #2
  %40 = bitcast i8* %39 to double*
  %41 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 16, i32 0, i32 0, i32 0, i32 0), align 8
  %42 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 34, i32 0, i32 0, i32 0, i32 0), align 8
  %43 = icmp sgt i32 %1, 0
  br i1 %43, label %44, label %184

44:                                               ; preds = %2
  %45 = zext i32 %1 to i64
  br label %50

46:                                               ; preds = %50
  %47 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 42, i32 0, i32 0, i32 0, i32 0), align 8
  br i1 %43, label %48, label %184

48:                                               ; preds = %46
  %49 = zext i32 %1 to i64
  br label %64

50:                                               ; preds = %50, %44
  %51 = phi i64 [ 0, %44 ], [ %58, %50 ]
  %52 = getelementptr inbounds i32, i32* %41, i64 %51
  %53 = load i32, i32* %52, align 4, !tbaa !12
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds double, double* %42, i64 %54
  %56 = load double, double* %55, align 8, !tbaa !10
  %57 = getelementptr inbounds double, double* %14, i64 %51
  store double %56, double* %57, align 8, !tbaa !10
  %58 = add nuw nsw i64 %51, 1
  %59 = icmp eq i64 %58, %45
  br i1 %59, label %46, label %50, !llvm.loop !99

60:                                               ; preds = %64
  %61 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 35, i32 0, i32 0, i32 0, i32 0), align 8
  br i1 %43, label %62, label %184

62:                                               ; preds = %60
  %63 = zext i32 %1 to i64
  br label %78

64:                                               ; preds = %64, %48
  %65 = phi i64 [ 0, %48 ], [ %72, %64 ]
  %66 = getelementptr inbounds i32, i32* %41, i64 %65
  %67 = load i32, i32* %66, align 4, !tbaa !12
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds double, double* %47, i64 %68
  %70 = load double, double* %69, align 8, !tbaa !10
  %71 = getelementptr inbounds double, double* %16, i64 %65
  store double %70, double* %71, align 8, !tbaa !10
  %72 = add nuw nsw i64 %65, 1
  %73 = icmp eq i64 %72, %49
  br i1 %73, label %60, label %64, !llvm.loop !100

74:                                               ; preds = %78
  %75 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 36, i32 0, i32 0, i32 0, i32 0), align 8
  br i1 %43, label %76, label %184

76:                                               ; preds = %74
  %77 = zext i32 %1 to i64
  br label %118

78:                                               ; preds = %78, %62
  %79 = phi i64 [ 0, %62 ], [ %86, %78 ]
  %80 = getelementptr inbounds i32, i32* %41, i64 %79
  %81 = load i32, i32* %80, align 4, !tbaa !12
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds double, double* %61, i64 %82
  %84 = load double, double* %83, align 8, !tbaa !10
  %85 = getelementptr inbounds double, double* %18, i64 %79
  store double %84, double* %85, align 8, !tbaa !10
  %86 = add nuw nsw i64 %79, 1
  %87 = icmp eq i64 %86, %63
  br i1 %87, label %74, label %78, !llvm.loop !101

88:                                               ; preds = %118
  br i1 %43, label %89, label %184

89:                                               ; preds = %88
  %90 = zext i32 %1 to i64
  %91 = icmp eq i32 %1, 1
  br i1 %91, label %116, label %92

92:                                               ; preds = %89
  %93 = and i64 %45, 4294967294
  br label %94

94:                                               ; preds = %94, %92
  %95 = phi i64 [ 0, %92 ], [ %112, %94 ]
  %96 = getelementptr inbounds double, double* %0, i64 %95
  %97 = bitcast double* %96 to <2 x double>*
  %98 = load <2 x double>, <2 x double>* %97, align 8, !tbaa !10
  %99 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %98
  %100 = fadd <2 x double> %99, <double -1.000000e+00, double -1.000000e+00>
  %101 = getelementptr inbounds double, double* %22, i64 %95
  %102 = bitcast double* %101 to <2 x double>*
  store <2 x double> %100, <2 x double>* %102, align 16, !tbaa !10
  %103 = getelementptr inbounds double, double* %16, i64 %95
  %104 = bitcast double* %103 to <2 x double>*
  %105 = load <2 x double>, <2 x double>* %104, align 16, !tbaa !10
  %106 = fmul <2 x double> %105, <double 5.000000e-01, double 5.000000e-01>
  %107 = fsub <2 x double> %98, %106
  %108 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %107
  %109 = fadd <2 x double> %108, <double -1.000000e+00, double -1.000000e+00>
  %110 = getelementptr inbounds double, double* %24, i64 %95
  %111 = bitcast double* %110 to <2 x double>*
  store <2 x double> %109, <2 x double>* %111, align 16, !tbaa !10
  %112 = add nuw i64 %95, 2
  %113 = icmp eq i64 %112, %93
  br i1 %113, label %114, label %94, !llvm.loop !102

114:                                              ; preds = %94
  %115 = icmp eq i64 %93, %45
  br i1 %115, label %128, label %116

116:                                              ; preds = %114, %89
  %117 = phi i64 [ 0, %89 ], [ %93, %114 ]
  br label %133

118:                                              ; preds = %118, %76
  %119 = phi i64 [ 0, %76 ], [ %126, %118 ]
  %120 = getelementptr inbounds i32, i32* %41, i64 %119
  %121 = load i32, i32* %120, align 4, !tbaa !12
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds double, double* %75, i64 %122
  %124 = load double, double* %123, align 8, !tbaa !10
  %125 = getelementptr inbounds double, double* %20, i64 %119
  store double %124, double* %125, align 8, !tbaa !10
  %126 = add nuw nsw i64 %119, 1
  %127 = icmp eq i64 %126, %77
  br i1 %127, label %88, label %118, !llvm.loop !103

128:                                              ; preds = %133, %114
  %129 = fcmp une double %7, 0.000000e+00
  %130 = select i1 %129, i1 %43, i1 false
  br i1 %130, label %131, label %161

131:                                              ; preds = %128
  %132 = zext i32 %1 to i64
  br label %149

133:                                              ; preds = %133, %116
  %134 = phi i64 [ %147, %133 ], [ %117, %116 ]
  %135 = getelementptr inbounds double, double* %0, i64 %134
  %136 = load double, double* %135, align 8, !tbaa !10
  %137 = fdiv double 1.000000e+00, %136
  %138 = fadd double %137, -1.000000e+00
  %139 = getelementptr inbounds double, double* %22, i64 %134
  store double %138, double* %139, align 8, !tbaa !10
  %140 = getelementptr inbounds double, double* %16, i64 %134
  %141 = load double, double* %140, align 8, !tbaa !10
  %142 = fmul double %141, 5.000000e-01
  %143 = fsub double %136, %142
  %144 = fdiv double 1.000000e+00, %143
  %145 = fadd double %144, -1.000000e+00
  %146 = getelementptr inbounds double, double* %24, i64 %134
  store double %145, double* %146, align 8, !tbaa !10
  %147 = add nuw nsw i64 %134, 1
  %148 = icmp eq i64 %147, %90
  br i1 %148, label %128, label %133, !llvm.loop !104

149:                                              ; preds = %158, %131
  %150 = phi i64 [ 0, %131 ], [ %159, %158 ]
  %151 = getelementptr inbounds double, double* %0, i64 %150
  %152 = load double, double* %151, align 8, !tbaa !10
  %153 = fcmp ugt double %152, %7
  br i1 %153, label %158, label %154

154:                                              ; preds = %149
  %155 = getelementptr inbounds double, double* %22, i64 %150
  %156 = load double, double* %155, align 8, !tbaa !10
  %157 = getelementptr inbounds double, double* %24, i64 %150
  store double %156, double* %157, align 8, !tbaa !10
  br label %158

158:                                              ; preds = %154, %149
  %159 = add nuw nsw i64 %150, 1
  %160 = icmp eq i64 %159, %132
  br i1 %160, label %161, label %149, !llvm.loop !105

161:                                              ; preds = %158, %128
  %162 = fcmp une double %6, 0.000000e+00
  %163 = select i1 %162, i1 %43, i1 false
  br i1 %163, label %164, label %178

164:                                              ; preds = %161
  %165 = zext i32 %1 to i64
  br label %166

166:                                              ; preds = %175, %164
  %167 = phi i64 [ 0, %164 ], [ %176, %175 ]
  %168 = getelementptr inbounds double, double* %0, i64 %167
  %169 = load double, double* %168, align 8, !tbaa !10
  %170 = fcmp ult double %169, %6
  br i1 %170, label %175, label %171

171:                                              ; preds = %166
  %172 = getelementptr inbounds double, double* %18, i64 %167
  store double 0.000000e+00, double* %172, align 8, !tbaa !10
  %173 = getelementptr inbounds double, double* %22, i64 %167
  store double 0.000000e+00, double* %173, align 8, !tbaa !10
  %174 = getelementptr inbounds double, double* %24, i64 %167
  store double 0.000000e+00, double* %174, align 8, !tbaa !10
  br label %175

175:                                              ; preds = %171, %166
  %176 = add nuw nsw i64 %167, 1
  %177 = icmp eq i64 %176, %165
  br i1 %177, label %178, label %166, !llvm.loop !106

178:                                              ; preds = %175, %161
  %179 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 38, i32 0, i32 0, i32 0, i32 0), align 8
  %180 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 37, i32 0, i32 0, i32 0, i32 0), align 8
  br i1 %43, label %181, label %184

181:                                              ; preds = %178
  %182 = zext i32 %1 to i64
  %183 = shl nuw nsw i64 %182, 3
  call void @llvm.memset.p0i8.i64(i8* align 16 %29, i8 0, i64 %183, i1 false)
  br label %190

184:                                              ; preds = %178, %88, %74, %60, %46, %2
  tail call void @_Z18CalcEnergyForElemsPdS_S_S_S_S_S_S_S_S_S_S_S_dddddS_S_ddi(double* %32, double* %34, double* %36, double* %38, double* %40, double* %18, double* %14, double* %20, double* %22, double* %24, double* %0, double* %30, double* %16, double %8, double %4, double %3, double %5, double %9, double* %26, double* %28, double %10, double %6, i32 %1)
  br label %233

185:                                              ; preds = %190
  tail call void @_Z18CalcEnergyForElemsPdS_S_S_S_S_S_S_S_S_S_S_S_dddddS_S_ddi(double* %32, double* %34, double* %36, double* %38, double* %40, double* %18, double* %14, double* %20, double* %22, double* %24, double* %0, double* %30, double* %16, double %8, double %4, double %3, double %5, double %9, double* nonnull %26, double* nonnull %28, double %10, double %6, i32 %1)
  %186 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 16, i32 0, i32 0, i32 0, i32 0), align 8
  %187 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 35, i32 0, i32 0, i32 0, i32 0), align 8
  br i1 %43, label %188, label %233

188:                                              ; preds = %185
  %189 = zext i32 %1 to i64
  br label %208

190:                                              ; preds = %190, %181
  %191 = phi i64 [ 0, %181 ], [ %201, %190 ]
  %192 = getelementptr inbounds i32, i32* %41, i64 %191
  %193 = load i32, i32* %192, align 4, !tbaa !12
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds double, double* %179, i64 %194
  %196 = load double, double* %195, align 8, !tbaa !10
  %197 = getelementptr inbounds double, double* %26, i64 %191
  store double %196, double* %197, align 8, !tbaa !10
  %198 = getelementptr inbounds double, double* %180, i64 %194
  %199 = load double, double* %198, align 8, !tbaa !10
  %200 = getelementptr inbounds double, double* %28, i64 %191
  store double %199, double* %200, align 8, !tbaa !10
  %201 = add nuw nsw i64 %191, 1
  %202 = icmp eq i64 %201, %182
  br i1 %202, label %185, label %190, !llvm.loop !107

203:                                              ; preds = %208
  %204 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 16, i32 0, i32 0, i32 0, i32 0), align 8
  %205 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 34, i32 0, i32 0, i32 0, i32 0), align 8
  br i1 %43, label %206, label %233

206:                                              ; preds = %203
  %207 = zext i32 %1 to i64
  br label %223

208:                                              ; preds = %208, %188
  %209 = phi i64 [ 0, %188 ], [ %216, %208 ]
  %210 = getelementptr inbounds i32, i32* %186, i64 %209
  %211 = load i32, i32* %210, align 4, !tbaa !12
  %212 = getelementptr inbounds double, double* %32, i64 %209
  %213 = load double, double* %212, align 8, !tbaa !10
  %214 = sext i32 %211 to i64
  %215 = getelementptr inbounds double, double* %187, i64 %214
  store double %213, double* %215, align 8, !tbaa !10
  %216 = add nuw nsw i64 %209, 1
  %217 = icmp eq i64 %216, %189
  br i1 %217, label %203, label %208, !llvm.loop !108

218:                                              ; preds = %223
  %219 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 16, i32 0, i32 0, i32 0, i32 0), align 8
  %220 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 36, i32 0, i32 0, i32 0, i32 0), align 8
  br i1 %43, label %221, label %233

221:                                              ; preds = %218
  %222 = zext i32 %1 to i64
  br label %276

223:                                              ; preds = %223, %206
  %224 = phi i64 [ 0, %206 ], [ %231, %223 ]
  %225 = getelementptr inbounds i32, i32* %204, i64 %224
  %226 = load i32, i32* %225, align 4, !tbaa !12
  %227 = getelementptr inbounds double, double* %34, i64 %224
  %228 = load double, double* %227, align 8, !tbaa !10
  %229 = sext i32 %226 to i64
  %230 = getelementptr inbounds double, double* %205, i64 %229
  store double %228, double* %230, align 8, !tbaa !10
  %231 = add nuw nsw i64 %224, 1
  %232 = icmp eq i64 %231, %207
  br i1 %232, label %218, label %223, !llvm.loop !109

233:                                              ; preds = %276, %218, %203, %185, %184
  tail call void @_Z22CalcSoundSpeedForElemsPddS_S_S_S_di(double* %0, double %10, double* %34, double* %32, double* %40, double* %38, double undef, i32 %1)
  %234 = icmp eq i8* %39, null
  br i1 %234, label %236, label %235

235:                                              ; preds = %233
  tail call void @free(i8* nonnull %39) #2
  br label %236

236:                                              ; preds = %235, %233
  %237 = icmp eq i8* %37, null
  br i1 %237, label %239, label %238

238:                                              ; preds = %236
  tail call void @free(i8* nonnull %37) #2
  br label %239

239:                                              ; preds = %238, %236
  %240 = icmp eq i8* %35, null
  br i1 %240, label %242, label %241

241:                                              ; preds = %239
  tail call void @free(i8* nonnull %35) #2
  br label %242

242:                                              ; preds = %241, %239
  %243 = icmp eq i8* %33, null
  br i1 %243, label %245, label %244

244:                                              ; preds = %242
  tail call void @free(i8* nonnull %33) #2
  br label %245

245:                                              ; preds = %244, %242
  %246 = icmp eq i8* %31, null
  br i1 %246, label %248, label %247

247:                                              ; preds = %245
  tail call void @free(i8* nonnull %31) #2
  br label %248

248:                                              ; preds = %247, %245
  %249 = icmp eq i8* %29, null
  br i1 %249, label %251, label %250

250:                                              ; preds = %248
  tail call void @free(i8* nonnull %29) #2
  br label %251

251:                                              ; preds = %250, %248
  %252 = icmp eq i8* %27, null
  br i1 %252, label %254, label %253

253:                                              ; preds = %251
  tail call void @free(i8* nonnull %27) #2
  br label %254

254:                                              ; preds = %253, %251
  %255 = icmp eq i8* %25, null
  br i1 %255, label %257, label %256

256:                                              ; preds = %254
  tail call void @free(i8* nonnull %25) #2
  br label %257

257:                                              ; preds = %256, %254
  %258 = icmp eq i8* %23, null
  br i1 %258, label %260, label %259

259:                                              ; preds = %257
  tail call void @free(i8* nonnull %23) #2
  br label %260

260:                                              ; preds = %259, %257
  %261 = icmp eq i8* %21, null
  br i1 %261, label %263, label %262

262:                                              ; preds = %260
  tail call void @free(i8* nonnull %21) #2
  br label %263

263:                                              ; preds = %262, %260
  %264 = icmp eq i8* %19, null
  br i1 %264, label %266, label %265

265:                                              ; preds = %263
  tail call void @free(i8* nonnull %19) #2
  br label %266

266:                                              ; preds = %265, %263
  %267 = icmp eq i8* %17, null
  br i1 %267, label %269, label %268

268:                                              ; preds = %266
  tail call void @free(i8* nonnull %17) #2
  br label %269

269:                                              ; preds = %268, %266
  %270 = icmp eq i8* %15, null
  br i1 %270, label %272, label %271

271:                                              ; preds = %269
  tail call void @free(i8* nonnull %15) #2
  br label %272

272:                                              ; preds = %271, %269
  %273 = icmp eq i8* %13, null
  br i1 %273, label %275, label %274

274:                                              ; preds = %272
  tail call void @free(i8* nonnull %13) #2
  br label %275

275:                                              ; preds = %274, %272
  ret void

276:                                              ; preds = %276, %221
  %277 = phi i64 [ 0, %221 ], [ %284, %276 ]
  %278 = getelementptr inbounds i32, i32* %219, i64 %277
  %279 = load i32, i32* %278, align 4, !tbaa !12
  %280 = getelementptr inbounds double, double* %36, i64 %277
  %281 = load double, double* %280, align 8, !tbaa !10
  %282 = sext i32 %279 to i64
  %283 = getelementptr inbounds double, double* %220, i64 %282
  store double %281, double* %283, align 8, !tbaa !10
  %284 = add nuw nsw i64 %277, 1
  %285 = icmp eq i64 %284, %222
  br i1 %285, label %233, label %276, !llvm.loop !110
}

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local void @_Z31ApplyMaterialPropertiesForElemsv() local_unnamed_addr #10 {
  %1 = load i32, i32* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 79), align 8, !tbaa !12
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %79, label %3

3:                                                ; preds = %0
  %4 = load double, double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 67), align 8, !tbaa !10
  %5 = load double, double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 66), align 8, !tbaa !10
  %6 = sext i32 %1 to i64
  %7 = shl nsw i64 %6, 3
  %8 = tail call noalias align 16 i8* @malloc(i64 %7) #2
  %9 = bitcast i8* %8 to double*
  %10 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 16, i32 0, i32 0, i32 0, i32 0), align 8
  %11 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 41, i32 0, i32 0, i32 0, i32 0), align 8
  %12 = icmp sgt i32 %1, 0
  br i1 %12, label %13, label %60

13:                                               ; preds = %3
  %14 = zext i32 %1 to i64
  br label %20

15:                                               ; preds = %20
  %16 = fcmp une double %4, 0.000000e+00
  %17 = select i1 %16, i1 %12, i1 false
  br i1 %17, label %18, label %39

18:                                               ; preds = %15
  %19 = zext i32 %1 to i64
  br label %30

20:                                               ; preds = %20, %13
  %21 = phi i64 [ 0, %13 ], [ %28, %20 ]
  %22 = getelementptr inbounds i32, i32* %10, i64 %21
  %23 = load i32, i32* %22, align 4, !tbaa !12
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds double, double* %11, i64 %24
  %26 = load double, double* %25, align 8, !tbaa !10
  %27 = getelementptr inbounds double, double* %9, i64 %21
  store double %26, double* %27, align 8, !tbaa !10
  %28 = add nuw nsw i64 %21, 1
  %29 = icmp eq i64 %28, %14
  br i1 %29, label %15, label %20, !llvm.loop !111

30:                                               ; preds = %36, %18
  %31 = phi i64 [ 0, %18 ], [ %37, %36 ]
  %32 = getelementptr inbounds double, double* %9, i64 %31
  %33 = load double, double* %32, align 8, !tbaa !10
  %34 = fcmp olt double %33, %4
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store double %4, double* %32, align 8, !tbaa !10
  br label %36

36:                                               ; preds = %35, %30
  %37 = add nuw nsw i64 %31, 1
  %38 = icmp eq i64 %37, %19
  br i1 %38, label %39, label %30, !llvm.loop !112

39:                                               ; preds = %36, %15
  %40 = fcmp une double %5, 0.000000e+00
  %41 = select i1 %40, i1 %12, i1 false
  br i1 %41, label %42, label %53

42:                                               ; preds = %39
  %43 = zext i32 %1 to i64
  br label %44

44:                                               ; preds = %50, %42
  %45 = phi i64 [ 0, %42 ], [ %51, %50 ]
  %46 = getelementptr inbounds double, double* %9, i64 %45
  %47 = load double, double* %46, align 8, !tbaa !10
  %48 = fcmp ogt double %47, %5
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store double %5, double* %46, align 8, !tbaa !10
  br label %50

50:                                               ; preds = %49, %44
  %51 = add nuw nsw i64 %45, 1
  %52 = icmp eq i64 %51, %43
  br i1 %52, label %53, label %44, !llvm.loop !113

53:                                               ; preds = %50, %39
  %54 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 39, i32 0, i32 0, i32 0, i32 0), align 8
  br i1 %12, label %56, label %55

55:                                               ; preds = %53
  tail call void @_Z15EvalEOSForElemsPdi(double* nonnull %9, i32 %1)
  br label %62

56:                                               ; preds = %53
  %57 = zext i32 %1 to i64
  br label %63

58:                                               ; preds = %63
  %59 = icmp eq i64 %77, %57
  br i1 %59, label %60, label %63, !llvm.loop !114

60:                                               ; preds = %58, %3
  tail call void @_Z15EvalEOSForElemsPdi(double* %9, i32 %1)
  %61 = icmp eq i8* %8, null
  br i1 %61, label %79, label %62

62:                                               ; preds = %60, %55
  tail call void @free(i8* nonnull %8) #2
  br label %79

63:                                               ; preds = %58, %56
  %64 = phi i64 [ 0, %56 ], [ %77, %58 ]
  %65 = getelementptr inbounds i32, i32* %10, i64 %64
  %66 = load i32, i32* %65, align 4, !tbaa !12
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds double, double* %54, i64 %67
  %69 = load double, double* %68, align 8, !tbaa !10
  %70 = fcmp olt double %69, %4
  %71 = select i1 %16, i1 %70, i1 false
  %72 = select i1 %71, double %4, double %69
  %73 = fcmp ogt double %72, %5
  %74 = select i1 %40, i1 %73, i1 false
  %75 = select i1 %74, double %5, double %72
  %76 = fcmp ugt double %75, 0.000000e+00
  %77 = add nuw nsw i64 %64, 1
  br i1 %76, label %58, label %78

78:                                               ; preds = %63
  tail call void @exit(i32 -1) #32
  unreachable

79:                                               ; preds = %62, %60, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable
define dso_local void @_Z21UpdateVolumesForElemsv() local_unnamed_addr #7 {
  %1 = load i32, i32* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 79), align 8, !tbaa !12
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %49, label %3

3:                                                ; preds = %0
  %4 = load double, double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 62), align 8, !tbaa !10
  %5 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 41, i32 0, i32 0, i32 0, i32 0), align 8
  %6 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 39, i32 0, i32 0, i32 0, i32 0), align 8
  %7 = icmp sgt i32 %1, 0
  br i1 %7, label %8, label %49

8:                                                ; preds = %3
  %9 = zext i32 %1 to i64
  %10 = icmp eq i32 %1, 1
  br i1 %10, label %36, label %11

11:                                               ; preds = %8
  %12 = getelementptr double, double* %6, i64 %9
  %13 = getelementptr double, double* %5, i64 %9
  %14 = icmp ult double* %6, %13
  %15 = icmp ult double* %5, %12
  %16 = and i1 %14, %15
  br i1 %16, label %36, label %17

17:                                               ; preds = %11
  %18 = and i64 %9, 4294967294
  %19 = insertelement <2 x double> poison, double %4, i32 0
  %20 = shufflevector <2 x double> %19, <2 x double> poison, <2 x i32> zeroinitializer
  br label %21

21:                                               ; preds = %21, %17
  %22 = phi i64 [ 0, %17 ], [ %32, %21 ]
  %23 = getelementptr inbounds double, double* %5, i64 %22
  %24 = bitcast double* %23 to <2 x double>*
  %25 = load <2 x double>, <2 x double>* %24, align 8, !tbaa !10, !alias.scope !115
  %26 = fadd <2 x double> %25, <double -1.000000e+00, double -1.000000e+00>
  %27 = call <2 x double> @llvm.fabs.v2f64(<2 x double> %26)
  %28 = fcmp olt <2 x double> %27, %20
  %29 = select <2 x i1> %28, <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double> %25
  %30 = getelementptr inbounds double, double* %6, i64 %22
  %31 = bitcast double* %30 to <2 x double>*
  store <2 x double> %29, <2 x double>* %31, align 8, !tbaa !10, !alias.scope !118, !noalias !115
  %32 = add nuw i64 %22, 2
  %33 = icmp eq i64 %32, %18
  br i1 %33, label %34, label %21, !llvm.loop !120

34:                                               ; preds = %21
  %35 = icmp eq i64 %18, %9
  br i1 %35, label %49, label %36

36:                                               ; preds = %34, %11, %8
  %37 = phi i64 [ 0, %11 ], [ 0, %8 ], [ %18, %34 ]
  br label %38

38:                                               ; preds = %38, %36
  %39 = phi i64 [ %47, %38 ], [ %37, %36 ]
  %40 = getelementptr inbounds double, double* %5, i64 %39
  %41 = load double, double* %40, align 8, !tbaa !10
  %42 = fadd double %41, -1.000000e+00
  %43 = tail call double @llvm.fabs.f64(double %42) #2
  %44 = fcmp olt double %43, %4
  %45 = select i1 %44, double 1.000000e+00, double %41
  %46 = getelementptr inbounds double, double* %6, i64 %39
  store double %45, double* %46, align 8, !tbaa !10
  %47 = add nuw nsw i64 %39, 1
  %48 = icmp eq i64 %47, %9
  br i1 %48, label %49, label %38, !llvm.loop !121

49:                                               ; preds = %38, %34, %3, %0
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local void @_Z16LagrangeElementsv() local_unnamed_addr #10 {
  %1 = load double, double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 49), align 8, !tbaa !10
  tail call void @_Z20CalcLagrangeElementsd(double %1)
  tail call void @_Z13CalcQForElemsv()
  tail call void @_Z31ApplyMaterialPropertiesForElemsv()
  tail call void @_Z21UpdateVolumesForElemsv()
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind uwtable
define dso_local void @_Z29CalcCourantConstraintForElemsv() local_unnamed_addr #20 {
  %1 = load double, double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 65), align 8, !tbaa !10
  %2 = load i32, i32* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 79), align 8, !tbaa !12
  %3 = fmul double %1, 6.400000e+01
  %4 = fmul double %1, %3
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %54

6:                                                ; preds = %0
  %7 = zext i32 %2 to i64
  %8 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 43, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  br label %11

9:                                                ; preds = %36
  %10 = icmp eq i32 %49, -1
  br i1 %10, label %54, label %53

11:                                               ; preds = %36, %6
  %12 = phi double* [ %8, %6 ], [ %43, %36 ]
  %13 = phi i64 [ 0, %6 ], [ %51, %36 ]
  %14 = phi double [ 1.000000e+20, %6 ], [ %50, %36 ]
  %15 = phi i32 [ -1, %6 ], [ %49, %36 ]
  %16 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 16, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !8
  %17 = getelementptr inbounds i32, i32* %16, i64 %13
  %18 = load i32, i32* %17, align 4, !tbaa !12
  %19 = sext i32 %18 to i64
  %20 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 45, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %21 = getelementptr inbounds double, double* %20, i64 %19
  %22 = load double, double* %21, align 8, !tbaa !10
  %23 = fmul double %22, %22
  %24 = getelementptr inbounds double, double* %12, i64 %19
  %25 = load double, double* %24, align 8, !tbaa !10
  %26 = fcmp olt double %25, 0.000000e+00
  br i1 %26, label %27, label %36

27:                                               ; preds = %11
  %28 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 44, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %29 = getelementptr inbounds double, double* %28, i64 %19
  %30 = load double, double* %29, align 8, !tbaa !10
  %31 = fmul double %4, %30
  %32 = fmul double %30, %31
  %33 = fmul double %25, %32
  %34 = fmul double %25, %33
  %35 = fadd double %23, %34
  br label %36

36:                                               ; preds = %27, %11
  %37 = phi double [ %35, %27 ], [ %23, %11 ]
  %38 = tail call double @sqrt(double %37) #2
  %39 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 44, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %40 = getelementptr inbounds double, double* %39, i64 %19
  %41 = load double, double* %40, align 8, !tbaa !10
  %42 = fdiv double %41, %38
  %43 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 43, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %44 = getelementptr inbounds double, double* %43, i64 %19
  %45 = load double, double* %44, align 8, !tbaa !10
  %46 = fcmp une double %45, 0.000000e+00
  %47 = fcmp olt double %42, %14
  %48 = select i1 %46, i1 %47, i1 false
  %49 = select i1 %48, i32 %18, i32 %15
  %50 = select i1 %48, double %42, double %14
  %51 = add nuw nsw i64 %13, 1
  %52 = icmp eq i64 %51, %7
  br i1 %52, label %9, label %11, !llvm.loop !122

53:                                               ; preds = %9
  store double %50, double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 72), align 8, !tbaa !10
  br label %54

54:                                               ; preds = %53, %9, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable
define dso_local void @_Z27CalcHydroConstraintForElemsv() local_unnamed_addr #7 {
  %1 = load double, double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 70), align 8, !tbaa !10
  %2 = load i32, i32* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 79), align 8, !tbaa !12
  %3 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 16, i32 0, i32 0, i32 0, i32 0), align 8
  %4 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 43, i32 0, i32 0, i32 0, i32 0), align 8
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %33

6:                                                ; preds = %0
  %7 = zext i32 %2 to i64
  br label %10

8:                                                ; preds = %27
  %9 = icmp eq i32 %28, -1
  br i1 %9, label %33, label %32

10:                                               ; preds = %27, %6
  %11 = phi i64 [ 0, %6 ], [ %30, %27 ]
  %12 = phi double [ 1.000000e+20, %6 ], [ %29, %27 ]
  %13 = phi i32 [ -1, %6 ], [ %28, %27 ]
  %14 = getelementptr inbounds i32, i32* %3, i64 %11
  %15 = load i32, i32* %14, align 4, !tbaa !12
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds double, double* %4, i64 %16
  %18 = load double, double* %17, align 8, !tbaa !10
  %19 = fcmp une double %18, 0.000000e+00
  br i1 %19, label %20, label %27

20:                                               ; preds = %10
  %21 = tail call double @llvm.fabs.f64(double %18) #2
  %22 = fadd double %21, 0x3BC79CA10C924223
  %23 = fdiv double %1, %22
  %24 = fcmp ogt double %12, %23
  %25 = select i1 %24, i32 %15, i32 %13
  %26 = select i1 %24, double %23, double %12
  br label %27

27:                                               ; preds = %20, %10
  %28 = phi i32 [ %13, %10 ], [ %25, %20 ]
  %29 = phi double [ %12, %10 ], [ %26, %20 ]
  %30 = add nuw nsw i64 %11, 1
  %31 = icmp eq i64 %30, %7
  br i1 %31, label %8, label %10, !llvm.loop !123

32:                                               ; preds = %8
  store double %29, double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 73), align 8, !tbaa !10
  br label %33

33:                                               ; preds = %32, %8, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind uwtable
define dso_local void @_Z27CalcTimeConstraintsForElemsv() local_unnamed_addr #20 {
  tail call void @_Z29CalcCourantConstraintForElemsv()
  tail call void @_Z27CalcHydroConstraintForElemsv()
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local void @_Z16LagrangeLeapFrogv() local_unnamed_addr #10 {
  tail call void @_Z13LagrangeNodalv()
  tail call void @_Z16LagrangeElementsv()
  tail call void @_Z27CalcTimeConstraintsForElemsv()
  ret void
}

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readonly %1) local_unnamed_addr #21 {
  %3 = alloca [8 x double], align 16
  %4 = alloca [8 x double], align 16
  %5 = alloca [8 x double], align 16
  %6 = alloca %struct.timeval, align 8
  %7 = alloca %struct.timeval, align 8
  %8 = getelementptr inbounds i8*, i8** %1, i64 1
  %9 = load i8*, i8** %8, align 8, !tbaa !124
  %10 = tail call i64 @strtol(i8* nocapture nonnull %9, i8** null, i32 10) #2
  %11 = trunc i64 %10 to i32
  %12 = add i32 %11, 1
  store i32 %11, i32* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 76), align 4, !tbaa !12
  store i32 %11, i32* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 77), align 8, !tbaa !12
  store i32 %11, i32* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 78), align 4, !tbaa !12
  %13 = mul i32 %11, %11
  %14 = mul i32 %13, %11
  store i32 %14, i32* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 79), align 8, !tbaa !12
  %15 = mul nsw i32 %12, %12
  %16 = mul nsw i32 %15, %12
  store i32 %16, i32* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 80), align 4, !tbaa !12
  %17 = sext i32 %14 to i64
  tail call void @_ZN4Mesh22AllocateElemPersistentEm(%struct.Mesh* nonnull align 8 dereferenceable(1376) @mesh, i64 %17)
  %18 = load i32, i32* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 79), align 8, !tbaa !12
  %19 = sext i32 %18 to i64
  tail call void @_ZN4Mesh21AllocateElemTemporaryEm(%struct.Mesh* nonnull align 8 dereferenceable(1376) @mesh, i64 %19)
  %20 = load i32, i32* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 80), align 4, !tbaa !12
  %21 = sext i32 %20 to i64
  tail call void @_ZN4Mesh23AllocateNodalPersistentEm(%struct.Mesh* nonnull align 8 dereferenceable(1376) @mesh, i64 %21)
  %22 = zext i32 %15 to i64
  tail call void @_ZN4Mesh16AllocateNodesetsEm(%struct.Mesh* nonnull align 8 dereferenceable(1376) @mesh, i64 %22)
  %23 = sitofp i32 %11 to double
  %24 = icmp slt i32 %11, 0
  br i1 %24, label %109, label %25

25:                                               ; preds = %84, %2
  %26 = phi double [ %88, %84 ], [ 0.000000e+00, %2 ]
  %27 = phi i64 [ %103, %84 ], [ 0, %2 ]
  %28 = phi i32 [ %85, %84 ], [ 0, %2 ]
  br label %75

29:                                               ; preds = %84
  %30 = icmp sgt i32 %11, 0
  br i1 %30, label %31, label %109

31:                                               ; preds = %29
  %32 = trunc i64 %10 to i32
  br label %33

33:                                               ; preds = %71, %31
  %34 = phi i32 [ %72, %71 ], [ 0, %31 ]
  %35 = phi i32 [ %67, %71 ], [ 0, %31 ]
  %36 = phi i32 [ %73, %71 ], [ 0, %31 ]
  br label %37

37:                                               ; preds = %66, %33
  %38 = phi i32 [ %34, %33 ], [ %68, %66 ]
  %39 = phi i32 [ %35, %33 ], [ %67, %66 ]
  %40 = phi i32 [ 0, %33 ], [ %69, %66 ]
  %41 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 17, i32 0, i32 0, i32 0, i32 0), align 8
  br label %42

42:                                               ; preds = %42, %37
  %43 = phi i32 [ %38, %37 ], [ %49, %42 ]
  %44 = phi i32 [ %39, %37 ], [ %63, %42 ]
  %45 = phi i32 [ 0, %37 ], [ %64, %42 ]
  %46 = shl nsw i32 %44, 3
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %41, i64 %47
  store i32 %43, i32* %48, align 4, !tbaa !12
  %49 = add nsw i32 %43, 1
  %50 = getelementptr inbounds i32, i32* %48, i64 1
  store i32 %49, i32* %50, align 4, !tbaa !12
  %51 = add nsw i32 %43, %12
  %52 = add nsw i32 %51, 1
  %53 = getelementptr inbounds i32, i32* %48, i64 2
  store i32 %52, i32* %53, align 4, !tbaa !12
  %54 = getelementptr inbounds i32, i32* %48, i64 3
  store i32 %51, i32* %54, align 4, !tbaa !12
  %55 = add nsw i32 %43, %15
  %56 = getelementptr inbounds i32, i32* %48, i64 4
  store i32 %55, i32* %56, align 4, !tbaa !12
  %57 = add nsw i32 %55, 1
  %58 = getelementptr inbounds i32, i32* %48, i64 5
  store i32 %57, i32* %58, align 4, !tbaa !12
  %59 = add nsw i32 %55, %12
  %60 = add nsw i32 %59, 1
  %61 = getelementptr inbounds i32, i32* %48, i64 6
  store i32 %60, i32* %61, align 4, !tbaa !12
  %62 = getelementptr inbounds i32, i32* %48, i64 7
  store i32 %59, i32* %62, align 4, !tbaa !12
  %63 = add nsw i32 %44, 1
  %64 = add nuw nsw i32 %45, 1
  %65 = icmp eq i32 %64, %11
  br i1 %65, label %66, label %42, !llvm.loop !125

66:                                               ; preds = %42
  %67 = add i32 %39, %32
  %68 = add nsw i32 %43, 2
  %69 = add nuw nsw i32 %40, 1
  %70 = icmp eq i32 %69, %11
  br i1 %70, label %71, label %37, !llvm.loop !126

71:                                               ; preds = %66
  %72 = add nsw i32 %68, %12
  %73 = add nuw nsw i32 %36, 1
  %74 = icmp eq i32 %73, %11
  br i1 %74, label %109, label %33, !llvm.loop !127

75:                                               ; preds = %90, %25
  %76 = phi double [ %94, %90 ], [ 0.000000e+00, %25 ]
  %77 = phi i64 [ %103, %90 ], [ %27, %25 ]
  %78 = phi i32 [ %91, %90 ], [ 0, %25 ]
  %79 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0), align 8
  %80 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0), align 8
  %81 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0), align 8
  %82 = shl i64 %77, 32
  %83 = ashr exact i64 %82, 32
  br label %96

84:                                               ; preds = %90
  %85 = add nuw i32 %28, 1
  %86 = sitofp i32 %85 to double
  %87 = fmul double %86, 1.125000e+00
  %88 = fdiv double %87, %23
  %89 = icmp eq i32 %28, %11
  br i1 %89, label %29, label %25, !llvm.loop !128

90:                                               ; preds = %96
  %91 = add nuw i32 %78, 1
  %92 = sitofp i32 %91 to double
  %93 = fmul double %92, 1.125000e+00
  %94 = fdiv double %93, %23
  %95 = icmp eq i32 %78, %11
  br i1 %95, label %84, label %75, !llvm.loop !129

96:                                               ; preds = %96, %75
  %97 = phi i64 [ %83, %75 ], [ %103, %96 ]
  %98 = phi double [ 0.000000e+00, %75 ], [ %107, %96 ]
  %99 = phi i32 [ 0, %75 ], [ %104, %96 ]
  %100 = getelementptr inbounds double, double* %79, i64 %97
  store double %98, double* %100, align 8, !tbaa !10
  %101 = getelementptr inbounds double, double* %80, i64 %97
  store double %76, double* %101, align 8, !tbaa !10
  %102 = getelementptr inbounds double, double* %81, i64 %97
  store double %26, double* %102, align 8, !tbaa !10
  %103 = add nsw i64 %97, 1
  %104 = add nuw i32 %99, 1
  %105 = sitofp i32 %104 to double
  %106 = fmul double %105, 1.125000e+00
  %107 = fdiv double %106, %23
  %108 = icmp eq i32 %99, %11
  br i1 %108, label %90, label %96, !llvm.loop !130

109:                                              ; preds = %71, %29, %2
  %110 = phi i1 [ false, %29 ], [ false, %2 ], [ %30, %71 ]
  %111 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 16, i32 0, i32 0, i32 0, i32 0), align 8
  %112 = icmp sgt i32 %14, 0
  br i1 %112, label %113, label %130

113:                                              ; preds = %109
  %114 = zext i32 %14 to i64
  %115 = icmp ult i32 %14, 4
  br i1 %115, label %128, label %116

116:                                              ; preds = %113
  %117 = and i64 %114, 4294967292
  br label %118

118:                                              ; preds = %118, %116
  %119 = phi i64 [ 0, %116 ], [ %123, %118 ]
  %120 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %116 ], [ %124, %118 ]
  %121 = getelementptr inbounds i32, i32* %111, i64 %119
  %122 = bitcast i32* %121 to <4 x i32>*
  store <4 x i32> %120, <4 x i32>* %122, align 4, !tbaa !12
  %123 = add nuw i64 %119, 4
  %124 = add <4 x i32> %120, <i32 4, i32 4, i32 4, i32 4>
  %125 = icmp eq i64 %123, %117
  br i1 %125, label %126, label %118, !llvm.loop !131

126:                                              ; preds = %118
  %127 = icmp eq i64 %117, %114
  br i1 %127, label %130, label %128

128:                                              ; preds = %126, %113
  %129 = phi i64 [ 0, %113 ], [ %117, %126 ]
  br label %146

130:                                              ; preds = %146, %126, %109
  store <2 x double> <double 0x3E7AD7F29ABCAF48, double 1.100000e+00>, <2 x double>* bitcast (double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 49) to <2 x double>*), align 8, !tbaa !10
  store <2 x double> <double 1.200000e+00, double 1.000000e-02>, <2 x double>* bitcast (double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 51) to <2 x double>*), align 8, !tbaa !10
  store <2 x double> <double 1.000000e+20, double 1.000000e+20>, <2 x double>* bitcast (double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 72) to <2 x double>*), align 8, !tbaa !10
  store double 1.000000e-02, double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 74), align 8, !tbaa !10
  store <2 x double> <double 0xBE7AD7F29ABCAF48, double 0.000000e+00>, <2 x double>* bitcast (double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 47) to <2 x double>*), align 8, !tbaa !10
  store i32 0, i32* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 75), align 8, !tbaa !12
  store <2 x double> <double 0x3E7AD7F29ABCAF48, double 1.000000e-10>, <2 x double>* bitcast (double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 61) to <2 x double>*), align 8, !tbaa !10
  store <2 x double> <double 0x3E7AD7F29ABCAF48, double 3.000000e+00>, <2 x double>* bitcast (double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 53) to <2 x double>*), align 8, !tbaa !10
  store <2 x double> <double 0x3E7AD7F29ABCAF48, double 0x3FF5555555555555>, <2 x double>* bitcast (double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 59) to <2 x double>*), align 8, !tbaa !10
  store <2 x double> <double 1.000000e+12, double 1.000000e+00>, <2 x double>* bitcast (double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 55) to <2 x double>*), align 8, !tbaa !10
  store <2 x double> <double 2.000000e+00, double 0x3E7AD7F29ABCAF48>, <2 x double>* bitcast (double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 57) to <2 x double>*), align 8, !tbaa !10
  store <2 x double> <double 5.000000e-01, double 0x3FE5555555555555>, <2 x double>* bitcast (double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 63) to <2 x double>*), align 8, !tbaa !10
  store <2 x double> <double -1.000000e+15, double 1.000000e-01>, <2 x double>* bitcast (double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 69) to <2 x double>*), align 8, !tbaa !10
  store <2 x double> <double 2.000000e+00, double 1.000000e+09>, <2 x double>* bitcast (double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 65) to <2 x double>*), align 8, !tbaa !10
  store <2 x double> <double 1.000000e-09, double 0.000000e+00>, <2 x double>* bitcast (double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 67) to <2 x double>*), align 8, !tbaa !10
  store double 1.000000e+00, double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 71), align 8, !tbaa !10
  %131 = bitcast [8 x double]* %3 to i8*
  %132 = bitcast [8 x double]* %4 to i8*
  %133 = bitcast [8 x double]* %5 to i8*
  %134 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 17, i32 0, i32 0, i32 0, i32 0), align 8
  %135 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0), align 8
  %136 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0), align 8
  %137 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0), align 8
  %138 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 0, i64 0
  %139 = getelementptr inbounds [8 x double], [8 x double]* %4, i64 0, i64 0
  %140 = getelementptr inbounds [8 x double], [8 x double]* %5, i64 0, i64 0
  %141 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 40, i32 0, i32 0, i32 0, i32 0), align 8
  %142 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 46, i32 0, i32 0, i32 0, i32 0), align 8
  %143 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 12, i32 0, i32 0, i32 0, i32 0), align 8
  br i1 %112, label %144, label %152

144:                                              ; preds = %130
  %145 = zext i32 %14 to i64
  br label %165

146:                                              ; preds = %146, %128
  %147 = phi i64 [ %150, %146 ], [ %129, %128 ]
  %148 = getelementptr inbounds i32, i32* %111, i64 %147
  %149 = trunc i64 %147 to i32
  store i32 %149, i32* %148, align 4, !tbaa !12
  %150 = add nuw nsw i64 %147, 1
  %151 = icmp eq i64 %150, %114
  br i1 %151, label %130, label %146, !llvm.loop !132

152:                                              ; preds = %190, %130
  %153 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 34, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  store double 0x4182D43F20000000, double* %153, align 8, !tbaa !10
  br i1 %24, label %203, label %154

154:                                              ; preds = %152
  %155 = and i64 %10, 4294967295
  %156 = add nuw nsw i64 %155, 1
  %157 = and i64 %10, 4294967295
  %158 = add nuw nsw i64 %157, 1
  %159 = icmp ult i64 %157, 3
  %160 = and i64 %158, 8589934588
  %161 = trunc i64 %160 to i32
  %162 = insertelement <4 x i32> poison, i32 %12, i32 0
  %163 = shufflevector <4 x i32> %162, <4 x i32> poison, <4 x i32> zeroinitializer
  %164 = icmp eq i64 %158, %160
  br label %242

165:                                              ; preds = %190, %144
  %166 = phi i64 [ 0, %144 ], [ %191, %190 ]
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %131) #2
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %132) #2
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %133) #2
  %167 = shl nsw i64 %166, 3
  %168 = getelementptr inbounds i32, i32* %134, i64 %167
  br label %174

169:                                              ; preds = %174
  %170 = call double @_Z14CalcElemVolumePKdS0_S0_(double* nonnull %138, double* nonnull %139, double* nonnull %140)
  %171 = getelementptr inbounds double, double* %141, i64 %166
  store double %170, double* %171, align 8, !tbaa !10
  %172 = getelementptr inbounds double, double* %142, i64 %166
  store double %170, double* %172, align 8, !tbaa !10
  %173 = fmul double %170, 1.250000e-01
  br label %193

174:                                              ; preds = %174, %165
  %175 = phi i64 [ 0, %165 ], [ %188, %174 ]
  %176 = getelementptr inbounds i32, i32* %168, i64 %175
  %177 = load i32, i32* %176, align 4, !tbaa !12
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds double, double* %135, i64 %178
  %180 = load double, double* %179, align 8, !tbaa !10
  %181 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 0, i64 %175
  store double %180, double* %181, align 8, !tbaa !10
  %182 = getelementptr inbounds double, double* %136, i64 %178
  %183 = load double, double* %182, align 8, !tbaa !10
  %184 = getelementptr inbounds [8 x double], [8 x double]* %4, i64 0, i64 %175
  store double %183, double* %184, align 8, !tbaa !10
  %185 = getelementptr inbounds double, double* %137, i64 %178
  %186 = load double, double* %185, align 8, !tbaa !10
  %187 = getelementptr inbounds [8 x double], [8 x double]* %5, i64 0, i64 %175
  store double %186, double* %187, align 8, !tbaa !10
  %188 = add nuw nsw i64 %175, 1
  %189 = icmp eq i64 %188, 8
  br i1 %189, label %169, label %174, !llvm.loop !133

190:                                              ; preds = %193
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %133) #2
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %132) #2
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %131) #2
  %191 = add nuw nsw i64 %166, 1
  %192 = icmp eq i64 %191, %145
  br i1 %192, label %152, label %165, !llvm.loop !134

193:                                              ; preds = %193, %169
  %194 = phi i64 [ 0, %169 ], [ %201, %193 ]
  %195 = getelementptr inbounds i32, i32* %168, i64 %194
  %196 = load i32, i32* %195, align 4, !tbaa !12
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds double, double* %143, i64 %197
  %199 = load double, double* %198, align 8, !tbaa !10
  %200 = fadd double %173, %199
  store double %200, double* %198, align 8, !tbaa !10
  %201 = add nuw nsw i64 %194, 1
  %202 = icmp eq i64 %201, 8
  br i1 %202, label %190, label %193, !llvm.loop !135

203:                                              ; preds = %302, %152
  %204 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 18, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !8
  store i32 0, i32* %204, align 4, !tbaa !12
  %205 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 19, i32 0, i32 0, i32 0, i32 0), align 8
  %206 = icmp sgt i32 %14, 1
  br i1 %206, label %207, label %319

207:                                              ; preds = %203
  %208 = zext i32 %14 to i64
  %209 = add nsw i64 %208, -1
  %210 = icmp ult i64 %209, 4
  br i1 %210, label %240, label %211

211:                                              ; preds = %207
  %212 = getelementptr i32, i32* %204, i64 1
  %213 = getelementptr i32, i32* %204, i64 %208
  %214 = add nsw i64 %208, -1
  %215 = getelementptr i32, i32* %205, i64 %214
  %216 = icmp ult i32* %212, %215
  %217 = icmp ult i32* %205, %213
  %218 = and i1 %216, %217
  br i1 %218, label %240, label %219

219:                                              ; preds = %211
  %220 = and i64 %209, -4
  %221 = or i64 %220, 1
  br label %222

222:                                              ; preds = %222, %219
  %223 = phi i64 [ 0, %219 ], [ %234, %222 ]
  %224 = phi <4 x i64> [ <i64 1, i64 2, i64 3, i64 4>, %219 ], [ %235, %222 ]
  %225 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %219 ], [ %236, %222 ]
  %226 = or i64 %223, 1
  %227 = add nsw <4 x i64> %224, <i64 -1, i64 -1, i64 -1, i64 -1>
  %228 = getelementptr inbounds i32, i32* %204, i64 %226
  %229 = trunc <4 x i64> %227 to <4 x i32>
  %230 = bitcast i32* %228 to <4 x i32>*
  store <4 x i32> %229, <4 x i32>* %230, align 4, !tbaa !12, !alias.scope !136, !noalias !139
  %231 = extractelement <4 x i64> %227, i32 0
  %232 = getelementptr inbounds i32, i32* %205, i64 %231
  %233 = bitcast i32* %232 to <4 x i32>*
  store <4 x i32> %225, <4 x i32>* %233, align 4, !tbaa !12, !alias.scope !139
  %234 = add nuw i64 %223, 4
  %235 = add <4 x i64> %224, <i64 4, i64 4, i64 4, i64 4>
  %236 = add <4 x i32> %225, <i32 4, i32 4, i32 4, i32 4>
  %237 = icmp eq i64 %234, %220
  br i1 %237, label %238, label %222, !llvm.loop !141

238:                                              ; preds = %222
  %239 = icmp eq i64 %209, %220
  br i1 %239, label %319, label %240

240:                                              ; preds = %238, %211, %207
  %241 = phi i64 [ 1, %211 ], [ 1, %207 ], [ %221, %238 ]
  br label %368

242:                                              ; preds = %302, %154
  %243 = phi i64 [ %303, %302 ], [ 0, %154 ]
  %244 = phi i32 [ %304, %302 ], [ 0, %154 ]
  %245 = mul nsw i32 %244, %12
  %246 = mul nsw i32 %245, %12
  %247 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 13, i32 0, i32 0, i32 0, i32 0), align 8
  %248 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 14, i32 0, i32 0, i32 0, i32 0), align 8
  %249 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 15, i32 0, i32 0, i32 0, i32 0), align 8
  %250 = shl i64 %243, 32
  %251 = ashr exact i64 %250, 32
  br i1 %159, label %299, label %252

252:                                              ; preds = %242
  %253 = shl i64 %243, 32
  %254 = ashr exact i64 %253, 32
  %255 = getelementptr i32, i32* %247, i64 %254
  %256 = add nsw i64 %254, %156
  %257 = getelementptr i32, i32* %247, i64 %256
  %258 = getelementptr i32, i32* %248, i64 %254
  %259 = add nsw i64 %254, %156
  %260 = getelementptr i32, i32* %248, i64 %259
  %261 = getelementptr i32, i32* %249, i64 %254
  %262 = add nsw i64 %254, %156
  %263 = getelementptr i32, i32* %249, i64 %262
  %264 = icmp ult i32* %255, %260
  %265 = icmp ult i32* %258, %257
  %266 = and i1 %264, %265
  %267 = icmp ult i32* %255, %263
  %268 = icmp ult i32* %261, %257
  %269 = and i1 %267, %268
  %270 = or i1 %266, %269
  %271 = icmp ult i32* %258, %263
  %272 = icmp ult i32* %261, %260
  %273 = and i1 %271, %272
  %274 = or i1 %270, %273
  br i1 %274, label %299, label %275

275:                                              ; preds = %252
  %276 = add nsw i64 %251, %160
  %277 = insertelement <4 x i32> poison, i32 %246, i32 0
  %278 = shufflevector <4 x i32> %277, <4 x i32> poison, <4 x i32> zeroinitializer
  %279 = insertelement <4 x i32> poison, i32 %245, i32 0
  %280 = shufflevector <4 x i32> %279, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %281

281:                                              ; preds = %281, %275
  %282 = phi i64 [ 0, %275 ], [ %295, %281 ]
  %283 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %275 ], [ %296, %281 ]
  %284 = add i64 %251, %282
  %285 = mul nsw <4 x i32> %283, %163
  %286 = add nsw <4 x i32> %285, %278
  %287 = getelementptr inbounds i32, i32* %247, i64 %284
  %288 = bitcast i32* %287 to <4 x i32>*
  store <4 x i32> %286, <4 x i32>* %288, align 4, !tbaa !12, !alias.scope !142, !noalias !145
  %289 = add nsw <4 x i32> %283, %278
  %290 = getelementptr inbounds i32, i32* %248, i64 %284
  %291 = bitcast i32* %290 to <4 x i32>*
  store <4 x i32> %289, <4 x i32>* %291, align 4, !tbaa !12, !alias.scope !148, !noalias !149
  %292 = add nsw <4 x i32> %283, %280
  %293 = getelementptr inbounds i32, i32* %249, i64 %284
  %294 = bitcast i32* %293 to <4 x i32>*
  store <4 x i32> %292, <4 x i32>* %294, align 4, !tbaa !12, !alias.scope !149
  %295 = add nuw i64 %282, 4
  %296 = add <4 x i32> %283, <i32 4, i32 4, i32 4, i32 4>
  %297 = icmp eq i64 %295, %160
  br i1 %297, label %298, label %281, !llvm.loop !150

298:                                              ; preds = %281
  br i1 %164, label %302, label %299

299:                                              ; preds = %298, %252, %242
  %300 = phi i64 [ %251, %252 ], [ %251, %242 ], [ %276, %298 ]
  %301 = phi i32 [ 0, %252 ], [ 0, %242 ], [ %161, %298 ]
  br label %306

302:                                              ; preds = %306, %298
  %303 = phi i64 [ %276, %298 ], [ %316, %306 ]
  %304 = add nuw i32 %244, 1
  %305 = icmp eq i32 %244, %11
  br i1 %305, label %203, label %242, !llvm.loop !151

306:                                              ; preds = %306, %299
  %307 = phi i64 [ %316, %306 ], [ %300, %299 ]
  %308 = phi i32 [ %317, %306 ], [ %301, %299 ]
  %309 = mul nsw i32 %308, %12
  %310 = add nsw i32 %309, %246
  %311 = getelementptr inbounds i32, i32* %247, i64 %307
  store i32 %310, i32* %311, align 4, !tbaa !12
  %312 = add nsw i32 %308, %246
  %313 = getelementptr inbounds i32, i32* %248, i64 %307
  store i32 %312, i32* %313, align 4, !tbaa !12
  %314 = add nsw i32 %308, %245
  %315 = getelementptr inbounds i32, i32* %249, i64 %307
  store i32 %314, i32* %315, align 4, !tbaa !12
  %316 = add nsw i64 %307, 1
  %317 = add nuw i32 %308, 1
  %318 = icmp eq i32 %308, %11
  br i1 %318, label %302, label %306, !llvm.loop !152

319:                                              ; preds = %368, %238, %203
  %320 = add nsw i32 %14, -1
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, i32* %205, i64 %321
  store i32 %320, i32* %322, align 4, !tbaa !12
  %323 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 20, i32 0, i32 0, i32 0, i32 0), align 8
  %324 = sub nsw i32 %14, %11
  %325 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 21, i32 0, i32 0, i32 0, i32 0), align 8
  br i1 %110, label %326, label %380

326:                                              ; preds = %319
  %327 = and i64 %10, 4294967295
  %328 = icmp ult i64 %327, 4
  br i1 %328, label %365, label %329

329:                                              ; preds = %326
  %330 = getelementptr i32, i32* %323, i64 %327
  %331 = mul i64 %10, %10
  %332 = add i64 %331, -1
  %333 = mul i64 %332, %10
  %334 = shl i64 %333, 32
  %335 = ashr exact i64 %334, 32
  %336 = getelementptr i32, i32* %325, i64 %335
  %337 = add nsw i64 %335, %327
  %338 = getelementptr i32, i32* %325, i64 %337
  %339 = icmp ult i32* %323, %338
  %340 = icmp ult i32* %336, %330
  %341 = and i1 %339, %340
  br i1 %341, label %365, label %342

342:                                              ; preds = %329
  %343 = and i64 %10, 3
  %344 = sub nsw i64 %327, %343
  %345 = trunc i64 %344 to i32
  %346 = insertelement <4 x i32> poison, i32 %324, i32 0
  %347 = shufflevector <4 x i32> %346, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %348

348:                                              ; preds = %348, %342
  %349 = phi i64 [ 0, %342 ], [ %359, %348 ]
  %350 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %342 ], [ %360, %348 ]
  %351 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %342 ], [ %361, %348 ]
  %352 = getelementptr inbounds i32, i32* %323, i64 %349
  %353 = bitcast i32* %352 to <4 x i32>*
  store <4 x i32> %351, <4 x i32>* %353, align 4, !tbaa !12, !alias.scope !153, !noalias !156
  %354 = add nsw <4 x i32> %350, %347
  %355 = extractelement <4 x i32> %354, i32 0
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32, i32* %325, i64 %356
  %358 = bitcast i32* %357 to <4 x i32>*
  store <4 x i32> %354, <4 x i32>* %358, align 4, !tbaa !12, !alias.scope !156
  %359 = add nuw i64 %349, 4
  %360 = add <4 x i32> %350, <i32 4, i32 4, i32 4, i32 4>
  %361 = add <4 x i32> %351, <i32 4, i32 4, i32 4, i32 4>
  %362 = icmp eq i64 %359, %344
  br i1 %362, label %363, label %348, !llvm.loop !158

363:                                              ; preds = %348
  %364 = icmp eq i64 %343, 0
  br i1 %364, label %377, label %365

365:                                              ; preds = %363, %329, %326
  %366 = phi i64 [ 0, %329 ], [ 0, %326 ], [ %344, %363 ]
  %367 = phi i32 [ 0, %329 ], [ 0, %326 ], [ %345, %363 ]
  br label %433

368:                                              ; preds = %368, %240
  %369 = phi i64 [ %375, %368 ], [ %241, %240 ]
  %370 = add nsw i64 %369, -1
  %371 = getelementptr inbounds i32, i32* %204, i64 %369
  %372 = trunc i64 %370 to i32
  store i32 %372, i32* %371, align 4, !tbaa !12
  %373 = getelementptr inbounds i32, i32* %205, i64 %370
  %374 = trunc i64 %369 to i32
  store i32 %374, i32* %373, align 4, !tbaa !12
  %375 = add nuw nsw i64 %369, 1
  %376 = icmp eq i64 %375, %208
  br i1 %376, label %319, label %368, !llvm.loop !159

377:                                              ; preds = %433, %363
  %378 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 20, i32 0, i32 0, i32 0, i32 0), align 8
  %379 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 21, i32 0, i32 0, i32 0, i32 0), align 8
  br label %380

380:                                              ; preds = %377, %319
  %381 = phi i32* [ %379, %377 ], [ %325, %319 ]
  %382 = phi i32* [ %378, %377 ], [ %323, %319 ]
  %383 = icmp sgt i32 %14, %11
  br i1 %383, label %384, label %444

384:                                              ; preds = %380
  %385 = shl i64 %10, 32
  %386 = ashr exact i64 %385, 32
  %387 = shl i64 %10, 32
  %388 = ashr exact i64 %387, 32
  %389 = sub nsw i64 %17, %388
  %390 = icmp ult i64 %389, 4
  br i1 %390, label %431, label %391

391:                                              ; preds = %384
  %392 = shl i64 %10, 32
  %393 = ashr exact i64 %392, 32
  %394 = getelementptr i32, i32* %382, i64 %393
  %395 = getelementptr i32, i32* %382, i64 %17
  %396 = sub nsw i64 %17, %393
  %397 = getelementptr i32, i32* %381, i64 %396
  %398 = icmp ult i32* %394, %397
  %399 = icmp ult i32* %381, %395
  %400 = and i1 %398, %399
  br i1 %400, label %431, label %401

401:                                              ; preds = %391
  %402 = and i64 %389, -4
  %403 = add nsw i64 %386, %402
  %404 = insertelement <4 x i64> poison, i64 %386, i32 0
  %405 = shufflevector <4 x i64> %404, <4 x i64> poison, <4 x i32> zeroinitializer
  %406 = add <4 x i64> %405, <i64 0, i64 1, i64 2, i64 3>
  %407 = insertelement <4 x i64> poison, i64 %386, i32 0
  %408 = shufflevector <4 x i64> %407, <4 x i64> poison, <4 x i32> zeroinitializer
  %409 = trunc i64 %10 to i32
  %410 = insertelement <4 x i32> poison, i32 %409, i32 0
  %411 = shufflevector <4 x i32> %410, <4 x i32> poison, <4 x i32> zeroinitializer
  %412 = add <4 x i32> %411, <i32 0, i32 1, i32 2, i32 3>
  br label %413

413:                                              ; preds = %413, %401
  %414 = phi i64 [ 0, %401 ], [ %425, %413 ]
  %415 = phi <4 x i64> [ %406, %401 ], [ %426, %413 ]
  %416 = phi <4 x i32> [ %412, %401 ], [ %427, %413 ]
  %417 = add i64 %386, %414
  %418 = sub nsw <4 x i64> %415, %408
  %419 = getelementptr inbounds i32, i32* %382, i64 %417
  %420 = trunc <4 x i64> %418 to <4 x i32>
  %421 = bitcast i32* %419 to <4 x i32>*
  store <4 x i32> %420, <4 x i32>* %421, align 4, !tbaa !12, !alias.scope !160, !noalias !163
  %422 = extractelement <4 x i64> %418, i32 0
  %423 = getelementptr inbounds i32, i32* %381, i64 %422
  %424 = bitcast i32* %423 to <4 x i32>*
  store <4 x i32> %416, <4 x i32>* %424, align 4, !tbaa !12, !alias.scope !163
  %425 = add nuw i64 %414, 4
  %426 = add <4 x i64> %415, <i64 4, i64 4, i64 4, i64 4>
  %427 = add <4 x i32> %416, <i32 4, i32 4, i32 4, i32 4>
  %428 = icmp eq i64 %425, %402
  br i1 %428, label %429, label %413, !llvm.loop !165

429:                                              ; preds = %413
  %430 = icmp eq i64 %389, %402
  br i1 %430, label %444, label %431

431:                                              ; preds = %429, %391, %384
  %432 = phi i64 [ %386, %391 ], [ %386, %384 ], [ %403, %429 ]
  br label %486

433:                                              ; preds = %433, %365
  %434 = phi i64 [ %441, %433 ], [ %366, %365 ]
  %435 = phi i32 [ %442, %433 ], [ %367, %365 ]
  %436 = getelementptr inbounds i32, i32* %323, i64 %434
  %437 = trunc i64 %434 to i32
  store i32 %437, i32* %436, align 4, !tbaa !12
  %438 = add nsw i32 %435, %324
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds i32, i32* %325, i64 %439
  store i32 %438, i32* %440, align 4, !tbaa !12
  %441 = add nuw nsw i64 %434, 1
  %442 = add nuw nsw i32 %435, 1
  %443 = icmp eq i64 %441, %327
  br i1 %443, label %377, label %433, !llvm.loop !166

444:                                              ; preds = %486, %429, %380
  %445 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 22, i32 0, i32 0, i32 0, i32 0), align 8
  %446 = sub i32 %14, %13
  %447 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 23, i32 0, i32 0, i32 0, i32 0), align 8
  %448 = icmp eq i32 %13, 0
  br i1 %448, label %498, label %449

449:                                              ; preds = %444
  %450 = zext i32 %13 to i64
  %451 = icmp ult i32 %13, 4
  br i1 %451, label %483, label %452

452:                                              ; preds = %449
  %453 = getelementptr i32, i32* %445, i64 %450
  %454 = sext i32 %446 to i64
  %455 = getelementptr i32, i32* %447, i64 %454
  %456 = add nsw i64 %454, %450
  %457 = getelementptr i32, i32* %447, i64 %456
  %458 = icmp ult i32* %445, %457
  %459 = icmp ult i32* %455, %453
  %460 = and i1 %458, %459
  br i1 %460, label %483, label %461

461:                                              ; preds = %452
  %462 = and i64 %450, 4294967292
  %463 = trunc i64 %462 to i32
  %464 = insertelement <4 x i32> poison, i32 %446, i32 0
  %465 = shufflevector <4 x i32> %464, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %466

466:                                              ; preds = %466, %461
  %467 = phi i64 [ 0, %461 ], [ %477, %466 ]
  %468 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %461 ], [ %478, %466 ]
  %469 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %461 ], [ %479, %466 ]
  %470 = getelementptr inbounds i32, i32* %445, i64 %467
  %471 = bitcast i32* %470 to <4 x i32>*
  store <4 x i32> %469, <4 x i32>* %471, align 4, !tbaa !12, !alias.scope !167, !noalias !170
  %472 = add nsw <4 x i32> %468, %465
  %473 = extractelement <4 x i32> %472, i32 0
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds i32, i32* %447, i64 %474
  %476 = bitcast i32* %475 to <4 x i32>*
  store <4 x i32> %472, <4 x i32>* %476, align 4, !tbaa !12, !alias.scope !170
  %477 = add nuw i64 %467, 4
  %478 = add <4 x i32> %468, <i32 4, i32 4, i32 4, i32 4>
  %479 = add <4 x i32> %469, <i32 4, i32 4, i32 4, i32 4>
  %480 = icmp eq i64 %477, %462
  br i1 %480, label %481, label %466, !llvm.loop !172

481:                                              ; preds = %466
  %482 = icmp eq i64 %462, %450
  br i1 %482, label %495, label %483

483:                                              ; preds = %481, %452, %449
  %484 = phi i64 [ 0, %452 ], [ 0, %449 ], [ %462, %481 ]
  %485 = phi i32 [ 0, %452 ], [ 0, %449 ], [ %463, %481 ]
  br label %554

486:                                              ; preds = %486, %431
  %487 = phi i64 [ %493, %486 ], [ %432, %431 ]
  %488 = sub nsw i64 %487, %386
  %489 = getelementptr inbounds i32, i32* %382, i64 %487
  %490 = trunc i64 %488 to i32
  store i32 %490, i32* %489, align 4, !tbaa !12
  %491 = getelementptr inbounds i32, i32* %381, i64 %488
  %492 = trunc i64 %487 to i32
  store i32 %492, i32* %491, align 4, !tbaa !12
  %493 = add nsw i64 %487, 1
  %494 = icmp eq i64 %493, %17
  br i1 %494, label %444, label %486, !llvm.loop !173

495:                                              ; preds = %554, %481
  %496 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 22, i32 0, i32 0, i32 0, i32 0), align 8
  %497 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 23, i32 0, i32 0, i32 0, i32 0), align 8
  br label %498

498:                                              ; preds = %495, %444
  %499 = phi i32* [ %497, %495 ], [ %447, %444 ]
  %500 = phi i32* [ %496, %495 ], [ %445, %444 ]
  %501 = icmp sgt i32 %14, %13
  br i1 %501, label %502, label %565

502:                                              ; preds = %498
  %503 = zext i32 %13 to i64
  %504 = add i32 %446, -1
  %505 = zext i32 %504 to i64
  %506 = add nuw nsw i64 %505, 1
  %507 = icmp ult i32 %504, 3
  %508 = add i32 %446, -1
  %509 = icmp slt i32 %508, 0
  %510 = or i1 %507, %509
  br i1 %510, label %552, label %511

511:                                              ; preds = %502
  %512 = getelementptr i32, i32* %500, i64 %503
  %513 = add i32 %446, -1
  %514 = zext i32 %513 to i64
  %515 = add nuw nsw i64 %503, %514
  %516 = add nuw nsw i64 %515, 1
  %517 = getelementptr i32, i32* %500, i64 %516
  %518 = add nuw nsw i64 %514, 1
  %519 = getelementptr i32, i32* %499, i64 %518
  %520 = icmp ult i32* %512, %519
  %521 = icmp ult i32* %499, %517
  %522 = and i1 %520, %521
  br i1 %522, label %552, label %523

523:                                              ; preds = %511
  %524 = and i64 %506, 8589934588
  %525 = add nuw nsw i64 %524, %503
  %526 = insertelement <4 x i32> poison, i32 %13, i32 0
  %527 = shufflevector <4 x i32> %526, <4 x i32> poison, <4 x i32> zeroinitializer
  %528 = add <4 x i32> %527, <i32 0, i32 1, i32 2, i32 3>
  %529 = insertelement <4 x i32> poison, i32 %13, i32 0
  %530 = shufflevector <4 x i32> %529, <4 x i32> poison, <4 x i32> zeroinitializer
  %531 = insertelement <4 x i32> poison, i32 %13, i32 0
  %532 = shufflevector <4 x i32> %531, <4 x i32> poison, <4 x i32> zeroinitializer
  %533 = add <4 x i32> %532, <i32 0, i32 1, i32 2, i32 3>
  br label %534

534:                                              ; preds = %534, %523
  %535 = phi i64 [ 0, %523 ], [ %546, %534 ]
  %536 = phi <4 x i32> [ %528, %523 ], [ %547, %534 ]
  %537 = phi <4 x i32> [ %533, %523 ], [ %548, %534 ]
  %538 = add i64 %535, %503
  %539 = getelementptr inbounds i32, i32* %500, i64 %538
  %540 = sub <4 x i32> %536, %530
  %541 = bitcast i32* %539 to <4 x i32>*
  store <4 x i32> %540, <4 x i32>* %541, align 4, !tbaa !12, !alias.scope !174, !noalias !177
  %542 = extractelement <4 x i32> %540, i32 0
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds i32, i32* %499, i64 %543
  %545 = bitcast i32* %544 to <4 x i32>*
  store <4 x i32> %537, <4 x i32>* %545, align 4, !tbaa !12, !alias.scope !177
  %546 = add nuw i64 %535, 4
  %547 = add <4 x i32> %536, <i32 4, i32 4, i32 4, i32 4>
  %548 = add <4 x i32> %537, <i32 4, i32 4, i32 4, i32 4>
  %549 = icmp eq i64 %546, %524
  br i1 %549, label %550, label %534, !llvm.loop !179

550:                                              ; preds = %534
  %551 = icmp eq i64 %506, %524
  br i1 %551, label %565, label %552

552:                                              ; preds = %550, %511, %502
  %553 = phi i64 [ %503, %511 ], [ %503, %502 ], [ %525, %550 ]
  br label %570

554:                                              ; preds = %554, %483
  %555 = phi i64 [ %562, %554 ], [ %484, %483 ]
  %556 = phi i32 [ %563, %554 ], [ %485, %483 ]
  %557 = getelementptr inbounds i32, i32* %445, i64 %555
  %558 = trunc i64 %555 to i32
  store i32 %558, i32* %557, align 4, !tbaa !12
  %559 = add nsw i32 %556, %446
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds i32, i32* %447, i64 %560
  store i32 %559, i32* %561, align 4, !tbaa !12
  %562 = add nuw nsw i64 %555, 1
  %563 = add nuw nsw i32 %556, 1
  %564 = icmp eq i64 %562, %450
  br i1 %564, label %495, label %554, !llvm.loop !180

565:                                              ; preds = %570, %550, %498
  br i1 %112, label %566, label %581

566:                                              ; preds = %565
  %567 = load i8*, i8** bitcast (i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 24, i32 0, i32 0, i32 0, i32 0) to i8**), align 8
  %568 = zext i32 %14 to i64
  %569 = shl nuw nsw i64 %568, 2
  call void @llvm.memset.p0i8.i64(i8* align 4 %567, i8 0, i64 %569, i1 false)
  br label %581

570:                                              ; preds = %570, %552
  %571 = phi i64 [ %578, %570 ], [ %553, %552 ]
  %572 = getelementptr inbounds i32, i32* %500, i64 %571
  %573 = trunc i64 %571 to i32
  %574 = sub i32 %573, %13
  store i32 %574, i32* %572, align 4, !tbaa !12
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds i32, i32* %499, i64 %575
  %577 = trunc i64 %571 to i32
  store i32 %577, i32* %576, align 4, !tbaa !12
  %578 = add nuw nsw i64 %571, 1
  %579 = trunc i64 %578 to i32
  %580 = icmp sgt i32 %14, %579
  br i1 %580, label %570, label %565, !llvm.loop !181

581:                                              ; preds = %566, %565
  %582 = add i64 %10, 4294967295
  %583 = sub i32 %13, %11
  br i1 %110, label %584, label %588

584:                                              ; preds = %581
  %585 = shl i64 %10, 32
  %586 = ashr exact i64 %585, 32
  %587 = and i64 %10, 4294967295
  br label %595

588:                                              ; preds = %600, %581
  %589 = bitcast %struct.timeval* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %589) #2
  %590 = bitcast %struct.timeval* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %590) #2
  %591 = call i32 @gettimeofday(%struct.timeval* nonnull %6, i8* null) #2
  %592 = load double, double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 48), align 8, !tbaa !10
  %593 = load double, double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 52), align 8, !tbaa !10
  %594 = fcmp olt double %592, %593
  br i1 %594, label %638, label %642

595:                                              ; preds = %600, %584
  %596 = phi i64 [ 0, %584 ], [ %601, %600 ]
  %597 = mul nsw i64 %596, %586
  %598 = mul nsw i64 %597, %586
  %599 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 24, i32 0, i32 0, i32 0, i32 0), align 8
  br label %603

600:                                              ; preds = %603
  %601 = add nuw nsw i64 %596, 1
  %602 = icmp eq i64 %601, %587
  br i1 %602, label %588, label %595, !llvm.loop !182

603:                                              ; preds = %603, %595
  %604 = phi i64 [ 0, %595 ], [ %636, %603 ]
  %605 = mul nsw i64 %604, %586
  %606 = add nsw i64 %605, %598
  %607 = getelementptr inbounds i32, i32* %599, i64 %606
  %608 = load i32, i32* %607, align 4, !tbaa !12
  %609 = or i32 %608, 1
  store i32 %609, i32* %607, align 4, !tbaa !12
  %610 = add i64 %582, %606
  %611 = shl i64 %610, 32
  %612 = ashr exact i64 %611, 32
  %613 = getelementptr inbounds i32, i32* %599, i64 %612
  %614 = load i32, i32* %613, align 4, !tbaa !12
  %615 = or i32 %614, 8
  store i32 %615, i32* %613, align 4, !tbaa !12
  %616 = add nsw i64 %604, %598
  %617 = getelementptr inbounds i32, i32* %599, i64 %616
  %618 = load i32, i32* %617, align 4, !tbaa !12
  %619 = or i32 %618, 16
  store i32 %619, i32* %617, align 4, !tbaa !12
  %620 = trunc i64 %616 to i32
  %621 = add i32 %583, %620
  %622 = sext i32 %621 to i64
  %623 = getelementptr inbounds i32, i32* %599, i64 %622
  %624 = load i32, i32* %623, align 4, !tbaa !12
  %625 = or i32 %624, 128
  store i32 %625, i32* %623, align 4, !tbaa !12
  %626 = add nsw i64 %604, %597
  %627 = getelementptr inbounds i32, i32* %599, i64 %626
  %628 = load i32, i32* %627, align 4, !tbaa !12
  %629 = or i32 %628, 256
  store i32 %629, i32* %627, align 4, !tbaa !12
  %630 = trunc i64 %626 to i32
  %631 = add i32 %446, %630
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds i32, i32* %599, i64 %632
  %634 = load i32, i32* %633, align 4, !tbaa !12
  %635 = or i32 %634, 2048
  store i32 %635, i32* %633, align 4, !tbaa !12
  %636 = add nuw nsw i64 %604, 1
  %637 = icmp eq i64 %636, %587
  br i1 %637, label %600, label %603, !llvm.loop !183

638:                                              ; preds = %638, %588
  tail call void @_Z13TimeIncrementv()
  tail call void @_Z16LagrangeLeapFrogv()
  %639 = load double, double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 48), align 8, !tbaa !10
  %640 = load double, double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 52), align 8, !tbaa !10
  %641 = fcmp olt double %639, %640
  br i1 %641, label %638, label %642, !llvm.loop !184

642:                                              ; preds = %638, %588
  %643 = call i32 @gettimeofday(%struct.timeval* nonnull %7, i8* null) #2
  %644 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i64 0, i32 0
  %645 = load i64, i64* %644, align 8, !tbaa !185
  %646 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 0
  %647 = load i64, i64* %646, align 8, !tbaa !185
  %648 = sub nsw i64 %645, %647
  %649 = sitofp i64 %648 to double
  %650 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i64 0, i32 1
  %651 = load i64, i64* %650, align 8, !tbaa !188
  %652 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 1
  %653 = load i64, i64* %652, align 8, !tbaa !188
  %654 = sub nsw i64 %651, %653
  %655 = sitofp i64 %654 to double
  %656 = fmul double %655, 0x3EB0C6F7A0B5ED8D
  %657 = fadd double %656, %649
  %658 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), double %657)
  %659 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @str, i64 0, i64 0))
  %660 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %11)
  %661 = load i32, i32* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 75), align 8, !tbaa !12
  %662 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %661)
  %663 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 34, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %664 = load double, double* %663, align 8, !tbaa !10
  %665 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), double %664)
  %666 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 34, i32 0, i32 0, i32 0, i32 0), align 8
  br i1 %110, label %669, label %667

667:                                              ; preds = %642
  %668 = tail call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %714

669:                                              ; preds = %642
  %670 = shl i64 %10, 32
  %671 = ashr exact i64 %670, 32
  %672 = and i64 %10, 4294967295
  br label %683

673:                                              ; preds = %692, %683
  %674 = phi double [ %688, %683 ], [ %708, %692 ]
  %675 = phi double [ %687, %683 ], [ %706, %692 ]
  %676 = phi double [ %686, %683 ], [ %711, %692 ]
  %677 = add nuw nsw i64 %685, 1
  %678 = icmp eq i64 %689, %672
  br i1 %678, label %679, label %683, !llvm.loop !189

679:                                              ; preds = %673
  %680 = tail call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br i1 %110, label %681, label %714

681:                                              ; preds = %679
  %682 = and i64 %10, 4294967295
  br label %724

683:                                              ; preds = %673, %669
  %684 = phi i64 [ 0, %669 ], [ %689, %673 ]
  %685 = phi i64 [ 1, %669 ], [ %677, %673 ]
  %686 = phi double [ 0.000000e+00, %669 ], [ %676, %673 ]
  %687 = phi double [ 0.000000e+00, %669 ], [ %675, %673 ]
  %688 = phi double [ 0.000000e+00, %669 ], [ %674, %673 ]
  %689 = add nuw nsw i64 %684, 1
  %690 = mul nsw i64 %684, %671
  %691 = icmp slt i64 %689, %671
  br i1 %691, label %692, label %673

692:                                              ; preds = %692, %683
  %693 = phi i64 [ %712, %692 ], [ %685, %683 ]
  %694 = phi double [ %711, %692 ], [ %686, %683 ]
  %695 = phi double [ %706, %692 ], [ %687, %683 ]
  %696 = phi double [ %708, %692 ], [ %688, %683 ]
  %697 = add nsw i64 %693, %690
  %698 = getelementptr inbounds double, double* %666, i64 %697
  %699 = load double, double* %698, align 8, !tbaa !10
  %700 = mul nsw i64 %693, %671
  %701 = add nsw i64 %700, %684
  %702 = getelementptr inbounds double, double* %666, i64 %701
  %703 = load double, double* %702, align 8, !tbaa !10
  %704 = fsub double %699, %703
  %705 = tail call double @llvm.fabs.f64(double %704) #2
  %706 = fadd double %695, %705
  %707 = fcmp olt double %696, %705
  %708 = select i1 %707, double %705, double %696
  %709 = fdiv double %705, %703
  %710 = fcmp olt double %694, %709
  %711 = select i1 %710, double %709, double %694
  %712 = add nuw nsw i64 %693, 1
  %713 = icmp eq i64 %712, %672
  br i1 %713, label %673, label %692, !llvm.loop !190

714:                                              ; preds = %724, %679, %667
  %715 = phi %struct._IO_FILE* [ %668, %667 ], [ %680, %679 ], [ %680, %724 ]
  %716 = phi double [ 0.000000e+00, %667 ], [ %676, %679 ], [ %676, %724 ]
  %717 = phi double [ 0.000000e+00, %667 ], [ %675, %679 ], [ %675, %724 ]
  %718 = phi double [ 0.000000e+00, %667 ], [ %674, %679 ], [ %674, %724 ]
  %719 = tail call i32 @fclose(%struct._IO_FILE* %715)
  %720 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([36 x i8], [36 x i8]* @str.14, i64 0, i64 0))
  %721 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), double %718)
  %722 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), double %717)
  %723 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), double %716)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %590) #2
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %589) #2
  ret i32 0

724:                                              ; preds = %724, %681
  %725 = phi i64 [ 0, %681 ], [ %730, %724 ]
  %726 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 34, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %727 = getelementptr inbounds double, double* %726, i64 %725
  %728 = load double, double* %727, align 8, !tbaa !10
  %729 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %680, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), double %728)
  %730 = add nuw nsw i64 %725, 1
  %731 = icmp eq i64 %730, %682
  br i1 %731, label %714, label %724, !llvm.loop !191
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare dso_local i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #19

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZN4Mesh22AllocateElemPersistentEm(%struct.Mesh* nonnull align 8 dereferenceable(1376) %0, i64 %1) local_unnamed_addr #22 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 16
  %7 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 16, i32 0, i32 0, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8, !tbaa !192
  %9 = getelementptr inbounds %"class.std::vector.0", %"class.std::vector.0"* %6, i64 0, i32 0, i32 0, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8, !tbaa !8
  %11 = ptrtoint i32* %8 to i64
  %12 = ptrtoint i32* %10 to i64
  %13 = sub i64 %11, %12
  %14 = ashr exact i64 %13, 2
  %15 = icmp ult i64 %14, %1
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = sub i64 %1, %14
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(%"class.std::vector.0"* nonnull align 8 dereferenceable(24) %6, i64 %17)
  br label %24

18:                                               ; preds = %2
  %19 = icmp ugt i64 %14, %1
  br i1 %19, label %20, label %24

20:                                               ; preds = %18
  %21 = getelementptr inbounds i32, i32* %10, i64 %1
  %22 = icmp eq i32* %8, %21
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  store i32* %21, i32** %7, align 8, !tbaa !192
  br label %24

24:                                               ; preds = %23, %20, %18, %16
  %25 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 17
  %26 = shl i64 %1, 3
  %27 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 17, i32 0, i32 0, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8, !tbaa !192
  %29 = getelementptr inbounds %"class.std::vector.0", %"class.std::vector.0"* %25, i64 0, i32 0, i32 0, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8, !tbaa !8
  %31 = ptrtoint i32* %28 to i64
  %32 = ptrtoint i32* %30 to i64
  %33 = sub i64 %31, %32
  %34 = ashr exact i64 %33, 2
  %35 = icmp ugt i64 %26, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %24
  %37 = sub i64 %26, %34
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(%"class.std::vector.0"* nonnull align 8 dereferenceable(24) %25, i64 %37)
  br label %44

38:                                               ; preds = %24
  %39 = icmp ult i64 %26, %34
  br i1 %39, label %40, label %44

40:                                               ; preds = %38
  %41 = getelementptr inbounds i32, i32* %30, i64 %26
  %42 = icmp eq i32* %28, %41
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  store i32* %41, i32** %27, align 8, !tbaa !192
  br label %44

44:                                               ; preds = %43, %40, %38, %36
  %45 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 18
  %46 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 18, i32 0, i32 0, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8, !tbaa !192
  %48 = getelementptr inbounds %"class.std::vector.0", %"class.std::vector.0"* %45, i64 0, i32 0, i32 0, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8, !tbaa !8
  %50 = ptrtoint i32* %47 to i64
  %51 = ptrtoint i32* %49 to i64
  %52 = sub i64 %50, %51
  %53 = ashr exact i64 %52, 2
  %54 = icmp ult i64 %53, %1
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = sub i64 %1, %53
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(%"class.std::vector.0"* nonnull align 8 dereferenceable(24) %45, i64 %56)
  br label %63

57:                                               ; preds = %44
  %58 = icmp ugt i64 %53, %1
  br i1 %58, label %59, label %63

59:                                               ; preds = %57
  %60 = getelementptr inbounds i32, i32* %49, i64 %1
  %61 = icmp eq i32* %47, %60
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  store i32* %60, i32** %46, align 8, !tbaa !192
  br label %63

63:                                               ; preds = %62, %59, %57, %55
  %64 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 19
  %65 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 19, i32 0, i32 0, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8, !tbaa !192
  %67 = getelementptr inbounds %"class.std::vector.0", %"class.std::vector.0"* %64, i64 0, i32 0, i32 0, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8, !tbaa !8
  %69 = ptrtoint i32* %66 to i64
  %70 = ptrtoint i32* %68 to i64
  %71 = sub i64 %69, %70
  %72 = ashr exact i64 %71, 2
  %73 = icmp ult i64 %72, %1
  br i1 %73, label %74, label %76

74:                                               ; preds = %63
  %75 = sub i64 %1, %72
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(%"class.std::vector.0"* nonnull align 8 dereferenceable(24) %64, i64 %75)
  br label %82

76:                                               ; preds = %63
  %77 = icmp ugt i64 %72, %1
  br i1 %77, label %78, label %82

78:                                               ; preds = %76
  %79 = getelementptr inbounds i32, i32* %68, i64 %1
  %80 = icmp eq i32* %66, %79
  br i1 %80, label %82, label %81

81:                                               ; preds = %78
  store i32* %79, i32** %65, align 8, !tbaa !192
  br label %82

82:                                               ; preds = %81, %78, %76, %74
  %83 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 20
  %84 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 20, i32 0, i32 0, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8, !tbaa !192
  %86 = getelementptr inbounds %"class.std::vector.0", %"class.std::vector.0"* %83, i64 0, i32 0, i32 0, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8, !tbaa !8
  %88 = ptrtoint i32* %85 to i64
  %89 = ptrtoint i32* %87 to i64
  %90 = sub i64 %88, %89
  %91 = ashr exact i64 %90, 2
  %92 = icmp ult i64 %91, %1
  br i1 %92, label %93, label %95

93:                                               ; preds = %82
  %94 = sub i64 %1, %91
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(%"class.std::vector.0"* nonnull align 8 dereferenceable(24) %83, i64 %94)
  br label %101

95:                                               ; preds = %82
  %96 = icmp ugt i64 %91, %1
  br i1 %96, label %97, label %101

97:                                               ; preds = %95
  %98 = getelementptr inbounds i32, i32* %87, i64 %1
  %99 = icmp eq i32* %85, %98
  br i1 %99, label %101, label %100

100:                                              ; preds = %97
  store i32* %98, i32** %84, align 8, !tbaa !192
  br label %101

101:                                              ; preds = %100, %97, %95, %93
  %102 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 21
  %103 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 21, i32 0, i32 0, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8, !tbaa !192
  %105 = getelementptr inbounds %"class.std::vector.0", %"class.std::vector.0"* %102, i64 0, i32 0, i32 0, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8, !tbaa !8
  %107 = ptrtoint i32* %104 to i64
  %108 = ptrtoint i32* %106 to i64
  %109 = sub i64 %107, %108
  %110 = ashr exact i64 %109, 2
  %111 = icmp ult i64 %110, %1
  br i1 %111, label %112, label %114

112:                                              ; preds = %101
  %113 = sub i64 %1, %110
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(%"class.std::vector.0"* nonnull align 8 dereferenceable(24) %102, i64 %113)
  br label %120

114:                                              ; preds = %101
  %115 = icmp ugt i64 %110, %1
  br i1 %115, label %116, label %120

116:                                              ; preds = %114
  %117 = getelementptr inbounds i32, i32* %106, i64 %1
  %118 = icmp eq i32* %104, %117
  br i1 %118, label %120, label %119

119:                                              ; preds = %116
  store i32* %117, i32** %103, align 8, !tbaa !192
  br label %120

120:                                              ; preds = %119, %116, %114, %112
  %121 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 22
  %122 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 22, i32 0, i32 0, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8, !tbaa !192
  %124 = getelementptr inbounds %"class.std::vector.0", %"class.std::vector.0"* %121, i64 0, i32 0, i32 0, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8, !tbaa !8
  %126 = ptrtoint i32* %123 to i64
  %127 = ptrtoint i32* %125 to i64
  %128 = sub i64 %126, %127
  %129 = ashr exact i64 %128, 2
  %130 = icmp ult i64 %129, %1
  br i1 %130, label %131, label %133

131:                                              ; preds = %120
  %132 = sub i64 %1, %129
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(%"class.std::vector.0"* nonnull align 8 dereferenceable(24) %121, i64 %132)
  br label %139

133:                                              ; preds = %120
  %134 = icmp ugt i64 %129, %1
  br i1 %134, label %135, label %139

135:                                              ; preds = %133
  %136 = getelementptr inbounds i32, i32* %125, i64 %1
  %137 = icmp eq i32* %123, %136
  br i1 %137, label %139, label %138

138:                                              ; preds = %135
  store i32* %136, i32** %122, align 8, !tbaa !192
  br label %139

139:                                              ; preds = %138, %135, %133, %131
  %140 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 23
  %141 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 23, i32 0, i32 0, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8, !tbaa !192
  %143 = getelementptr inbounds %"class.std::vector.0", %"class.std::vector.0"* %140, i64 0, i32 0, i32 0, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8, !tbaa !8
  %145 = ptrtoint i32* %142 to i64
  %146 = ptrtoint i32* %144 to i64
  %147 = sub i64 %145, %146
  %148 = ashr exact i64 %147, 2
  %149 = icmp ult i64 %148, %1
  br i1 %149, label %150, label %152

150:                                              ; preds = %139
  %151 = sub i64 %1, %148
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(%"class.std::vector.0"* nonnull align 8 dereferenceable(24) %140, i64 %151)
  br label %158

152:                                              ; preds = %139
  %153 = icmp ugt i64 %148, %1
  br i1 %153, label %154, label %158

154:                                              ; preds = %152
  %155 = getelementptr inbounds i32, i32* %144, i64 %1
  %156 = icmp eq i32* %142, %155
  br i1 %156, label %158, label %157

157:                                              ; preds = %154
  store i32* %155, i32** %141, align 8, !tbaa !192
  br label %158

158:                                              ; preds = %157, %154, %152, %150
  %159 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 24
  %160 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 24, i32 0, i32 0, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8, !tbaa !192
  %162 = getelementptr inbounds %"class.std::vector.0", %"class.std::vector.0"* %159, i64 0, i32 0, i32 0, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8, !tbaa !8
  %164 = ptrtoint i32* %161 to i64
  %165 = ptrtoint i32* %163 to i64
  %166 = sub i64 %164, %165
  %167 = ashr exact i64 %166, 2
  %168 = icmp ult i64 %167, %1
  br i1 %168, label %169, label %171

169:                                              ; preds = %158
  %170 = sub i64 %1, %167
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(%"class.std::vector.0"* nonnull align 8 dereferenceable(24) %159, i64 %170)
  br label %177

171:                                              ; preds = %158
  %172 = icmp ugt i64 %167, %1
  br i1 %172, label %173, label %177

173:                                              ; preds = %171
  %174 = getelementptr inbounds i32, i32* %163, i64 %1
  %175 = icmp eq i32* %161, %174
  br i1 %175, label %177, label %176

176:                                              ; preds = %173
  store i32* %174, i32** %160, align 8, !tbaa !192
  br label %177

177:                                              ; preds = %176, %173, %171, %169
  %178 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 34
  %179 = bitcast double* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %179) #2
  store double 0.000000e+00, double* %3, align 8, !tbaa !10
  %180 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 34, i32 0, i32 0, i32 0, i32 1
  %181 = load double*, double** %180, align 8, !tbaa !193
  %182 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %178, i64 0, i32 0, i32 0, i32 0, i32 0
  %183 = load double*, double** %182, align 8, !tbaa !3
  %184 = ptrtoint double* %181 to i64
  %185 = ptrtoint double* %183 to i64
  %186 = sub i64 %184, %185
  %187 = ashr exact i64 %186, 3
  %188 = icmp ult i64 %187, %1
  br i1 %188, label %189, label %191

189:                                              ; preds = %177
  %190 = sub i64 %1, %187
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(%"class.std::vector"* nonnull align 8 dereferenceable(24) %178, double* %181, i64 %190, double* nonnull align 8 dereferenceable(8) %3)
  br label %197

191:                                              ; preds = %177
  %192 = icmp ugt i64 %187, %1
  br i1 %192, label %193, label %197

193:                                              ; preds = %191
  %194 = getelementptr inbounds double, double* %183, i64 %1
  %195 = icmp eq double* %181, %194
  br i1 %195, label %197, label %196

196:                                              ; preds = %193
  store double* %194, double** %180, align 8, !tbaa !193
  br label %197

197:                                              ; preds = %196, %193, %191, %189
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %179) #2
  %198 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 35
  %199 = bitcast double* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %199) #2
  store double 0.000000e+00, double* %4, align 8, !tbaa !10
  %200 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 35, i32 0, i32 0, i32 0, i32 1
  %201 = load double*, double** %200, align 8, !tbaa !193
  %202 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %198, i64 0, i32 0, i32 0, i32 0, i32 0
  %203 = load double*, double** %202, align 8, !tbaa !3
  %204 = ptrtoint double* %201 to i64
  %205 = ptrtoint double* %203 to i64
  %206 = sub i64 %204, %205
  %207 = ashr exact i64 %206, 3
  %208 = icmp ult i64 %207, %1
  br i1 %208, label %209, label %211

209:                                              ; preds = %197
  %210 = sub i64 %1, %207
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(%"class.std::vector"* nonnull align 8 dereferenceable(24) %198, double* %201, i64 %210, double* nonnull align 8 dereferenceable(8) %4)
  br label %217

211:                                              ; preds = %197
  %212 = icmp ugt i64 %207, %1
  br i1 %212, label %213, label %217

213:                                              ; preds = %211
  %214 = getelementptr inbounds double, double* %203, i64 %1
  %215 = icmp eq double* %201, %214
  br i1 %215, label %217, label %216

216:                                              ; preds = %213
  store double* %214, double** %200, align 8, !tbaa !193
  br label %217

217:                                              ; preds = %216, %213, %211, %209
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %199) #2
  %218 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 36
  %219 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 36, i32 0, i32 0, i32 0, i32 1
  %220 = load double*, double** %219, align 8, !tbaa !193
  %221 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %218, i64 0, i32 0, i32 0, i32 0, i32 0
  %222 = load double*, double** %221, align 8, !tbaa !3
  %223 = ptrtoint double* %220 to i64
  %224 = ptrtoint double* %222 to i64
  %225 = sub i64 %223, %224
  %226 = ashr exact i64 %225, 3
  %227 = icmp ult i64 %226, %1
  br i1 %227, label %228, label %230

228:                                              ; preds = %217
  %229 = sub i64 %1, %226
  call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(%"class.std::vector"* nonnull align 8 dereferenceable(24) %218, i64 %229)
  br label %236

230:                                              ; preds = %217
  %231 = icmp ugt i64 %226, %1
  br i1 %231, label %232, label %236

232:                                              ; preds = %230
  %233 = getelementptr inbounds double, double* %222, i64 %1
  %234 = icmp eq double* %220, %233
  br i1 %234, label %236, label %235

235:                                              ; preds = %232
  store double* %233, double** %219, align 8, !tbaa !193
  br label %236

236:                                              ; preds = %235, %232, %230, %228
  %237 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 37
  %238 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 37, i32 0, i32 0, i32 0, i32 1
  %239 = load double*, double** %238, align 8, !tbaa !193
  %240 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %237, i64 0, i32 0, i32 0, i32 0, i32 0
  %241 = load double*, double** %240, align 8, !tbaa !3
  %242 = ptrtoint double* %239 to i64
  %243 = ptrtoint double* %241 to i64
  %244 = sub i64 %242, %243
  %245 = ashr exact i64 %244, 3
  %246 = icmp ult i64 %245, %1
  br i1 %246, label %247, label %249

247:                                              ; preds = %236
  %248 = sub i64 %1, %245
  call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(%"class.std::vector"* nonnull align 8 dereferenceable(24) %237, i64 %248)
  br label %255

249:                                              ; preds = %236
  %250 = icmp ugt i64 %245, %1
  br i1 %250, label %251, label %255

251:                                              ; preds = %249
  %252 = getelementptr inbounds double, double* %241, i64 %1
  %253 = icmp eq double* %239, %252
  br i1 %253, label %255, label %254

254:                                              ; preds = %251
  store double* %252, double** %238, align 8, !tbaa !193
  br label %255

255:                                              ; preds = %254, %251, %249, %247
  %256 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 38
  %257 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 38, i32 0, i32 0, i32 0, i32 1
  %258 = load double*, double** %257, align 8, !tbaa !193
  %259 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %256, i64 0, i32 0, i32 0, i32 0, i32 0
  %260 = load double*, double** %259, align 8, !tbaa !3
  %261 = ptrtoint double* %258 to i64
  %262 = ptrtoint double* %260 to i64
  %263 = sub i64 %261, %262
  %264 = ashr exact i64 %263, 3
  %265 = icmp ult i64 %264, %1
  br i1 %265, label %266, label %268

266:                                              ; preds = %255
  %267 = sub i64 %1, %264
  call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(%"class.std::vector"* nonnull align 8 dereferenceable(24) %256, i64 %267)
  br label %274

268:                                              ; preds = %255
  %269 = icmp ugt i64 %264, %1
  br i1 %269, label %270, label %274

270:                                              ; preds = %268
  %271 = getelementptr inbounds double, double* %260, i64 %1
  %272 = icmp eq double* %258, %271
  br i1 %272, label %274, label %273

273:                                              ; preds = %270
  store double* %271, double** %257, align 8, !tbaa !193
  br label %274

274:                                              ; preds = %273, %270, %268, %266
  %275 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 39
  %276 = bitcast double* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %276) #2
  store double 1.000000e+00, double* %5, align 8, !tbaa !10
  %277 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 39, i32 0, i32 0, i32 0, i32 1
  %278 = load double*, double** %277, align 8, !tbaa !193
  %279 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %275, i64 0, i32 0, i32 0, i32 0, i32 0
  %280 = load double*, double** %279, align 8, !tbaa !3
  %281 = ptrtoint double* %278 to i64
  %282 = ptrtoint double* %280 to i64
  %283 = sub i64 %281, %282
  %284 = ashr exact i64 %283, 3
  %285 = icmp ult i64 %284, %1
  br i1 %285, label %286, label %288

286:                                              ; preds = %274
  %287 = sub i64 %1, %284
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(%"class.std::vector"* nonnull align 8 dereferenceable(24) %275, double* %278, i64 %287, double* nonnull align 8 dereferenceable(8) %5)
  br label %294

288:                                              ; preds = %274
  %289 = icmp ugt i64 %284, %1
  br i1 %289, label %290, label %294

290:                                              ; preds = %288
  %291 = getelementptr inbounds double, double* %280, i64 %1
  %292 = icmp eq double* %278, %291
  br i1 %292, label %294, label %293

293:                                              ; preds = %290
  store double* %291, double** %277, align 8, !tbaa !193
  br label %294

294:                                              ; preds = %293, %290, %288, %286
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %276) #2
  %295 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 40
  %296 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 40, i32 0, i32 0, i32 0, i32 1
  %297 = load double*, double** %296, align 8, !tbaa !193
  %298 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %295, i64 0, i32 0, i32 0, i32 0, i32 0
  %299 = load double*, double** %298, align 8, !tbaa !3
  %300 = ptrtoint double* %297 to i64
  %301 = ptrtoint double* %299 to i64
  %302 = sub i64 %300, %301
  %303 = ashr exact i64 %302, 3
  %304 = icmp ult i64 %303, %1
  br i1 %304, label %305, label %307

305:                                              ; preds = %294
  %306 = sub i64 %1, %303
  call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(%"class.std::vector"* nonnull align 8 dereferenceable(24) %295, i64 %306)
  br label %313

307:                                              ; preds = %294
  %308 = icmp ugt i64 %303, %1
  br i1 %308, label %309, label %313

309:                                              ; preds = %307
  %310 = getelementptr inbounds double, double* %299, i64 %1
  %311 = icmp eq double* %297, %310
  br i1 %311, label %313, label %312

312:                                              ; preds = %309
  store double* %310, double** %296, align 8, !tbaa !193
  br label %313

313:                                              ; preds = %312, %309, %307, %305
  %314 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 42
  %315 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 42, i32 0, i32 0, i32 0, i32 1
  %316 = load double*, double** %315, align 8, !tbaa !193
  %317 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %314, i64 0, i32 0, i32 0, i32 0, i32 0
  %318 = load double*, double** %317, align 8, !tbaa !3
  %319 = ptrtoint double* %316 to i64
  %320 = ptrtoint double* %318 to i64
  %321 = sub i64 %319, %320
  %322 = ashr exact i64 %321, 3
  %323 = icmp ult i64 %322, %1
  br i1 %323, label %324, label %326

324:                                              ; preds = %313
  %325 = sub i64 %1, %322
  call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(%"class.std::vector"* nonnull align 8 dereferenceable(24) %314, i64 %325)
  br label %332

326:                                              ; preds = %313
  %327 = icmp ugt i64 %322, %1
  br i1 %327, label %328, label %332

328:                                              ; preds = %326
  %329 = getelementptr inbounds double, double* %318, i64 %1
  %330 = icmp eq double* %316, %329
  br i1 %330, label %332, label %331

331:                                              ; preds = %328
  store double* %329, double** %315, align 8, !tbaa !193
  br label %332

332:                                              ; preds = %331, %328, %326, %324
  %333 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 43
  %334 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 43, i32 0, i32 0, i32 0, i32 1
  %335 = load double*, double** %334, align 8, !tbaa !193
  %336 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %333, i64 0, i32 0, i32 0, i32 0, i32 0
  %337 = load double*, double** %336, align 8, !tbaa !3
  %338 = ptrtoint double* %335 to i64
  %339 = ptrtoint double* %337 to i64
  %340 = sub i64 %338, %339
  %341 = ashr exact i64 %340, 3
  %342 = icmp ult i64 %341, %1
  br i1 %342, label %343, label %345

343:                                              ; preds = %332
  %344 = sub i64 %1, %341
  call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(%"class.std::vector"* nonnull align 8 dereferenceable(24) %333, i64 %344)
  br label %351

345:                                              ; preds = %332
  %346 = icmp ugt i64 %341, %1
  br i1 %346, label %347, label %351

347:                                              ; preds = %345
  %348 = getelementptr inbounds double, double* %337, i64 %1
  %349 = icmp eq double* %335, %348
  br i1 %349, label %351, label %350

350:                                              ; preds = %347
  store double* %348, double** %334, align 8, !tbaa !193
  br label %351

351:                                              ; preds = %350, %347, %345, %343
  %352 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 44
  %353 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 44, i32 0, i32 0, i32 0, i32 1
  %354 = load double*, double** %353, align 8, !tbaa !193
  %355 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %352, i64 0, i32 0, i32 0, i32 0, i32 0
  %356 = load double*, double** %355, align 8, !tbaa !3
  %357 = ptrtoint double* %354 to i64
  %358 = ptrtoint double* %356 to i64
  %359 = sub i64 %357, %358
  %360 = ashr exact i64 %359, 3
  %361 = icmp ult i64 %360, %1
  br i1 %361, label %362, label %364

362:                                              ; preds = %351
  %363 = sub i64 %1, %360
  call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(%"class.std::vector"* nonnull align 8 dereferenceable(24) %352, i64 %363)
  br label %370

364:                                              ; preds = %351
  %365 = icmp ugt i64 %360, %1
  br i1 %365, label %366, label %370

366:                                              ; preds = %364
  %367 = getelementptr inbounds double, double* %356, i64 %1
  %368 = icmp eq double* %354, %367
  br i1 %368, label %370, label %369

369:                                              ; preds = %366
  store double* %367, double** %353, align 8, !tbaa !193
  br label %370

370:                                              ; preds = %369, %366, %364, %362
  %371 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 45
  %372 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 45, i32 0, i32 0, i32 0, i32 1
  %373 = load double*, double** %372, align 8, !tbaa !193
  %374 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %371, i64 0, i32 0, i32 0, i32 0, i32 0
  %375 = load double*, double** %374, align 8, !tbaa !3
  %376 = ptrtoint double* %373 to i64
  %377 = ptrtoint double* %375 to i64
  %378 = sub i64 %376, %377
  %379 = ashr exact i64 %378, 3
  %380 = icmp ult i64 %379, %1
  br i1 %380, label %381, label %383

381:                                              ; preds = %370
  %382 = sub i64 %1, %379
  call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(%"class.std::vector"* nonnull align 8 dereferenceable(24) %371, i64 %382)
  br label %389

383:                                              ; preds = %370
  %384 = icmp ugt i64 %379, %1
  br i1 %384, label %385, label %389

385:                                              ; preds = %383
  %386 = getelementptr inbounds double, double* %375, i64 %1
  %387 = icmp eq double* %373, %386
  br i1 %387, label %389, label %388

388:                                              ; preds = %385
  store double* %386, double** %372, align 8, !tbaa !193
  br label %389

389:                                              ; preds = %388, %385, %383, %381
  %390 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 46
  %391 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 46, i32 0, i32 0, i32 0, i32 1
  %392 = load double*, double** %391, align 8, !tbaa !193
  %393 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %390, i64 0, i32 0, i32 0, i32 0, i32 0
  %394 = load double*, double** %393, align 8, !tbaa !3
  %395 = ptrtoint double* %392 to i64
  %396 = ptrtoint double* %394 to i64
  %397 = sub i64 %395, %396
  %398 = ashr exact i64 %397, 3
  %399 = icmp ult i64 %398, %1
  br i1 %399, label %400, label %402

400:                                              ; preds = %389
  %401 = sub i64 %1, %398
  call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(%"class.std::vector"* nonnull align 8 dereferenceable(24) %390, i64 %401)
  br label %408

402:                                              ; preds = %389
  %403 = icmp ugt i64 %398, %1
  br i1 %403, label %404, label %408

404:                                              ; preds = %402
  %405 = getelementptr inbounds double, double* %394, i64 %1
  %406 = icmp eq double* %392, %405
  br i1 %406, label %408, label %407

407:                                              ; preds = %404
  store double* %405, double** %391, align 8, !tbaa !193
  br label %408

408:                                              ; preds = %407, %404, %402, %400
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN4Mesh21AllocateElemTemporaryEm(%struct.Mesh* nonnull align 8 dereferenceable(1376) %0, i64 %1) local_unnamed_addr #23 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %3 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 25
  %4 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 25, i32 0, i32 0, i32 0, i32 1
  %5 = load double*, double** %4, align 8, !tbaa !193
  %6 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %3, i64 0, i32 0, i32 0, i32 0, i32 0
  %7 = load double*, double** %6, align 8, !tbaa !3
  %8 = ptrtoint double* %5 to i64
  %9 = ptrtoint double* %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = icmp ult i64 %11, %1
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = sub i64 %1, %11
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(%"class.std::vector"* nonnull align 8 dereferenceable(24) %3, i64 %14)
  br label %21

15:                                               ; preds = %2
  %16 = icmp ugt i64 %11, %1
  br i1 %16, label %17, label %21

17:                                               ; preds = %15
  %18 = getelementptr inbounds double, double* %7, i64 %1
  %19 = icmp eq double* %5, %18
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  store double* %18, double** %4, align 8, !tbaa !193
  br label %21

21:                                               ; preds = %20, %17, %15, %13
  %22 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 26
  %23 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 26, i32 0, i32 0, i32 0, i32 1
  %24 = load double*, double** %23, align 8, !tbaa !193
  %25 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %22, i64 0, i32 0, i32 0, i32 0, i32 0
  %26 = load double*, double** %25, align 8, !tbaa !3
  %27 = ptrtoint double* %24 to i64
  %28 = ptrtoint double* %26 to i64
  %29 = sub i64 %27, %28
  %30 = ashr exact i64 %29, 3
  %31 = icmp ult i64 %30, %1
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = sub i64 %1, %30
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(%"class.std::vector"* nonnull align 8 dereferenceable(24) %22, i64 %33)
  br label %40

34:                                               ; preds = %21
  %35 = icmp ugt i64 %30, %1
  br i1 %35, label %36, label %40

36:                                               ; preds = %34
  %37 = getelementptr inbounds double, double* %26, i64 %1
  %38 = icmp eq double* %24, %37
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  store double* %37, double** %23, align 8, !tbaa !193
  br label %40

40:                                               ; preds = %39, %36, %34, %32
  %41 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 27
  %42 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 27, i32 0, i32 0, i32 0, i32 1
  %43 = load double*, double** %42, align 8, !tbaa !193
  %44 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %41, i64 0, i32 0, i32 0, i32 0, i32 0
  %45 = load double*, double** %44, align 8, !tbaa !3
  %46 = ptrtoint double* %43 to i64
  %47 = ptrtoint double* %45 to i64
  %48 = sub i64 %46, %47
  %49 = ashr exact i64 %48, 3
  %50 = icmp ult i64 %49, %1
  br i1 %50, label %51, label %53

51:                                               ; preds = %40
  %52 = sub i64 %1, %49
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(%"class.std::vector"* nonnull align 8 dereferenceable(24) %41, i64 %52)
  br label %59

53:                                               ; preds = %40
  %54 = icmp ugt i64 %49, %1
  br i1 %54, label %55, label %59

55:                                               ; preds = %53
  %56 = getelementptr inbounds double, double* %45, i64 %1
  %57 = icmp eq double* %43, %56
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  store double* %56, double** %42, align 8, !tbaa !193
  br label %59

59:                                               ; preds = %58, %55, %53, %51
  %60 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 28
  %61 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 28, i32 0, i32 0, i32 0, i32 1
  %62 = load double*, double** %61, align 8, !tbaa !193
  %63 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %60, i64 0, i32 0, i32 0, i32 0, i32 0
  %64 = load double*, double** %63, align 8, !tbaa !3
  %65 = ptrtoint double* %62 to i64
  %66 = ptrtoint double* %64 to i64
  %67 = sub i64 %65, %66
  %68 = ashr exact i64 %67, 3
  %69 = icmp ult i64 %68, %1
  br i1 %69, label %70, label %72

70:                                               ; preds = %59
  %71 = sub i64 %1, %68
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(%"class.std::vector"* nonnull align 8 dereferenceable(24) %60, i64 %71)
  br label %78

72:                                               ; preds = %59
  %73 = icmp ugt i64 %68, %1
  br i1 %73, label %74, label %78

74:                                               ; preds = %72
  %75 = getelementptr inbounds double, double* %64, i64 %1
  %76 = icmp eq double* %62, %75
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  store double* %75, double** %61, align 8, !tbaa !193
  br label %78

78:                                               ; preds = %77, %74, %72, %70
  %79 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 29
  %80 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 29, i32 0, i32 0, i32 0, i32 1
  %81 = load double*, double** %80, align 8, !tbaa !193
  %82 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %79, i64 0, i32 0, i32 0, i32 0, i32 0
  %83 = load double*, double** %82, align 8, !tbaa !3
  %84 = ptrtoint double* %81 to i64
  %85 = ptrtoint double* %83 to i64
  %86 = sub i64 %84, %85
  %87 = ashr exact i64 %86, 3
  %88 = icmp ult i64 %87, %1
  br i1 %88, label %89, label %91

89:                                               ; preds = %78
  %90 = sub i64 %1, %87
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(%"class.std::vector"* nonnull align 8 dereferenceable(24) %79, i64 %90)
  br label %97

91:                                               ; preds = %78
  %92 = icmp ugt i64 %87, %1
  br i1 %92, label %93, label %97

93:                                               ; preds = %91
  %94 = getelementptr inbounds double, double* %83, i64 %1
  %95 = icmp eq double* %81, %94
  br i1 %95, label %97, label %96

96:                                               ; preds = %93
  store double* %94, double** %80, align 8, !tbaa !193
  br label %97

97:                                               ; preds = %96, %93, %91, %89
  %98 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 30
  %99 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 30, i32 0, i32 0, i32 0, i32 1
  %100 = load double*, double** %99, align 8, !tbaa !193
  %101 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %98, i64 0, i32 0, i32 0, i32 0, i32 0
  %102 = load double*, double** %101, align 8, !tbaa !3
  %103 = ptrtoint double* %100 to i64
  %104 = ptrtoint double* %102 to i64
  %105 = sub i64 %103, %104
  %106 = ashr exact i64 %105, 3
  %107 = icmp ult i64 %106, %1
  br i1 %107, label %108, label %110

108:                                              ; preds = %97
  %109 = sub i64 %1, %106
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(%"class.std::vector"* nonnull align 8 dereferenceable(24) %98, i64 %109)
  br label %116

110:                                              ; preds = %97
  %111 = icmp ugt i64 %106, %1
  br i1 %111, label %112, label %116

112:                                              ; preds = %110
  %113 = getelementptr inbounds double, double* %102, i64 %1
  %114 = icmp eq double* %100, %113
  br i1 %114, label %116, label %115

115:                                              ; preds = %112
  store double* %113, double** %99, align 8, !tbaa !193
  br label %116

116:                                              ; preds = %115, %112, %110, %108
  %117 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 31
  %118 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 31, i32 0, i32 0, i32 0, i32 1
  %119 = load double*, double** %118, align 8, !tbaa !193
  %120 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %117, i64 0, i32 0, i32 0, i32 0, i32 0
  %121 = load double*, double** %120, align 8, !tbaa !3
  %122 = ptrtoint double* %119 to i64
  %123 = ptrtoint double* %121 to i64
  %124 = sub i64 %122, %123
  %125 = ashr exact i64 %124, 3
  %126 = icmp ult i64 %125, %1
  br i1 %126, label %127, label %129

127:                                              ; preds = %116
  %128 = sub i64 %1, %125
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(%"class.std::vector"* nonnull align 8 dereferenceable(24) %117, i64 %128)
  br label %135

129:                                              ; preds = %116
  %130 = icmp ugt i64 %125, %1
  br i1 %130, label %131, label %135

131:                                              ; preds = %129
  %132 = getelementptr inbounds double, double* %121, i64 %1
  %133 = icmp eq double* %119, %132
  br i1 %133, label %135, label %134

134:                                              ; preds = %131
  store double* %132, double** %118, align 8, !tbaa !193
  br label %135

135:                                              ; preds = %134, %131, %129, %127
  %136 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 32
  %137 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 32, i32 0, i32 0, i32 0, i32 1
  %138 = load double*, double** %137, align 8, !tbaa !193
  %139 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %136, i64 0, i32 0, i32 0, i32 0, i32 0
  %140 = load double*, double** %139, align 8, !tbaa !3
  %141 = ptrtoint double* %138 to i64
  %142 = ptrtoint double* %140 to i64
  %143 = sub i64 %141, %142
  %144 = ashr exact i64 %143, 3
  %145 = icmp ult i64 %144, %1
  br i1 %145, label %146, label %148

146:                                              ; preds = %135
  %147 = sub i64 %1, %144
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(%"class.std::vector"* nonnull align 8 dereferenceable(24) %136, i64 %147)
  br label %154

148:                                              ; preds = %135
  %149 = icmp ugt i64 %144, %1
  br i1 %149, label %150, label %154

150:                                              ; preds = %148
  %151 = getelementptr inbounds double, double* %140, i64 %1
  %152 = icmp eq double* %138, %151
  br i1 %152, label %154, label %153

153:                                              ; preds = %150
  store double* %151, double** %137, align 8, !tbaa !193
  br label %154

154:                                              ; preds = %153, %150, %148, %146
  %155 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 33
  %156 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 33, i32 0, i32 0, i32 0, i32 1
  %157 = load double*, double** %156, align 8, !tbaa !193
  %158 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %155, i64 0, i32 0, i32 0, i32 0, i32 0
  %159 = load double*, double** %158, align 8, !tbaa !3
  %160 = ptrtoint double* %157 to i64
  %161 = ptrtoint double* %159 to i64
  %162 = sub i64 %160, %161
  %163 = ashr exact i64 %162, 3
  %164 = icmp ult i64 %163, %1
  br i1 %164, label %165, label %167

165:                                              ; preds = %154
  %166 = sub i64 %1, %163
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(%"class.std::vector"* nonnull align 8 dereferenceable(24) %155, i64 %166)
  br label %173

167:                                              ; preds = %154
  %168 = icmp ugt i64 %163, %1
  br i1 %168, label %169, label %173

169:                                              ; preds = %167
  %170 = getelementptr inbounds double, double* %159, i64 %1
  %171 = icmp eq double* %157, %170
  br i1 %171, label %173, label %172

172:                                              ; preds = %169
  store double* %170, double** %156, align 8, !tbaa !193
  br label %173

173:                                              ; preds = %172, %169, %167, %165
  %174 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 41
  %175 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 41, i32 0, i32 0, i32 0, i32 1
  %176 = load double*, double** %175, align 8, !tbaa !193
  %177 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %174, i64 0, i32 0, i32 0, i32 0, i32 0
  %178 = load double*, double** %177, align 8, !tbaa !3
  %179 = ptrtoint double* %176 to i64
  %180 = ptrtoint double* %178 to i64
  %181 = sub i64 %179, %180
  %182 = ashr exact i64 %181, 3
  %183 = icmp ult i64 %182, %1
  br i1 %183, label %184, label %186

184:                                              ; preds = %173
  %185 = sub i64 %1, %182
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(%"class.std::vector"* nonnull align 8 dereferenceable(24) %174, i64 %185)
  br label %192

186:                                              ; preds = %173
  %187 = icmp ugt i64 %182, %1
  br i1 %187, label %188, label %192

188:                                              ; preds = %186
  %189 = getelementptr inbounds double, double* %178, i64 %1
  %190 = icmp eq double* %176, %189
  br i1 %190, label %192, label %191

191:                                              ; preds = %188
  store double* %189, double** %175, align 8, !tbaa !193
  br label %192

192:                                              ; preds = %191, %188, %186, %184
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZN4Mesh23AllocateNodalPersistentEm(%struct.Mesh* nonnull align 8 dereferenceable(1376) %0, i64 %1) local_unnamed_addr #22 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %11 = load double*, double** %10, align 8, !tbaa !193
  %12 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %13 = load double*, double** %12, align 8, !tbaa !3
  %14 = ptrtoint double* %11 to i64
  %15 = ptrtoint double* %13 to i64
  %16 = sub i64 %14, %15
  %17 = ashr exact i64 %16, 3
  %18 = icmp ult i64 %17, %1
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 0
  %21 = sub i64 %1, %17
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(%"class.std::vector"* nonnull align 8 dereferenceable(24) %20, i64 %21)
  br label %28

22:                                               ; preds = %2
  %23 = icmp ugt i64 %17, %1
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = getelementptr inbounds double, double* %13, i64 %1
  %26 = icmp eq double* %11, %25
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  store double* %25, double** %10, align 8, !tbaa !193
  br label %28

28:                                               ; preds = %27, %24, %22, %19
  %29 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 1
  %30 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %31 = load double*, double** %30, align 8, !tbaa !193
  %32 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %29, i64 0, i32 0, i32 0, i32 0, i32 0
  %33 = load double*, double** %32, align 8, !tbaa !3
  %34 = ptrtoint double* %31 to i64
  %35 = ptrtoint double* %33 to i64
  %36 = sub i64 %34, %35
  %37 = ashr exact i64 %36, 3
  %38 = icmp ult i64 %37, %1
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = sub i64 %1, %37
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(%"class.std::vector"* nonnull align 8 dereferenceable(24) %29, i64 %40)
  br label %47

41:                                               ; preds = %28
  %42 = icmp ugt i64 %37, %1
  br i1 %42, label %43, label %47

43:                                               ; preds = %41
  %44 = getelementptr inbounds double, double* %33, i64 %1
  %45 = icmp eq double* %31, %44
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  store double* %44, double** %30, align 8, !tbaa !193
  br label %47

47:                                               ; preds = %46, %43, %41, %39
  %48 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 2
  %49 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %50 = load double*, double** %49, align 8, !tbaa !193
  %51 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %48, i64 0, i32 0, i32 0, i32 0, i32 0
  %52 = load double*, double** %51, align 8, !tbaa !3
  %53 = ptrtoint double* %50 to i64
  %54 = ptrtoint double* %52 to i64
  %55 = sub i64 %53, %54
  %56 = ashr exact i64 %55, 3
  %57 = icmp ult i64 %56, %1
  br i1 %57, label %58, label %60

58:                                               ; preds = %47
  %59 = sub i64 %1, %56
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(%"class.std::vector"* nonnull align 8 dereferenceable(24) %48, i64 %59)
  br label %66

60:                                               ; preds = %47
  %61 = icmp ugt i64 %56, %1
  br i1 %61, label %62, label %66

62:                                               ; preds = %60
  %63 = getelementptr inbounds double, double* %52, i64 %1
  %64 = icmp eq double* %50, %63
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  store double* %63, double** %49, align 8, !tbaa !193
  br label %66

66:                                               ; preds = %65, %62, %60, %58
  %67 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 3
  %68 = bitcast double* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %68) #2
  store double 0.000000e+00, double* %3, align 8, !tbaa !10
  %69 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %70 = load double*, double** %69, align 8, !tbaa !193
  %71 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %67, i64 0, i32 0, i32 0, i32 0, i32 0
  %72 = load double*, double** %71, align 8, !tbaa !3
  %73 = ptrtoint double* %70 to i64
  %74 = ptrtoint double* %72 to i64
  %75 = sub i64 %73, %74
  %76 = ashr exact i64 %75, 3
  %77 = icmp ult i64 %76, %1
  br i1 %77, label %78, label %80

78:                                               ; preds = %66
  %79 = sub i64 %1, %76
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(%"class.std::vector"* nonnull align 8 dereferenceable(24) %67, double* %70, i64 %79, double* nonnull align 8 dereferenceable(8) %3)
  br label %86

80:                                               ; preds = %66
  %81 = icmp ugt i64 %76, %1
  br i1 %81, label %82, label %86

82:                                               ; preds = %80
  %83 = getelementptr inbounds double, double* %72, i64 %1
  %84 = icmp eq double* %70, %83
  br i1 %84, label %86, label %85

85:                                               ; preds = %82
  store double* %83, double** %69, align 8, !tbaa !193
  br label %86

86:                                               ; preds = %85, %82, %80, %78
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %68) #2
  %87 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 4
  %88 = bitcast double* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %88) #2
  store double 0.000000e+00, double* %4, align 8, !tbaa !10
  %89 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %90 = load double*, double** %89, align 8, !tbaa !193
  %91 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %87, i64 0, i32 0, i32 0, i32 0, i32 0
  %92 = load double*, double** %91, align 8, !tbaa !3
  %93 = ptrtoint double* %90 to i64
  %94 = ptrtoint double* %92 to i64
  %95 = sub i64 %93, %94
  %96 = ashr exact i64 %95, 3
  %97 = icmp ult i64 %96, %1
  br i1 %97, label %98, label %100

98:                                               ; preds = %86
  %99 = sub i64 %1, %96
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(%"class.std::vector"* nonnull align 8 dereferenceable(24) %87, double* %90, i64 %99, double* nonnull align 8 dereferenceable(8) %4)
  br label %106

100:                                              ; preds = %86
  %101 = icmp ugt i64 %96, %1
  br i1 %101, label %102, label %106

102:                                              ; preds = %100
  %103 = getelementptr inbounds double, double* %92, i64 %1
  %104 = icmp eq double* %90, %103
  br i1 %104, label %106, label %105

105:                                              ; preds = %102
  store double* %103, double** %89, align 8, !tbaa !193
  br label %106

106:                                              ; preds = %105, %102, %100, %98
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %88) #2
  %107 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 5
  %108 = bitcast double* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %108) #2
  store double 0.000000e+00, double* %5, align 8, !tbaa !10
  %109 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 5, i32 0, i32 0, i32 0, i32 1
  %110 = load double*, double** %109, align 8, !tbaa !193
  %111 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %107, i64 0, i32 0, i32 0, i32 0, i32 0
  %112 = load double*, double** %111, align 8, !tbaa !3
  %113 = ptrtoint double* %110 to i64
  %114 = ptrtoint double* %112 to i64
  %115 = sub i64 %113, %114
  %116 = ashr exact i64 %115, 3
  %117 = icmp ult i64 %116, %1
  br i1 %117, label %118, label %120

118:                                              ; preds = %106
  %119 = sub i64 %1, %116
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(%"class.std::vector"* nonnull align 8 dereferenceable(24) %107, double* %110, i64 %119, double* nonnull align 8 dereferenceable(8) %5)
  br label %126

120:                                              ; preds = %106
  %121 = icmp ugt i64 %116, %1
  br i1 %121, label %122, label %126

122:                                              ; preds = %120
  %123 = getelementptr inbounds double, double* %112, i64 %1
  %124 = icmp eq double* %110, %123
  br i1 %124, label %126, label %125

125:                                              ; preds = %122
  store double* %123, double** %109, align 8, !tbaa !193
  br label %126

126:                                              ; preds = %125, %122, %120, %118
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %108) #2
  %127 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 6
  %128 = bitcast double* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %128) #2
  store double 0.000000e+00, double* %6, align 8, !tbaa !10
  %129 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 6, i32 0, i32 0, i32 0, i32 1
  %130 = load double*, double** %129, align 8, !tbaa !193
  %131 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %127, i64 0, i32 0, i32 0, i32 0, i32 0
  %132 = load double*, double** %131, align 8, !tbaa !3
  %133 = ptrtoint double* %130 to i64
  %134 = ptrtoint double* %132 to i64
  %135 = sub i64 %133, %134
  %136 = ashr exact i64 %135, 3
  %137 = icmp ult i64 %136, %1
  br i1 %137, label %138, label %140

138:                                              ; preds = %126
  %139 = sub i64 %1, %136
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(%"class.std::vector"* nonnull align 8 dereferenceable(24) %127, double* %130, i64 %139, double* nonnull align 8 dereferenceable(8) %6)
  br label %146

140:                                              ; preds = %126
  %141 = icmp ugt i64 %136, %1
  br i1 %141, label %142, label %146

142:                                              ; preds = %140
  %143 = getelementptr inbounds double, double* %132, i64 %1
  %144 = icmp eq double* %130, %143
  br i1 %144, label %146, label %145

145:                                              ; preds = %142
  store double* %143, double** %129, align 8, !tbaa !193
  br label %146

146:                                              ; preds = %145, %142, %140, %138
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %128) #2
  %147 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 7
  %148 = bitcast double* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %148) #2
  store double 0.000000e+00, double* %7, align 8, !tbaa !10
  %149 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 7, i32 0, i32 0, i32 0, i32 1
  %150 = load double*, double** %149, align 8, !tbaa !193
  %151 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %147, i64 0, i32 0, i32 0, i32 0, i32 0
  %152 = load double*, double** %151, align 8, !tbaa !3
  %153 = ptrtoint double* %150 to i64
  %154 = ptrtoint double* %152 to i64
  %155 = sub i64 %153, %154
  %156 = ashr exact i64 %155, 3
  %157 = icmp ult i64 %156, %1
  br i1 %157, label %158, label %160

158:                                              ; preds = %146
  %159 = sub i64 %1, %156
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(%"class.std::vector"* nonnull align 8 dereferenceable(24) %147, double* %150, i64 %159, double* nonnull align 8 dereferenceable(8) %7)
  br label %166

160:                                              ; preds = %146
  %161 = icmp ugt i64 %156, %1
  br i1 %161, label %162, label %166

162:                                              ; preds = %160
  %163 = getelementptr inbounds double, double* %152, i64 %1
  %164 = icmp eq double* %150, %163
  br i1 %164, label %166, label %165

165:                                              ; preds = %162
  store double* %163, double** %149, align 8, !tbaa !193
  br label %166

166:                                              ; preds = %165, %162, %160, %158
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %148) #2
  %167 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 8
  %168 = bitcast double* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %168) #2
  store double 0.000000e+00, double* %8, align 8, !tbaa !10
  %169 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 8, i32 0, i32 0, i32 0, i32 1
  %170 = load double*, double** %169, align 8, !tbaa !193
  %171 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %167, i64 0, i32 0, i32 0, i32 0, i32 0
  %172 = load double*, double** %171, align 8, !tbaa !3
  %173 = ptrtoint double* %170 to i64
  %174 = ptrtoint double* %172 to i64
  %175 = sub i64 %173, %174
  %176 = ashr exact i64 %175, 3
  %177 = icmp ult i64 %176, %1
  br i1 %177, label %178, label %180

178:                                              ; preds = %166
  %179 = sub i64 %1, %176
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(%"class.std::vector"* nonnull align 8 dereferenceable(24) %167, double* %170, i64 %179, double* nonnull align 8 dereferenceable(8) %8)
  br label %186

180:                                              ; preds = %166
  %181 = icmp ugt i64 %176, %1
  br i1 %181, label %182, label %186

182:                                              ; preds = %180
  %183 = getelementptr inbounds double, double* %172, i64 %1
  %184 = icmp eq double* %170, %183
  br i1 %184, label %186, label %185

185:                                              ; preds = %182
  store double* %183, double** %169, align 8, !tbaa !193
  br label %186

186:                                              ; preds = %185, %182, %180, %178
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %168) #2
  %187 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 9
  %188 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 9, i32 0, i32 0, i32 0, i32 1
  %189 = load double*, double** %188, align 8, !tbaa !193
  %190 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %187, i64 0, i32 0, i32 0, i32 0, i32 0
  %191 = load double*, double** %190, align 8, !tbaa !3
  %192 = ptrtoint double* %189 to i64
  %193 = ptrtoint double* %191 to i64
  %194 = sub i64 %192, %193
  %195 = ashr exact i64 %194, 3
  %196 = icmp ult i64 %195, %1
  br i1 %196, label %197, label %199

197:                                              ; preds = %186
  %198 = sub i64 %1, %195
  call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(%"class.std::vector"* nonnull align 8 dereferenceable(24) %187, i64 %198)
  br label %205

199:                                              ; preds = %186
  %200 = icmp ugt i64 %195, %1
  br i1 %200, label %201, label %205

201:                                              ; preds = %199
  %202 = getelementptr inbounds double, double* %191, i64 %1
  %203 = icmp eq double* %189, %202
  br i1 %203, label %205, label %204

204:                                              ; preds = %201
  store double* %202, double** %188, align 8, !tbaa !193
  br label %205

205:                                              ; preds = %204, %201, %199, %197
  %206 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 10
  %207 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 10, i32 0, i32 0, i32 0, i32 1
  %208 = load double*, double** %207, align 8, !tbaa !193
  %209 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %206, i64 0, i32 0, i32 0, i32 0, i32 0
  %210 = load double*, double** %209, align 8, !tbaa !3
  %211 = ptrtoint double* %208 to i64
  %212 = ptrtoint double* %210 to i64
  %213 = sub i64 %211, %212
  %214 = ashr exact i64 %213, 3
  %215 = icmp ult i64 %214, %1
  br i1 %215, label %216, label %218

216:                                              ; preds = %205
  %217 = sub i64 %1, %214
  call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(%"class.std::vector"* nonnull align 8 dereferenceable(24) %206, i64 %217)
  br label %224

218:                                              ; preds = %205
  %219 = icmp ugt i64 %214, %1
  br i1 %219, label %220, label %224

220:                                              ; preds = %218
  %221 = getelementptr inbounds double, double* %210, i64 %1
  %222 = icmp eq double* %208, %221
  br i1 %222, label %224, label %223

223:                                              ; preds = %220
  store double* %221, double** %207, align 8, !tbaa !193
  br label %224

224:                                              ; preds = %223, %220, %218, %216
  %225 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 11
  %226 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 11, i32 0, i32 0, i32 0, i32 1
  %227 = load double*, double** %226, align 8, !tbaa !193
  %228 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %225, i64 0, i32 0, i32 0, i32 0, i32 0
  %229 = load double*, double** %228, align 8, !tbaa !3
  %230 = ptrtoint double* %227 to i64
  %231 = ptrtoint double* %229 to i64
  %232 = sub i64 %230, %231
  %233 = ashr exact i64 %232, 3
  %234 = icmp ult i64 %233, %1
  br i1 %234, label %235, label %237

235:                                              ; preds = %224
  %236 = sub i64 %1, %233
  call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(%"class.std::vector"* nonnull align 8 dereferenceable(24) %225, i64 %236)
  br label %243

237:                                              ; preds = %224
  %238 = icmp ugt i64 %233, %1
  br i1 %238, label %239, label %243

239:                                              ; preds = %237
  %240 = getelementptr inbounds double, double* %229, i64 %1
  %241 = icmp eq double* %227, %240
  br i1 %241, label %243, label %242

242:                                              ; preds = %239
  store double* %240, double** %226, align 8, !tbaa !193
  br label %243

243:                                              ; preds = %242, %239, %237, %235
  %244 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 12
  %245 = bitcast double* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %245) #2
  store double 0.000000e+00, double* %9, align 8, !tbaa !10
  %246 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 12, i32 0, i32 0, i32 0, i32 1
  %247 = load double*, double** %246, align 8, !tbaa !193
  %248 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %244, i64 0, i32 0, i32 0, i32 0, i32 0
  %249 = load double*, double** %248, align 8, !tbaa !3
  %250 = ptrtoint double* %247 to i64
  %251 = ptrtoint double* %249 to i64
  %252 = sub i64 %250, %251
  %253 = ashr exact i64 %252, 3
  %254 = icmp ult i64 %253, %1
  br i1 %254, label %255, label %257

255:                                              ; preds = %243
  %256 = sub i64 %1, %253
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(%"class.std::vector"* nonnull align 8 dereferenceable(24) %244, double* %247, i64 %256, double* nonnull align 8 dereferenceable(8) %9)
  br label %263

257:                                              ; preds = %243
  %258 = icmp ugt i64 %253, %1
  br i1 %258, label %259, label %263

259:                                              ; preds = %257
  %260 = getelementptr inbounds double, double* %249, i64 %1
  %261 = icmp eq double* %247, %260
  br i1 %261, label %263, label %262

262:                                              ; preds = %259
  store double* %260, double** %246, align 8, !tbaa !193
  br label %263

263:                                              ; preds = %262, %259, %257, %255
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %245) #2
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN4Mesh16AllocateNodesetsEm(%struct.Mesh* nonnull align 8 dereferenceable(1376) %0, i64 %1) local_unnamed_addr #23 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %3 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 13
  %4 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 13, i32 0, i32 0, i32 0, i32 1
  %5 = load i32*, i32** %4, align 8, !tbaa !192
  %6 = getelementptr inbounds %"class.std::vector.0", %"class.std::vector.0"* %3, i64 0, i32 0, i32 0, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8, !tbaa !8
  %8 = ptrtoint i32* %5 to i64
  %9 = ptrtoint i32* %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 2
  %12 = icmp ult i64 %11, %1
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = sub i64 %1, %11
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(%"class.std::vector.0"* nonnull align 8 dereferenceable(24) %3, i64 %14)
  br label %21

15:                                               ; preds = %2
  %16 = icmp ugt i64 %11, %1
  br i1 %16, label %17, label %21

17:                                               ; preds = %15
  %18 = getelementptr inbounds i32, i32* %7, i64 %1
  %19 = icmp eq i32* %5, %18
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  store i32* %18, i32** %4, align 8, !tbaa !192
  br label %21

21:                                               ; preds = %20, %17, %15, %13
  %22 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 14
  %23 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 14, i32 0, i32 0, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8, !tbaa !192
  %25 = getelementptr inbounds %"class.std::vector.0", %"class.std::vector.0"* %22, i64 0, i32 0, i32 0, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8, !tbaa !8
  %27 = ptrtoint i32* %24 to i64
  %28 = ptrtoint i32* %26 to i64
  %29 = sub i64 %27, %28
  %30 = ashr exact i64 %29, 2
  %31 = icmp ult i64 %30, %1
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = sub i64 %1, %30
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(%"class.std::vector.0"* nonnull align 8 dereferenceable(24) %22, i64 %33)
  br label %40

34:                                               ; preds = %21
  %35 = icmp ugt i64 %30, %1
  br i1 %35, label %36, label %40

36:                                               ; preds = %34
  %37 = getelementptr inbounds i32, i32* %26, i64 %1
  %38 = icmp eq i32* %24, %37
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  store i32* %37, i32** %23, align 8, !tbaa !192
  br label %40

40:                                               ; preds = %39, %36, %34, %32
  %41 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 15
  %42 = getelementptr inbounds %struct.Mesh, %struct.Mesh* %0, i64 0, i32 15, i32 0, i32 0, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8, !tbaa !192
  %44 = getelementptr inbounds %"class.std::vector.0", %"class.std::vector.0"* %41, i64 0, i32 0, i32 0, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8, !tbaa !8
  %46 = ptrtoint i32* %43 to i64
  %47 = ptrtoint i32* %45 to i64
  %48 = sub i64 %46, %47
  %49 = ashr exact i64 %48, 2
  %50 = icmp ult i64 %49, %1
  br i1 %50, label %51, label %53

51:                                               ; preds = %40
  %52 = sub i64 %1, %49
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(%"class.std::vector.0"* nonnull align 8 dereferenceable(24) %41, i64 %52)
  br label %59

53:                                               ; preds = %40
  %54 = icmp ugt i64 %49, %1
  br i1 %54, label %55, label %59

55:                                               ; preds = %53
  %56 = getelementptr inbounds i32, i32* %45, i64 %1
  %57 = icmp eq i32* %43, %56
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  store i32* %56, i32** %42, align 8, !tbaa !192
  br label %59

59:                                               ; preds = %58, %55, %53, %51
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @gettimeofday(%struct.timeval* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #24

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #24

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #25

; Function Attrs: nofree nounwind
declare dso_local noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #24

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #24

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #24

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(%"class.std::vector.0"* nonnull align 8 dereferenceable(24) %0, i64 %1) local_unnamed_addr #26 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %65, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.std::vector.0", %"class.std::vector.0"* %0, i64 0, i32 0, i32 0, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8, !tbaa !192
  %7 = getelementptr inbounds %"class.std::vector.0", %"class.std::vector.0"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8, !tbaa !8
  %9 = ptrtoint i32* %6 to i64
  %10 = ptrtoint i32* %8 to i64
  %11 = sub i64 %9, %10
  %12 = lshr exact i64 %11, 2
  %13 = getelementptr inbounds %"class.std::vector.0", %"class.std::vector.0"* %0, i64 0, i32 0, i32 0, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8, !tbaa !194
  %15 = ptrtoint i32* %14 to i64
  %16 = sub i64 %15, %9
  %17 = ashr exact i64 %16, 2
  %18 = icmp sgt i64 %11, -1
  tail call void @llvm.assume(i1 %18)
  %19 = xor i64 %12, 2305843009213693951
  %20 = icmp ule i64 %17, %19
  tail call void @llvm.assume(i1 %20)
  %21 = icmp ult i64 %17, %1
  br i1 %21, label %26, label %22

22:                                               ; preds = %4
  %23 = bitcast i32* %6 to i8*
  %24 = shl nuw i64 %1, 2
  tail call void @llvm.memset.p0i8.i64(i8* align 4 %23, i8 0, i64 %24, i1 false)
  %25 = getelementptr i32, i32* %6, i64 %1
  store i32* %25, i32** %5, align 8, !tbaa !192
  br label %65

26:                                               ; preds = %4
  %27 = icmp ult i64 %19, %1
  br i1 %27, label %28, label %29

28:                                               ; preds = %26
  tail call void @_ZSt20__throw_length_errorPKc(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0)) #33
  unreachable

29:                                               ; preds = %26
  %30 = icmp ult i64 %12, %1
  %31 = select i1 %30, i64 %1, i64 %12
  %32 = add i64 %31, %12
  %33 = icmp ult i64 %32, %12
  %34 = icmp ugt i64 %32, 2305843009213693951
  %35 = or i1 %33, %34
  %36 = select i1 %35, i64 2305843009213693951, i64 %32
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %29
  %39 = shl nuw nsw i64 %36, 2
  %40 = tail call noalias nonnull i8* @_Znwm(i64 %39) #34
  %41 = bitcast i8* %40 to i32*
  %42 = load i32*, i32** %7, align 8, !tbaa !8
  %43 = load i32*, i32** %5, align 8, !tbaa !192
  %44 = ptrtoint i32* %43 to i64
  %45 = ptrtoint i32* %42 to i64
  %46 = sub i64 %44, %45
  br label %47

47:                                               ; preds = %38, %29
  %48 = phi i64 [ %46, %38 ], [ %11, %29 ]
  %49 = phi i32* [ %42, %38 ], [ %8, %29 ]
  %50 = phi i32* [ %41, %38 ], [ null, %29 ]
  %51 = getelementptr inbounds i32, i32* %50, i64 %12
  %52 = bitcast i32* %51 to i8*
  %53 = shl nuw i64 %1, 2
  tail call void @llvm.memset.p0i8.i64(i8* align 4 %52, i8 0, i64 %53, i1 false)
  %54 = icmp sgt i64 %48, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = bitcast i32* %50 to i8*
  %57 = bitcast i32* %49 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 4 %56, i8* align 4 %57, i64 %48, i1 false) #2
  br label %58

58:                                               ; preds = %55, %47
  %59 = icmp eq i32* %49, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %58
  %61 = bitcast i32* %49 to i8*
  tail call void @_ZdlPv(i8* nonnull %61) #2
  br label %62

62:                                               ; preds = %60, %58
  store i32* %50, i32** %7, align 8, !tbaa !8
  %63 = getelementptr inbounds i32, i32* %51, i64 %1
  store i32* %63, i32** %5, align 8, !tbaa !192
  %64 = getelementptr inbounds i32, i32* %50, i64 %36
  store i32* %64, i32** %13, align 8, !tbaa !194
  br label %65

65:                                               ; preds = %62, %22, %2
  ret void
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: noreturn
declare dso_local void @_ZSt20__throw_length_errorPKc(i8*) local_unnamed_addr #28

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znwm(i64) local_unnamed_addr #29

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #12

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(%"class.std::vector"* nonnull align 8 dereferenceable(24) %0, i64 %1) local_unnamed_addr #26 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %65, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %0, i64 0, i32 0, i32 0, i32 0, i32 1
  %6 = load double*, double** %5, align 8, !tbaa !193
  %7 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %8 = load double*, double** %7, align 8, !tbaa !3
  %9 = ptrtoint double* %6 to i64
  %10 = ptrtoint double* %8 to i64
  %11 = sub i64 %9, %10
  %12 = lshr exact i64 %11, 3
  %13 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %0, i64 0, i32 0, i32 0, i32 0, i32 2
  %14 = load double*, double** %13, align 8, !tbaa !195
  %15 = ptrtoint double* %14 to i64
  %16 = sub i64 %15, %9
  %17 = ashr exact i64 %16, 3
  %18 = icmp sgt i64 %11, -1
  tail call void @llvm.assume(i1 %18)
  %19 = xor i64 %12, 1152921504606846975
  %20 = icmp ule i64 %17, %19
  tail call void @llvm.assume(i1 %20)
  %21 = icmp ult i64 %17, %1
  br i1 %21, label %26, label %22

22:                                               ; preds = %4
  %23 = bitcast double* %6 to i8*
  %24 = shl nuw i64 %1, 3
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 %24, i1 false)
  %25 = getelementptr double, double* %6, i64 %1
  store double* %25, double** %5, align 8, !tbaa !193
  br label %65

26:                                               ; preds = %4
  %27 = icmp ult i64 %19, %1
  br i1 %27, label %28, label %29

28:                                               ; preds = %26
  tail call void @_ZSt20__throw_length_errorPKc(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0)) #33
  unreachable

29:                                               ; preds = %26
  %30 = icmp ult i64 %12, %1
  %31 = select i1 %30, i64 %1, i64 %12
  %32 = add i64 %31, %12
  %33 = icmp ult i64 %32, %12
  %34 = icmp ugt i64 %32, 1152921504606846975
  %35 = or i1 %33, %34
  %36 = select i1 %35, i64 1152921504606846975, i64 %32
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %29
  %39 = shl nuw nsw i64 %36, 3
  %40 = tail call noalias nonnull i8* @_Znwm(i64 %39) #34
  %41 = bitcast i8* %40 to double*
  %42 = load double*, double** %7, align 8, !tbaa !3
  %43 = load double*, double** %5, align 8, !tbaa !193
  %44 = ptrtoint double* %43 to i64
  %45 = ptrtoint double* %42 to i64
  %46 = sub i64 %44, %45
  br label %47

47:                                               ; preds = %38, %29
  %48 = phi i64 [ %46, %38 ], [ %11, %29 ]
  %49 = phi double* [ %42, %38 ], [ %8, %29 ]
  %50 = phi double* [ %41, %38 ], [ null, %29 ]
  %51 = getelementptr inbounds double, double* %50, i64 %12
  %52 = bitcast double* %51 to i8*
  %53 = shl nuw i64 %1, 3
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %52, i8 0, i64 %53, i1 false)
  %54 = icmp sgt i64 %48, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = bitcast double* %50 to i8*
  %57 = bitcast double* %49 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 %48, i1 false) #2
  br label %58

58:                                               ; preds = %55, %47
  %59 = icmp eq double* %49, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %58
  %61 = bitcast double* %49 to i8*
  tail call void @_ZdlPv(i8* nonnull %61) #2
  br label %62

62:                                               ; preds = %60, %58
  store double* %50, double** %7, align 8, !tbaa !3
  %63 = getelementptr inbounds double, double* %51, i64 %1
  store double* %63, double** %5, align 8, !tbaa !193
  %64 = getelementptr inbounds double, double* %50, i64 %36
  store double* %64, double** %13, align 8, !tbaa !195
  br label %65

65:                                               ; preds = %62, %22, %2
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(%"class.std::vector"* nonnull align 8 dereferenceable(24) %0, double* %1, i64 %2, double* nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #30 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %210, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %0, i64 0, i32 0, i32 0, i32 0, i32 2
  %8 = load double*, double** %7, align 8, !tbaa !195
  %9 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %0, i64 0, i32 0, i32 0, i32 0, i32 1
  %10 = load double*, double** %9, align 8, !tbaa !193
  %11 = ptrtoint double* %8 to i64
  %12 = ptrtoint double* %10 to i64
  %13 = sub i64 %11, %12
  %14 = ashr exact i64 %13, 3
  %15 = icmp ult i64 %14, %2
  br i1 %15, label %130, label %16

16:                                               ; preds = %6
  %17 = load double, double* %3, align 8, !tbaa !10
  %18 = ptrtoint double* %1 to i64
  %19 = sub i64 %12, %18
  %20 = ashr exact i64 %19, 3
  %21 = icmp ugt i64 %20, %2
  br i1 %21, label %22, label %69

22:                                               ; preds = %16
  %23 = sub i64 0, %2
  %24 = getelementptr inbounds double, double* %10, i64 %23
  %25 = ptrtoint double* %24 to i64
  %26 = shl i64 %2, 3
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = bitcast double* %10 to i8*
  %30 = bitcast double* %24 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 %26, i1 false) #2
  %31 = load double*, double** %9, align 8, !tbaa !193
  br label %32

32:                                               ; preds = %28, %22
  %33 = phi double* [ %31, %28 ], [ %10, %22 ]
  %34 = getelementptr inbounds double, double* %33, i64 %2
  store double* %34, double** %9, align 8, !tbaa !193
  %35 = sub i64 %25, %18
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %32
  %38 = ashr exact i64 %35, 3
  %39 = sub nsw i64 0, %38
  %40 = getelementptr inbounds double, double* %10, i64 %39
  %41 = bitcast double* %40 to i8*
  %42 = bitcast double* %1 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 %35, i1 false) #2
  br label %43

43:                                               ; preds = %37, %32
  %44 = getelementptr inbounds double, double* %1, i64 %2
  %45 = shl nsw i64 %2, 3
  %46 = add i64 %45, -8
  %47 = lshr exact i64 %46, 3
  %48 = add nuw nsw i64 %47, 1
  %49 = icmp eq i64 %46, 0
  br i1 %49, label %63, label %50

50:                                               ; preds = %43
  %51 = and i64 %48, 4611686018427387902
  %52 = getelementptr double, double* %1, i64 %51
  %53 = insertelement <2 x double> poison, double %17, i32 0
  %54 = shufflevector <2 x double> %53, <2 x double> poison, <2 x i32> zeroinitializer
  br label %55

55:                                               ; preds = %55, %50
  %56 = phi i64 [ 0, %50 ], [ %59, %55 ]
  %57 = getelementptr double, double* %1, i64 %56
  %58 = bitcast double* %57 to <2 x double>*
  store <2 x double> %54, <2 x double>* %58, align 8, !tbaa !10
  %59 = add nuw i64 %56, 2
  %60 = icmp eq i64 %59, %51
  br i1 %60, label %61, label %55, !llvm.loop !196

61:                                               ; preds = %55
  %62 = icmp eq i64 %48, %51
  br i1 %62, label %210, label %63

63:                                               ; preds = %61, %43
  %64 = phi double* [ %1, %43 ], [ %52, %61 ]
  br label %65

65:                                               ; preds = %65, %63
  %66 = phi double* [ %67, %65 ], [ %64, %63 ]
  store double %17, double* %66, align 8, !tbaa !10
  %67 = getelementptr inbounds double, double* %66, i64 1
  %68 = icmp eq double* %67, %44
  br i1 %68, label %210, label %65, !llvm.loop !197

69:                                               ; preds = %16
  %70 = sub i64 %2, %20
  switch i64 %70, label %71 [
    i64 0, label %94
    i64 1, label %85
  ]

71:                                               ; preds = %69
  %72 = and i64 %70, -2
  %73 = and i64 %70, 1
  %74 = getelementptr double, double* %10, i64 %72
  %75 = insertelement <2 x double> poison, double %17, i32 0
  %76 = shufflevector <2 x double> %75, <2 x double> poison, <2 x i32> zeroinitializer
  br label %77

77:                                               ; preds = %77, %71
  %78 = phi i64 [ 0, %71 ], [ %81, %77 ]
  %79 = getelementptr double, double* %10, i64 %78
  %80 = bitcast double* %79 to <2 x double>*
  store <2 x double> %76, <2 x double>* %80, align 8, !tbaa !10
  %81 = add nuw i64 %78, 2
  %82 = icmp eq i64 %81, %72
  br i1 %82, label %83, label %77, !llvm.loop !198

83:                                               ; preds = %77
  %84 = icmp eq i64 %70, %72
  br i1 %84, label %94, label %85

85:                                               ; preds = %83, %69
  %86 = phi i64 [ %70, %69 ], [ %73, %83 ]
  %87 = phi double* [ %10, %69 ], [ %74, %83 ]
  br label %88

88:                                               ; preds = %88, %85
  %89 = phi i64 [ %91, %88 ], [ %86, %85 ]
  %90 = phi double* [ %92, %88 ], [ %87, %85 ]
  store double %17, double* %90, align 8, !tbaa !10
  %91 = add i64 %89, -1
  %92 = getelementptr inbounds double, double* %90, i64 1
  %93 = icmp eq i64 %91, 0
  br i1 %93, label %94, label %88, !llvm.loop !199

94:                                               ; preds = %88, %83, %69
  %95 = phi double* [ %10, %69 ], [ %74, %83 ], [ %92, %88 ]
  store double* %95, double** %9, align 8, !tbaa !193
  %96 = icmp eq i64 %19, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %94
  %98 = bitcast double* %95 to i8*
  %99 = bitcast double* %1 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %98, i8* align 8 %99, i64 %19, i1 false) #2
  %100 = load double*, double** %9, align 8, !tbaa !193
  br label %101

101:                                              ; preds = %97, %94
  %102 = phi double* [ %100, %97 ], [ %95, %94 ]
  %103 = getelementptr inbounds double, double* %102, i64 %20
  store double* %103, double** %9, align 8, !tbaa !193
  %104 = icmp eq double* %10, %1
  br i1 %104, label %210, label %105

105:                                              ; preds = %101
  %106 = add i64 %12, -8
  %107 = sub i64 %106, %18
  %108 = lshr i64 %107, 3
  %109 = add nuw nsw i64 %108, 1
  %110 = icmp ult i64 %107, 8
  br i1 %110, label %124, label %111

111:                                              ; preds = %105
  %112 = and i64 %109, 4611686018427387902
  %113 = getelementptr double, double* %1, i64 %112
  %114 = insertelement <2 x double> poison, double %17, i32 0
  %115 = shufflevector <2 x double> %114, <2 x double> poison, <2 x i32> zeroinitializer
  br label %116

116:                                              ; preds = %116, %111
  %117 = phi i64 [ 0, %111 ], [ %120, %116 ]
  %118 = getelementptr double, double* %1, i64 %117
  %119 = bitcast double* %118 to <2 x double>*
  store <2 x double> %115, <2 x double>* %119, align 8, !tbaa !10
  %120 = add nuw i64 %117, 2
  %121 = icmp eq i64 %120, %112
  br i1 %121, label %122, label %116, !llvm.loop !200

122:                                              ; preds = %116
  %123 = icmp eq i64 %109, %112
  br i1 %123, label %210, label %124

124:                                              ; preds = %122, %105
  %125 = phi double* [ %1, %105 ], [ %113, %122 ]
  br label %126

126:                                              ; preds = %126, %124
  %127 = phi double* [ %128, %126 ], [ %125, %124 ]
  store double %17, double* %127, align 8, !tbaa !10
  %128 = getelementptr inbounds double, double* %127, i64 1
  %129 = icmp eq double* %128, %10
  br i1 %129, label %210, label %126, !llvm.loop !201

130:                                              ; preds = %6
  %131 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %132 = load double*, double** %131, align 8, !tbaa !3
  %133 = ptrtoint double* %132 to i64
  %134 = sub i64 %12, %133
  %135 = ashr exact i64 %134, 3
  %136 = sub nsw i64 1152921504606846975, %135
  %137 = icmp ult i64 %136, %2
  br i1 %137, label %138, label %139

138:                                              ; preds = %130
  tail call void @_ZSt20__throw_length_errorPKc(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0)) #33
  unreachable

139:                                              ; preds = %130
  %140 = icmp ult i64 %135, %2
  %141 = select i1 %140, i64 %2, i64 %135
  %142 = add i64 %141, %135
  %143 = icmp ult i64 %142, %135
  %144 = icmp ugt i64 %142, 1152921504606846975
  %145 = or i1 %143, %144
  %146 = select i1 %145, i64 1152921504606846975, i64 %142
  %147 = ptrtoint double* %1 to i64
  %148 = sub i64 %147, %133
  %149 = ashr exact i64 %148, 3
  %150 = icmp eq i64 %146, 0
  br i1 %150, label %155, label %151

151:                                              ; preds = %139
  %152 = shl nuw nsw i64 %146, 3
  %153 = tail call noalias nonnull i8* @_Znwm(i64 %152) #34
  %154 = bitcast i8* %153 to double*
  br label %155

155:                                              ; preds = %151, %139
  %156 = phi double* [ %154, %151 ], [ null, %139 ]
  %157 = getelementptr inbounds double, double* %156, i64 %149
  %158 = load double, double* %3, align 8, !tbaa !10
  %159 = icmp ult i64 %2, 2
  br i1 %159, label %174, label %160

160:                                              ; preds = %155
  %161 = and i64 %2, -2
  %162 = and i64 %2, 1
  %163 = getelementptr double, double* %157, i64 %161
  %164 = insertelement <2 x double> poison, double %158, i32 0
  %165 = shufflevector <2 x double> %164, <2 x double> poison, <2 x i32> zeroinitializer
  br label %166

166:                                              ; preds = %166, %160
  %167 = phi i64 [ 0, %160 ], [ %170, %166 ]
  %168 = getelementptr double, double* %157, i64 %167
  %169 = bitcast double* %168 to <2 x double>*
  store <2 x double> %165, <2 x double>* %169, align 8, !tbaa !10
  %170 = add nuw i64 %167, 2
  %171 = icmp eq i64 %170, %161
  br i1 %171, label %172, label %166, !llvm.loop !202

172:                                              ; preds = %166
  %173 = icmp eq i64 %161, %2
  br i1 %173, label %183, label %174

174:                                              ; preds = %172, %155
  %175 = phi i64 [ %2, %155 ], [ %162, %172 ]
  %176 = phi double* [ %157, %155 ], [ %163, %172 ]
  br label %177

177:                                              ; preds = %177, %174
  %178 = phi i64 [ %180, %177 ], [ %175, %174 ]
  %179 = phi double* [ %181, %177 ], [ %176, %174 ]
  store double %158, double* %179, align 8, !tbaa !10
  %180 = add i64 %178, -1
  %181 = getelementptr inbounds double, double* %179, i64 1
  %182 = icmp eq i64 %180, 0
  br i1 %182, label %183, label %177, !llvm.loop !203

183:                                              ; preds = %177, %172
  %184 = load double*, double** %131, align 8, !tbaa !3
  %185 = ptrtoint double* %184 to i64
  %186 = sub i64 %147, %185
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %191, label %188

188:                                              ; preds = %183
  %189 = bitcast double* %156 to i8*
  %190 = bitcast double* %184 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %189, i8* align 8 %190, i64 %186, i1 false) #2
  br label %191

191:                                              ; preds = %188, %183
  %192 = ashr exact i64 %186, 3
  %193 = add nsw i64 %192, %2
  %194 = getelementptr inbounds double, double* %156, i64 %193
  %195 = load double*, double** %9, align 8, !tbaa !193
  %196 = ptrtoint double* %195 to i64
  %197 = sub i64 %196, %147
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %202, label %199

199:                                              ; preds = %191
  %200 = bitcast double* %194 to i8*
  %201 = bitcast double* %1 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %200, i8* align 8 %201, i64 %197, i1 false) #2
  br label %202

202:                                              ; preds = %199, %191
  %203 = ashr exact i64 %197, 3
  %204 = getelementptr inbounds double, double* %194, i64 %203
  %205 = icmp eq double* %184, null
  br i1 %205, label %208, label %206

206:                                              ; preds = %202
  %207 = bitcast double* %184 to i8*
  tail call void @_ZdlPv(i8* nonnull %207) #2
  br label %208

208:                                              ; preds = %206, %202
  store double* %156, double** %131, align 8, !tbaa !3
  store double* %204, double** %9, align 8, !tbaa !193
  %209 = getelementptr inbounds double, double* %156, i64 %146
  store double* %209, double** %7, align 8, !tbaa !195
  br label %210

210:                                              ; preds = %208, %126, %122, %101, %65, %61, %4
  ret void
}

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { nounwind }
attributes #3 = { inlinehint nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly nofree nosync nounwind willreturn }
attributes #9 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { argmemonly nofree nounwind willreturn }
attributes #13 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress noinline norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { noinline uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress noinline uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree nounwind }
attributes #26 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #28 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nobuiltin allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nounwind readnone willreturn }
attributes #32 = { noreturn nounwind }
attributes #33 = { noreturn }
attributes #34 = { allocsize(0) }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2}

!0 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!4, !5, i64 0}
!4 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !5, i64 0, !5, i64 8, !5, i64 16}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !5, i64 0}
!9 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !5, i64 0, !5, i64 8, !5, i64 16}
!10 = !{!11, !11, i64 0}
!11 = !{!"double", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !6, i64 0}
!14 = distinct !{!14, !15, !16}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = distinct !{!17, !15, !16}
!18 = distinct !{!18, !15, !16}
!19 = distinct !{!19, !15, !16}
!20 = distinct !{!20, !15, !16}
!21 = distinct !{!21, !15, !16, !22}
!22 = !{!"llvm.loop.isvectorized", i32 1}
!23 = distinct !{!23, !15, !16}
!24 = distinct !{!24, !15, !16}
!25 = distinct !{!25, !15, !16}
!26 = !{!27}
!27 = distinct !{!27, !28}
!28 = distinct !{!28, !"LVerDomain"}
!29 = !{!30, !31}
!30 = distinct !{!30, !28}
!31 = distinct !{!31, !28}
!32 = !{!30}
!33 = !{!31}
!34 = distinct !{!34, !15, !16, !22}
!35 = distinct !{!35, !15, !16, !22}
!36 = distinct !{!36, !15, !16}
!37 = distinct !{!37, !15, !16}
!38 = distinct !{!38, !15, !16}
!39 = distinct !{!39, !15, !16}
!40 = distinct !{!40, !15, !16}
!41 = distinct !{!41, !15, !16}
!42 = distinct !{!42, !15, !16}
!43 = distinct !{!43, !15, !16}
!44 = distinct !{!44, !15, !16, !22}
!45 = distinct !{!45, !15, !16}
!46 = distinct !{!46, !15, !16}
!47 = distinct !{!47, !15, !16}
!48 = distinct !{!48, !15, !16}
!49 = distinct !{!49, !15, !16}
!50 = !{!51}
!51 = distinct !{!51, !52}
!52 = distinct !{!52, !"LVerDomain"}
!53 = !{!54}
!54 = distinct !{!54, !52}
!55 = !{!56, !51}
!56 = distinct !{!56, !52}
!57 = !{!56}
!58 = distinct !{!58, !15, !16, !22}
!59 = !{!60}
!60 = distinct !{!60, !61}
!61 = distinct !{!61, !"LVerDomain"}
!62 = !{!63}
!63 = distinct !{!63, !61}
!64 = !{!65}
!65 = distinct !{!65, !61}
!66 = !{!60, !63, !67}
!67 = distinct !{!67, !61}
!68 = !{!67}
!69 = distinct !{!69, !15, !16, !22}
!70 = distinct !{!70, !15, !16, !22}
!71 = distinct !{!71, !15, !16, !22}
!72 = !{!73}
!73 = distinct !{!73, !74}
!74 = distinct !{!74, !"LVerDomain"}
!75 = !{!76}
!76 = distinct !{!76, !74}
!77 = !{!78}
!78 = distinct !{!78, !74}
!79 = !{!80}
!80 = distinct !{!80, !74}
!81 = !{!82}
!82 = distinct !{!82, !74}
!83 = !{!84}
!84 = distinct !{!84, !74}
!85 = !{!73, !76, !78, !80, !82}
!86 = distinct !{!86, !15, !16, !22}
!87 = distinct !{!87, !15, !16, !22}
!88 = !{!89}
!89 = distinct !{!89, !90}
!90 = distinct !{!90, !"LVerDomain"}
!91 = !{!92}
!92 = distinct !{!92, !90}
!93 = distinct !{!93, !15, !16, !22}
!94 = distinct !{!94, !15, !16}
!95 = distinct !{!95, !15, !16, !22}
!96 = distinct !{!96, !15, !16}
!97 = distinct !{!97, !15, !16}
!98 = distinct !{!98, !15, !16}
!99 = distinct !{!99, !15, !16}
!100 = distinct !{!100, !15, !16}
!101 = distinct !{!101, !15, !16}
!102 = distinct !{!102, !15, !16, !22}
!103 = distinct !{!103, !15, !16}
!104 = distinct !{!104, !15, !16, !22}
!105 = distinct !{!105, !15, !16}
!106 = distinct !{!106, !15, !16}
!107 = distinct !{!107, !15, !16}
!108 = distinct !{!108, !15, !16}
!109 = distinct !{!109, !15, !16}
!110 = distinct !{!110, !15, !16}
!111 = distinct !{!111, !15, !16}
!112 = distinct !{!112, !15, !16}
!113 = distinct !{!113, !15, !16}
!114 = distinct !{!114, !15, !16}
!115 = !{!116}
!116 = distinct !{!116, !117}
!117 = distinct !{!117, !"LVerDomain"}
!118 = !{!119}
!119 = distinct !{!119, !117}
!120 = distinct !{!120, !15, !16, !22}
!121 = distinct !{!121, !15, !16, !22}
!122 = distinct !{!122, !15, !16}
!123 = distinct !{!123, !15, !16}
!124 = !{!5, !5, i64 0}
!125 = distinct !{!125, !15, !16}
!126 = distinct !{!126, !15, !16}
!127 = distinct !{!127, !15, !16}
!128 = distinct !{!128, !15, !16}
!129 = distinct !{!129, !15, !16}
!130 = distinct !{!130, !15, !16}
!131 = distinct !{!131, !15, !16, !22}
!132 = distinct !{!132, !15, !16, !22}
!133 = distinct !{!133, !15, !16}
!134 = distinct !{!134, !15, !16}
!135 = distinct !{!135, !15, !16}
!136 = !{!137}
!137 = distinct !{!137, !138}
!138 = distinct !{!138, !"LVerDomain"}
!139 = !{!140}
!140 = distinct !{!140, !138}
!141 = distinct !{!141, !15, !16, !22}
!142 = !{!143}
!143 = distinct !{!143, !144}
!144 = distinct !{!144, !"LVerDomain"}
!145 = !{!146, !147}
!146 = distinct !{!146, !144}
!147 = distinct !{!147, !144}
!148 = !{!146}
!149 = !{!147}
!150 = distinct !{!150, !15, !16, !22}
!151 = distinct !{!151, !15, !16}
!152 = distinct !{!152, !15, !16, !22}
!153 = !{!154}
!154 = distinct !{!154, !155}
!155 = distinct !{!155, !"LVerDomain"}
!156 = !{!157}
!157 = distinct !{!157, !155}
!158 = distinct !{!158, !15, !16, !22}
!159 = distinct !{!159, !15, !16, !22}
!160 = !{!161}
!161 = distinct !{!161, !162}
!162 = distinct !{!162, !"LVerDomain"}
!163 = !{!164}
!164 = distinct !{!164, !162}
!165 = distinct !{!165, !15, !16, !22}
!166 = distinct !{!166, !15, !16, !22}
!167 = !{!168}
!168 = distinct !{!168, !169}
!169 = distinct !{!169, !"LVerDomain"}
!170 = !{!171}
!171 = distinct !{!171, !169}
!172 = distinct !{!172, !15, !16, !22}
!173 = distinct !{!173, !15, !16, !22}
!174 = !{!175}
!175 = distinct !{!175, !176}
!176 = distinct !{!176, !"LVerDomain"}
!177 = !{!178}
!178 = distinct !{!178, !176}
!179 = distinct !{!179, !15, !16, !22}
!180 = distinct !{!180, !15, !16, !22}
!181 = distinct !{!181, !15, !16, !22}
!182 = distinct !{!182, !15, !16}
!183 = distinct !{!183, !15, !16}
!184 = distinct !{!184, !15, !16}
!185 = !{!186, !187, i64 0}
!186 = !{!"_ZTS7timeval", !187, i64 0, !187, i64 8}
!187 = !{!"long", !6, i64 0}
!188 = !{!186, !187, i64 8}
!189 = distinct !{!189, !15, !16}
!190 = distinct !{!190, !15, !16}
!191 = distinct !{!191, !15, !16}
!192 = !{!9, !5, i64 8}
!193 = !{!4, !5, i64 8}
!194 = !{!9, !5, i64 16}
!195 = !{!4, !5, i64 16}
!196 = distinct !{!196, !15, !16, !22}
!197 = distinct !{!197, !15, !16, !22}
!198 = distinct !{!198, !15, !16, !22}
!199 = distinct !{!199, !15, !16, !22}
!200 = distinct !{!200, !15, !16, !22}
!201 = distinct !{!201, !15, !16, !22}
!202 = distinct !{!202, !15, !16, !22}
!203 = distinct !{!203, !15, !16, !22}
