; ModuleID = 'LULESH.ll'
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

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
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
  br i1 %7, label %8, label %.loopexit

8:                                                ; preds = %4
  %9 = zext i32 %0 to i64
  br label %10

.loopexit:                                        ; preds = %10, %4
  ret void

10:                                               ; preds = %10, %8
  %11 = phi i64 [ 0, %8 ], [ %21, %10 ]
  %12 = getelementptr inbounds double, double* %5, i64 %11
  %13 = load double, double* %12, align 8, !tbaa !10
  %14 = fneg double %13
  %15 = getelementptr inbounds double, double* %6, i64 %11
  %16 = load double, double* %15, align 8, !tbaa !10
  %17 = fsub double %14, %16
  %18 = getelementptr inbounds double, double* %3, i64 %11
  store double %17, double* %18, align 8, !tbaa !10
  %19 = getelementptr inbounds double, double* %2, i64 %11
  store double %17, double* %19, align 8, !tbaa !10
  %20 = getelementptr inbounds double, double* %1, i64 %11
  store double %17, double* %20, align 8, !tbaa !10
  %21 = add nuw nsw i64 %11, 1
  %22 = icmp eq i64 %21, %9
  br i1 %22, label %.loopexit, label %10, !llvm.loop !14
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
  %61 = fadd <2 x double> %60, %55
  %62 = extractelement <2 x double> %61, i32 0
  %63 = fsub double %20, %8
  %64 = insertelement <2 x double> poison, double %14, i32 0
  %65 = shufflevector <2 x double> %64, <2 x double> %61, <2 x i32> <i32 0, i32 2>
  %66 = insertelement <2 x double> poison, double %10, i32 0
  %67 = insertelement <2 x double> %66, double %63, i32 1
  %68 = fsub <2 x double> %65, %67
  %69 = fadd double %63, %62
  %70 = insertelement <2 x double> poison, double %69, i32 0
  %71 = shufflevector <2 x double> %70, <2 x double> %68, <2 x i32> <i32 0, i32 2>
  %72 = fadd <2 x double> %68, %71
  %73 = fsub <2 x double> %68, %71
  %74 = shufflevector <2 x double> %72, <2 x double> %73, <2 x i32> <i32 0, i32 3>
  %75 = fmul <2 x double> %74, <double 1.250000e-01, double 1.250000e-01>
  %76 = fsub <2 x double> %60, %55
  %77 = shufflevector <2 x double> %76, <2 x double> %61, <2 x i32> <i32 0, i32 3>
  %78 = extractelement <2 x double> %55, i32 1
  %79 = insertelement <2 x double> poison, double %78, i32 0
  %80 = insertelement <2 x double> %79, double %35, i32 1
  %81 = extractelement <2 x double> %60, i32 1
  %82 = insertelement <2 x double> poison, double %81, i32 0
  %83 = insertelement <2 x double> %82, double %23, i32 1
  %84 = fsub <2 x double> %80, %83
  %85 = insertelement <2 x double> %84, double %63, i32 0
  %86 = fadd <2 x double> %77, %85
  %87 = fsub <2 x double> %77, %85
  %88 = shufflevector <2 x double> %86, <2 x double> %87, <2 x i32> <i32 0, i32 3>
  %89 = fsub double %29, %25
  %90 = insertelement <2 x double> %68, double %89, i32 1
  %91 = fsub <2 x double> %88, %90
  %92 = fmul <2 x double> %91, <double 1.250000e-01, double 1.250000e-01>
  %93 = shufflevector <2 x double> %84, <2 x double> %61, <2 x i32> <i32 1, i32 3>
  %94 = fadd <2 x double> %84, %93
  %95 = insertelement <2 x double> poison, double %89, i32 0
  %96 = shufflevector <2 x double> %95, <2 x double> poison, <2 x i32> zeroinitializer
  %97 = fsub <2 x double> %94, %96
  %98 = fadd <2 x double> %96, %94
  %99 = shufflevector <2 x double> %97, <2 x double> %98, <2 x i32> <i32 0, i32 3>
  %100 = fmul <2 x double> %99, <double 1.250000e-01, double 1.250000e-01>
  %101 = fsub double %48, %36
  %102 = fsub double %46, %42
  %103 = fadd double %102, %101
  %104 = fsub double %50, %38
  %105 = insertelement <2 x double> poison, double %44, i32 0
  %106 = insertelement <2 x double> %105, double %103, i32 1
  %107 = insertelement <2 x double> poison, double %40, i32 0
  %108 = insertelement <2 x double> %107, double %104, i32 1
  %109 = fsub <2 x double> %106, %108
  %110 = fsub double %101, %102
  %111 = fadd double %110, %104
  %112 = extractelement <2 x double> %109, i32 0
  %113 = fsub double %111, %112
  %114 = fmul double %113, 1.250000e-01
  %115 = fadd double %103, %104
  %116 = insertelement <2 x double> poison, double %115, i32 0
  %117 = shufflevector <2 x double> %116, <2 x double> %109, <2 x i32> <i32 0, i32 2>
  %118 = fadd <2 x double> %109, %117
  %119 = fsub <2 x double> %109, %117
  %120 = shufflevector <2 x double> %118, <2 x double> %119, <2 x i32> <i32 0, i32 3>
  %121 = fmul <2 x double> %120, <double 1.250000e-01, double 1.250000e-01>
  %122 = fmul <2 x double> %100, %121
  %123 = extractelement <2 x double> %92, i32 1
  %124 = shufflevector <2 x double> %100, <2 x double> undef, <2 x i32> <i32 1, i32 undef>
  %125 = shufflevector <2 x double> %124, <2 x double> %92, <2 x i32> <i32 0, i32 3>
  %126 = insertelement <2 x double> poison, double %114, i32 0
  %127 = shufflevector <2 x double> %126, <2 x double> %121, <2 x i32> <i32 0, i32 2>
  %128 = fmul <2 x double> %125, %127
  %129 = fsub <2 x double> %122, %128
  %130 = fmul double %123, %114
  %131 = extractelement <2 x double> %100, i32 0
  %132 = extractelement <2 x double> %121, i32 1
  %133 = fmul double %131, %132
  %134 = fsub double %130, %133
  %135 = fmul <2 x double> %75, %127
  %136 = extractelement <2 x double> %92, i32 0
  %137 = shufflevector <2 x double> %92, <2 x double> %75, <2 x i32> <i32 0, i32 2>
  %138 = fmul <2 x double> %137, %121
  %139 = fsub <2 x double> %135, %138
  %140 = fmul double %136, %132
  %141 = extractelement <2 x double> %75, i32 1
  %142 = fmul double %141, %114
  %143 = fsub double %140, %142
  %144 = shufflevector <2 x double> %124, <2 x double> %75, <2 x i32> <i32 0, i32 2>
  %145 = fmul <2 x double> %92, %144
  %146 = fmul <2 x double> %75, %100
  %147 = fsub <2 x double> %145, %146
  %148 = fmul double %141, %131
  %149 = fmul double %136, %123
  %150 = fsub double %148, %149
  %151 = extractelement <2 x double> %129, i32 0
  %152 = fneg double %151
  %153 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 0, i64 0
  %154 = extractelement <2 x double> %129, i32 1
  %155 = insertelement <2 x double> poison, double %154, i32 0
  %156 = insertelement <2 x double> %155, double %152, i32 1
  %157 = fsub <2 x double> %156, %129
  %158 = insertelement <2 x double> poison, double %134, i32 0
  %159 = shufflevector <2 x double> %158, <2 x double> poison, <2 x i32> zeroinitializer
  %160 = fsub <2 x double> %157, %159
  %161 = extractelement <2 x double> %160, i32 1
  store double %161, double* %153, align 8, !tbaa !10
  %162 = fsub double %151, %154
  %163 = fsub double %162, %134
  %164 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 0, i64 1
  store double %163, double* %164, align 8, !tbaa !10
  %165 = fadd double %151, %154
  %166 = fsub double %165, %134
  %167 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 0, i64 2
  store double %166, double* %167, align 8, !tbaa !10
  %168 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 0, i64 3
  %169 = extractelement <2 x double> %160, i32 0
  store double %169, double* %168, align 8, !tbaa !10
  %170 = fneg double %166
  %171 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 0, i64 4
  store double %170, double* %171, align 8, !tbaa !10
  %172 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 0, i64 5
  %173 = fneg <2 x double> %160
  %174 = bitcast double* %172 to <2 x double>*
  store <2 x double> %173, <2 x double>* %174, align 8, !tbaa !10
  %175 = fneg double %163
  %176 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 0, i64 7
  store double %175, double* %176, align 8, !tbaa !10
  %177 = extractelement <2 x double> %139, i32 0
  %178 = fneg double %177
  %179 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 1, i64 0
  %180 = extractelement <2 x double> %139, i32 1
  %181 = insertelement <2 x double> poison, double %180, i32 0
  %182 = insertelement <2 x double> %181, double %178, i32 1
  %183 = fsub <2 x double> %182, %139
  %184 = insertelement <2 x double> poison, double %143, i32 0
  %185 = shufflevector <2 x double> %184, <2 x double> poison, <2 x i32> zeroinitializer
  %186 = fsub <2 x double> %183, %185
  %187 = extractelement <2 x double> %186, i32 1
  store double %187, double* %179, align 8, !tbaa !10
  %188 = fsub double %177, %180
  %189 = fsub double %188, %143
  %190 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 1, i64 1
  store double %189, double* %190, align 8, !tbaa !10
  %191 = fadd double %177, %180
  %192 = fsub double %191, %143
  %193 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 1, i64 2
  store double %192, double* %193, align 8, !tbaa !10
  %194 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 1, i64 3
  %195 = extractelement <2 x double> %186, i32 0
  store double %195, double* %194, align 8, !tbaa !10
  %196 = fneg double %192
  %197 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 1, i64 4
  store double %196, double* %197, align 8, !tbaa !10
  %198 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 1, i64 5
  %199 = fneg <2 x double> %186
  %200 = bitcast double* %198 to <2 x double>*
  store <2 x double> %199, <2 x double>* %200, align 8, !tbaa !10
  %201 = fneg double %189
  %202 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 1, i64 7
  store double %201, double* %202, align 8, !tbaa !10
  %203 = extractelement <2 x double> %147, i32 0
  %204 = fneg double %203
  %205 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 2, i64 0
  %206 = extractelement <2 x double> %147, i32 1
  %207 = insertelement <2 x double> poison, double %206, i32 0
  %208 = insertelement <2 x double> %207, double %204, i32 1
  %209 = fsub <2 x double> %208, %147
  %210 = insertelement <2 x double> poison, double %150, i32 0
  %211 = shufflevector <2 x double> %210, <2 x double> poison, <2 x i32> zeroinitializer
  %212 = fsub <2 x double> %209, %211
  %213 = extractelement <2 x double> %212, i32 1
  store double %213, double* %205, align 8, !tbaa !10
  %214 = fsub double %203, %206
  %215 = fsub double %214, %150
  %216 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 2, i64 1
  store double %215, double* %216, align 8, !tbaa !10
  %217 = fadd double %203, %206
  %218 = fsub double %217, %150
  %219 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 2, i64 2
  store double %218, double* %219, align 8, !tbaa !10
  %220 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 2, i64 3
  %221 = extractelement <2 x double> %212, i32 0
  store double %221, double* %220, align 8, !tbaa !10
  %222 = fneg double %218
  %223 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 2, i64 4
  store double %222, double* %223, align 8, !tbaa !10
  %224 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 2, i64 5
  %225 = fneg <2 x double> %212
  %226 = bitcast double* %224 to <2 x double>*
  store <2 x double> %225, <2 x double>* %226, align 8, !tbaa !10
  %227 = fneg double %215
  %228 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 2, i64 7
  store double %227, double* %228, align 8, !tbaa !10
  %229 = fmul double %136, %154
  %230 = fmul double %131, %180
  %231 = fadd double %229, %230
  %232 = fmul double %114, %206
  %233 = fadd double %232, %231
  %234 = fmul double %233, 8.000000e+00
  store double %234, double* %4, align 8, !tbaa !10
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
define dso_local void @_Z27SumElemStressesToNodeForcesPA8_KddddPdS2_S2_([8 x double]* nocapture readonly %0, double %1, double %2, double %3, double* nocapture %4, double* nocapture %5, double* nocapture %6) local_unnamed_addr #5 {
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
  br i1 %30, label %31, label %.loopexit

31:                                               ; preds = %5
  %32 = zext i32 %0 to i64
  br label %33

.loopexit:                                        ; preds = %68, %5
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %19) #2
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %18) #2
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %17) #2
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %16) #2
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %15) #2
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %14) #2
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %13) #2
  ret void

33:                                               ; preds = %68, %31
  %34 = phi i64 [ 0, %31 ], [ %69, %68 ]
  %35 = shl nsw i64 %34, 3
  %36 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 17, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !8
  %37 = getelementptr inbounds i32, i32* %36, i64 %35
  %38 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %39 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %40 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  br label %52

41:                                               ; preds = %52
  %42 = getelementptr inbounds double, double* %4, i64 %34
  call void @_Z32CalcElemShapeFunctionDerivativesPKdS0_S0_PA8_dPd(double* nonnull %20, double* nonnull %21, double* nonnull %22, [8 x double]* nonnull %23, double* %42)
  call void @_Z19CalcElemNodeNormalsPdS_S_PKdS1_S1_(double* nonnull %24, double* nonnull %25, double* nonnull %26, double* nonnull %20, double* nonnull %21, double* nonnull %22)
  %43 = getelementptr inbounds double, double* %1, i64 %34
  %44 = load double, double* %43, align 8, !tbaa !10
  %45 = getelementptr inbounds double, double* %2, i64 %34
  %46 = load double, double* %45, align 8, !tbaa !10
  %47 = getelementptr inbounds double, double* %3, i64 %34
  %48 = load double, double* %47, align 8, !tbaa !10
  call void @_Z27SumElemStressesToNodeForcesPA8_KddddPdS2_S2_([8 x double]* nonnull %23, double %44, double %46, double %48, double* nonnull %27, double* nonnull %28, double* nonnull %29)
  %49 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 9, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %50 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 10, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %51 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 11, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  br label %71

52:                                               ; preds = %52, %33
  %53 = phi i64 [ 0, %33 ], [ %66, %52 ]
  %54 = getelementptr inbounds i32, i32* %37, i64 %53
  %55 = load i32, i32* %54, align 4, !tbaa !12
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds double, double* %38, i64 %56
  %58 = load double, double* %57, align 8, !tbaa !10
  %59 = getelementptr inbounds [8 x double], [8 x double]* %7, i64 0, i64 %53
  store double %58, double* %59, align 8, !tbaa !10
  %60 = getelementptr inbounds double, double* %39, i64 %56
  %61 = load double, double* %60, align 8, !tbaa !10
  %62 = getelementptr inbounds [8 x double], [8 x double]* %8, i64 0, i64 %53
  store double %61, double* %62, align 8, !tbaa !10
  %63 = getelementptr inbounds double, double* %40, i64 %56
  %64 = load double, double* %63, align 8, !tbaa !10
  %65 = getelementptr inbounds [8 x double], [8 x double]* %9, i64 0, i64 %53
  store double %64, double* %65, align 8, !tbaa !10
  %66 = add nuw nsw i64 %53, 1
  %67 = icmp eq i64 %66, 8
  br i1 %67, label %41, label %52, !llvm.loop !18

68:                                               ; preds = %71
  %69 = add nuw nsw i64 %34, 1
  %70 = icmp eq i64 %69, %32
  br i1 %70, label %.loopexit, label %33, !llvm.loop !19

71:                                               ; preds = %71, %41
  %72 = phi i64 [ 0, %41 ], [ %91, %71 ]
  %73 = getelementptr inbounds i32, i32* %37, i64 %72
  %74 = load i32, i32* %73, align 4, !tbaa !12
  %75 = getelementptr inbounds [8 x double], [8 x double]* %10, i64 0, i64 %72
  %76 = load double, double* %75, align 8, !tbaa !10
  %77 = sext i32 %74 to i64
  %78 = getelementptr inbounds double, double* %49, i64 %77
  %79 = load double, double* %78, align 8, !tbaa !10
  %80 = fadd double %76, %79
  store double %80, double* %78, align 8, !tbaa !10
  %81 = getelementptr inbounds [8 x double], [8 x double]* %11, i64 0, i64 %72
  %82 = load double, double* %81, align 8, !tbaa !10
  %83 = getelementptr inbounds double, double* %50, i64 %77
  %84 = load double, double* %83, align 8, !tbaa !10
  %85 = fadd double %82, %84
  store double %85, double* %83, align 8, !tbaa !10
  %86 = getelementptr inbounds [8 x double], [8 x double]* %12, i64 0, i64 %72
  %87 = load double, double* %86, align 8, !tbaa !10
  %88 = getelementptr inbounds double, double* %51, i64 %77
  %89 = load double, double* %88, align 8, !tbaa !10
  %90 = fadd double %87, %89
  store double %90, double* %88, align 8, !tbaa !10
  %91 = add nuw nsw i64 %72, 1
  %92 = icmp eq i64 %91, 8
  br i1 %92, label %68, label %71, !llvm.loop !20
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #8

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
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
  br i1 %128, label %129, label %.loopexit

129:                                              ; preds = %8
  %130 = zext i32 %24 to i64
  br label %131

.loopexit:                                        ; preds = %471, %8
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

131:                                              ; preds = %471, %129
  %132 = phi i64 [ 0, %129 ], [ %656, %471 ]
  %133 = shl nsw i64 %132, 3
  %134 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 17, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !8
  %135 = getelementptr inbounds double, double* %0, i64 %132
  %136 = load double, double* %135, align 8, !tbaa !10
  %137 = or i64 %133, 1
  %138 = or i64 %133, 2
  %139 = or i64 %133, 3
  %140 = or i64 %133, 4
  %141 = or i64 %133, 5
  %142 = or i64 %133, 6
  %143 = or i64 %133, 7
  %144 = getelementptr inbounds double, double* %6, i64 %143
  %145 = load double, double* %144, align 8, !tbaa !10
  %146 = getelementptr inbounds double, double* %5, i64 %143
  %147 = load double, double* %146, align 8, !tbaa !10
  %148 = getelementptr inbounds double, double* %4, i64 %143
  %149 = load double, double* %148, align 8, !tbaa !10
  %150 = getelementptr inbounds double, double* %6, i64 %142
  %151 = load double, double* %150, align 8, !tbaa !10
  %152 = getelementptr inbounds double, double* %5, i64 %142
  %153 = load double, double* %152, align 8, !tbaa !10
  %154 = getelementptr inbounds double, double* %4, i64 %142
  %155 = load double, double* %154, align 8, !tbaa !10
  %156 = getelementptr inbounds double, double* %6, i64 %141
  %157 = load double, double* %156, align 8, !tbaa !10
  %158 = getelementptr inbounds double, double* %5, i64 %141
  %159 = load double, double* %158, align 8, !tbaa !10
  %160 = getelementptr inbounds double, double* %4, i64 %141
  %161 = load double, double* %160, align 8, !tbaa !10
  %162 = getelementptr inbounds double, double* %6, i64 %140
  %163 = load double, double* %162, align 8, !tbaa !10
  %164 = getelementptr inbounds double, double* %5, i64 %140
  %165 = load double, double* %164, align 8, !tbaa !10
  %166 = getelementptr inbounds double, double* %4, i64 %140
  %167 = load double, double* %166, align 8, !tbaa !10
  %168 = getelementptr inbounds double, double* %6, i64 %139
  %169 = load double, double* %168, align 8, !tbaa !10
  %170 = getelementptr inbounds double, double* %5, i64 %139
  %171 = load double, double* %170, align 8, !tbaa !10
  %172 = getelementptr inbounds double, double* %4, i64 %139
  %173 = load double, double* %172, align 8, !tbaa !10
  %174 = getelementptr inbounds double, double* %6, i64 %138
  %175 = load double, double* %174, align 8, !tbaa !10
  %176 = getelementptr inbounds double, double* %5, i64 %138
  %177 = load double, double* %176, align 8, !tbaa !10
  %178 = getelementptr inbounds double, double* %4, i64 %138
  %179 = load double, double* %178, align 8, !tbaa !10
  %180 = getelementptr inbounds double, double* %6, i64 %137
  %181 = load double, double* %180, align 8, !tbaa !10
  %182 = getelementptr inbounds double, double* %5, i64 %137
  %183 = load double, double* %182, align 8, !tbaa !10
  %184 = getelementptr inbounds double, double* %4, i64 %137
  %185 = load double, double* %184, align 8, !tbaa !10
  %186 = getelementptr inbounds double, double* %6, i64 %133
  %187 = load double, double* %186, align 8, !tbaa !10
  %188 = getelementptr inbounds double, double* %5, i64 %133
  %189 = load double, double* %188, align 8, !tbaa !10
  %190 = getelementptr inbounds double, double* %4, i64 %133
  %191 = load double, double* %190, align 8, !tbaa !10
  %192 = getelementptr inbounds double, double* %3, i64 %143
  %193 = load double, double* %192, align 8, !tbaa !10
  %194 = getelementptr inbounds double, double* %3, i64 %142
  %195 = load double, double* %194, align 8, !tbaa !10
  %196 = getelementptr inbounds double, double* %3, i64 %141
  %197 = load double, double* %196, align 8, !tbaa !10
  %198 = getelementptr inbounds double, double* %3, i64 %140
  %199 = load double, double* %198, align 8, !tbaa !10
  %200 = getelementptr inbounds double, double* %3, i64 %139
  %201 = load double, double* %200, align 8, !tbaa !10
  %202 = getelementptr inbounds double, double* %3, i64 %138
  %203 = load double, double* %202, align 8, !tbaa !10
  %204 = getelementptr inbounds double, double* %3, i64 %137
  %205 = load double, double* %204, align 8, !tbaa !10
  %206 = getelementptr inbounds double, double* %3, i64 %133
  %207 = load double, double* %206, align 8, !tbaa !10
  %208 = getelementptr inbounds double, double* %2, i64 %143
  %209 = load double, double* %208, align 8, !tbaa !10
  %210 = getelementptr inbounds double, double* %2, i64 %142
  %211 = load double, double* %210, align 8, !tbaa !10
  %212 = getelementptr inbounds double, double* %2, i64 %141
  %213 = load double, double* %212, align 8, !tbaa !10
  %214 = getelementptr inbounds double, double* %2, i64 %140
  %215 = load double, double* %214, align 8, !tbaa !10
  %216 = getelementptr inbounds double, double* %2, i64 %139
  %217 = load double, double* %216, align 8, !tbaa !10
  %218 = getelementptr inbounds double, double* %2, i64 %138
  %219 = load double, double* %218, align 8, !tbaa !10
  %220 = getelementptr inbounds double, double* %2, i64 %137
  %221 = load double, double* %220, align 8, !tbaa !10
  %222 = getelementptr inbounds double, double* %2, i64 %133
  %223 = load double, double* %222, align 8, !tbaa !10
  %224 = getelementptr inbounds double, double* %1, i64 %143
  %225 = load double, double* %224, align 8, !tbaa !10
  %226 = getelementptr inbounds double, double* %1, i64 %142
  %227 = load double, double* %226, align 8, !tbaa !10
  %228 = getelementptr inbounds double, double* %1, i64 %141
  %229 = load double, double* %228, align 8, !tbaa !10
  %230 = getelementptr inbounds double, double* %1, i64 %140
  %231 = load double, double* %230, align 8, !tbaa !10
  %232 = getelementptr inbounds double, double* %1, i64 %139
  %233 = load double, double* %232, align 8, !tbaa !10
  %234 = getelementptr inbounds double, double* %1, i64 %138
  %235 = load double, double* %234, align 8, !tbaa !10
  %236 = getelementptr inbounds double, double* %1, i64 %137
  %237 = load double, double* %236, align 8, !tbaa !10
  %238 = getelementptr inbounds double, double* %1, i64 %133
  %239 = load double, double* %238, align 8, !tbaa !10
  %240 = fdiv double 1.000000e+00, %136
  %241 = insertelement <2 x double> poison, double %239, i32 0
  %242 = shufflevector <2 x double> %241, <2 x double> poison, <2 x i32> zeroinitializer
  %243 = insertelement <2 x double> poison, double %237, i32 0
  %244 = shufflevector <2 x double> %243, <2 x double> poison, <2 x i32> zeroinitializer
  %245 = insertelement <2 x double> poison, double %235, i32 0
  %246 = shufflevector <2 x double> %245, <2 x double> poison, <2 x i32> zeroinitializer
  %247 = insertelement <2 x double> poison, double %233, i32 0
  %248 = shufflevector <2 x double> %247, <2 x double> poison, <2 x i32> zeroinitializer
  %249 = insertelement <2 x double> poison, double %231, i32 0
  %250 = shufflevector <2 x double> %249, <2 x double> poison, <2 x i32> zeroinitializer
  %251 = insertelement <2 x double> poison, double %229, i32 0
  %252 = shufflevector <2 x double> %251, <2 x double> poison, <2 x i32> zeroinitializer
  %253 = insertelement <2 x double> poison, double %227, i32 0
  %254 = shufflevector <2 x double> %253, <2 x double> poison, <2 x i32> zeroinitializer
  %255 = insertelement <2 x double> poison, double %225, i32 0
  %256 = shufflevector <2 x double> %255, <2 x double> poison, <2 x i32> zeroinitializer
  %257 = insertelement <2 x double> poison, double %223, i32 0
  %258 = shufflevector <2 x double> %257, <2 x double> poison, <2 x i32> zeroinitializer
  %259 = insertelement <2 x double> poison, double %221, i32 0
  %260 = shufflevector <2 x double> %259, <2 x double> poison, <2 x i32> zeroinitializer
  %261 = insertelement <2 x double> poison, double %219, i32 0
  %262 = shufflevector <2 x double> %261, <2 x double> poison, <2 x i32> zeroinitializer
  %263 = insertelement <2 x double> poison, double %217, i32 0
  %264 = shufflevector <2 x double> %263, <2 x double> poison, <2 x i32> zeroinitializer
  %265 = insertelement <2 x double> poison, double %215, i32 0
  %266 = shufflevector <2 x double> %265, <2 x double> poison, <2 x i32> zeroinitializer
  %267 = insertelement <2 x double> poison, double %213, i32 0
  %268 = shufflevector <2 x double> %267, <2 x double> poison, <2 x i32> zeroinitializer
  %269 = insertelement <2 x double> poison, double %211, i32 0
  %270 = shufflevector <2 x double> %269, <2 x double> poison, <2 x i32> zeroinitializer
  %271 = insertelement <2 x double> poison, double %209, i32 0
  %272 = shufflevector <2 x double> %271, <2 x double> poison, <2 x i32> zeroinitializer
  %273 = insertelement <2 x double> poison, double %207, i32 0
  %274 = shufflevector <2 x double> %273, <2 x double> poison, <2 x i32> zeroinitializer
  %275 = insertelement <2 x double> poison, double %205, i32 0
  %276 = shufflevector <2 x double> %275, <2 x double> poison, <2 x i32> zeroinitializer
  %277 = insertelement <2 x double> poison, double %203, i32 0
  %278 = shufflevector <2 x double> %277, <2 x double> poison, <2 x i32> zeroinitializer
  %279 = insertelement <2 x double> poison, double %201, i32 0
  %280 = shufflevector <2 x double> %279, <2 x double> poison, <2 x i32> zeroinitializer
  %281 = insertelement <2 x double> poison, double %199, i32 0
  %282 = shufflevector <2 x double> %281, <2 x double> poison, <2 x i32> zeroinitializer
  %283 = insertelement <2 x double> poison, double %197, i32 0
  %284 = shufflevector <2 x double> %283, <2 x double> poison, <2 x i32> zeroinitializer
  %285 = insertelement <2 x double> poison, double %195, i32 0
  %286 = shufflevector <2 x double> %285, <2 x double> poison, <2 x i32> zeroinitializer
  %287 = insertelement <2 x double> poison, double %193, i32 0
  %288 = shufflevector <2 x double> %287, <2 x double> poison, <2 x i32> zeroinitializer
  %289 = insertelement <2 x double> poison, double %191, i32 0
  %290 = shufflevector <2 x double> %289, <2 x double> poison, <2 x i32> zeroinitializer
  %291 = insertelement <2 x double> poison, double %189, i32 0
  %292 = shufflevector <2 x double> %291, <2 x double> poison, <2 x i32> zeroinitializer
  %293 = insertelement <2 x double> poison, double %187, i32 0
  %294 = shufflevector <2 x double> %293, <2 x double> poison, <2 x i32> zeroinitializer
  %295 = insertelement <2 x double> poison, double %240, i32 0
  %296 = shufflevector <2 x double> %295, <2 x double> poison, <2 x i32> zeroinitializer
  %297 = insertelement <2 x double> poison, double %185, i32 0
  %298 = shufflevector <2 x double> %297, <2 x double> poison, <2 x i32> zeroinitializer
  %299 = insertelement <2 x double> poison, double %183, i32 0
  %300 = shufflevector <2 x double> %299, <2 x double> poison, <2 x i32> zeroinitializer
  %301 = insertelement <2 x double> poison, double %181, i32 0
  %302 = shufflevector <2 x double> %301, <2 x double> poison, <2 x i32> zeroinitializer
  %303 = insertelement <2 x double> poison, double %179, i32 0
  %304 = shufflevector <2 x double> %303, <2 x double> poison, <2 x i32> zeroinitializer
  %305 = insertelement <2 x double> poison, double %177, i32 0
  %306 = shufflevector <2 x double> %305, <2 x double> poison, <2 x i32> zeroinitializer
  %307 = insertelement <2 x double> poison, double %175, i32 0
  %308 = shufflevector <2 x double> %307, <2 x double> poison, <2 x i32> zeroinitializer
  %309 = insertelement <2 x double> poison, double %173, i32 0
  %310 = shufflevector <2 x double> %309, <2 x double> poison, <2 x i32> zeroinitializer
  %311 = insertelement <2 x double> poison, double %171, i32 0
  %312 = shufflevector <2 x double> %311, <2 x double> poison, <2 x i32> zeroinitializer
  %313 = insertelement <2 x double> poison, double %169, i32 0
  %314 = shufflevector <2 x double> %313, <2 x double> poison, <2 x i32> zeroinitializer
  %315 = insertelement <2 x double> poison, double %167, i32 0
  %316 = shufflevector <2 x double> %315, <2 x double> poison, <2 x i32> zeroinitializer
  %317 = insertelement <2 x double> poison, double %165, i32 0
  %318 = shufflevector <2 x double> %317, <2 x double> poison, <2 x i32> zeroinitializer
  %319 = insertelement <2 x double> poison, double %163, i32 0
  %320 = shufflevector <2 x double> %319, <2 x double> poison, <2 x i32> zeroinitializer
  %321 = insertelement <2 x double> poison, double %161, i32 0
  %322 = shufflevector <2 x double> %321, <2 x double> poison, <2 x i32> zeroinitializer
  %323 = insertelement <2 x double> poison, double %159, i32 0
  %324 = shufflevector <2 x double> %323, <2 x double> poison, <2 x i32> zeroinitializer
  %325 = insertelement <2 x double> poison, double %157, i32 0
  %326 = shufflevector <2 x double> %325, <2 x double> poison, <2 x i32> zeroinitializer
  %327 = insertelement <2 x double> poison, double %155, i32 0
  %328 = shufflevector <2 x double> %327, <2 x double> poison, <2 x i32> zeroinitializer
  %329 = insertelement <2 x double> poison, double %153, i32 0
  %330 = shufflevector <2 x double> %329, <2 x double> poison, <2 x i32> zeroinitializer
  %331 = insertelement <2 x double> poison, double %151, i32 0
  %332 = shufflevector <2 x double> %331, <2 x double> poison, <2 x i32> zeroinitializer
  %333 = insertelement <2 x double> poison, double %149, i32 0
  %334 = shufflevector <2 x double> %333, <2 x double> poison, <2 x i32> zeroinitializer
  %335 = insertelement <2 x double> poison, double %147, i32 0
  %336 = shufflevector <2 x double> %335, <2 x double> poison, <2 x i32> zeroinitializer
  %337 = insertelement <2 x double> poison, double %145, i32 0
  %338 = shufflevector <2 x double> %337, <2 x double> poison, <2 x i32> zeroinitializer
  br label %339

339:                                              ; preds = %339, %131
  %340 = phi i64 [ 0, %131 ], [ %469, %339 ]
  %341 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %12, i64 0, i64 %340, i64 0
  %342 = bitcast double* %341 to <16 x double>*
  %343 = load <16 x double>, <16 x double>* %342, align 16, !tbaa !10
  %344 = shufflevector <16 x double> %343, <16 x double> poison, <2 x i32> <i32 0, i32 8>
  %345 = shufflevector <16 x double> %343, <16 x double> poison, <2 x i32> <i32 1, i32 9>
  %346 = shufflevector <16 x double> %343, <16 x double> poison, <2 x i32> <i32 2, i32 10>
  %347 = shufflevector <16 x double> %343, <16 x double> poison, <2 x i32> <i32 3, i32 11>
  %348 = shufflevector <16 x double> %343, <16 x double> poison, <2 x i32> <i32 4, i32 12>
  %349 = shufflevector <16 x double> %343, <16 x double> poison, <2 x i32> <i32 5, i32 13>
  %350 = shufflevector <16 x double> %343, <16 x double> poison, <2 x i32> <i32 6, i32 14>
  %351 = shufflevector <16 x double> %343, <16 x double> poison, <2 x i32> <i32 7, i32 15>
  %352 = fmul <2 x double> %242, %344
  %353 = fmul <2 x double> %244, %345
  %354 = fadd <2 x double> %352, %353
  %355 = fmul <2 x double> %246, %346
  %356 = fadd <2 x double> %355, %354
  %357 = fmul <2 x double> %248, %347
  %358 = fadd <2 x double> %357, %356
  %359 = fmul <2 x double> %250, %348
  %360 = fadd <2 x double> %359, %358
  %361 = fmul <2 x double> %252, %349
  %362 = fadd <2 x double> %361, %360
  %363 = fmul <2 x double> %254, %350
  %364 = fadd <2 x double> %363, %362
  %365 = fmul <2 x double> %256, %351
  %366 = fadd <2 x double> %365, %364
  %367 = fmul <2 x double> %258, %344
  %368 = fmul <2 x double> %260, %345
  %369 = fadd <2 x double> %367, %368
  %370 = fmul <2 x double> %262, %346
  %371 = fadd <2 x double> %370, %369
  %372 = fmul <2 x double> %264, %347
  %373 = fadd <2 x double> %372, %371
  %374 = fmul <2 x double> %266, %348
  %375 = fadd <2 x double> %374, %373
  %376 = fmul <2 x double> %268, %349
  %377 = fadd <2 x double> %376, %375
  %378 = fmul <2 x double> %270, %350
  %379 = fadd <2 x double> %378, %377
  %380 = fmul <2 x double> %272, %351
  %381 = fadd <2 x double> %380, %379
  %382 = fmul <2 x double> %274, %344
  %383 = fmul <2 x double> %276, %345
  %384 = fadd <2 x double> %382, %383
  %385 = fmul <2 x double> %278, %346
  %386 = fadd <2 x double> %385, %384
  %387 = fmul <2 x double> %280, %347
  %388 = fadd <2 x double> %387, %386
  %389 = fmul <2 x double> %282, %348
  %390 = fadd <2 x double> %389, %388
  %391 = fmul <2 x double> %284, %349
  %392 = fadd <2 x double> %391, %390
  %393 = fmul <2 x double> %286, %350
  %394 = fadd <2 x double> %393, %392
  %395 = fmul <2 x double> %288, %351
  %396 = fadd <2 x double> %395, %394
  %397 = fmul <2 x double> %290, %366
  %398 = fmul <2 x double> %292, %381
  %399 = fadd <2 x double> %397, %398
  %400 = fmul <2 x double> %294, %396
  %401 = fadd <2 x double> %400, %399
  %402 = fmul <2 x double> %296, %401
  %403 = fsub <2 x double> %344, %402
  %404 = getelementptr inbounds [4 x double], [4 x double]* %13, i64 0, i64 %340
  %405 = bitcast double* %404 to <2 x double>*
  store <2 x double> %403, <2 x double>* %405, align 16, !tbaa !10
  %406 = fmul <2 x double> %298, %366
  %407 = fmul <2 x double> %300, %381
  %408 = fadd <2 x double> %406, %407
  %409 = fmul <2 x double> %302, %396
  %410 = fadd <2 x double> %409, %408
  %411 = fmul <2 x double> %296, %410
  %412 = fsub <2 x double> %345, %411
  %413 = getelementptr inbounds [4 x double], [4 x double]* %14, i64 0, i64 %340
  %414 = bitcast double* %413 to <2 x double>*
  store <2 x double> %412, <2 x double>* %414, align 16, !tbaa !10
  %415 = fmul <2 x double> %304, %366
  %416 = fmul <2 x double> %306, %381
  %417 = fadd <2 x double> %415, %416
  %418 = fmul <2 x double> %308, %396
  %419 = fadd <2 x double> %418, %417
  %420 = fmul <2 x double> %296, %419
  %421 = fsub <2 x double> %346, %420
  %422 = getelementptr inbounds [4 x double], [4 x double]* %15, i64 0, i64 %340
  %423 = bitcast double* %422 to <2 x double>*
  store <2 x double> %421, <2 x double>* %423, align 16, !tbaa !10
  %424 = fmul <2 x double> %310, %366
  %425 = fmul <2 x double> %312, %381
  %426 = fadd <2 x double> %424, %425
  %427 = fmul <2 x double> %314, %396
  %428 = fadd <2 x double> %427, %426
  %429 = fmul <2 x double> %296, %428
  %430 = fsub <2 x double> %347, %429
  %431 = getelementptr inbounds [4 x double], [4 x double]* %16, i64 0, i64 %340
  %432 = bitcast double* %431 to <2 x double>*
  store <2 x double> %430, <2 x double>* %432, align 16, !tbaa !10
  %433 = fmul <2 x double> %316, %366
  %434 = fmul <2 x double> %318, %381
  %435 = fadd <2 x double> %433, %434
  %436 = fmul <2 x double> %320, %396
  %437 = fadd <2 x double> %436, %435
  %438 = fmul <2 x double> %296, %437
  %439 = fsub <2 x double> %348, %438
  %440 = getelementptr inbounds [4 x double], [4 x double]* %17, i64 0, i64 %340
  %441 = bitcast double* %440 to <2 x double>*
  store <2 x double> %439, <2 x double>* %441, align 16, !tbaa !10
  %442 = fmul <2 x double> %322, %366
  %443 = fmul <2 x double> %324, %381
  %444 = fadd <2 x double> %442, %443
  %445 = fmul <2 x double> %326, %396
  %446 = fadd <2 x double> %445, %444
  %447 = fmul <2 x double> %296, %446
  %448 = fsub <2 x double> %349, %447
  %449 = getelementptr inbounds [4 x double], [4 x double]* %18, i64 0, i64 %340
  %450 = bitcast double* %449 to <2 x double>*
  store <2 x double> %448, <2 x double>* %450, align 16, !tbaa !10
  %451 = fmul <2 x double> %328, %366
  %452 = fmul <2 x double> %330, %381
  %453 = fadd <2 x double> %451, %452
  %454 = fmul <2 x double> %332, %396
  %455 = fadd <2 x double> %454, %453
  %456 = fmul <2 x double> %296, %455
  %457 = fsub <2 x double> %350, %456
  %458 = getelementptr inbounds [4 x double], [4 x double]* %19, i64 0, i64 %340
  %459 = bitcast double* %458 to <2 x double>*
  store <2 x double> %457, <2 x double>* %459, align 16, !tbaa !10
  %460 = fmul <2 x double> %334, %366
  %461 = fmul <2 x double> %336, %381
  %462 = fadd <2 x double> %460, %461
  %463 = fmul <2 x double> %338, %396
  %464 = fadd <2 x double> %463, %462
  %465 = fmul <2 x double> %296, %464
  %466 = fsub <2 x double> %351, %465
  %467 = getelementptr inbounds [4 x double], [4 x double]* %20, i64 0, i64 %340
  %468 = bitcast double* %467 to <2 x double>*
  store <2 x double> %466, <2 x double>* %468, align 16, !tbaa !10
  %469 = add nuw nsw i64 %340, 2
  %470 = icmp eq i64 %469, 4
  br i1 %470, label %471, label %339, !llvm.loop !21

471:                                              ; preds = %339
  %472 = getelementptr inbounds i32, i32* %134, i64 %133
  %473 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 45, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %474 = getelementptr inbounds double, double* %473, i64 %132
  %475 = load double, double* %474, align 8, !tbaa !10
  %476 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 46, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %477 = getelementptr inbounds double, double* %476, i64 %132
  %478 = load double, double* %477, align 8, !tbaa !10
  %479 = tail call double @cbrt(double %136) #31
  %480 = load i32, i32* %472, align 4, !tbaa !12
  %481 = getelementptr inbounds i32, i32* %472, i64 1
  %482 = load i32, i32* %481, align 4, !tbaa !12
  %483 = getelementptr inbounds i32, i32* %472, i64 2
  %484 = load i32, i32* %483, align 4, !tbaa !12
  %485 = getelementptr inbounds i32, i32* %472, i64 3
  %486 = load i32, i32* %485, align 4, !tbaa !12
  %487 = getelementptr inbounds i32, i32* %472, i64 4
  %488 = load i32, i32* %487, align 4, !tbaa !12
  %489 = getelementptr inbounds i32, i32* %472, i64 5
  %490 = load i32, i32* %489, align 4, !tbaa !12
  %491 = getelementptr inbounds i32, i32* %472, i64 6
  %492 = load i32, i32* %491, align 4, !tbaa !12
  %493 = getelementptr inbounds i32, i32* %472, i64 7
  %494 = load i32, i32* %493, align 4, !tbaa !12
  %495 = sext i32 %480 to i64
  %496 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %497 = getelementptr inbounds double, double* %496, i64 %495
  %498 = load double, double* %497, align 8, !tbaa !10
  store double %498, double* %71, align 16, !tbaa !10
  %499 = sext i32 %482 to i64
  %500 = getelementptr inbounds double, double* %496, i64 %499
  %501 = load double, double* %500, align 8, !tbaa !10
  store double %501, double* %72, align 8, !tbaa !10
  %502 = sext i32 %484 to i64
  %503 = getelementptr inbounds double, double* %496, i64 %502
  %504 = load double, double* %503, align 8, !tbaa !10
  store double %504, double* %73, align 16, !tbaa !10
  %505 = sext i32 %486 to i64
  %506 = getelementptr inbounds double, double* %496, i64 %505
  %507 = load double, double* %506, align 8, !tbaa !10
  store double %507, double* %74, align 8, !tbaa !10
  %508 = sext i32 %488 to i64
  %509 = getelementptr inbounds double, double* %496, i64 %508
  %510 = load double, double* %509, align 8, !tbaa !10
  store double %510, double* %75, align 16, !tbaa !10
  %511 = sext i32 %490 to i64
  %512 = getelementptr inbounds double, double* %496, i64 %511
  %513 = load double, double* %512, align 8, !tbaa !10
  store double %513, double* %76, align 8, !tbaa !10
  %514 = sext i32 %492 to i64
  %515 = getelementptr inbounds double, double* %496, i64 %514
  %516 = load double, double* %515, align 8, !tbaa !10
  store double %516, double* %77, align 16, !tbaa !10
  %517 = sext i32 %494 to i64
  %518 = getelementptr inbounds double, double* %496, i64 %517
  %519 = load double, double* %518, align 8, !tbaa !10
  store double %519, double* %78, align 8, !tbaa !10
  %520 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 4, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %521 = getelementptr inbounds double, double* %520, i64 %495
  %522 = load double, double* %521, align 8, !tbaa !10
  store double %522, double* %79, align 16, !tbaa !10
  %523 = getelementptr inbounds double, double* %520, i64 %499
  %524 = load double, double* %523, align 8, !tbaa !10
  store double %524, double* %80, align 8, !tbaa !10
  %525 = getelementptr inbounds double, double* %520, i64 %502
  %526 = load double, double* %525, align 8, !tbaa !10
  store double %526, double* %81, align 16, !tbaa !10
  %527 = getelementptr inbounds double, double* %520, i64 %505
  %528 = load double, double* %527, align 8, !tbaa !10
  store double %528, double* %82, align 8, !tbaa !10
  %529 = getelementptr inbounds double, double* %520, i64 %508
  %530 = load double, double* %529, align 8, !tbaa !10
  store double %530, double* %83, align 16, !tbaa !10
  %531 = getelementptr inbounds double, double* %520, i64 %511
  %532 = load double, double* %531, align 8, !tbaa !10
  store double %532, double* %84, align 8, !tbaa !10
  %533 = getelementptr inbounds double, double* %520, i64 %514
  %534 = load double, double* %533, align 8, !tbaa !10
  store double %534, double* %85, align 16, !tbaa !10
  %535 = getelementptr inbounds double, double* %520, i64 %517
  %536 = load double, double* %535, align 8, !tbaa !10
  store double %536, double* %86, align 8, !tbaa !10
  %537 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 5, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %538 = getelementptr inbounds double, double* %537, i64 %495
  %539 = load double, double* %538, align 8, !tbaa !10
  store double %539, double* %87, align 16, !tbaa !10
  %540 = getelementptr inbounds double, double* %537, i64 %499
  %541 = load double, double* %540, align 8, !tbaa !10
  store double %541, double* %88, align 8, !tbaa !10
  %542 = getelementptr inbounds double, double* %537, i64 %502
  %543 = load double, double* %542, align 8, !tbaa !10
  store double %543, double* %89, align 16, !tbaa !10
  %544 = getelementptr inbounds double, double* %537, i64 %505
  %545 = load double, double* %544, align 8, !tbaa !10
  store double %545, double* %90, align 8, !tbaa !10
  %546 = getelementptr inbounds double, double* %537, i64 %508
  %547 = load double, double* %546, align 8, !tbaa !10
  store double %547, double* %91, align 16, !tbaa !10
  %548 = getelementptr inbounds double, double* %537, i64 %511
  %549 = load double, double* %548, align 8, !tbaa !10
  store double %549, double* %92, align 8, !tbaa !10
  %550 = getelementptr inbounds double, double* %537, i64 %514
  %551 = load double, double* %550, align 8, !tbaa !10
  store double %551, double* %93, align 16, !tbaa !10
  %552 = getelementptr inbounds double, double* %537, i64 %517
  %553 = load double, double* %552, align 8, !tbaa !10
  store double %553, double* %94, align 8, !tbaa !10
  %554 = fmul double %95, %475
  %555 = fmul double %554, %478
  %556 = fdiv double %555, %479
  call void @_Z24CalcElemFBHourglassForcePdS_S_S_S_S_S_S_S_S_S_dS_S_S_(double* nonnull %71, double* nonnull %79, double* nonnull %87, double* nonnull %96, double* nonnull %97, double* nonnull %98, double* nonnull %99, double* nonnull %100, double* nonnull %101, double* nonnull %102, double* nonnull %103, double %556, double* nonnull %104, double* nonnull %105, double* nonnull %106)
  %557 = load double, double* %104, align 16, !tbaa !10
  %558 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 9, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %559 = getelementptr inbounds double, double* %558, i64 %495
  %560 = load double, double* %559, align 8, !tbaa !10
  %561 = fadd double %557, %560
  store double %561, double* %559, align 8, !tbaa !10
  %562 = load double, double* %105, align 16, !tbaa !10
  %563 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 10, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %564 = getelementptr inbounds double, double* %563, i64 %495
  %565 = load double, double* %564, align 8, !tbaa !10
  %566 = fadd double %562, %565
  store double %566, double* %564, align 8, !tbaa !10
  %567 = load double, double* %106, align 16, !tbaa !10
  %568 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 11, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %569 = getelementptr inbounds double, double* %568, i64 %495
  %570 = load double, double* %569, align 8, !tbaa !10
  %571 = fadd double %567, %570
  store double %571, double* %569, align 8, !tbaa !10
  %572 = load double, double* %107, align 8, !tbaa !10
  %573 = getelementptr inbounds double, double* %558, i64 %499
  %574 = load double, double* %573, align 8, !tbaa !10
  %575 = fadd double %572, %574
  store double %575, double* %573, align 8, !tbaa !10
  %576 = load double, double* %108, align 8, !tbaa !10
  %577 = getelementptr inbounds double, double* %563, i64 %499
  %578 = load double, double* %577, align 8, !tbaa !10
  %579 = fadd double %576, %578
  store double %579, double* %577, align 8, !tbaa !10
  %580 = load double, double* %109, align 8, !tbaa !10
  %581 = getelementptr inbounds double, double* %568, i64 %499
  %582 = load double, double* %581, align 8, !tbaa !10
  %583 = fadd double %580, %582
  store double %583, double* %581, align 8, !tbaa !10
  %584 = load double, double* %110, align 16, !tbaa !10
  %585 = getelementptr inbounds double, double* %558, i64 %502
  %586 = load double, double* %585, align 8, !tbaa !10
  %587 = fadd double %584, %586
  store double %587, double* %585, align 8, !tbaa !10
  %588 = load double, double* %111, align 16, !tbaa !10
  %589 = getelementptr inbounds double, double* %563, i64 %502
  %590 = load double, double* %589, align 8, !tbaa !10
  %591 = fadd double %588, %590
  store double %591, double* %589, align 8, !tbaa !10
  %592 = load double, double* %112, align 16, !tbaa !10
  %593 = getelementptr inbounds double, double* %568, i64 %502
  %594 = load double, double* %593, align 8, !tbaa !10
  %595 = fadd double %592, %594
  store double %595, double* %593, align 8, !tbaa !10
  %596 = load double, double* %113, align 8, !tbaa !10
  %597 = getelementptr inbounds double, double* %558, i64 %505
  %598 = load double, double* %597, align 8, !tbaa !10
  %599 = fadd double %596, %598
  store double %599, double* %597, align 8, !tbaa !10
  %600 = load double, double* %114, align 8, !tbaa !10
  %601 = getelementptr inbounds double, double* %563, i64 %505
  %602 = load double, double* %601, align 8, !tbaa !10
  %603 = fadd double %600, %602
  store double %603, double* %601, align 8, !tbaa !10
  %604 = load double, double* %115, align 8, !tbaa !10
  %605 = getelementptr inbounds double, double* %568, i64 %505
  %606 = load double, double* %605, align 8, !tbaa !10
  %607 = fadd double %604, %606
  store double %607, double* %605, align 8, !tbaa !10
  %608 = load double, double* %116, align 16, !tbaa !10
  %609 = getelementptr inbounds double, double* %558, i64 %508
  %610 = load double, double* %609, align 8, !tbaa !10
  %611 = fadd double %608, %610
  store double %611, double* %609, align 8, !tbaa !10
  %612 = load double, double* %117, align 16, !tbaa !10
  %613 = getelementptr inbounds double, double* %563, i64 %508
  %614 = load double, double* %613, align 8, !tbaa !10
  %615 = fadd double %612, %614
  store double %615, double* %613, align 8, !tbaa !10
  %616 = load double, double* %118, align 16, !tbaa !10
  %617 = getelementptr inbounds double, double* %568, i64 %508
  %618 = load double, double* %617, align 8, !tbaa !10
  %619 = fadd double %616, %618
  store double %619, double* %617, align 8, !tbaa !10
  %620 = load double, double* %119, align 8, !tbaa !10
  %621 = getelementptr inbounds double, double* %558, i64 %511
  %622 = load double, double* %621, align 8, !tbaa !10
  %623 = fadd double %620, %622
  store double %623, double* %621, align 8, !tbaa !10
  %624 = load double, double* %120, align 8, !tbaa !10
  %625 = getelementptr inbounds double, double* %563, i64 %511
  %626 = load double, double* %625, align 8, !tbaa !10
  %627 = fadd double %624, %626
  store double %627, double* %625, align 8, !tbaa !10
  %628 = load double, double* %121, align 8, !tbaa !10
  %629 = getelementptr inbounds double, double* %568, i64 %511
  %630 = load double, double* %629, align 8, !tbaa !10
  %631 = fadd double %628, %630
  store double %631, double* %629, align 8, !tbaa !10
  %632 = load double, double* %122, align 16, !tbaa !10
  %633 = getelementptr inbounds double, double* %558, i64 %514
  %634 = load double, double* %633, align 8, !tbaa !10
  %635 = fadd double %632, %634
  store double %635, double* %633, align 8, !tbaa !10
  %636 = load double, double* %123, align 16, !tbaa !10
  %637 = getelementptr inbounds double, double* %563, i64 %514
  %638 = load double, double* %637, align 8, !tbaa !10
  %639 = fadd double %636, %638
  store double %639, double* %637, align 8, !tbaa !10
  %640 = load double, double* %124, align 16, !tbaa !10
  %641 = getelementptr inbounds double, double* %568, i64 %514
  %642 = load double, double* %641, align 8, !tbaa !10
  %643 = fadd double %640, %642
  store double %643, double* %641, align 8, !tbaa !10
  %644 = load double, double* %125, align 8, !tbaa !10
  %645 = getelementptr inbounds double, double* %558, i64 %517
  %646 = load double, double* %645, align 8, !tbaa !10
  %647 = fadd double %644, %646
  store double %647, double* %645, align 8, !tbaa !10
  %648 = load double, double* %126, align 8, !tbaa !10
  %649 = getelementptr inbounds double, double* %563, i64 %517
  %650 = load double, double* %649, align 8, !tbaa !10
  %651 = fadd double %648, %650
  store double %651, double* %649, align 8, !tbaa !10
  %652 = load double, double* %127, align 8, !tbaa !10
  %653 = getelementptr inbounds double, double* %568, i64 %517
  %654 = load double, double* %653, align 8, !tbaa !10
  %655 = fadd double %652, %654
  store double %655, double* %653, align 8, !tbaa !10
  %656 = add nuw nsw i64 %132, 1
  %657 = icmp eq i64 %656, %130
  br i1 %657, label %.loopexit, label %131, !llvm.loop !23
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
  br i1 %37, label %38, label %.loopexit

38:                                               ; preds = %2
  %39 = zext i32 %15 to i64
  br label %42

40:                                               ; preds = %42
  %41 = icmp eq i64 %64, %39
  br i1 %41, label %.loopexit, label %42, !llvm.loop !24

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

.loopexit:                                        ; preds = %40, %2
  %66 = fcmp ogt double %1, 0.000000e+00
  br i1 %66, label %67, label %68

67:                                               ; preds = %.loopexit
  tail call void @_Z28CalcFBHourglassForceForElemsPdS_S_S_S_S_S_d(double* %0, double* %26, double* %28, double* %30, double* %20, double* %22, double* %24, double %1)
  br label %68

68:                                               ; preds = %67, %.loopexit
  %69 = icmp eq i8* %29, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %68
  tail call void @free(i8* nonnull %29) #2
  br label %71

71:                                               ; preds = %70, %68
  %72 = icmp eq i8* %27, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %71
  tail call void @free(i8* nonnull %27) #2
  br label %74

74:                                               ; preds = %73, %71
  %75 = icmp eq i8* %25, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %74
  tail call void @free(i8* nonnull %25) #2
  br label %77

77:                                               ; preds = %76, %74
  %78 = icmp eq i8* %23, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %77
  tail call void @free(i8* nonnull %23) #2
  br label %80

80:                                               ; preds = %79, %77
  %81 = icmp eq i8* %21, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %80
  tail call void @free(i8* nonnull %21) #2
  br label %83

83:                                               ; preds = %82, %80
  %84 = icmp eq i8* %19, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %83
  tail call void @free(i8* nonnull %19) #2
  br label %86

86:                                               ; preds = %85, %83
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

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
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
  br i1 %5, label %6, label %.loopexit

6:                                                ; preds = %0
  %7 = zext i32 %1 to i64
  %8 = icmp eq i32 %1, 1
  br i1 %8, label %.preheader, label %9

.preheader:                                       ; preds = %36, %9, %6
  %.ph = phi i64 [ %25, %36 ], [ 0, %6 ], [ 0, %9 ]
  br label %38

9:                                                ; preds = %6
  %10 = getelementptr double, double* %2, i64 %7
  %11 = getelementptr double, double* %3, i64 %7
  %12 = getelementptr double, double* %4, i64 %7
  %13 = icmp ult double* %2, %11
  %14 = icmp ult double* %3, %10
  %15 = and i1 %14, %13
  %16 = icmp ult double* %2, %12
  %17 = icmp ult double* %4, %10
  %18 = and i1 %17, %16
  %19 = or i1 %15, %18
  %20 = icmp ult double* %3, %12
  %21 = icmp ult double* %4, %11
  %22 = and i1 %21, %20
  %23 = or i1 %22, %19
  br i1 %23, label %.preheader, label %24

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
  br i1 %37, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %38, %36, %0
  tail call void @_Z23CalcVolumeForceForElemsv()
  ret void

38:                                               ; preds = %.preheader, %38
  %39 = phi i64 [ %43, %38 ], [ %.ph, %.preheader ]
  %40 = getelementptr inbounds double, double* %2, i64 %39
  store double 0.000000e+00, double* %40, align 8, !tbaa !10
  %41 = getelementptr inbounds double, double* %3, i64 %39
  store double 0.000000e+00, double* %41, align 8, !tbaa !10
  %42 = getelementptr inbounds double, double* %4, i64 %39
  store double 0.000000e+00, double* %42, align 8, !tbaa !10
  %43 = add nuw nsw i64 %39, 1
  %44 = icmp eq i64 %43, %7
  br i1 %44, label %.loopexit, label %38, !llvm.loop !35
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
  br i1 %9, label %10, label %.loopexit

10:                                               ; preds = %0
  %11 = zext i32 %1 to i64
  br label %12

.loopexit:                                        ; preds = %12, %0
  ret void

12:                                               ; preds = %12, %10
  %13 = phi i64 [ 0, %10 ], [ %30, %12 ]
  %14 = getelementptr inbounds double, double* %2, i64 %13
  %15 = load double, double* %14, align 8, !tbaa !10
  %16 = getelementptr inbounds double, double* %3, i64 %13
  %17 = load double, double* %16, align 8, !tbaa !10
  %18 = fdiv double %15, %17
  %19 = getelementptr inbounds double, double* %4, i64 %13
  store double %18, double* %19, align 8, !tbaa !10
  %20 = getelementptr inbounds double, double* %5, i64 %13
  %21 = load double, double* %20, align 8, !tbaa !10
  %22 = load double, double* %16, align 8, !tbaa !10
  %23 = fdiv double %21, %22
  %24 = getelementptr inbounds double, double* %6, i64 %13
  store double %23, double* %24, align 8, !tbaa !10
  %25 = getelementptr inbounds double, double* %7, i64 %13
  %26 = load double, double* %25, align 8, !tbaa !10
  %27 = load double, double* %16, align 8, !tbaa !10
  %28 = fdiv double %26, %27
  %29 = getelementptr inbounds double, double* %8, i64 %13
  store double %28, double* %29, align 8, !tbaa !10
  %30 = add nuw nsw i64 %13, 1
  %31 = icmp eq i64 %30, %11
  br i1 %31, label %.loopexit, label %12, !llvm.loop !36
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable
define dso_local void @_Z43ApplyAccelerationBoundaryConditionsForNodesv() local_unnamed_addr #6 {
  %1 = load i32, i32* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 76), align 4, !tbaa !12
  %2 = add i32 %1, 1
  %3 = mul i32 %2, %2
  %4 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 13, i32 0, i32 0, i32 0, i32 0), align 8
  %5 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 6, i32 0, i32 0, i32 0, i32 0), align 8
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %.loopexit, label %7

7:                                                ; preds = %0
  %8 = zext i32 %3 to i64
  br label %12

9:                                                ; preds = %12
  %10 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 14, i32 0, i32 0, i32 0, i32 0), align 8
  %11 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 7, i32 0, i32 0, i32 0, i32 0), align 8
  br label %23

12:                                               ; preds = %12, %7
  %13 = phi i64 [ 0, %7 ], [ %18, %12 ]
  %14 = getelementptr inbounds i32, i32* %4, i64 %13
  %15 = load i32, i32* %14, align 4, !tbaa !12
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds double, double* %5, i64 %16
  store double 0.000000e+00, double* %17, align 8, !tbaa !10
  %18 = add nuw nsw i64 %13, 1
  %19 = icmp eq i64 %18, %8
  br i1 %19, label %9, label %12, !llvm.loop !37

20:                                               ; preds = %23
  %21 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 15, i32 0, i32 0, i32 0, i32 0), align 8
  %22 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 8, i32 0, i32 0, i32 0, i32 0), align 8
  br label %31

23:                                               ; preds = %23, %9
  %24 = phi i64 [ 0, %9 ], [ %29, %23 ]
  %25 = getelementptr inbounds i32, i32* %10, i64 %24
  %26 = load i32, i32* %25, align 4, !tbaa !12
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds double, double* %11, i64 %27
  store double 0.000000e+00, double* %28, align 8, !tbaa !10
  %29 = add nuw nsw i64 %24, 1
  %30 = icmp eq i64 %29, %8
  br i1 %30, label %20, label %23, !llvm.loop !38

.loopexit:                                        ; preds = %31, %0
  ret void

31:                                               ; preds = %31, %20
  %32 = phi i64 [ 0, %20 ], [ %37, %31 ]
  %33 = getelementptr inbounds i32, i32* %21, i64 %32
  %34 = load i32, i32* %33, align 4, !tbaa !12
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double, double* %22, i64 %35
  store double 0.000000e+00, double* %36, align 8, !tbaa !10
  %37 = add nuw nsw i64 %32, 1
  %38 = icmp eq i64 %37, %8
  br i1 %38, label %.loopexit, label %31, !llvm.loop !39
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
  br i1 %10, label %11, label %.loopexit

11:                                               ; preds = %2
  %12 = zext i32 %3 to i64
  br label %13

.loopexit:                                        ; preds = %13, %2
  ret void

13:                                               ; preds = %13, %11
  %14 = phi i64 [ 0, %11 ], [ %42, %13 ]
  %15 = getelementptr inbounds double, double* %4, i64 %14
  %16 = load double, double* %15, align 8, !tbaa !10
  %17 = getelementptr inbounds double, double* %5, i64 %14
  %18 = load double, double* %17, align 8, !tbaa !10
  %19 = fmul double %18, %0
  %20 = fadd double %16, %19
  %21 = tail call double @llvm.fabs.f64(double %20) #2
  %22 = fcmp olt double %21, %1
  %23 = select i1 %22, double 0.000000e+00, double %20
  store double %23, double* %15, align 8, !tbaa !10
  %24 = getelementptr inbounds double, double* %6, i64 %14
  %25 = load double, double* %24, align 8, !tbaa !10
  %26 = getelementptr inbounds double, double* %7, i64 %14
  %27 = load double, double* %26, align 8, !tbaa !10
  %28 = fmul double %27, %0
  %29 = fadd double %25, %28
  %30 = tail call double @llvm.fabs.f64(double %29) #2
  %31 = fcmp olt double %30, %1
  %32 = select i1 %31, double 0.000000e+00, double %29
  store double %32, double* %24, align 8, !tbaa !10
  %33 = getelementptr inbounds double, double* %8, i64 %14
  %34 = load double, double* %33, align 8, !tbaa !10
  %35 = getelementptr inbounds double, double* %9, i64 %14
  %36 = load double, double* %35, align 8, !tbaa !10
  %37 = fmul double %36, %0
  %38 = fadd double %34, %37
  %39 = tail call double @llvm.fabs.f64(double %38) #2
  %40 = fcmp olt double %39, %1
  %41 = select i1 %40, double 0.000000e+00, double %38
  store double %41, double* %33, align 8, !tbaa !10
  %42 = add nuw nsw i64 %14, 1
  %43 = icmp eq i64 %42, %12
  br i1 %43, label %.loopexit, label %13, !llvm.loop !40
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
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
  br i1 %9, label %10, label %.loopexit

10:                                               ; preds = %1
  %11 = zext i32 %2 to i64
  br label %12

.loopexit:                                        ; preds = %12, %1
  ret void

12:                                               ; preds = %12, %10
  %13 = phi i64 [ 0, %10 ], [ %32, %12 ]
  %14 = getelementptr inbounds double, double* %3, i64 %13
  %15 = load double, double* %14, align 8, !tbaa !10
  %16 = fmul double %15, %0
  %17 = getelementptr inbounds double, double* %4, i64 %13
  %18 = load double, double* %17, align 8, !tbaa !10
  %19 = fadd double %16, %18
  store double %19, double* %17, align 8, !tbaa !10
  %20 = getelementptr inbounds double, double* %5, i64 %13
  %21 = load double, double* %20, align 8, !tbaa !10
  %22 = fmul double %21, %0
  %23 = getelementptr inbounds double, double* %6, i64 %13
  %24 = load double, double* %23, align 8, !tbaa !10
  %25 = fadd double %22, %24
  store double %25, double* %23, align 8, !tbaa !10
  %26 = getelementptr inbounds double, double* %7, i64 %13
  %27 = load double, double* %26, align 8, !tbaa !10
  %28 = fmul double %27, %0
  %29 = getelementptr inbounds double, double* %8, i64 %13
  %30 = load double, double* %29, align 8, !tbaa !10
  %31 = fadd double %28, %30
  store double %31, double* %29, align 8, !tbaa !10
  %32 = add nuw nsw i64 %13, 1
  %33 = icmp eq i64 %32, %11
  br i1 %33, label %.loopexit, label %12, !llvm.loop !41
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
  %26 = insertelement <2 x double> poison, double %15, i32 0
  %27 = insertelement <2 x double> %26, double %23, i32 1
  %28 = insertelement <2 x double> poison, double %8, i32 0
  %29 = insertelement <2 x double> %28, double %16, i32 1
  %30 = fsub <2 x double> %27, %29
  %31 = insertelement <2 x double> poison, double %6, i32 0
  %32 = shufflevector <2 x double> %31, <2 x double> poison, <2 x i32> zeroinitializer
  %33 = insertelement <2 x double> poison, double %1, i32 0
  %34 = insertelement <2 x double> %33, double %3, i32 1
  %35 = fsub <2 x double> %32, %34
  %36 = insertelement <2 x double> poison, double %14, i32 0
  %37 = shufflevector <2 x double> %36, <2 x double> poison, <2 x i32> zeroinitializer
  %38 = insertelement <2 x double> poison, double %9, i32 0
  %39 = insertelement <2 x double> %38, double %11, i32 1
  %40 = fsub <2 x double> %37, %39
  %41 = insertelement <2 x double> poison, double %22, i32 0
  %42 = shufflevector <2 x double> %41, <2 x double> poison, <2 x i32> zeroinitializer
  %43 = insertelement <2 x double> poison, double %17, i32 0
  %44 = insertelement <2 x double> %43, double %19, i32 1
  %45 = fsub <2 x double> %42, %44
  %46 = insertelement <2 x double> poison, double %5, i32 0
  %47 = insertelement <2 x double> %46, double %2, i32 1
  %48 = insertelement <2 x double> poison, double %0, i32 0
  %49 = shufflevector <2 x double> %48, <2 x double> poison, <2 x i32> zeroinitializer
  %50 = fsub <2 x double> %47, %49
  %51 = insertelement <2 x double> poison, double %13, i32 0
  %52 = insertelement <2 x double> %51, double %10, i32 1
  %53 = shufflevector <2 x double> %28, <2 x double> poison, <2 x i32> zeroinitializer
  %54 = fsub <2 x double> %52, %53
  %55 = insertelement <2 x double> poison, double %21, i32 0
  %56 = insertelement <2 x double> %55, double %18, i32 1
  %57 = insertelement <2 x double> poison, double %16, i32 0
  %58 = shufflevector <2 x double> %57, <2 x double> poison, <2 x i32> zeroinitializer
  %59 = fsub <2 x double> %56, %58
  %60 = insertelement <2 x double> %31, double %14, i32 1
  %61 = insertelement <2 x double> poison, double %4, i32 0
  %62 = insertelement <2 x double> %61, double %12, i32 1
  %63 = fsub <2 x double> %60, %62
  %64 = fsub double %22, %20
  %65 = fsub double %12, %11
  %66 = insertelement <2 x double> poison, double %20, i32 0
  %67 = insertelement <2 x double> %66, double %4, i32 1
  %68 = insertelement <2 x double> poison, double %19, i32 0
  %69 = insertelement <2 x double> %68, double %3, i32 1
  %70 = fsub <2 x double> %67, %69
  %71 = fsub double %13, %15
  %72 = insertelement <2 x double> %55, double %5, i32 1
  %73 = insertelement <2 x double> poison, double %23, i32 0
  %74 = insertelement <2 x double> %73, double %7, i32 1
  %75 = fsub <2 x double> %72, %74
  %76 = insertelement <2 x double> %61, double %1, i32 1
  %77 = fsub <2 x double> %34, %76
  %78 = insertelement <2 x double> poison, double %12, i32 0
  %79 = insertelement <2 x double> %78, double %9, i32 1
  %80 = fsub <2 x double> %39, %79
  %81 = insertelement <2 x double> %66, double %17, i32 1
  %82 = fsub <2 x double> %44, %81
  %83 = insertelement <2 x double> poison, double %2, i32 0
  %84 = insertelement <2 x double> %83, double %7, i32 1
  %85 = fsub <2 x double> %84, %47
  %86 = insertelement <2 x double> poison, double %10, i32 0
  %87 = insertelement <2 x double> %86, double %15, i32 1
  %88 = fsub <2 x double> %87, %52
  %89 = insertelement <2 x double> poison, double %18, i32 0
  %90 = insertelement <2 x double> %89, double %23, i32 1
  %91 = fsub <2 x double> %90, %56
  %92 = fadd double %65, %71
  %93 = fmul double %25, %64
  %shift = shufflevector <2 x double> %30, <2 x double> poison, <2 x i32> <i32 1, i32 undef>
  %94 = fmul <2 x double> %63, %shift
  %95 = extractelement <2 x double> %94, i32 0
  %96 = fsub double %93, %95
  %97 = fmul double %92, %96
  %98 = fadd <2 x double> %70, %75
  %99 = fmul <2 x double> %63, %30
  %100 = insertelement <2 x double> poison, double %25, i32 0
  %101 = shufflevector <2 x double> %100, <2 x double> %30, <2 x i32> <i32 0, i32 2>
  %102 = extractelement <2 x double> %63, i32 1
  %103 = insertelement <2 x double> poison, double %102, i32 0
  %104 = insertelement <2 x double> %103, double %64, i32 1
  %105 = fmul <2 x double> %101, %104
  %106 = fsub <2 x double> %99, %105
  %107 = fmul <2 x double> %106, %98
  %108 = extractelement <2 x double> %107, i32 1
  %109 = fadd double %108, %97
  %110 = extractelement <2 x double> %107, i32 0
  %111 = fadd double %110, %109
  %112 = fadd <2 x double> %77, %85
  %113 = fmul <2 x double> %40, %59
  %114 = fmul <2 x double> %54, %45
  %115 = fsub <2 x double> %113, %114
  %116 = fmul <2 x double> %112, %115
  %117 = fadd <2 x double> %80, %88
  %118 = fmul <2 x double> %50, %45
  %119 = fmul <2 x double> %35, %59
  %120 = fsub <2 x double> %118, %119
  %121 = fmul <2 x double> %117, %120
  %122 = fadd <2 x double> %116, %121
  %123 = fadd <2 x double> %82, %91
  %124 = fmul <2 x double> %35, %54
  %125 = fmul <2 x double> %50, %40
  %126 = fsub <2 x double> %124, %125
  %127 = fmul <2 x double> %126, %123
  %128 = fadd <2 x double> %127, %122
  %129 = extractelement <2 x double> %128, i32 1
  %130 = fadd double %111, %129
  %131 = extractelement <2 x double> %128, i32 0
  %132 = fadd double %131, %130
  %133 = fmul double %132, 0x3FB5555555555555
  ret double %133
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
  %169 = fmul double %168, %167
  %170 = load double, double* %51, align 8, !tbaa !10
  %171 = extractelement <2 x double> %124, i32 1
  %172 = fmul double %171, %170
  %173 = fadd double %169, %172
  %174 = load double, double* %60, align 8, !tbaa !10
  %175 = extractelement <2 x double> %149, i32 1
  %176 = fmul double %175, %174
  %177 = fadd double %173, %176
  %178 = load double, double* %69, align 8, !tbaa !10
  %179 = extractelement <2 x double> %162, i32 1
  %180 = fmul double %179, %178
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
  %24 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %3, i64 0, i64 0
  %25 = getelementptr inbounds [8 x double], [8 x double]* %8, i64 0, i64 0
  %26 = getelementptr inbounds [8 x double], [8 x double]* %9, i64 0, i64 0
  %27 = getelementptr inbounds [8 x double], [8 x double]* %10, i64 0, i64 0
  %28 = getelementptr inbounds [6 x double], [6 x double]* %4, i64 0, i64 0
  %29 = getelementptr inbounds [6 x double], [6 x double]* %4, i64 0, i64 1
  %30 = getelementptr inbounds [6 x double], [6 x double]* %4, i64 0, i64 2
  %31 = icmp sgt i32 %0, 0
  br i1 %31, label %32, label %.loopexit

32:                                               ; preds = %2
  %33 = fmul double %1, 5.000000e-01
  %34 = zext i32 %0 to i64
  %35 = insertelement <2 x double> poison, double %33, i32 0
  %36 = shufflevector <2 x double> %35, <2 x double> poison, <2 x i32> zeroinitializer
  br label %37

.loopexit:                                        ; preds = %124, %2
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

37:                                               ; preds = %124, %32
  %38 = phi i64 [ 0, %32 ], [ %135, %124 ]
  %39 = shl nsw i64 %38, 3
  %40 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 17, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !8
  %41 = getelementptr inbounds i32, i32* %40, i64 %39
  %42 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %43 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %44 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  br label %65

45:                                               ; preds = %65
  %46 = call double @_Z14CalcElemVolumePKdS0_S0_(double* nonnull %21, double* nonnull %22, double* nonnull %23)
  %47 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 40, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %48 = getelementptr inbounds double, double* %47, i64 %38
  %49 = load double, double* %48, align 8, !tbaa !10
  %50 = fdiv double %46, %49
  %51 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 41, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %52 = getelementptr inbounds double, double* %51, i64 %38
  store double %50, double* %52, align 8, !tbaa !10
  %53 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 39, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %54 = getelementptr inbounds double, double* %53, i64 %38
  %55 = load double, double* %54, align 8, !tbaa !10
  %56 = fsub double %50, %55
  %57 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 42, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %58 = getelementptr inbounds double, double* %57, i64 %38
  store double %56, double* %58, align 8, !tbaa !10
  %59 = call double @_Z28CalcElemCharacteristicLengthPKdS0_S0_d(double* nonnull %21, double* nonnull %22, double* nonnull %23, double %46)
  %60 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 44, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %61 = getelementptr inbounds double, double* %60, i64 %38
  store double %59, double* %61, align 8, !tbaa !10
  %62 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %63 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 4, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %64 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 5, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  br label %81

65:                                               ; preds = %65, %37
  %66 = phi i64 [ 0, %37 ], [ %79, %65 ]
  %67 = getelementptr inbounds i32, i32* %41, i64 %66
  %68 = load i32, i32* %67, align 4, !tbaa !12
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds double, double* %42, i64 %69
  %71 = load double, double* %70, align 8, !tbaa !10
  %72 = getelementptr inbounds [8 x double], [8 x double]* %5, i64 0, i64 %66
  store double %71, double* %72, align 8, !tbaa !10
  %73 = getelementptr inbounds double, double* %43, i64 %69
  %74 = load double, double* %73, align 8, !tbaa !10
  %75 = getelementptr inbounds [8 x double], [8 x double]* %6, i64 0, i64 %66
  store double %74, double* %75, align 8, !tbaa !10
  %76 = getelementptr inbounds double, double* %44, i64 %69
  %77 = load double, double* %76, align 8, !tbaa !10
  %78 = getelementptr inbounds [8 x double], [8 x double]* %7, i64 0, i64 %66
  store double %77, double* %78, align 8, !tbaa !10
  %79 = add nuw nsw i64 %66, 1
  %80 = icmp eq i64 %79, 8
  br i1 %80, label %45, label %65, !llvm.loop !42

81:                                               ; preds = %81, %45
  %82 = phi i64 [ 0, %45 ], [ %95, %81 ]
  %83 = getelementptr inbounds i32, i32* %41, i64 %82
  %84 = load i32, i32* %83, align 4, !tbaa !12
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds double, double* %62, i64 %85
  %87 = load double, double* %86, align 8, !tbaa !10
  %88 = getelementptr inbounds [8 x double], [8 x double]* %8, i64 0, i64 %82
  store double %87, double* %88, align 8, !tbaa !10
  %89 = getelementptr inbounds double, double* %63, i64 %85
  %90 = load double, double* %89, align 8, !tbaa !10
  %91 = getelementptr inbounds [8 x double], [8 x double]* %9, i64 0, i64 %82
  store double %90, double* %91, align 8, !tbaa !10
  %92 = getelementptr inbounds double, double* %64, i64 %85
  %93 = load double, double* %92, align 8, !tbaa !10
  %94 = getelementptr inbounds [8 x double], [8 x double]* %10, i64 0, i64 %82
  store double %93, double* %94, align 8, !tbaa !10
  %95 = add nuw nsw i64 %82, 1
  %96 = icmp eq i64 %95, 8
  br i1 %96, label %.preheader, label %81, !llvm.loop !43

.preheader:                                       ; preds = %81, %.preheader
  %97 = phi i64 [ %122, %.preheader ], [ 0, %81 ]
  %98 = getelementptr inbounds [8 x double], [8 x double]* %8, i64 0, i64 %97
  %99 = bitcast double* %98 to <2 x double>*
  %100 = load <2 x double>, <2 x double>* %99, align 16, !tbaa !10
  %101 = fmul <2 x double> %36, %100
  %102 = getelementptr inbounds [8 x double], [8 x double]* %5, i64 0, i64 %97
  %103 = bitcast double* %102 to <2 x double>*
  %104 = load <2 x double>, <2 x double>* %103, align 16, !tbaa !10
  %105 = fsub <2 x double> %104, %101
  store <2 x double> %105, <2 x double>* %103, align 16, !tbaa !10
  %106 = getelementptr inbounds [8 x double], [8 x double]* %9, i64 0, i64 %97
  %107 = bitcast double* %106 to <2 x double>*
  %108 = load <2 x double>, <2 x double>* %107, align 16, !tbaa !10
  %109 = fmul <2 x double> %36, %108
  %110 = getelementptr inbounds [8 x double], [8 x double]* %6, i64 0, i64 %97
  %111 = bitcast double* %110 to <2 x double>*
  %112 = load <2 x double>, <2 x double>* %111, align 16, !tbaa !10
  %113 = fsub <2 x double> %112, %109
  store <2 x double> %113, <2 x double>* %111, align 16, !tbaa !10
  %114 = getelementptr inbounds [8 x double], [8 x double]* %10, i64 0, i64 %97
  %115 = bitcast double* %114 to <2 x double>*
  %116 = load <2 x double>, <2 x double>* %115, align 16, !tbaa !10
  %117 = fmul <2 x double> %36, %116
  %118 = getelementptr inbounds [8 x double], [8 x double]* %7, i64 0, i64 %97
  %119 = bitcast double* %118 to <2 x double>*
  %120 = load <2 x double>, <2 x double>* %119, align 16, !tbaa !10
  %121 = fsub <2 x double> %120, %117
  store <2 x double> %121, <2 x double>* %119, align 16, !tbaa !10
  %122 = add nuw nsw i64 %97, 2
  %123 = icmp eq i64 %122, 8
  br i1 %123, label %124, label %.preheader, !llvm.loop !44

124:                                              ; preds = %.preheader
  call void @_Z32CalcElemShapeFunctionDerivativesPKdS0_S0_PA8_dPd(double* nonnull %21, double* nonnull %22, double* nonnull %23, [8 x double]* nonnull %24, double* nonnull %11)
  %125 = load double, double* %11, align 8, !tbaa !10
  call void @_Z25CalcElemVelocityGrandientPKdS0_S0_PA8_S_dPd(double* nonnull %25, double* nonnull %26, double* nonnull %27, [8 x double]* nonnull %24, double %125, double* nonnull %28)
  %126 = load double, double* %28, align 16, !tbaa !10
  %127 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 25, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %128 = getelementptr inbounds double, double* %127, i64 %38
  store double %126, double* %128, align 8, !tbaa !10
  %129 = load double, double* %29, align 8, !tbaa !10
  %130 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 26, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %131 = getelementptr inbounds double, double* %130, i64 %38
  store double %129, double* %131, align 8, !tbaa !10
  %132 = load double, double* %30, align 16, !tbaa !10
  %133 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 27, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %134 = getelementptr inbounds double, double* %133, i64 %38
  store double %132, double* %134, align 8, !tbaa !10
  %135 = add nuw nsw i64 %38, 1
  %136 = icmp eq i64 %135, %34
  br i1 %136, label %.loopexit, label %37, !llvm.loop !45
}

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local void @_Z20CalcLagrangeElementsd(double %0) local_unnamed_addr #10 {
  %2 = load i32, i32* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 79), align 8, !tbaa !12
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %.loopexit

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
  br i1 %12, label %.loopexit, label %13, !llvm.loop !46

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

.loopexit:                                        ; preds = %11, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind uwtable
define dso_local void @_Z31CalcMonotonicQGradientsForElemsv() local_unnamed_addr #20 {
  %1 = load i32, i32* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 79), align 8, !tbaa !12
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %.loopexit

3:                                                ; preds = %0
  %4 = zext i32 %1 to i64
  br label %5

.loopexit:                                        ; preds = %5, %0
  ret void

5:                                                ; preds = %5, %3
  %6 = phi i64 [ 0, %3 ], [ %369, %5 ]
  %7 = shl nsw i64 %6, 3
  %8 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 17, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !8
  %9 = getelementptr inbounds i32, i32* %8, i64 %7
  %10 = load i32, i32* %9, align 4, !tbaa !12
  %11 = getelementptr inbounds i32, i32* %9, i64 1
  %12 = load i32, i32* %11, align 4, !tbaa !12
  %13 = getelementptr inbounds i32, i32* %9, i64 2
  %14 = load i32, i32* %13, align 4, !tbaa !12
  %15 = getelementptr inbounds i32, i32* %9, i64 3
  %16 = load i32, i32* %15, align 4, !tbaa !12
  %17 = getelementptr inbounds i32, i32* %9, i64 4
  %18 = load i32, i32* %17, align 4, !tbaa !12
  %19 = getelementptr inbounds i32, i32* %9, i64 5
  %20 = load i32, i32* %19, align 4, !tbaa !12
  %21 = getelementptr inbounds i32, i32* %9, i64 6
  %22 = load i32, i32* %21, align 4, !tbaa !12
  %23 = getelementptr inbounds i32, i32* %9, i64 7
  %24 = load i32, i32* %23, align 4, !tbaa !12
  %25 = sext i32 %10 to i64
  %26 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %27 = getelementptr inbounds double, double* %26, i64 %25
  %28 = load double, double* %27, align 8, !tbaa !10
  %29 = sext i32 %12 to i64
  %30 = getelementptr inbounds double, double* %26, i64 %29
  %31 = load double, double* %30, align 8, !tbaa !10
  %32 = sext i32 %14 to i64
  %33 = getelementptr inbounds double, double* %26, i64 %32
  %34 = load double, double* %33, align 8, !tbaa !10
  %35 = sext i32 %16 to i64
  %36 = getelementptr inbounds double, double* %26, i64 %35
  %37 = load double, double* %36, align 8, !tbaa !10
  %38 = sext i32 %18 to i64
  %39 = getelementptr inbounds double, double* %26, i64 %38
  %40 = load double, double* %39, align 8, !tbaa !10
  %41 = sext i32 %20 to i64
  %42 = getelementptr inbounds double, double* %26, i64 %41
  %43 = load double, double* %42, align 8, !tbaa !10
  %44 = sext i32 %22 to i64
  %45 = getelementptr inbounds double, double* %26, i64 %44
  %46 = load double, double* %45, align 8, !tbaa !10
  %47 = sext i32 %24 to i64
  %48 = getelementptr inbounds double, double* %26, i64 %47
  %49 = load double, double* %48, align 8, !tbaa !10
  %50 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %51 = getelementptr inbounds double, double* %50, i64 %25
  %52 = load double, double* %51, align 8, !tbaa !10
  %53 = getelementptr inbounds double, double* %50, i64 %29
  %54 = load double, double* %53, align 8, !tbaa !10
  %55 = getelementptr inbounds double, double* %50, i64 %32
  %56 = load double, double* %55, align 8, !tbaa !10
  %57 = getelementptr inbounds double, double* %50, i64 %35
  %58 = load double, double* %57, align 8, !tbaa !10
  %59 = getelementptr inbounds double, double* %50, i64 %38
  %60 = load double, double* %59, align 8, !tbaa !10
  %61 = getelementptr inbounds double, double* %50, i64 %41
  %62 = load double, double* %61, align 8, !tbaa !10
  %63 = getelementptr inbounds double, double* %50, i64 %44
  %64 = load double, double* %63, align 8, !tbaa !10
  %65 = getelementptr inbounds double, double* %50, i64 %47
  %66 = load double, double* %65, align 8, !tbaa !10
  %67 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %68 = getelementptr inbounds double, double* %67, i64 %25
  %69 = load double, double* %68, align 8, !tbaa !10
  %70 = getelementptr inbounds double, double* %67, i64 %29
  %71 = load double, double* %70, align 8, !tbaa !10
  %72 = getelementptr inbounds double, double* %67, i64 %32
  %73 = load double, double* %72, align 8, !tbaa !10
  %74 = getelementptr inbounds double, double* %67, i64 %35
  %75 = load double, double* %74, align 8, !tbaa !10
  %76 = getelementptr inbounds double, double* %67, i64 %38
  %77 = load double, double* %76, align 8, !tbaa !10
  %78 = getelementptr inbounds double, double* %67, i64 %41
  %79 = load double, double* %78, align 8, !tbaa !10
  %80 = getelementptr inbounds double, double* %67, i64 %44
  %81 = load double, double* %80, align 8, !tbaa !10
  %82 = getelementptr inbounds double, double* %67, i64 %47
  %83 = load double, double* %82, align 8, !tbaa !10
  %84 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %85 = getelementptr inbounds double, double* %84, i64 %25
  %86 = load double, double* %85, align 8, !tbaa !10
  %87 = getelementptr inbounds double, double* %84, i64 %29
  %88 = load double, double* %87, align 8, !tbaa !10
  %89 = getelementptr inbounds double, double* %84, i64 %32
  %90 = load double, double* %89, align 8, !tbaa !10
  %91 = getelementptr inbounds double, double* %84, i64 %35
  %92 = load double, double* %91, align 8, !tbaa !10
  %93 = getelementptr inbounds double, double* %84, i64 %38
  %94 = load double, double* %93, align 8, !tbaa !10
  %95 = getelementptr inbounds double, double* %84, i64 %41
  %96 = load double, double* %95, align 8, !tbaa !10
  %97 = getelementptr inbounds double, double* %84, i64 %44
  %98 = load double, double* %97, align 8, !tbaa !10
  %99 = getelementptr inbounds double, double* %84, i64 %47
  %100 = load double, double* %99, align 8, !tbaa !10
  %101 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 4, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %102 = getelementptr inbounds double, double* %101, i64 %25
  %103 = load double, double* %102, align 8, !tbaa !10
  %104 = getelementptr inbounds double, double* %101, i64 %29
  %105 = load double, double* %104, align 8, !tbaa !10
  %106 = getelementptr inbounds double, double* %101, i64 %32
  %107 = load double, double* %106, align 8, !tbaa !10
  %108 = getelementptr inbounds double, double* %101, i64 %35
  %109 = load double, double* %108, align 8, !tbaa !10
  %110 = getelementptr inbounds double, double* %101, i64 %38
  %111 = load double, double* %110, align 8, !tbaa !10
  %112 = getelementptr inbounds double, double* %101, i64 %41
  %113 = load double, double* %112, align 8, !tbaa !10
  %114 = getelementptr inbounds double, double* %101, i64 %44
  %115 = load double, double* %114, align 8, !tbaa !10
  %116 = getelementptr inbounds double, double* %101, i64 %47
  %117 = load double, double* %116, align 8, !tbaa !10
  %118 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 5, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %119 = getelementptr inbounds double, double* %118, i64 %25
  %120 = load double, double* %119, align 8, !tbaa !10
  %121 = getelementptr inbounds double, double* %118, i64 %29
  %122 = load double, double* %121, align 8, !tbaa !10
  %123 = getelementptr inbounds double, double* %118, i64 %32
  %124 = load double, double* %123, align 8, !tbaa !10
  %125 = getelementptr inbounds double, double* %118, i64 %35
  %126 = load double, double* %125, align 8, !tbaa !10
  %127 = getelementptr inbounds double, double* %118, i64 %38
  %128 = load double, double* %127, align 8, !tbaa !10
  %129 = getelementptr inbounds double, double* %118, i64 %41
  %130 = load double, double* %129, align 8, !tbaa !10
  %131 = getelementptr inbounds double, double* %118, i64 %44
  %132 = load double, double* %131, align 8, !tbaa !10
  %133 = getelementptr inbounds double, double* %118, i64 %47
  %134 = load double, double* %133, align 8, !tbaa !10
  %135 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 40, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %136 = getelementptr inbounds double, double* %135, i64 %6
  %137 = load double, double* %136, align 8, !tbaa !10
  %138 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 41, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %139 = getelementptr inbounds double, double* %138, i64 %6
  %140 = load double, double* %139, align 8, !tbaa !10
  %141 = fmul double %137, %140
  %142 = fadd double %141, 0x38754484932D2E72
  %143 = fdiv double 1.000000e+00, %142
  %144 = fadd double %28, %31
  %145 = fadd double %144, %43
  %146 = fadd double %40, %145
  %147 = fadd double %34, %37
  %148 = fadd double %147, %46
  %149 = fadd double %148, %49
  %150 = fsub double %146, %149
  %151 = fmul double %150, -2.500000e-01
  %152 = fadd double %52, %54
  %153 = fadd double %152, %62
  %154 = fadd double %60, %153
  %155 = fadd double %56, %58
  %156 = fadd double %155, %64
  %157 = fadd double %156, %66
  %158 = fsub double %154, %157
  %159 = fmul double %158, -2.500000e-01
  %160 = fadd double %69, %71
  %161 = fadd double %160, %79
  %162 = fadd double %77, %161
  %163 = fadd double %73, %75
  %164 = fadd double %163, %81
  %165 = fadd double %164, %83
  %166 = fsub double %162, %165
  %167 = fmul double %166, -2.500000e-01
  %168 = fadd double %31, %34
  %169 = fadd double %168, %46
  %170 = fadd double %43, %169
  %171 = fadd double %28, %37
  %172 = fadd double %171, %49
  %173 = fadd double %40, %172
  %174 = fsub double %170, %173
  %175 = fmul double %174, 2.500000e-01
  %176 = fadd double %54, %56
  %177 = fadd double %176, %64
  %178 = fadd double %62, %177
  %179 = fadd double %52, %58
  %180 = fadd double %179, %66
  %181 = fadd double %60, %180
  %182 = fsub double %178, %181
  %183 = fmul double %182, 2.500000e-01
  %184 = fadd double %71, %73
  %185 = fadd double %184, %81
  %186 = fadd double %79, %185
  %187 = fadd double %69, %75
  %188 = fadd double %187, %83
  %189 = fadd double %77, %188
  %190 = fsub double %186, %189
  %191 = fmul double %190, 2.500000e-01
  %192 = fadd double %40, %43
  %193 = fadd double %192, %46
  %194 = fadd double %193, %49
  %195 = fadd double %144, %34
  %196 = fadd double %195, %37
  %197 = fsub double %194, %196
  %198 = fmul double %197, 2.500000e-01
  %199 = fadd double %60, %62
  %200 = fadd double %199, %64
  %201 = fadd double %200, %66
  %202 = fadd double %152, %56
  %203 = fadd double %202, %58
  %204 = fsub double %201, %203
  %205 = fmul double %204, 2.500000e-01
  %206 = fadd double %77, %79
  %207 = fadd double %206, %81
  %208 = fadd double %207, %83
  %209 = fadd double %160, %73
  %210 = fadd double %209, %75
  %211 = fsub double %208, %210
  %212 = fmul double %211, 2.500000e-01
  %213 = fmul double %183, %167
  %214 = fmul double %159, %191
  %215 = fsub double %213, %214
  %216 = fmul double %151, %191
  %217 = fmul double %175, %167
  %218 = fsub double %216, %217
  %219 = fmul double %175, %159
  %220 = fmul double %151, %183
  %221 = fsub double %219, %220
  %222 = fmul double %215, %215
  %223 = fmul double %218, %218
  %224 = fadd double %222, %223
  %225 = fmul double %221, %221
  %226 = fadd double %225, %224
  %227 = fadd double %226, 0x38754484932D2E72
  %228 = tail call double @sqrt(double %227) #2
  %229 = fdiv double %141, %228
  %230 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 33, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %231 = getelementptr inbounds double, double* %230, i64 %6
  store double %229, double* %231, align 8, !tbaa !10
  %232 = fmul double %215, %143
  %233 = fmul double %218, %143
  %234 = fmul double %221, %143
  %235 = fadd double %94, %96
  %236 = fadd double %235, %98
  %237 = fadd double %236, %100
  %238 = fadd double %86, %88
  %239 = fadd double %238, %90
  %240 = fadd double %239, %92
  %241 = fsub double %237, %240
  %242 = fmul double %241, 2.500000e-01
  %243 = fadd double %111, %113
  %244 = fadd double %243, %115
  %245 = fadd double %244, %117
  %246 = fadd double %103, %105
  %247 = fadd double %246, %107
  %248 = fadd double %247, %109
  %249 = fsub double %245, %248
  %250 = fmul double %249, 2.500000e-01
  %251 = fadd double %128, %130
  %252 = fadd double %251, %132
  %253 = fadd double %252, %134
  %254 = fadd double %120, %122
  %255 = fadd double %254, %124
  %256 = fadd double %255, %126
  %257 = fsub double %253, %256
  %258 = fmul double %257, 2.500000e-01
  %259 = fmul double %242, %232
  %260 = fmul double %250, %233
  %261 = fadd double %259, %260
  %262 = fmul double %258, %234
  %263 = fadd double %262, %261
  %264 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 30, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %265 = getelementptr inbounds double, double* %264, i64 %6
  store double %263, double* %265, align 8, !tbaa !10
  %266 = fmul double %159, %212
  %267 = fmul double %205, %167
  %268 = fsub double %266, %267
  %269 = fmul double %198, %167
  %270 = fmul double %151, %212
  %271 = fsub double %269, %270
  %272 = fmul double %151, %205
  %273 = fmul double %198, %159
  %274 = fsub double %272, %273
  %275 = fmul double %268, %268
  %276 = fmul double %271, %271
  %277 = fadd double %275, %276
  %278 = fmul double %274, %274
  %279 = fadd double %278, %277
  %280 = fadd double %279, 0x38754484932D2E72
  %281 = tail call double @sqrt(double %280) #2
  %282 = fdiv double %141, %281
  %283 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 31, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %284 = getelementptr inbounds double, double* %283, i64 %6
  store double %282, double* %284, align 8, !tbaa !10
  %285 = fmul double %268, %143
  %286 = fmul double %271, %143
  %287 = fmul double %274, %143
  %288 = fadd double %88, %90
  %289 = fadd double %288, %98
  %290 = fadd double %96, %289
  %291 = fadd double %86, %92
  %292 = fadd double %291, %100
  %293 = fadd double %94, %292
  %294 = fsub double %290, %293
  %295 = fmul double %294, 2.500000e-01
  %296 = fadd double %105, %107
  %297 = fadd double %296, %115
  %298 = fadd double %113, %297
  %299 = fadd double %103, %109
  %300 = fadd double %299, %117
  %301 = fadd double %111, %300
  %302 = fsub double %298, %301
  %303 = fmul double %302, 2.500000e-01
  %304 = fadd double %122, %124
  %305 = fadd double %304, %132
  %306 = fadd double %130, %305
  %307 = fadd double %120, %126
  %308 = fadd double %307, %134
  %309 = fadd double %128, %308
  %310 = fsub double %306, %309
  %311 = fmul double %310, 2.500000e-01
  %312 = fmul double %295, %285
  %313 = fmul double %303, %286
  %314 = fadd double %312, %313
  %315 = fmul double %311, %287
  %316 = fadd double %315, %314
  %317 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 28, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %318 = getelementptr inbounds double, double* %317, i64 %6
  store double %316, double* %318, align 8, !tbaa !10
  %319 = fmul double %205, %191
  %320 = fmul double %183, %212
  %321 = fsub double %319, %320
  %322 = fmul double %175, %212
  %323 = fmul double %198, %191
  %324 = fsub double %322, %323
  %325 = fmul double %198, %183
  %326 = fmul double %175, %205
  %327 = fsub double %325, %326
  %328 = fmul double %321, %321
  %329 = fmul double %324, %324
  %330 = fadd double %328, %329
  %331 = fmul double %327, %327
  %332 = fadd double %331, %330
  %333 = fadd double %332, 0x38754484932D2E72
  %334 = tail call double @sqrt(double %333) #2
  %335 = fdiv double %141, %334
  %336 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 32, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %337 = getelementptr inbounds double, double* %336, i64 %6
  store double %335, double* %337, align 8, !tbaa !10
  %338 = fmul double %321, %143
  %339 = fmul double %324, %143
  %340 = fmul double %327, %143
  %341 = fadd double %238, %96
  %342 = fadd double %94, %341
  %343 = fadd double %90, %92
  %344 = fadd double %343, %98
  %345 = fadd double %344, %100
  %346 = fsub double %342, %345
  %347 = fmul double %346, -2.500000e-01
  %348 = fadd double %246, %113
  %349 = fadd double %111, %348
  %350 = fadd double %107, %109
  %351 = fadd double %350, %115
  %352 = fadd double %351, %117
  %353 = fsub double %349, %352
  %354 = fmul double %353, 2.500000e-01
  %355 = fadd double %254, %130
  %356 = fadd double %128, %355
  %357 = fadd double %124, %126
  %358 = fadd double %357, %132
  %359 = fadd double %358, %134
  %360 = fsub double %356, %359
  %361 = fmul double %360, 2.500000e-01
  %362 = fmul double %347, %338
  %363 = fmul double %354, %339
  %364 = fsub double %362, %363
  %365 = fmul double %361, %340
  %366 = fsub double %364, %365
  %367 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 29, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %368 = getelementptr inbounds double, double* %367, i64 %6
  store double %366, double* %368, align 8, !tbaa !10
  %369 = add nuw nsw i64 %6, 1
  %370 = icmp eq i64 %369, %4
  br i1 %370, label %.loopexit, label %5, !llvm.loop !47
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
  br i1 %27, label %28, label %.loopexit

28:                                               ; preds = %6
  %29 = fneg double %0
  %30 = zext i32 %5 to i64
  %31 = insertelement <2 x double> poison, double %1, i32 0
  %32 = insertelement <2 x double> %31, double %29, i32 1
  br label %33

.loopexit:                                        ; preds = %220, %6
  ret void

33:                                               ; preds = %220, %28
  %34 = phi i64 [ 0, %28 ], [ %226, %220 ]
  %35 = phi double [ undef, %28 ], [ %154, %220 ]
  %36 = phi double [ undef, %28 ], [ %153, %220 ]
  %37 = getelementptr inbounds i32, i32* %7, i64 %34
  %38 = load i32, i32* %37, align 4, !tbaa !12
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %8, i64 %39
  %41 = load i32, i32* %40, align 4, !tbaa !12
  %42 = getelementptr inbounds double, double* %9, i64 %39
  %43 = load double, double* %42, align 8, !tbaa !10
  %44 = fadd double %43, %4
  %45 = fdiv double 1.000000e+00, %44
  %46 = and i32 %41, 3
  switch i32 %46, label %55 [
    i32 0, label %47
    i32 1, label %53
    i32 2, label %54
  ]

47:                                               ; preds = %33
  %48 = getelementptr inbounds i32, i32* %10, i64 %39
  %49 = load i32, i32* %48, align 4, !tbaa !12
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds double, double* %9, i64 %50
  %52 = load double, double* %51, align 8, !tbaa !10
  br label %55

53:                                               ; preds = %33
  br label %55

54:                                               ; preds = %33
  br label %55

55:                                               ; preds = %54, %53, %47, %33
  %56 = phi double [ %36, %33 ], [ 0.000000e+00, %54 ], [ %43, %53 ], [ %52, %47 ]
  %57 = and i32 %41, 12
  switch i32 %57, label %66 [
    i32 0, label %58
    i32 4, label %64
    i32 8, label %65
  ]

58:                                               ; preds = %55
  %59 = getelementptr inbounds i32, i32* %11, i64 %39
  %60 = load i32, i32* %59, align 4, !tbaa !12
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds double, double* %9, i64 %61
  %63 = load double, double* %62, align 8, !tbaa !10
  br label %66

64:                                               ; preds = %55
  br label %66

65:                                               ; preds = %55
  br label %66

66:                                               ; preds = %65, %64, %58, %55
  %67 = phi double [ %35, %55 ], [ 0.000000e+00, %65 ], [ %43, %64 ], [ %63, %58 ]
  %68 = fmul double %45, %56
  %69 = fmul double %45, %67
  %70 = fadd double %68, %69
  %71 = fmul double %70, 5.000000e-01
  %72 = fmul double %68, %2
  %73 = fmul double %69, %2
  %74 = fcmp olt double %72, %71
  %75 = select i1 %74, double %72, double %71
  %76 = fcmp olt double %73, %75
  %77 = select i1 %76, double %73, double %75
  %78 = fcmp olt double %77, 0.000000e+00
  %79 = select i1 %78, double 0.000000e+00, double %77
  %80 = fcmp ogt double %79, %3
  %81 = select i1 %80, double %3, double %79
  %82 = getelementptr inbounds double, double* %12, i64 %39
  %83 = load double, double* %82, align 8, !tbaa !10
  %84 = fadd double %83, %4
  %85 = fdiv double 1.000000e+00, %84
  %86 = and i32 %41, 48
  switch i32 %86, label %95 [
    i32 0, label %87
    i32 16, label %93
    i32 32, label %94
  ]

87:                                               ; preds = %66
  %88 = getelementptr inbounds i32, i32* %13, i64 %39
  %89 = load i32, i32* %88, align 4, !tbaa !12
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds double, double* %12, i64 %90
  %92 = load double, double* %91, align 8, !tbaa !10
  br label %95

93:                                               ; preds = %66
  br label %95

94:                                               ; preds = %66
  br label %95

95:                                               ; preds = %94, %93, %87, %66
  %96 = phi double [ %72, %66 ], [ 0.000000e+00, %94 ], [ %83, %93 ], [ %92, %87 ]
  %97 = trunc i32 %41 to i8
  %98 = and i8 %97, -64
  switch i8 %98, label %107 [
    i8 0, label %99
    i8 64, label %105
    i8 -128, label %106
  ]

99:                                               ; preds = %95
  %100 = getelementptr inbounds i32, i32* %14, i64 %39
  %101 = load i32, i32* %100, align 4, !tbaa !12
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds double, double* %12, i64 %102
  %104 = load double, double* %103, align 8, !tbaa !10
  br label %107

105:                                              ; preds = %95
  br label %107

106:                                              ; preds = %95
  br label %107

107:                                              ; preds = %106, %105, %99, %95
  %108 = phi double [ %73, %95 ], [ 0.000000e+00, %106 ], [ %83, %105 ], [ %104, %99 ]
  %109 = fmul double %85, %96
  %110 = fmul double %85, %108
  %111 = fadd double %109, %110
  %112 = fmul double %111, 5.000000e-01
  %113 = fmul double %109, %2
  %114 = fmul double %110, %2
  %115 = fcmp olt double %113, %112
  %116 = select i1 %115, double %113, double %112
  %117 = fcmp olt double %114, %116
  %118 = select i1 %117, double %114, double %116
  %119 = fcmp olt double %118, 0.000000e+00
  %120 = select i1 %119, double 0.000000e+00, double %118
  %121 = fcmp ogt double %120, %3
  %122 = select i1 %121, double %3, double %120
  %123 = getelementptr inbounds double, double* %15, i64 %39
  %124 = load double, double* %123, align 8, !tbaa !10
  %125 = fadd double %124, %4
  %126 = fdiv double 1.000000e+00, %125
  %127 = and i32 %41, 768
  switch i32 %127, label %136 [
    i32 0, label %128
    i32 256, label %134
    i32 512, label %135
  ]

128:                                              ; preds = %107
  %129 = getelementptr inbounds i32, i32* %16, i64 %39
  %130 = load i32, i32* %129, align 4, !tbaa !12
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds double, double* %15, i64 %131
  %133 = load double, double* %132, align 8, !tbaa !10
  br label %136

134:                                              ; preds = %107
  br label %136

135:                                              ; preds = %107
  br label %136

136:                                              ; preds = %135, %134, %128, %107
  %137 = phi double [ %113, %107 ], [ 0.000000e+00, %135 ], [ %124, %134 ], [ %133, %128 ]
  %138 = and i32 %41, 3072
  switch i32 %138, label %147 [
    i32 0, label %139
    i32 1024, label %145
    i32 2048, label %146
  ]

139:                                              ; preds = %136
  %140 = getelementptr inbounds i32, i32* %17, i64 %39
  %141 = load i32, i32* %140, align 4, !tbaa !12
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds double, double* %15, i64 %142
  %144 = load double, double* %143, align 8, !tbaa !10
  br label %147

145:                                              ; preds = %136
  br label %147

146:                                              ; preds = %136
  br label %147

147:                                              ; preds = %146, %145, %139, %136
  %148 = phi double [ %114, %136 ], [ 0.000000e+00, %146 ], [ %124, %145 ], [ %144, %139 ]
  %149 = fmul double %126, %137
  %150 = fmul double %126, %148
  %151 = fadd double %149, %150
  %152 = fmul double %151, 5.000000e-01
  %153 = fmul double %149, %2
  %154 = fmul double %150, %2
  %155 = fcmp olt double %153, %152
  %156 = select i1 %155, double %153, double %152
  %157 = fcmp olt double %154, %156
  %158 = select i1 %157, double %154, double %156
  %159 = fcmp olt double %158, 0.000000e+00
  %160 = select i1 %159, double 0.000000e+00, double %158
  %161 = fcmp ogt double %160, %3
  %162 = select i1 %161, double %3, double %160
  %163 = getelementptr inbounds double, double* %18, i64 %39
  %164 = load double, double* %163, align 8, !tbaa !10
  %165 = fcmp ogt double %164, 0.000000e+00
  br i1 %165, label %220, label %166

166:                                              ; preds = %147
  %167 = getelementptr inbounds double, double* %19, i64 %39
  %168 = load double, double* %167, align 8, !tbaa !10
  %169 = fmul double %43, %168
  %170 = getelementptr inbounds double, double* %20, i64 %39
  %171 = load double, double* %170, align 8, !tbaa !10
  %172 = fmul double %83, %171
  %173 = getelementptr inbounds double, double* %21, i64 %39
  %174 = load double, double* %173, align 8, !tbaa !10
  %175 = fmul double %124, %174
  %176 = fcmp ogt double %169, 0.000000e+00
  %177 = select i1 %176, double 0.000000e+00, double %169
  %178 = fcmp ogt double %172, 0.000000e+00
  %179 = select i1 %178, double 0.000000e+00, double %172
  %180 = fcmp ogt double %175, 0.000000e+00
  %181 = select i1 %180, double 0.000000e+00, double %175
  %182 = getelementptr inbounds double, double* %22, i64 %39
  %183 = load double, double* %182, align 8, !tbaa !10
  %184 = getelementptr inbounds double, double* %23, i64 %39
  %185 = load double, double* %184, align 8, !tbaa !10
  %186 = getelementptr inbounds double, double* %24, i64 %39
  %187 = load double, double* %186, align 8, !tbaa !10
  %188 = fmul double %185, %187
  %189 = fdiv double %183, %188
  %190 = insertelement <2 x double> poison, double %189, i32 0
  %191 = shufflevector <2 x double> %190, <2 x double> poison, <2 x i32> zeroinitializer
  %192 = fmul <2 x double> %32, %191
  %193 = fmul double %177, %177
  %194 = fmul double %81, %81
  %195 = insertelement <2 x double> poison, double %194, i32 0
  %196 = insertelement <2 x double> %195, double %81, i32 1
  %197 = fsub <2 x double> <double 1.000000e+00, double 1.000000e+00>, %196
  %198 = insertelement <2 x double> poison, double %193, i32 0
  %199 = insertelement <2 x double> %198, double %177, i32 1
  %200 = fmul <2 x double> %197, %199
  %201 = fmul double %179, %179
  %202 = fmul double %122, %122
  %203 = insertelement <2 x double> poison, double %202, i32 0
  %204 = insertelement <2 x double> %203, double %122, i32 1
  %205 = fsub <2 x double> <double 1.000000e+00, double 1.000000e+00>, %204
  %206 = insertelement <2 x double> poison, double %201, i32 0
  %207 = insertelement <2 x double> %206, double %179, i32 1
  %208 = fmul <2 x double> %205, %207
  %209 = fadd <2 x double> %200, %208
  %210 = fmul double %181, %181
  %211 = fmul double %162, %162
  %212 = insertelement <2 x double> poison, double %211, i32 0
  %213 = insertelement <2 x double> %212, double %162, i32 1
  %214 = fsub <2 x double> <double 1.000000e+00, double 1.000000e+00>, %213
  %215 = insertelement <2 x double> poison, double %210, i32 0
  %216 = insertelement <2 x double> %215, double %181, i32 1
  %217 = fmul <2 x double> %214, %216
  %218 = fadd <2 x double> %209, %217
  %219 = fmul <2 x double> %218, %192
  br label %220

220:                                              ; preds = %166, %147
  %221 = phi <2 x double> [ %219, %166 ], [ zeroinitializer, %147 ]
  %222 = getelementptr inbounds double, double* %25, i64 %39
  %223 = extractelement <2 x double> %221, i32 0
  store double %223, double* %222, align 8, !tbaa !10
  %224 = getelementptr inbounds double, double* %26, i64 %39
  %225 = extractelement <2 x double> %221, i32 1
  store double %225, double* %224, align 8, !tbaa !10
  %226 = add nuw nsw i64 %34, 1
  %227 = icmp eq i64 %226, %30
  br i1 %227, label %.loopexit, label %33, !llvm.loop !48
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
  br i1 %3, label %.loopexit, label %4

4:                                                ; preds = %0
  %5 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 36, i32 0, i32 0, i32 0, i32 0), align 8
  %6 = icmp sgt i32 %2, 0
  br i1 %6, label %7, label %.loopexit

7:                                                ; preds = %4
  %8 = zext i32 %2 to i64
  br label %11

9:                                                ; preds = %11
  %10 = icmp eq i64 %16, %8
  br i1 %10, label %.loopexit, label %11, !llvm.loop !49

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

.loopexit:                                        ; preds = %9, %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable
define dso_local void @_Z20CalcPressureForElemsPdS_S_S_S_S_dddi(double* nocapture %0, double* nocapture %1, double* nocapture %2, double* nocapture readonly %3, double* nocapture readonly %4, double* nocapture readonly %5, double %6, double %7, double %8, i32 %9) local_unnamed_addr #7 {
  %11 = icmp sgt i32 %9, 0
  br i1 %11, label %12, label %.loopexit

12:                                               ; preds = %10
  %13 = zext i32 %9 to i64
  %14 = icmp eq i32 %9, 1
  br i1 %14, label %.preheader6, label %15

.preheader6:                                      ; preds = %45, %15, %12
  %.ph7 = phi i64 [ %31, %45 ], [ 0, %12 ], [ 0, %15 ]
  br label %111

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
  %29 = or i1 %28, %25
  br i1 %29, label %.preheader6, label %30

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
  br i1 %46, label %.loopexit5, label %.preheader6

.loopexit5:                                       ; preds = %111, %45
  br i1 %14, label %.preheader, label %47

.preheader:                                       ; preds = %109, %47, %.loopexit5
  %.ph = phi i64 [ %64, %109 ], [ 0, %.loopexit5 ], [ 0, %47 ]
  br label %121

47:                                               ; preds = %.loopexit5
  %48 = getelementptr double, double* %0, i64 %13
  %49 = getelementptr double, double* %1, i64 %13
  %50 = getelementptr double, double* %3, i64 %13
  %51 = getelementptr double, double* %5, i64 %13
  %52 = icmp ugt double* %49, %0
  %53 = icmp ugt double* %48, %1
  %54 = and i1 %52, %53
  %55 = icmp ugt double* %50, %0
  %56 = icmp ugt double* %48, %3
  %57 = and i1 %55, %56
  %58 = or i1 %54, %57
  %59 = icmp ugt double* %51, %0
  %60 = icmp ugt double* %48, %5
  %61 = and i1 %59, %60
  %62 = or i1 %61, %58
  br i1 %62, label %.preheader, label %63

63:                                               ; preds = %47
  %64 = and i64 %13, 4294967294
  %65 = insertelement <2 x double> poison, double %7, i32 0
  %66 = shufflevector <2 x double> %65, <2 x double> poison, <2 x i32> zeroinitializer
  %67 = insertelement <2 x double> poison, double %8, i32 0
  %68 = shufflevector <2 x double> %67, <2 x double> poison, <2 x i32> zeroinitializer
  %69 = insertelement <2 x double> poison, double %6, i32 0
  %70 = shufflevector <2 x double> %69, <2 x double> poison, <2 x i32> zeroinitializer
  br label %71

71:                                               ; preds = %106, %63
  %72 = phi i64 [ 0, %63 ], [ %107, %106 ]
  %73 = getelementptr inbounds double, double* %1, i64 %72
  %74 = bitcast double* %73 to <2 x double>*
  %75 = load <2 x double>, <2 x double>* %74, align 8, !tbaa !10, !alias.scope !59
  %76 = getelementptr inbounds double, double* %3, i64 %72
  %77 = bitcast double* %76 to <2 x double>*
  %78 = load <2 x double>, <2 x double>* %77, align 8, !tbaa !10, !alias.scope !62
  %79 = fmul <2 x double> %75, %78
  %80 = getelementptr inbounds double, double* %0, i64 %72
  %81 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %79)
  %82 = fcmp olt <2 x double> %81, %66
  %83 = select <2 x i1> %82, <2 x double> zeroinitializer, <2 x double> %79
  %84 = bitcast double* %80 to <2 x double>*
  store <2 x double> %83, <2 x double>* %84, align 8, !tbaa !10, !alias.scope !64, !noalias !66
  %85 = getelementptr inbounds double, double* %5, i64 %72
  %86 = bitcast double* %85 to <2 x double>*
  %87 = load <2 x double>, <2 x double>* %86, align 8, !tbaa !10, !alias.scope !68
  %88 = fcmp ult <2 x double> %87, %68
  %89 = select <2 x i1> %88, <2 x double> %83, <2 x double> zeroinitializer
  %90 = fcmp olt <2 x double> %89, %70
  %91 = xor <2 x i1> %88, <i1 true, i1 true>
  %92 = or <2 x i1> %90, %91
  %93 = extractelement <2 x i1> %92, i32 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %71
  %95 = extractelement <2 x i1> %90, i32 0
  %96 = extractelement <2 x double> %89, i32 0
  %97 = select i1 %95, double %6, double %96
  store double %97, double* %80, align 8, !tbaa !10, !alias.scope !64, !noalias !66
  br label %98

98:                                               ; preds = %94, %71
  %99 = extractelement <2 x i1> %92, i32 1
  br i1 %99, label %100, label %106

100:                                              ; preds = %98
  %101 = or i64 %72, 1
  %102 = getelementptr inbounds double, double* %0, i64 %101
  %103 = extractelement <2 x i1> %90, i32 1
  %104 = extractelement <2 x double> %89, i32 1
  %105 = select i1 %103, double %6, double %104
  store double %105, double* %102, align 8, !tbaa !10, !alias.scope !64, !noalias !66
  br label %106

106:                                              ; preds = %100, %98
  %107 = add nuw i64 %72, 2
  %108 = icmp eq i64 %107, %64
  br i1 %108, label %109, label %71, !llvm.loop !69

109:                                              ; preds = %106
  %110 = icmp eq i64 %64, %13
  br i1 %110, label %.loopexit, label %.preheader

111:                                              ; preds = %.preheader6, %111
  %112 = phi i64 [ %119, %111 ], [ %.ph7, %.preheader6 ]
  %113 = getelementptr inbounds double, double* %4, i64 %112
  %114 = load double, double* %113, align 8, !tbaa !10
  %115 = fadd double %114, 1.000000e+00
  %116 = fmul double %115, 0x3FE5555555555555
  %117 = getelementptr inbounds double, double* %1, i64 %112
  store double %116, double* %117, align 8, !tbaa !10
  %118 = getelementptr inbounds double, double* %2, i64 %112
  store double 0x3FE5555555555555, double* %118, align 8, !tbaa !10
  %119 = add nuw nsw i64 %112, 1
  %120 = icmp eq i64 %119, %13
  br i1 %120, label %.loopexit5, label %111, !llvm.loop !70

.loopexit:                                        ; preds = %141, %109, %10
  ret void

121:                                              ; preds = %.preheader, %141
  %122 = phi i64 [ %142, %141 ], [ %.ph, %.preheader ]
  %123 = getelementptr inbounds double, double* %1, i64 %122
  %124 = load double, double* %123, align 8, !tbaa !10
  %125 = getelementptr inbounds double, double* %3, i64 %122
  %126 = load double, double* %125, align 8, !tbaa !10
  %127 = fmul double %124, %126
  %128 = getelementptr inbounds double, double* %0, i64 %122
  %129 = tail call double @llvm.fabs.f64(double %127) #2
  %130 = fcmp olt double %129, %7
  %131 = select i1 %130, double 0.000000e+00, double %127
  store double %131, double* %128, align 8, !tbaa !10
  %132 = getelementptr inbounds double, double* %5, i64 %122
  %133 = load double, double* %132, align 8, !tbaa !10
  %134 = fcmp ult double %133, %8
  %135 = select i1 %134, double %131, double 0.000000e+00
  %136 = fcmp olt double %135, %6
  %137 = xor i1 %134, true
  %138 = or i1 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %121
  %140 = select i1 %136, double %6, double %135
  store double %140, double* %128, align 8, !tbaa !10
  br label %141

141:                                              ; preds = %139, %121
  %142 = add nuw nsw i64 %122, 1
  %143 = icmp eq i64 %142, %13
  br i1 %143, label %.loopexit, label %121, !llvm.loop !71
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
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
  tail call void @_Z20CalcPressureForElemsPdS_S_S_S_S_dddi(double* %0, double* %3, double* %4, double* %1, double* %8, double* %10, double %13, double %14, double %21, i32 %22)
  tail call void @_Z20CalcPressureForElemsPdS_S_S_S_S_dddi(double* %0, double* %3, double* %4, double* %1, double* %8, double* %10, double %13, double %14, double %21, i32 %22)
  br label %.loopexit

30:                                               ; preds = %23
  %31 = zext i32 %22 to i64
  %32 = icmp eq i32 %22, 1
  br i1 %32, label %.preheader14, label %33

.preheader14:                                     ; preds = %92, %33, %30
  %.ph15 = phi i64 [ %60, %92 ], [ 0, %30 ], [ 0, %33 ]
  br label %94

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
  %50 = or i1 %49, %46
  %51 = icmp ugt double* %38, %1
  %52 = icmp ugt double* %34, %7
  %53 = and i1 %51, %52
  %54 = or i1 %53, %50
  %55 = icmp ugt double* %39, %1
  %56 = icmp ugt double* %34, %11
  %57 = and i1 %55, %56
  %58 = or i1 %57, %54
  br i1 %58, label %.preheader14, label %59

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
  br i1 %93, label %.loopexit13, label %.preheader14

.loopexit13:                                      ; preds = %94, %92
  tail call void @_Z20CalcPressureForElemsPdS_S_S_S_S_dddi(double* %27, double* %3, double* %4, double* nonnull %1, double* %9, double* %10, double %13, double %14, double %21, i32 %22)
  br label %149

94:                                               ; preds = %.preheader14, %94
  %95 = phi i64 [ %115, %94 ], [ %.ph15, %.preheader14 ]
  %96 = getelementptr inbounds double, double* %6, i64 %95
  %97 = load double, double* %96, align 8, !tbaa !10
  %98 = getelementptr inbounds double, double* %12, i64 %95
  %99 = load double, double* %98, align 8, !tbaa !10
  %100 = fmul double %99, 5.000000e-01
  %101 = getelementptr inbounds double, double* %5, i64 %95
  %102 = load double, double* %101, align 8, !tbaa !10
  %103 = getelementptr inbounds double, double* %7, i64 %95
  %104 = load double, double* %103, align 8, !tbaa !10
  %105 = fadd double %102, %104
  %106 = fmul double %100, %105
  %107 = fsub double %97, %106
  %108 = getelementptr inbounds double, double* %11, i64 %95
  %109 = load double, double* %108, align 8, !tbaa !10
  %110 = fmul double %109, 5.000000e-01
  %111 = fadd double %110, %107
  %112 = getelementptr inbounds double, double* %1, i64 %95
  %113 = fcmp olt double %111, %17
  %114 = select i1 %113, double %17, double %111
  store double %114, double* %112, align 8, !tbaa !10
  %115 = add nuw nsw i64 %95, 1
  %116 = icmp eq i64 %115, %31
  br i1 %116, label %.loopexit13, label %94, !llvm.loop !87

117:                                              ; preds = %189
  br i1 %32, label %.preheader, label %118

.preheader:                                       ; preds = %147, %118, %117
  %.ph = phi i64 [ %125, %147 ], [ 0, %117 ], [ 0, %118 ]
  br label %209

118:                                              ; preds = %117
  %119 = getelementptr double, double* %1, i64 %31
  %120 = getelementptr double, double* %11, i64 %31
  %121 = icmp ugt double* %120, %1
  %122 = icmp ugt double* %119, %11
  %123 = and i1 %121, %122
  br i1 %123, label %.preheader, label %124

124:                                              ; preds = %118
  %125 = and i64 %31, 4294967294
  %126 = insertelement <2 x double> poison, double %15, i32 0
  %127 = shufflevector <2 x double> %126, <2 x double> poison, <2 x i32> zeroinitializer
  %128 = insertelement <2 x double> poison, double %17, i32 0
  %129 = shufflevector <2 x double> %128, <2 x double> poison, <2 x i32> zeroinitializer
  br label %130

130:                                              ; preds = %130, %124
  %131 = phi i64 [ 0, %124 ], [ %145, %130 ]
  %132 = getelementptr inbounds double, double* %11, i64 %131
  %133 = bitcast double* %132 to <2 x double>*
  %134 = load <2 x double>, <2 x double>* %133, align 8, !tbaa !10, !alias.scope !88
  %135 = fmul <2 x double> %134, <double 5.000000e-01, double 5.000000e-01>
  %136 = getelementptr inbounds double, double* %1, i64 %131
  %137 = bitcast double* %136 to <2 x double>*
  %138 = load <2 x double>, <2 x double>* %137, align 8, !tbaa !10, !alias.scope !91, !noalias !88
  %139 = fadd <2 x double> %138, %135
  %140 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %139)
  %141 = fcmp olt <2 x double> %140, %127
  %142 = select <2 x i1> %141, <2 x double> zeroinitializer, <2 x double> %139
  %143 = fcmp olt <2 x double> %142, %129
  %144 = select <2 x i1> %143, <2 x double> %129, <2 x double> %142
  store <2 x double> %144, <2 x double>* %137, align 8, !tbaa !10, !alias.scope !91, !noalias !88
  %145 = add nuw i64 %131, 2
  %146 = icmp eq i64 %145, %125
  br i1 %146, label %147, label %130, !llvm.loop !93

147:                                              ; preds = %130
  %148 = icmp eq i64 %125, %31
  br i1 %148, label %.loopexit12, label %.preheader

149:                                              ; preds = %189, %.loopexit13
  %150 = phi i64 [ 0, %.loopexit13 ], [ %207, %189 ]
  %151 = getelementptr inbounds double, double* %9, i64 %150
  %152 = load double, double* %151, align 8, !tbaa !10
  %153 = fadd double %152, 1.000000e+00
  %154 = fdiv double 1.000000e+00, %153
  %155 = getelementptr inbounds double, double* %12, i64 %150
  %156 = load double, double* %155, align 8, !tbaa !10
  %157 = fcmp ogt double %156, 0.000000e+00
  br i1 %157, label %158, label %162

158:                                              ; preds = %149
  %159 = getelementptr inbounds double, double* %2, i64 %150
  store double 0.000000e+00, double* %159, align 8, !tbaa !10
  %160 = getelementptr inbounds double, double* %27, i64 %150
  %161 = load double, double* %160, align 8, !tbaa !10
  br label %189

162:                                              ; preds = %149
  %163 = getelementptr inbounds double, double* %4, i64 %150
  %164 = load double, double* %163, align 8, !tbaa !10
  %165 = getelementptr inbounds double, double* %1, i64 %150
  %166 = load double, double* %165, align 8, !tbaa !10
  %167 = fmul double %164, %166
  %168 = fmul double %154, %154
  %169 = getelementptr inbounds double, double* %3, i64 %150
  %170 = load double, double* %169, align 8, !tbaa !10
  %171 = fmul double %168, %170
  %172 = getelementptr inbounds double, double* %27, i64 %150
  %173 = load double, double* %172, align 8, !tbaa !10
  %174 = fmul double %171, %173
  %175 = fadd double %167, %174
  %176 = fdiv double %175, %20
  %177 = fcmp ugt double %176, 1.111110e-37
  br i1 %177, label %178, label %180

178:                                              ; preds = %162
  %179 = tail call double @sqrt(double %176) #2
  br label %180

180:                                              ; preds = %178, %162
  %181 = phi double [ %179, %178 ], [ 3.333330e-19, %162 ]
  %182 = getelementptr inbounds double, double* %19, i64 %150
  %183 = load double, double* %182, align 8, !tbaa !10
  %184 = fmul double %181, %183
  %185 = getelementptr inbounds double, double* %18, i64 %150
  %186 = load double, double* %185, align 8, !tbaa !10
  %187 = fadd double %184, %186
  %188 = getelementptr inbounds double, double* %2, i64 %150
  store double %187, double* %188, align 8, !tbaa !10
  br label %189

189:                                              ; preds = %180, %158
  %190 = phi double [ %187, %180 ], [ 0.000000e+00, %158 ]
  %191 = phi double [ %173, %180 ], [ %161, %158 ]
  %192 = getelementptr inbounds double, double* %1, i64 %150
  %193 = load double, double* %192, align 8, !tbaa !10
  %194 = load double, double* %155, align 8, !tbaa !10
  %195 = fmul double %194, 5.000000e-01
  %196 = getelementptr inbounds double, double* %5, i64 %150
  %197 = load double, double* %196, align 8, !tbaa !10
  %198 = getelementptr inbounds double, double* %7, i64 %150
  %199 = load double, double* %198, align 8, !tbaa !10
  %200 = fadd double %197, %199
  %201 = fmul double %200, 3.000000e+00
  %202 = fadd double %190, %191
  %203 = fmul double %202, 4.000000e+00
  %204 = fsub double %201, %203
  %205 = fmul double %195, %204
  %206 = fadd double %193, %205
  store double %206, double* %192, align 8, !tbaa !10
  %207 = add nuw nsw i64 %150, 1
  %208 = icmp eq i64 %207, %31
  br i1 %208, label %117, label %149, !llvm.loop !94

.loopexit12:                                      ; preds = %209, %147
  tail call void @_Z20CalcPressureForElemsPdS_S_S_S_S_dddi(double* %0, double* %3, double* %4, double* nonnull %1, double* %8, double* %10, double %13, double %14, double %21, i32 %22)
  br label %225

209:                                              ; preds = %.preheader, %209
  %210 = phi i64 [ %222, %209 ], [ %.ph, %.preheader ]
  %211 = getelementptr inbounds double, double* %11, i64 %210
  %212 = load double, double* %211, align 8, !tbaa !10
  %213 = fmul double %212, 5.000000e-01
  %214 = getelementptr inbounds double, double* %1, i64 %210
  %215 = load double, double* %214, align 8, !tbaa !10
  %216 = fadd double %215, %213
  %217 = tail call double @llvm.fabs.f64(double %216) #2
  %218 = fcmp olt double %217, %15
  %219 = select i1 %218, double 0.000000e+00, double %216
  %220 = fcmp olt double %219, %17
  %221 = select i1 %220, double %17, double %219
  store double %221, double* %214, align 8, !tbaa !10
  %222 = add nuw nsw i64 %210, 1
  %223 = icmp eq i64 %222, %31
  br i1 %223, label %.loopexit12, label %209, !llvm.loop !95

224:                                              ; preds = %260
  tail call void @_Z20CalcPressureForElemsPdS_S_S_S_S_dddi(double* nonnull %0, double* %3, double* %4, double* nonnull %1, double* %8, double* %10, double %13, double %14, double %21, i32 %22)
  br label %299

225:                                              ; preds = %260, %.loopexit12
  %226 = phi i64 [ 0, %.loopexit12 ], [ %294, %260 ]
  %227 = getelementptr inbounds double, double* %12, i64 %226
  %228 = load double, double* %227, align 8, !tbaa !10
  %229 = fcmp ogt double %228, 0.000000e+00
  br i1 %229, label %260, label %230

230:                                              ; preds = %225
  %231 = getelementptr inbounds double, double* %4, i64 %226
  %232 = load double, double* %231, align 8, !tbaa !10
  %233 = getelementptr inbounds double, double* %1, i64 %226
  %234 = load double, double* %233, align 8, !tbaa !10
  %235 = fmul double %232, %234
  %236 = getelementptr inbounds double, double* %10, i64 %226
  %237 = load double, double* %236, align 8, !tbaa !10
  %238 = fmul double %237, %237
  %239 = getelementptr inbounds double, double* %3, i64 %226
  %240 = load double, double* %239, align 8, !tbaa !10
  %241 = fmul double %238, %240
  %242 = getelementptr inbounds double, double* %0, i64 %226
  %243 = load double, double* %242, align 8, !tbaa !10
  %244 = fmul double %241, %243
  %245 = fadd double %235, %244
  %246 = fdiv double %245, %20
  %247 = fcmp ugt double %246, 1.111110e-37
  br i1 %247, label %248, label %251

248:                                              ; preds = %230
  %249 = tail call double @sqrt(double %246) #2
  %250 = load double, double* %227, align 8, !tbaa !10
  br label %251

251:                                              ; preds = %248, %230
  %252 = phi double [ %250, %248 ], [ %228, %230 ]
  %253 = phi double [ %249, %248 ], [ 3.333330e-19, %230 ]
  %254 = getelementptr inbounds double, double* %19, i64 %226
  %255 = load double, double* %254, align 8, !tbaa !10
  %256 = fmul double %253, %255
  %257 = getelementptr inbounds double, double* %18, i64 %226
  %258 = load double, double* %257, align 8, !tbaa !10
  %259 = fadd double %256, %258
  br label %260

260:                                              ; preds = %251, %225
  %261 = phi double [ %252, %251 ], [ %228, %225 ]
  %262 = phi double [ %259, %251 ], [ 0.000000e+00, %225 ]
  %263 = getelementptr inbounds double, double* %1, i64 %226
  %264 = load double, double* %263, align 8, !tbaa !10
  %265 = getelementptr inbounds double, double* %5, i64 %226
  %266 = load double, double* %265, align 8, !tbaa !10
  %267 = getelementptr inbounds double, double* %7, i64 %226
  %268 = load double, double* %267, align 8, !tbaa !10
  %269 = getelementptr inbounds double, double* %27, i64 %226
  %270 = load double, double* %269, align 8, !tbaa !10
  %271 = getelementptr inbounds double, double* %2, i64 %226
  %272 = load double, double* %271, align 8, !tbaa !10
  %273 = insertelement <2 x double> poison, double %266, i32 0
  %274 = insertelement <2 x double> %273, double %270, i32 1
  %275 = insertelement <2 x double> poison, double %268, i32 0
  %276 = insertelement <2 x double> %275, double %272, i32 1
  %277 = fadd <2 x double> %274, %276
  %278 = fmul <2 x double> %277, <double 7.000000e+00, double 8.000000e+00>
  %279 = shufflevector <2 x double> %278, <2 x double> poison, <2 x i32> <i32 1, i32 undef>
  %280 = fsub <2 x double> %278, %279
  %281 = extractelement <2 x double> %280, i32 0
  %282 = getelementptr inbounds double, double* %0, i64 %226
  %283 = load double, double* %282, align 8, !tbaa !10
  %284 = fadd double %262, %283
  %285 = fadd double %284, %281
  %286 = fmul double %261, %285
  %287 = fmul double %286, 0x3FC5555555555555
  %288 = fsub double %264, %287
  %289 = tail call double @llvm.fabs.f64(double %288) #2
  %290 = fcmp olt double %289, %15
  %291 = select i1 %290, double 0.000000e+00, double %288
  %292 = fcmp olt double %291, %17
  %293 = select i1 %292, double %17, double %291
  store double %293, double* %263, align 8, !tbaa !10
  %294 = add nuw nsw i64 %226, 1
  %295 = icmp eq i64 %294, %31
  br i1 %295, label %224, label %225, !llvm.loop !96

.loopexit:                                        ; preds = %336, %29
  %296 = icmp eq i8* %26, null
  br i1 %296, label %298, label %297

297:                                              ; preds = %.loopexit
  tail call void @free(i8* nonnull %26) #2
  br label %298

298:                                              ; preds = %297, %.loopexit
  ret void

299:                                              ; preds = %336, %224
  %300 = phi i64 [ 0, %224 ], [ %337, %336 ]
  %301 = getelementptr inbounds double, double* %12, i64 %300
  %302 = load double, double* %301, align 8, !tbaa !10
  %303 = fcmp ugt double %302, 0.000000e+00
  br i1 %303, label %336, label %304

304:                                              ; preds = %299
  %305 = getelementptr inbounds double, double* %4, i64 %300
  %306 = load double, double* %305, align 8, !tbaa !10
  %307 = getelementptr inbounds double, double* %1, i64 %300
  %308 = load double, double* %307, align 8, !tbaa !10
  %309 = fmul double %306, %308
  %310 = getelementptr inbounds double, double* %10, i64 %300
  %311 = load double, double* %310, align 8, !tbaa !10
  %312 = fmul double %311, %311
  %313 = getelementptr inbounds double, double* %3, i64 %300
  %314 = load double, double* %313, align 8, !tbaa !10
  %315 = fmul double %312, %314
  %316 = getelementptr inbounds double, double* %0, i64 %300
  %317 = load double, double* %316, align 8, !tbaa !10
  %318 = fmul double %315, %317
  %319 = fadd double %309, %318
  %320 = fdiv double %319, %20
  %321 = fcmp ugt double %320, 1.111110e-37
  br i1 %321, label %322, label %324

322:                                              ; preds = %304
  %323 = tail call double @sqrt(double %320) #2
  br label %324

324:                                              ; preds = %322, %304
  %325 = phi double [ %323, %322 ], [ 3.333330e-19, %304 ]
  %326 = getelementptr inbounds double, double* %19, i64 %300
  %327 = load double, double* %326, align 8, !tbaa !10
  %328 = fmul double %325, %327
  %329 = getelementptr inbounds double, double* %18, i64 %300
  %330 = load double, double* %329, align 8, !tbaa !10
  %331 = fadd double %328, %330
  %332 = getelementptr inbounds double, double* %2, i64 %300
  store double %331, double* %332, align 8, !tbaa !10
  %333 = tail call double @llvm.fabs.f64(double %331) #2
  %334 = fcmp olt double %333, %16
  br i1 %334, label %335, label %336

335:                                              ; preds = %324
  store double 0.000000e+00, double* %332, align 8, !tbaa !10
  br label %336

336:                                              ; preds = %335, %324, %299
  %337 = add nuw nsw i64 %300, 1
  %338 = icmp eq i64 %337, %31
  br i1 %338, label %.loopexit, label %299, !llvm.loop !97
}

; Function Attrs: mustprogress nofree noinline nounwind uwtable
define dso_local void @_Z22CalcSoundSpeedForElemsPddS_S_S_S_di(double* nocapture readonly %0, double %1, double* nocapture readonly %2, double* nocapture readonly %3, double* nocapture readonly %4, double* nocapture readonly %5, double %6, i32 %7) local_unnamed_addr #20 {
  %9 = icmp sgt i32 %7, 0
  br i1 %9, label %10, label %.loopexit

10:                                               ; preds = %8
  %11 = zext i32 %7 to i64
  br label %12

.loopexit:                                        ; preds = %12, %8
  ret void

12:                                               ; preds = %12, %10
  %13 = phi i64 [ 0, %10 ], [ %39, %12 ]
  %14 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 16, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !8
  %15 = getelementptr inbounds i32, i32* %14, i64 %13
  %16 = load i32, i32* %15, align 4, !tbaa !12
  %17 = getelementptr inbounds double, double* %4, i64 %13
  %18 = load double, double* %17, align 8, !tbaa !10
  %19 = getelementptr inbounds double, double* %2, i64 %13
  %20 = load double, double* %19, align 8, !tbaa !10
  %21 = fmul double %18, %20
  %22 = getelementptr inbounds double, double* %0, i64 %13
  %23 = load double, double* %22, align 8, !tbaa !10
  %24 = fmul double %23, %23
  %25 = getelementptr inbounds double, double* %5, i64 %13
  %26 = load double, double* %25, align 8, !tbaa !10
  %27 = fmul double %24, %26
  %28 = getelementptr inbounds double, double* %3, i64 %13
  %29 = load double, double* %28, align 8, !tbaa !10
  %30 = fmul double %27, %29
  %31 = fadd double %21, %30
  %32 = fdiv double %31, %1
  %33 = fcmp ole double %32, 1.111110e-37
  %34 = select i1 %33, double 1.111110e-37, double %32
  %35 = tail call double @sqrt(double %34) #2
  %36 = sext i32 %16 to i64
  %37 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 45, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %38 = getelementptr inbounds double, double* %37, i64 %36
  store double %35, double* %38, align 8, !tbaa !10
  %39 = add nuw nsw i64 %13, 1
  %40 = icmp eq i64 %39, %11
  br i1 %40, label %.loopexit, label %12, !llvm.loop !98
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
  br i1 %43, label %44, label %161

44:                                               ; preds = %2
  %45 = zext i32 %1 to i64
  br label %48

46:                                               ; preds = %48
  %47 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 42, i32 0, i32 0, i32 0, i32 0), align 8
  br label %60

48:                                               ; preds = %48, %44
  %49 = phi i64 [ 0, %44 ], [ %56, %48 ]
  %50 = getelementptr inbounds i32, i32* %41, i64 %49
  %51 = load i32, i32* %50, align 4, !tbaa !12
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds double, double* %42, i64 %52
  %54 = load double, double* %53, align 8, !tbaa !10
  %55 = getelementptr inbounds double, double* %14, i64 %49
  store double %54, double* %55, align 8, !tbaa !10
  %56 = add nuw nsw i64 %49, 1
  %57 = icmp eq i64 %56, %45
  br i1 %57, label %46, label %48, !llvm.loop !99

58:                                               ; preds = %60
  %59 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 35, i32 0, i32 0, i32 0, i32 0), align 8
  br label %72

60:                                               ; preds = %60, %46
  %61 = phi i64 [ 0, %46 ], [ %68, %60 ]
  %62 = getelementptr inbounds i32, i32* %41, i64 %61
  %63 = load i32, i32* %62, align 4, !tbaa !12
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds double, double* %47, i64 %64
  %66 = load double, double* %65, align 8, !tbaa !10
  %67 = getelementptr inbounds double, double* %16, i64 %61
  store double %66, double* %67, align 8, !tbaa !10
  %68 = add nuw nsw i64 %61, 1
  %69 = icmp eq i64 %68, %45
  br i1 %69, label %58, label %60, !llvm.loop !100

70:                                               ; preds = %72
  %71 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 36, i32 0, i32 0, i32 0, i32 0), align 8
  br label %108

72:                                               ; preds = %72, %58
  %73 = phi i64 [ 0, %58 ], [ %80, %72 ]
  %74 = getelementptr inbounds i32, i32* %41, i64 %73
  %75 = load i32, i32* %74, align 4, !tbaa !12
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds double, double* %59, i64 %76
  %78 = load double, double* %77, align 8, !tbaa !10
  %79 = getelementptr inbounds double, double* %18, i64 %73
  store double %78, double* %79, align 8, !tbaa !10
  %80 = add nuw nsw i64 %73, 1
  %81 = icmp eq i64 %80, %45
  br i1 %81, label %70, label %72, !llvm.loop !101

82:                                               ; preds = %108
  %83 = icmp eq i32 %1, 1
  br i1 %83, label %.preheader25, label %84

.preheader25:                                     ; preds = %106, %82
  %.ph = phi i64 [ %85, %106 ], [ 0, %82 ]
  br label %119

84:                                               ; preds = %82
  %85 = and i64 %45, 4294967294
  br label %86

86:                                               ; preds = %86, %84
  %87 = phi i64 [ 0, %84 ], [ %104, %86 ]
  %88 = getelementptr inbounds double, double* %0, i64 %87
  %89 = bitcast double* %88 to <2 x double>*
  %90 = load <2 x double>, <2 x double>* %89, align 8, !tbaa !10
  %91 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %90
  %92 = fadd <2 x double> %91, <double -1.000000e+00, double -1.000000e+00>
  %93 = getelementptr inbounds double, double* %22, i64 %87
  %94 = bitcast double* %93 to <2 x double>*
  store <2 x double> %92, <2 x double>* %94, align 16, !tbaa !10
  %95 = getelementptr inbounds double, double* %16, i64 %87
  %96 = bitcast double* %95 to <2 x double>*
  %97 = load <2 x double>, <2 x double>* %96, align 16, !tbaa !10
  %98 = fmul <2 x double> %97, <double 5.000000e-01, double 5.000000e-01>
  %99 = fsub <2 x double> %90, %98
  %100 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %99
  %101 = fadd <2 x double> %100, <double -1.000000e+00, double -1.000000e+00>
  %102 = getelementptr inbounds double, double* %24, i64 %87
  %103 = bitcast double* %102 to <2 x double>*
  store <2 x double> %101, <2 x double>* %103, align 16, !tbaa !10
  %104 = add nuw i64 %87, 2
  %105 = icmp eq i64 %104, %85
  br i1 %105, label %106, label %86, !llvm.loop !102

106:                                              ; preds = %86
  %107 = icmp eq i64 %85, %45
  br i1 %107, label %.loopexit24, label %.preheader25

108:                                              ; preds = %108, %70
  %109 = phi i64 [ 0, %70 ], [ %116, %108 ]
  %110 = getelementptr inbounds i32, i32* %41, i64 %109
  %111 = load i32, i32* %110, align 4, !tbaa !12
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds double, double* %71, i64 %112
  %114 = load double, double* %113, align 8, !tbaa !10
  %115 = getelementptr inbounds double, double* %20, i64 %109
  store double %114, double* %115, align 8, !tbaa !10
  %116 = add nuw nsw i64 %109, 1
  %117 = icmp eq i64 %116, %45
  br i1 %117, label %82, label %108, !llvm.loop !103

.loopexit24:                                      ; preds = %119, %106
  %118 = fcmp une double %7, 0.000000e+00
  br i1 %118, label %.preheader22, label %.loopexit23

119:                                              ; preds = %.preheader25, %119
  %120 = phi i64 [ %133, %119 ], [ %.ph, %.preheader25 ]
  %121 = getelementptr inbounds double, double* %0, i64 %120
  %122 = load double, double* %121, align 8, !tbaa !10
  %123 = fdiv double 1.000000e+00, %122
  %124 = fadd double %123, -1.000000e+00
  %125 = getelementptr inbounds double, double* %22, i64 %120
  store double %124, double* %125, align 8, !tbaa !10
  %126 = getelementptr inbounds double, double* %16, i64 %120
  %127 = load double, double* %126, align 8, !tbaa !10
  %128 = fmul double %127, 5.000000e-01
  %129 = fsub double %122, %128
  %130 = fdiv double 1.000000e+00, %129
  %131 = fadd double %130, -1.000000e+00
  %132 = getelementptr inbounds double, double* %24, i64 %120
  store double %131, double* %132, align 8, !tbaa !10
  %133 = add nuw nsw i64 %120, 1
  %134 = icmp eq i64 %133, %45
  br i1 %134, label %.loopexit24, label %119, !llvm.loop !104

.preheader22:                                     ; preds = %.loopexit24, %143
  %135 = phi i64 [ %144, %143 ], [ 0, %.loopexit24 ]
  %136 = getelementptr inbounds double, double* %0, i64 %135
  %137 = load double, double* %136, align 8, !tbaa !10
  %138 = fcmp ugt double %137, %7
  br i1 %138, label %143, label %139

139:                                              ; preds = %.preheader22
  %140 = getelementptr inbounds double, double* %22, i64 %135
  %141 = load double, double* %140, align 8, !tbaa !10
  %142 = getelementptr inbounds double, double* %24, i64 %135
  store double %141, double* %142, align 8, !tbaa !10
  br label %143

143:                                              ; preds = %139, %.preheader22
  %144 = add nuw nsw i64 %135, 1
  %145 = icmp eq i64 %144, %45
  br i1 %145, label %.loopexit23, label %.preheader22, !llvm.loop !105

.loopexit23:                                      ; preds = %143, %.loopexit24
  %146 = fcmp une double %6, 0.000000e+00
  br i1 %146, label %.preheader, label %.loopexit21

.preheader:                                       ; preds = %.loopexit23, %155
  %147 = phi i64 [ %156, %155 ], [ 0, %.loopexit23 ]
  %148 = getelementptr inbounds double, double* %0, i64 %147
  %149 = load double, double* %148, align 8, !tbaa !10
  %150 = fcmp ult double %149, %6
  br i1 %150, label %155, label %151

151:                                              ; preds = %.preheader
  %152 = getelementptr inbounds double, double* %18, i64 %147
  store double 0.000000e+00, double* %152, align 8, !tbaa !10
  %153 = getelementptr inbounds double, double* %22, i64 %147
  store double 0.000000e+00, double* %153, align 8, !tbaa !10
  %154 = getelementptr inbounds double, double* %24, i64 %147
  store double 0.000000e+00, double* %154, align 8, !tbaa !10
  br label %155

155:                                              ; preds = %151, %.preheader
  %156 = add nuw nsw i64 %147, 1
  %157 = icmp eq i64 %156, %45
  br i1 %157, label %.loopexit21, label %.preheader, !llvm.loop !106

.loopexit21:                                      ; preds = %155, %.loopexit23
  %158 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 38, i32 0, i32 0, i32 0, i32 0), align 8
  %159 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 37, i32 0, i32 0, i32 0, i32 0), align 8
  %160 = shl nuw nsw i64 %45, 3
  tail call void @llvm.memset.p0i8.i64(i8* align 16 %29, i8 0, i64 %160, i1 false)
  br label %165

161:                                              ; preds = %2
  tail call void @_Z18CalcEnergyForElemsPdS_S_S_S_S_S_S_S_S_S_S_S_dddddS_S_ddi(double* %32, double* %34, double* %36, double* %38, double* %40, double* %18, double* %14, double* %20, double* %22, double* %24, double* %0, double* %30, double* %16, double %8, double %4, double %3, double %5, double %9, double* %26, double* %28, double %10, double %6, i32 %1)
  br label %.loopexit

162:                                              ; preds = %165
  tail call void @_Z18CalcEnergyForElemsPdS_S_S_S_S_S_S_S_S_S_S_S_dddddS_S_ddi(double* %32, double* %34, double* %36, double* %38, double* %40, double* %18, double* %14, double* %20, double* %22, double* %24, double* %0, double* %30, double* %16, double %8, double %4, double %3, double %5, double %9, double* nonnull %26, double* nonnull %28, double %10, double %6, i32 %1)
  %163 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 16, i32 0, i32 0, i32 0, i32 0), align 8
  %164 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 35, i32 0, i32 0, i32 0, i32 0), align 8
  br label %181

165:                                              ; preds = %165, %.loopexit21
  %166 = phi i64 [ 0, %.loopexit21 ], [ %176, %165 ]
  %167 = getelementptr inbounds i32, i32* %41, i64 %166
  %168 = load i32, i32* %167, align 4, !tbaa !12
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds double, double* %158, i64 %169
  %171 = load double, double* %170, align 8, !tbaa !10
  %172 = getelementptr inbounds double, double* %26, i64 %166
  store double %171, double* %172, align 8, !tbaa !10
  %173 = getelementptr inbounds double, double* %159, i64 %169
  %174 = load double, double* %173, align 8, !tbaa !10
  %175 = getelementptr inbounds double, double* %28, i64 %166
  store double %174, double* %175, align 8, !tbaa !10
  %176 = add nuw nsw i64 %166, 1
  %177 = icmp eq i64 %176, %45
  br i1 %177, label %162, label %165, !llvm.loop !107

178:                                              ; preds = %181
  %179 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 16, i32 0, i32 0, i32 0, i32 0), align 8
  %180 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 34, i32 0, i32 0, i32 0, i32 0), align 8
  br label %194

181:                                              ; preds = %181, %162
  %182 = phi i64 [ 0, %162 ], [ %189, %181 ]
  %183 = getelementptr inbounds i32, i32* %163, i64 %182
  %184 = load i32, i32* %183, align 4, !tbaa !12
  %185 = getelementptr inbounds double, double* %32, i64 %182
  %186 = load double, double* %185, align 8, !tbaa !10
  %187 = sext i32 %184 to i64
  %188 = getelementptr inbounds double, double* %164, i64 %187
  store double %186, double* %188, align 8, !tbaa !10
  %189 = add nuw nsw i64 %182, 1
  %190 = icmp eq i64 %189, %45
  br i1 %190, label %178, label %181, !llvm.loop !108

191:                                              ; preds = %194
  %192 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 16, i32 0, i32 0, i32 0, i32 0), align 8
  %193 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 36, i32 0, i32 0, i32 0, i32 0), align 8
  br label %246

194:                                              ; preds = %194, %178
  %195 = phi i64 [ 0, %178 ], [ %202, %194 ]
  %196 = getelementptr inbounds i32, i32* %179, i64 %195
  %197 = load i32, i32* %196, align 4, !tbaa !12
  %198 = getelementptr inbounds double, double* %34, i64 %195
  %199 = load double, double* %198, align 8, !tbaa !10
  %200 = sext i32 %197 to i64
  %201 = getelementptr inbounds double, double* %180, i64 %200
  store double %199, double* %201, align 8, !tbaa !10
  %202 = add nuw nsw i64 %195, 1
  %203 = icmp eq i64 %202, %45
  br i1 %203, label %191, label %194, !llvm.loop !109

.loopexit:                                        ; preds = %246, %161
  tail call void @_Z22CalcSoundSpeedForElemsPddS_S_S_S_di(double* %0, double %10, double* %34, double* %32, double* %40, double* %38, double undef, i32 %1)
  %204 = icmp eq i8* %39, null
  br i1 %204, label %206, label %205

205:                                              ; preds = %.loopexit
  tail call void @free(i8* nonnull %39) #2
  br label %206

206:                                              ; preds = %205, %.loopexit
  %207 = icmp eq i8* %37, null
  br i1 %207, label %209, label %208

208:                                              ; preds = %206
  tail call void @free(i8* nonnull %37) #2
  br label %209

209:                                              ; preds = %208, %206
  %210 = icmp eq i8* %35, null
  br i1 %210, label %212, label %211

211:                                              ; preds = %209
  tail call void @free(i8* nonnull %35) #2
  br label %212

212:                                              ; preds = %211, %209
  %213 = icmp eq i8* %33, null
  br i1 %213, label %215, label %214

214:                                              ; preds = %212
  tail call void @free(i8* nonnull %33) #2
  br label %215

215:                                              ; preds = %214, %212
  %216 = icmp eq i8* %31, null
  br i1 %216, label %218, label %217

217:                                              ; preds = %215
  tail call void @free(i8* nonnull %31) #2
  br label %218

218:                                              ; preds = %217, %215
  %219 = icmp eq i8* %29, null
  br i1 %219, label %221, label %220

220:                                              ; preds = %218
  tail call void @free(i8* nonnull %29) #2
  br label %221

221:                                              ; preds = %220, %218
  %222 = icmp eq i8* %27, null
  br i1 %222, label %224, label %223

223:                                              ; preds = %221
  tail call void @free(i8* nonnull %27) #2
  br label %224

224:                                              ; preds = %223, %221
  %225 = icmp eq i8* %25, null
  br i1 %225, label %227, label %226

226:                                              ; preds = %224
  tail call void @free(i8* nonnull %25) #2
  br label %227

227:                                              ; preds = %226, %224
  %228 = icmp eq i8* %23, null
  br i1 %228, label %230, label %229

229:                                              ; preds = %227
  tail call void @free(i8* nonnull %23) #2
  br label %230

230:                                              ; preds = %229, %227
  %231 = icmp eq i8* %21, null
  br i1 %231, label %233, label %232

232:                                              ; preds = %230
  tail call void @free(i8* nonnull %21) #2
  br label %233

233:                                              ; preds = %232, %230
  %234 = icmp eq i8* %19, null
  br i1 %234, label %236, label %235

235:                                              ; preds = %233
  tail call void @free(i8* nonnull %19) #2
  br label %236

236:                                              ; preds = %235, %233
  %237 = icmp eq i8* %17, null
  br i1 %237, label %239, label %238

238:                                              ; preds = %236
  tail call void @free(i8* nonnull %17) #2
  br label %239

239:                                              ; preds = %238, %236
  %240 = icmp eq i8* %15, null
  br i1 %240, label %242, label %241

241:                                              ; preds = %239
  tail call void @free(i8* nonnull %15) #2
  br label %242

242:                                              ; preds = %241, %239
  %243 = icmp eq i8* %13, null
  br i1 %243, label %245, label %244

244:                                              ; preds = %242
  tail call void @free(i8* nonnull %13) #2
  br label %245

245:                                              ; preds = %244, %242
  ret void

246:                                              ; preds = %246, %191
  %247 = phi i64 [ 0, %191 ], [ %254, %246 ]
  %248 = getelementptr inbounds i32, i32* %192, i64 %247
  %249 = load i32, i32* %248, align 4, !tbaa !12
  %250 = getelementptr inbounds double, double* %36, i64 %247
  %251 = load double, double* %250, align 8, !tbaa !10
  %252 = sext i32 %249 to i64
  %253 = getelementptr inbounds double, double* %193, i64 %252
  store double %251, double* %253, align 8, !tbaa !10
  %254 = add nuw nsw i64 %247, 1
  %255 = icmp eq i64 %254, %45
  br i1 %255, label %.loopexit, label %246, !llvm.loop !110
}

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local void @_Z31ApplyMaterialPropertiesForElemsv() local_unnamed_addr #10 {
  %1 = load i32, i32* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 79), align 8, !tbaa !12
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %65, label %3

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
  br i1 %12, label %13, label %.loopexit

13:                                               ; preds = %3
  %14 = zext i32 %1 to i64
  br label %17

15:                                               ; preds = %17
  %16 = fcmp une double %4, 0.000000e+00
  br i1 %16, label %.preheader8, label %.loopexit9

17:                                               ; preds = %17, %13
  %18 = phi i64 [ 0, %13 ], [ %25, %17 ]
  %19 = getelementptr inbounds i32, i32* %10, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !12
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds double, double* %11, i64 %21
  %23 = load double, double* %22, align 8, !tbaa !10
  %24 = getelementptr inbounds double, double* %9, i64 %18
  store double %23, double* %24, align 8, !tbaa !10
  %25 = add nuw nsw i64 %18, 1
  %26 = icmp eq i64 %25, %14
  br i1 %26, label %15, label %17, !llvm.loop !111

.preheader8:                                      ; preds = %15, %32
  %27 = phi i64 [ %33, %32 ], [ 0, %15 ]
  %28 = getelementptr inbounds double, double* %9, i64 %27
  %29 = load double, double* %28, align 8, !tbaa !10
  %30 = fcmp olt double %29, %4
  br i1 %30, label %31, label %32

31:                                               ; preds = %.preheader8
  store double %4, double* %28, align 8, !tbaa !10
  br label %32

32:                                               ; preds = %31, %.preheader8
  %33 = add nuw nsw i64 %27, 1
  %34 = icmp eq i64 %33, %14
  br i1 %34, label %.loopexit9, label %.preheader8, !llvm.loop !112

.loopexit9:                                       ; preds = %32, %15
  %35 = fcmp une double %5, 0.000000e+00
  br i1 %35, label %.preheader, label %.loopexit7

.preheader:                                       ; preds = %.loopexit9, %41
  %36 = phi i64 [ %42, %41 ], [ 0, %.loopexit9 ]
  %37 = getelementptr inbounds double, double* %9, i64 %36
  %38 = load double, double* %37, align 8, !tbaa !10
  %39 = fcmp ogt double %38, %5
  br i1 %39, label %40, label %41

40:                                               ; preds = %.preheader
  store double %5, double* %37, align 8, !tbaa !10
  br label %41

41:                                               ; preds = %40, %.preheader
  %42 = add nuw nsw i64 %36, 1
  %43 = icmp eq i64 %42, %14
  br i1 %43, label %.loopexit7, label %.preheader, !llvm.loop !113

.loopexit7:                                       ; preds = %41, %.loopexit9
  %44 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 39, i32 0, i32 0, i32 0, i32 0), align 8
  br label %49

45:                                               ; preds = %49
  %46 = icmp eq i64 %63, %14
  br i1 %46, label %.loopexit, label %49, !llvm.loop !114

.loopexit:                                        ; preds = %45, %3
  tail call void @_Z15EvalEOSForElemsPdi(double* %9, i32 %1)
  %47 = icmp eq i8* %8, null
  br i1 %47, label %65, label %48

48:                                               ; preds = %.loopexit
  tail call void @free(i8* nonnull %8) #2
  br label %65

49:                                               ; preds = %45, %.loopexit7
  %50 = phi i64 [ 0, %.loopexit7 ], [ %63, %45 ]
  %51 = getelementptr inbounds i32, i32* %10, i64 %50
  %52 = load i32, i32* %51, align 4, !tbaa !12
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds double, double* %44, i64 %53
  %55 = load double, double* %54, align 8, !tbaa !10
  %56 = fcmp olt double %55, %4
  %57 = select i1 %16, i1 %56, i1 false
  %58 = select i1 %57, double %4, double %55
  %59 = fcmp ogt double %58, %5
  %60 = select i1 %35, i1 %59, i1 false
  %61 = select i1 %60, double %5, double %58
  %62 = fcmp ugt double %61, 0.000000e+00
  %63 = add nuw nsw i64 %50, 1
  br i1 %62, label %45, label %64

64:                                               ; preds = %49
  tail call void @exit(i32 -1) #32
  unreachable

65:                                               ; preds = %48, %.loopexit, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable
define dso_local void @_Z21UpdateVolumesForElemsv() local_unnamed_addr #7 {
  %1 = load i32, i32* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 79), align 8, !tbaa !12
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %.loopexit, label %3

3:                                                ; preds = %0
  %4 = load double, double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 62), align 8, !tbaa !10
  %5 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 41, i32 0, i32 0, i32 0, i32 0), align 8
  %6 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 39, i32 0, i32 0, i32 0, i32 0), align 8
  %7 = icmp sgt i32 %1, 0
  br i1 %7, label %8, label %.loopexit

8:                                                ; preds = %3
  %9 = zext i32 %1 to i64
  %10 = icmp eq i32 %1, 1
  br i1 %10, label %.preheader, label %11

11:                                               ; preds = %8
  %12 = getelementptr double, double* %6, i64 %9
  %13 = getelementptr double, double* %5, i64 %9
  %14 = icmp ult double* %6, %13
  %15 = icmp ult double* %5, %12
  %16 = and i1 %14, %15
  br i1 %16, label %.preheader, label %17

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
  %27 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %26)
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
  br i1 %35, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %34, %11, %8
  %.ph = phi i64 [ %18, %34 ], [ 0, %8 ], [ 0, %11 ]
  br label %36

36:                                               ; preds = %.preheader, %36
  %37 = phi i64 [ %45, %36 ], [ %.ph, %.preheader ]
  %38 = getelementptr inbounds double, double* %5, i64 %37
  %39 = load double, double* %38, align 8, !tbaa !10
  %40 = fadd double %39, -1.000000e+00
  %41 = tail call double @llvm.fabs.f64(double %40) #2
  %42 = fcmp olt double %41, %4
  %43 = select i1 %42, double 1.000000e+00, double %39
  %44 = getelementptr inbounds double, double* %6, i64 %37
  store double %43, double* %44, align 8, !tbaa !10
  %45 = add nuw nsw i64 %37, 1
  %46 = icmp eq i64 %45, %9
  br i1 %46, label %.loopexit, label %36, !llvm.loop !121

.loopexit:                                        ; preds = %36, %34, %3, %0
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
  br i1 %24, label %.loopexit37, label %.preheader38

.preheader38:                                     ; preds = %2, %80
  %25 = phi double [ %84, %80 ], [ 0.000000e+00, %2 ]
  %26 = phi i64 [ %99, %80 ], [ 0, %2 ]
  %27 = phi i32 [ %81, %80 ], [ 0, %2 ]
  br label %71

28:                                               ; preds = %80
  %29 = icmp sgt i32 %11, 0
  br i1 %29, label %.preheader36, label %.loopexit37

.preheader36:                                     ; preds = %28, %67
  %30 = phi i32 [ %68, %67 ], [ 0, %28 ]
  %31 = phi i32 [ %63, %67 ], [ 0, %28 ]
  %32 = phi i32 [ %69, %67 ], [ 0, %28 ]
  br label %33

33:                                               ; preds = %62, %.preheader36
  %34 = phi i32 [ %30, %.preheader36 ], [ %64, %62 ]
  %35 = phi i32 [ %31, %.preheader36 ], [ %63, %62 ]
  %36 = phi i32 [ 0, %.preheader36 ], [ %65, %62 ]
  %37 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 17, i32 0, i32 0, i32 0, i32 0), align 8
  br label %38

38:                                               ; preds = %38, %33
  %39 = phi i32 [ %34, %33 ], [ %45, %38 ]
  %40 = phi i32 [ %35, %33 ], [ %59, %38 ]
  %41 = phi i32 [ 0, %33 ], [ %60, %38 ]
  %42 = shl nsw i32 %40, 3
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %37, i64 %43
  store i32 %39, i32* %44, align 4, !tbaa !12
  %45 = add nsw i32 %39, 1
  %46 = getelementptr inbounds i32, i32* %44, i64 1
  store i32 %45, i32* %46, align 4, !tbaa !12
  %47 = add nsw i32 %39, %12
  %48 = add nsw i32 %47, 1
  %49 = getelementptr inbounds i32, i32* %44, i64 2
  store i32 %48, i32* %49, align 4, !tbaa !12
  %50 = getelementptr inbounds i32, i32* %44, i64 3
  store i32 %47, i32* %50, align 4, !tbaa !12
  %51 = add nsw i32 %39, %15
  %52 = getelementptr inbounds i32, i32* %44, i64 4
  store i32 %51, i32* %52, align 4, !tbaa !12
  %53 = add nsw i32 %51, 1
  %54 = getelementptr inbounds i32, i32* %44, i64 5
  store i32 %53, i32* %54, align 4, !tbaa !12
  %55 = add nsw i32 %51, %12
  %56 = add nsw i32 %55, 1
  %57 = getelementptr inbounds i32, i32* %44, i64 6
  store i32 %56, i32* %57, align 4, !tbaa !12
  %58 = getelementptr inbounds i32, i32* %44, i64 7
  store i32 %55, i32* %58, align 4, !tbaa !12
  %59 = add nsw i32 %40, 1
  %60 = add nuw nsw i32 %41, 1
  %61 = icmp eq i32 %60, %11
  br i1 %61, label %62, label %38, !llvm.loop !125

62:                                               ; preds = %38
  %63 = add i32 %35, %11
  %64 = add nsw i32 %39, 2
  %65 = add nuw nsw i32 %36, 1
  %66 = icmp eq i32 %65, %11
  br i1 %66, label %67, label %33, !llvm.loop !126

67:                                               ; preds = %62
  %68 = add nsw i32 %64, %12
  %69 = add nuw nsw i32 %32, 1
  %70 = icmp eq i32 %69, %11
  br i1 %70, label %.loopexit37, label %.preheader36, !llvm.loop !127

71:                                               ; preds = %86, %.preheader38
  %72 = phi double [ %90, %86 ], [ 0.000000e+00, %.preheader38 ]
  %73 = phi i64 [ %99, %86 ], [ %26, %.preheader38 ]
  %74 = phi i32 [ %87, %86 ], [ 0, %.preheader38 ]
  %75 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0), align 8
  %76 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0), align 8
  %77 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0), align 8
  %78 = shl i64 %73, 32
  %79 = ashr exact i64 %78, 32
  br label %92

80:                                               ; preds = %86
  %81 = add nuw i32 %27, 1
  %82 = sitofp i32 %81 to double
  %83 = fmul double %82, 1.125000e+00
  %84 = fdiv double %83, %23
  %85 = icmp eq i32 %27, %11
  br i1 %85, label %28, label %.preheader38, !llvm.loop !128

86:                                               ; preds = %92
  %87 = add nuw i32 %74, 1
  %88 = sitofp i32 %87 to double
  %89 = fmul double %88, 1.125000e+00
  %90 = fdiv double %89, %23
  %91 = icmp eq i32 %74, %11
  br i1 %91, label %80, label %71, !llvm.loop !129

92:                                               ; preds = %92, %71
  %93 = phi i64 [ %79, %71 ], [ %99, %92 ]
  %94 = phi double [ 0.000000e+00, %71 ], [ %103, %92 ]
  %95 = phi i32 [ 0, %71 ], [ %100, %92 ]
  %96 = getelementptr inbounds double, double* %75, i64 %93
  store double %94, double* %96, align 8, !tbaa !10
  %97 = getelementptr inbounds double, double* %76, i64 %93
  store double %72, double* %97, align 8, !tbaa !10
  %98 = getelementptr inbounds double, double* %77, i64 %93
  store double %25, double* %98, align 8, !tbaa !10
  %99 = add nsw i64 %93, 1
  %100 = add nuw i32 %95, 1
  %101 = sitofp i32 %100 to double
  %102 = fmul double %101, 1.125000e+00
  %103 = fdiv double %102, %23
  %104 = icmp eq i32 %95, %11
  br i1 %104, label %86, label %92, !llvm.loop !130

.loopexit37:                                      ; preds = %67, %28, %2
  %105 = phi i1 [ false, %28 ], [ false, %2 ], [ true, %67 ]
  %106 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 16, i32 0, i32 0, i32 0, i32 0), align 8
  %107 = icmp sgt i32 %14, 0
  br i1 %107, label %108, label %.loopexit35

108:                                              ; preds = %.loopexit37
  %109 = zext i32 %14 to i64
  %110 = icmp ult i32 %14, 4
  br i1 %110, label %.preheader96, label %111

.preheader96:                                     ; preds = %121, %108
  %.ph97 = phi i64 [ %112, %121 ], [ 0, %108 ]
  br label %138

111:                                              ; preds = %108
  %112 = and i64 %109, 4294967292
  br label %113

113:                                              ; preds = %113, %111
  %114 = phi i64 [ 0, %111 ], [ %118, %113 ]
  %115 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %111 ], [ %119, %113 ]
  %116 = getelementptr inbounds i32, i32* %106, i64 %114
  %117 = bitcast i32* %116 to <4 x i32>*
  store <4 x i32> %115, <4 x i32>* %117, align 4, !tbaa !12
  %118 = add nuw i64 %114, 4
  %119 = add <4 x i32> %115, <i32 4, i32 4, i32 4, i32 4>
  %120 = icmp eq i64 %118, %112
  br i1 %120, label %121, label %113, !llvm.loop !131

121:                                              ; preds = %113
  %122 = icmp eq i64 %112, %109
  br i1 %122, label %.loopexit35, label %.preheader96

.loopexit35:                                      ; preds = %138, %121, %.loopexit37
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
  %123 = bitcast [8 x double]* %3 to i8*
  %124 = bitcast [8 x double]* %4 to i8*
  %125 = bitcast [8 x double]* %5 to i8*
  %126 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 17, i32 0, i32 0, i32 0, i32 0), align 8
  %127 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0), align 8
  %128 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0), align 8
  %129 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0), align 8
  %130 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 0, i64 0
  %131 = getelementptr inbounds [8 x double], [8 x double]* %4, i64 0, i64 0
  %132 = getelementptr inbounds [8 x double], [8 x double]* %5, i64 0, i64 0
  %133 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 40, i32 0, i32 0, i32 0, i32 0), align 8
  %134 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 46, i32 0, i32 0, i32 0, i32 0), align 8
  %135 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 12, i32 0, i32 0, i32 0, i32 0), align 8
  br i1 %107, label %136, label %.loopexit34

136:                                              ; preds = %.loopexit35
  %137 = zext i32 %14 to i64
  br label %154

138:                                              ; preds = %.preheader96, %138
  %139 = phi i64 [ %142, %138 ], [ %.ph97, %.preheader96 ]
  %140 = getelementptr inbounds i32, i32* %106, i64 %139
  %141 = trunc i64 %139 to i32
  store i32 %141, i32* %140, align 4, !tbaa !12
  %142 = add nuw nsw i64 %139, 1
  %143 = icmp eq i64 %142, %109
  br i1 %143, label %.loopexit35, label %138, !llvm.loop !132

.loopexit34:                                      ; preds = %179, %.loopexit35
  %144 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 34, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  store double 0x4182D43F20000000, double* %144, align 8, !tbaa !10
  br i1 %24, label %.loopexit33, label %145

145:                                              ; preds = %.loopexit34
  %146 = and i64 %10, 4294967295
  %147 = add nuw nsw i64 %146, 1
  %148 = icmp ult i64 %146, 3
  %149 = and i64 %147, 8589934588
  %150 = trunc i64 %149 to i32
  %151 = insertelement <4 x i32> poison, i32 %12, i32 0
  %152 = shufflevector <4 x i32> %151, <4 x i32> poison, <4 x i32> zeroinitializer
  %153 = icmp eq i64 %147, %149
  br label %227

154:                                              ; preds = %179, %136
  %155 = phi i64 [ 0, %136 ], [ %180, %179 ]
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %123) #2
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %124) #2
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %125) #2
  %156 = shl nsw i64 %155, 3
  %157 = getelementptr inbounds i32, i32* %126, i64 %156
  br label %163

158:                                              ; preds = %163
  %159 = call double @_Z14CalcElemVolumePKdS0_S0_(double* nonnull %130, double* nonnull %131, double* nonnull %132)
  %160 = getelementptr inbounds double, double* %133, i64 %155
  store double %159, double* %160, align 8, !tbaa !10
  %161 = getelementptr inbounds double, double* %134, i64 %155
  store double %159, double* %161, align 8, !tbaa !10
  %162 = fmul double %159, 1.250000e-01
  br label %182

163:                                              ; preds = %163, %154
  %164 = phi i64 [ 0, %154 ], [ %177, %163 ]
  %165 = getelementptr inbounds i32, i32* %157, i64 %164
  %166 = load i32, i32* %165, align 4, !tbaa !12
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds double, double* %127, i64 %167
  %169 = load double, double* %168, align 8, !tbaa !10
  %170 = getelementptr inbounds [8 x double], [8 x double]* %3, i64 0, i64 %164
  store double %169, double* %170, align 8, !tbaa !10
  %171 = getelementptr inbounds double, double* %128, i64 %167
  %172 = load double, double* %171, align 8, !tbaa !10
  %173 = getelementptr inbounds [8 x double], [8 x double]* %4, i64 0, i64 %164
  store double %172, double* %173, align 8, !tbaa !10
  %174 = getelementptr inbounds double, double* %129, i64 %167
  %175 = load double, double* %174, align 8, !tbaa !10
  %176 = getelementptr inbounds [8 x double], [8 x double]* %5, i64 0, i64 %164
  store double %175, double* %176, align 8, !tbaa !10
  %177 = add nuw nsw i64 %164, 1
  %178 = icmp eq i64 %177, 8
  br i1 %178, label %158, label %163, !llvm.loop !133

179:                                              ; preds = %182
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %125) #2
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %124) #2
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %123) #2
  %180 = add nuw nsw i64 %155, 1
  %181 = icmp eq i64 %180, %137
  br i1 %181, label %.loopexit34, label %154, !llvm.loop !134

182:                                              ; preds = %182, %158
  %183 = phi i64 [ 0, %158 ], [ %190, %182 ]
  %184 = getelementptr inbounds i32, i32* %157, i64 %183
  %185 = load i32, i32* %184, align 4, !tbaa !12
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds double, double* %135, i64 %186
  %188 = load double, double* %187, align 8, !tbaa !10
  %189 = fadd double %162, %188
  store double %189, double* %187, align 8, !tbaa !10
  %190 = add nuw nsw i64 %183, 1
  %191 = icmp eq i64 %190, 8
  br i1 %191, label %179, label %182, !llvm.loop !135

.loopexit33:                                      ; preds = %.loopexit32, %.loopexit34
  %192 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 18, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !8
  store i32 0, i32* %192, align 4, !tbaa !12
  %193 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 19, i32 0, i32 0, i32 0, i32 0), align 8
  %194 = icmp sgt i32 %14, 1
  br i1 %194, label %195, label %.loopexit31

195:                                              ; preds = %.loopexit33
  %196 = zext i32 %14 to i64
  %197 = add nsw i64 %196, -1
  %198 = icmp ult i64 %197, 4
  br i1 %198, label %.preheader90, label %199

.preheader90:                                     ; preds = %224, %199, %195
  %.ph91 = phi i64 [ %225, %224 ], [ 1, %195 ], [ 1, %199 ]
  br label %341

199:                                              ; preds = %195
  %200 = getelementptr i32, i32* %192, i64 1
  %201 = getelementptr i32, i32* %192, i64 %196
  %202 = getelementptr i32, i32* %193, i64 %197
  %203 = icmp ult i32* %200, %202
  %204 = icmp ult i32* %193, %201
  %205 = and i1 %204, %203
  br i1 %205, label %.preheader90, label %206

206:                                              ; preds = %199
  %207 = and i64 %197, -4
  br label %208

208:                                              ; preds = %208, %206
  %209 = phi i64 [ 0, %206 ], [ %220, %208 ]
  %210 = phi <4 x i64> [ <i64 1, i64 2, i64 3, i64 4>, %206 ], [ %221, %208 ]
  %211 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %206 ], [ %222, %208 ]
  %212 = or i64 %209, 1
  %213 = add nsw <4 x i64> %210, <i64 -1, i64 -1, i64 -1, i64 -1>
  %214 = getelementptr inbounds i32, i32* %192, i64 %212
  %215 = trunc <4 x i64> %213 to <4 x i32>
  %216 = bitcast i32* %214 to <4 x i32>*
  store <4 x i32> %215, <4 x i32>* %216, align 4, !tbaa !12, !alias.scope !136, !noalias !139
  %217 = extractelement <4 x i64> %213, i32 0
  %218 = getelementptr inbounds i32, i32* %193, i64 %217
  %219 = bitcast i32* %218 to <4 x i32>*
  store <4 x i32> %211, <4 x i32>* %219, align 4, !tbaa !12, !alias.scope !139
  %220 = add nuw i64 %209, 4
  %221 = add <4 x i64> %210, <i64 4, i64 4, i64 4, i64 4>
  %222 = add <4 x i32> %211, <i32 4, i32 4, i32 4, i32 4>
  %223 = icmp eq i64 %220, %207
  br i1 %223, label %224, label %208, !llvm.loop !141

224:                                              ; preds = %208
  %225 = or i64 %207, 1
  %226 = icmp eq i64 %197, %207
  br i1 %226, label %.loopexit31, label %.preheader90

227:                                              ; preds = %.loopexit32, %145
  %228 = phi i64 [ %280, %.loopexit32 ], [ 0, %145 ]
  %229 = phi i32 [ %281, %.loopexit32 ], [ 0, %145 ]
  %230 = mul nsw i32 %229, %12
  %231 = mul nsw i32 %230, %12
  %232 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 13, i32 0, i32 0, i32 0, i32 0), align 8
  %233 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 14, i32 0, i32 0, i32 0, i32 0), align 8
  %234 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 15, i32 0, i32 0, i32 0, i32 0), align 8
  %235 = shl i64 %228, 32
  %236 = ashr exact i64 %235, 32
  br i1 %148, label %.preheader92, label %237

.preheader92:                                     ; preds = %278, %237, %227
  %.ph93 = phi i64 [ %279, %278 ], [ %236, %227 ], [ %236, %237 ]
  %.ph94 = phi i32 [ %150, %278 ], [ 0, %227 ], [ 0, %237 ]
  br label %283

237:                                              ; preds = %227
  %238 = getelementptr i32, i32* %232, i64 %236
  %239 = add nsw i64 %236, %147
  %240 = getelementptr i32, i32* %232, i64 %239
  %241 = getelementptr i32, i32* %233, i64 %236
  %242 = getelementptr i32, i32* %233, i64 %239
  %243 = getelementptr i32, i32* %234, i64 %236
  %244 = getelementptr i32, i32* %234, i64 %239
  %245 = icmp ult i32* %238, %242
  %246 = icmp ult i32* %241, %240
  %247 = and i1 %245, %246
  %248 = icmp ult i32* %238, %244
  %249 = icmp ult i32* %243, %240
  %250 = and i1 %248, %249
  %251 = or i1 %247, %250
  %252 = icmp ult i32* %241, %244
  %253 = icmp ult i32* %243, %242
  %254 = and i1 %252, %253
  %255 = or i1 %254, %251
  br i1 %255, label %.preheader92, label %256

256:                                              ; preds = %237
  %257 = insertelement <4 x i32> poison, i32 %231, i32 0
  %258 = shufflevector <4 x i32> %257, <4 x i32> poison, <4 x i32> zeroinitializer
  %259 = insertelement <4 x i32> poison, i32 %230, i32 0
  %260 = shufflevector <4 x i32> %259, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %261

261:                                              ; preds = %261, %256
  %262 = phi i64 [ 0, %256 ], [ %275, %261 ]
  %263 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %256 ], [ %276, %261 ]
  %264 = add i64 %262, %236
  %265 = mul nsw <4 x i32> %263, %152
  %266 = add nsw <4 x i32> %265, %258
  %267 = getelementptr inbounds i32, i32* %232, i64 %264
  %268 = bitcast i32* %267 to <4 x i32>*
  store <4 x i32> %266, <4 x i32>* %268, align 4, !tbaa !12, !alias.scope !142, !noalias !145
  %269 = add nsw <4 x i32> %263, %258
  %270 = getelementptr inbounds i32, i32* %233, i64 %264
  %271 = bitcast i32* %270 to <4 x i32>*
  store <4 x i32> %269, <4 x i32>* %271, align 4, !tbaa !12, !alias.scope !148, !noalias !149
  %272 = add nsw <4 x i32> %263, %260
  %273 = getelementptr inbounds i32, i32* %234, i64 %264
  %274 = bitcast i32* %273 to <4 x i32>*
  store <4 x i32> %272, <4 x i32>* %274, align 4, !tbaa !12, !alias.scope !149
  %275 = add nuw i64 %262, 4
  %276 = add <4 x i32> %263, <i32 4, i32 4, i32 4, i32 4>
  %277 = icmp eq i64 %275, %149
  br i1 %277, label %278, label %261, !llvm.loop !150

278:                                              ; preds = %261
  %279 = add nsw i64 %236, %149
  br i1 %153, label %.loopexit32, label %.preheader92

.loopexit32:                                      ; preds = %283, %278
  %280 = phi i64 [ %279, %278 ], [ %293, %283 ]
  %281 = add nuw i32 %229, 1
  %282 = icmp eq i32 %229, %11
  br i1 %282, label %.loopexit33, label %227, !llvm.loop !151

283:                                              ; preds = %.preheader92, %283
  %284 = phi i64 [ %293, %283 ], [ %.ph93, %.preheader92 ]
  %285 = phi i32 [ %294, %283 ], [ %.ph94, %.preheader92 ]
  %286 = mul nsw i32 %285, %12
  %287 = add nsw i32 %286, %231
  %288 = getelementptr inbounds i32, i32* %232, i64 %284
  store i32 %287, i32* %288, align 4, !tbaa !12
  %289 = add nsw i32 %285, %231
  %290 = getelementptr inbounds i32, i32* %233, i64 %284
  store i32 %289, i32* %290, align 4, !tbaa !12
  %291 = add nsw i32 %285, %230
  %292 = getelementptr inbounds i32, i32* %234, i64 %284
  store i32 %291, i32* %292, align 4, !tbaa !12
  %293 = add nsw i64 %284, 1
  %294 = add nuw i32 %285, 1
  %295 = icmp eq i32 %285, %11
  br i1 %295, label %.loopexit32, label %283, !llvm.loop !152

.loopexit31:                                      ; preds = %341, %224, %.loopexit33
  %296 = add nsw i32 %14, -1
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %193, i64 %297
  store i32 %296, i32* %298, align 4, !tbaa !12
  %299 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 20, i32 0, i32 0, i32 0, i32 0), align 8
  %300 = sub nsw i32 %14, %11
  %301 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 21, i32 0, i32 0, i32 0, i32 0), align 8
  br i1 %105, label %302, label %352

302:                                              ; preds = %.loopexit31
  %303 = and i64 %10, 4294967295
  %304 = icmp ult i64 %303, 4
  br i1 %304, label %.preheader87, label %305

.preheader87:                                     ; preds = %338, %305, %302
  %.ph88 = phi i64 [ %320, %338 ], [ 0, %302 ], [ 0, %305 ]
  %.ph89 = phi i32 [ %339, %338 ], [ 0, %302 ], [ 0, %305 ]
  br label %395

305:                                              ; preds = %302
  %306 = getelementptr i32, i32* %299, i64 %303
  %307 = mul i64 %10, %10
  %308 = add i64 %307, -1
  %309 = shl i64 %10, 32
  %310 = mul i64 %309, %308
  %311 = ashr exact i64 %310, 32
  %312 = getelementptr i32, i32* %301, i64 %311
  %313 = add nsw i64 %311, %303
  %314 = getelementptr i32, i32* %301, i64 %313
  %315 = icmp ult i32* %299, %314
  %316 = icmp ult i32* %312, %306
  %317 = and i1 %315, %316
  br i1 %317, label %.preheader87, label %318

318:                                              ; preds = %305
  %319 = and i64 %10, 3
  %320 = sub nuw nsw i64 %303, %319
  %321 = insertelement <4 x i32> poison, i32 %300, i32 0
  %322 = shufflevector <4 x i32> %321, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %323

323:                                              ; preds = %323, %318
  %324 = phi i64 [ 0, %318 ], [ %334, %323 ]
  %325 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %318 ], [ %335, %323 ]
  %326 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %318 ], [ %336, %323 ]
  %327 = getelementptr inbounds i32, i32* %299, i64 %324
  %328 = bitcast i32* %327 to <4 x i32>*
  store <4 x i32> %326, <4 x i32>* %328, align 4, !tbaa !12, !alias.scope !153, !noalias !156
  %329 = add nsw <4 x i32> %325, %322
  %330 = extractelement <4 x i32> %329, i32 0
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %301, i64 %331
  %333 = bitcast i32* %332 to <4 x i32>*
  store <4 x i32> %329, <4 x i32>* %333, align 4, !tbaa !12, !alias.scope !156
  %334 = add nuw i64 %324, 4
  %335 = add <4 x i32> %325, <i32 4, i32 4, i32 4, i32 4>
  %336 = add <4 x i32> %326, <i32 4, i32 4, i32 4, i32 4>
  %337 = icmp eq i64 %334, %320
  br i1 %337, label %338, label %323, !llvm.loop !158

338:                                              ; preds = %323
  %339 = trunc i64 %320 to i32
  %340 = icmp eq i64 %319, 0
  br i1 %340, label %.loopexit30, label %.preheader87

341:                                              ; preds = %.preheader90, %341
  %342 = phi i64 [ %348, %341 ], [ %.ph91, %.preheader90 ]
  %343 = add nsw i64 %342, -1
  %344 = getelementptr inbounds i32, i32* %192, i64 %342
  %345 = trunc i64 %343 to i32
  store i32 %345, i32* %344, align 4, !tbaa !12
  %346 = getelementptr inbounds i32, i32* %193, i64 %343
  %347 = trunc i64 %342 to i32
  store i32 %347, i32* %346, align 4, !tbaa !12
  %348 = add nuw nsw i64 %342, 1
  %349 = icmp eq i64 %348, %196
  br i1 %349, label %.loopexit31, label %341, !llvm.loop !159

.loopexit30:                                      ; preds = %395, %338
  %350 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 20, i32 0, i32 0, i32 0, i32 0), align 8
  %351 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 21, i32 0, i32 0, i32 0, i32 0), align 8
  br label %352

352:                                              ; preds = %.loopexit30, %.loopexit31
  %353 = phi i32* [ %351, %.loopexit30 ], [ %301, %.loopexit31 ]
  %354 = phi i32* [ %350, %.loopexit30 ], [ %299, %.loopexit31 ]
  %355 = icmp sgt i32 %14, %11
  br i1 %355, label %356, label %.loopexit29

356:                                              ; preds = %352
  %357 = shl i64 %10, 32
  %358 = ashr exact i64 %357, 32
  %359 = sub nsw i64 %17, %358
  %360 = icmp ult i64 %359, 4
  br i1 %360, label %.preheader85, label %361

.preheader85:                                     ; preds = %392, %361, %356
  %.ph86 = phi i64 [ %393, %392 ], [ %358, %356 ], [ %358, %361 ]
  br label %446

361:                                              ; preds = %356
  %362 = getelementptr i32, i32* %354, i64 %358
  %363 = getelementptr i32, i32* %354, i64 %17
  %364 = getelementptr i32, i32* %353, i64 %359
  %365 = icmp ult i32* %362, %364
  %366 = icmp ult i32* %353, %363
  %367 = and i1 %365, %366
  br i1 %367, label %.preheader85, label %368

368:                                              ; preds = %361
  %369 = and i64 %359, -4
  %370 = insertelement <4 x i64> poison, i64 %358, i32 0
  %371 = shufflevector <4 x i64> %370, <4 x i64> poison, <4 x i32> zeroinitializer
  %372 = add <4 x i64> %371, <i64 0, i64 1, i64 2, i64 3>
  %373 = insertelement <4 x i32> poison, i32 %11, i32 0
  %374 = shufflevector <4 x i32> %373, <4 x i32> poison, <4 x i32> zeroinitializer
  %375 = add <4 x i32> %374, <i32 0, i32 1, i32 2, i32 3>
  br label %376

376:                                              ; preds = %376, %368
  %377 = phi i64 [ 0, %368 ], [ %388, %376 ]
  %378 = phi <4 x i64> [ %372, %368 ], [ %389, %376 ]
  %379 = phi <4 x i32> [ %375, %368 ], [ %390, %376 ]
  %380 = add i64 %377, %358
  %381 = sub nsw <4 x i64> %378, %371
  %382 = getelementptr inbounds i32, i32* %354, i64 %380
  %383 = trunc <4 x i64> %381 to <4 x i32>
  %384 = bitcast i32* %382 to <4 x i32>*
  store <4 x i32> %383, <4 x i32>* %384, align 4, !tbaa !12, !alias.scope !160, !noalias !163
  %385 = extractelement <4 x i64> %381, i32 0
  %386 = getelementptr inbounds i32, i32* %353, i64 %385
  %387 = bitcast i32* %386 to <4 x i32>*
  store <4 x i32> %379, <4 x i32>* %387, align 4, !tbaa !12, !alias.scope !163
  %388 = add nuw i64 %377, 4
  %389 = add <4 x i64> %378, <i64 4, i64 4, i64 4, i64 4>
  %390 = add <4 x i32> %379, <i32 4, i32 4, i32 4, i32 4>
  %391 = icmp eq i64 %388, %369
  br i1 %391, label %392, label %376, !llvm.loop !165

392:                                              ; preds = %376
  %393 = add nsw i64 %369, %358
  %394 = icmp eq i64 %359, %369
  br i1 %394, label %.loopexit29, label %.preheader85

395:                                              ; preds = %.preheader87, %395
  %396 = phi i64 [ %403, %395 ], [ %.ph88, %.preheader87 ]
  %397 = phi i32 [ %404, %395 ], [ %.ph89, %.preheader87 ]
  %398 = getelementptr inbounds i32, i32* %299, i64 %396
  %399 = trunc i64 %396 to i32
  store i32 %399, i32* %398, align 4, !tbaa !12
  %400 = add nsw i32 %397, %300
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds i32, i32* %301, i64 %401
  store i32 %400, i32* %402, align 4, !tbaa !12
  %403 = add nuw nsw i64 %396, 1
  %404 = add nuw nsw i32 %397, 1
  %405 = icmp eq i64 %403, %303
  br i1 %405, label %.loopexit30, label %395, !llvm.loop !166

.loopexit29:                                      ; preds = %446, %392, %352
  %406 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 22, i32 0, i32 0, i32 0, i32 0), align 8
  %407 = sub i32 %14, %13
  %408 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 23, i32 0, i32 0, i32 0, i32 0), align 8
  %409 = icmp eq i32 %13, 0
  br i1 %409, label %457, label %410

410:                                              ; preds = %.loopexit29
  %411 = zext i32 %13 to i64
  %412 = icmp ult i32 %13, 4
  br i1 %412, label %._crit_edge, label %413

._crit_edge:                                      ; preds = %410
  %.pre = sext i32 %407 to i64
  br label %443

413:                                              ; preds = %410
  %414 = getelementptr i32, i32* %406, i64 %411
  %415 = sext i32 %407 to i64
  %416 = getelementptr i32, i32* %408, i64 %415
  %417 = add nsw i64 %415, %411
  %418 = getelementptr i32, i32* %408, i64 %417
  %419 = icmp ult i32* %406, %418
  %420 = icmp ult i32* %416, %414
  %421 = and i1 %419, %420
  br i1 %421, label %443, label %422

422:                                              ; preds = %413
  %423 = and i64 %411, 4294967292
  %424 = insertelement <4 x i32> poison, i32 %407, i32 0
  %425 = shufflevector <4 x i32> %424, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %426

426:                                              ; preds = %426, %422
  %427 = phi i64 [ 0, %422 ], [ %437, %426 ]
  %428 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %422 ], [ %438, %426 ]
  %429 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %422 ], [ %439, %426 ]
  %430 = getelementptr inbounds i32, i32* %406, i64 %427
  %431 = bitcast i32* %430 to <4 x i32>*
  store <4 x i32> %429, <4 x i32>* %431, align 4, !tbaa !12, !alias.scope !167, !noalias !170
  %432 = add nsw <4 x i32> %428, %425
  %433 = extractelement <4 x i32> %432, i32 0
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds i32, i32* %408, i64 %434
  %436 = bitcast i32* %435 to <4 x i32>*
  store <4 x i32> %432, <4 x i32>* %436, align 4, !tbaa !12, !alias.scope !170
  %437 = add nuw i64 %427, 4
  %438 = add <4 x i32> %428, <i32 4, i32 4, i32 4, i32 4>
  %439 = add <4 x i32> %429, <i32 4, i32 4, i32 4, i32 4>
  %440 = icmp eq i64 %437, %423
  br i1 %440, label %441, label %426, !llvm.loop !172

441:                                              ; preds = %426
  %442 = icmp eq i64 %423, %411
  br i1 %442, label %.loopexit28, label %443

443:                                              ; preds = %._crit_edge, %441, %413
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %415, %441 ], [ %415, %413 ]
  %444 = phi i64 [ 0, %._crit_edge ], [ %423, %441 ], [ 0, %413 ]
  %sext = shl nuw i64 %444, 32
  %445 = ashr exact i64 %sext, 32
  br label %501

446:                                              ; preds = %.preheader85, %446
  %447 = phi i64 [ %453, %446 ], [ %.ph86, %.preheader85 ]
  %448 = sub nsw i64 %447, %358
  %449 = getelementptr inbounds i32, i32* %354, i64 %447
  %450 = trunc i64 %448 to i32
  store i32 %450, i32* %449, align 4, !tbaa !12
  %451 = getelementptr inbounds i32, i32* %353, i64 %448
  %452 = trunc i64 %447 to i32
  store i32 %452, i32* %451, align 4, !tbaa !12
  %453 = add nsw i64 %447, 1
  %454 = icmp eq i64 %453, %17
  br i1 %454, label %.loopexit29, label %446, !llvm.loop !173

.loopexit28:                                      ; preds = %501, %441
  %455 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 22, i32 0, i32 0, i32 0, i32 0), align 8
  %456 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 23, i32 0, i32 0, i32 0, i32 0), align 8
  br label %457

457:                                              ; preds = %.loopexit28, %.loopexit29
  %458 = phi i32* [ %456, %.loopexit28 ], [ %408, %.loopexit29 ]
  %459 = phi i32* [ %455, %.loopexit28 ], [ %406, %.loopexit29 ]
  %460 = icmp sgt i32 %14, %13
  br i1 %460, label %461, label %.loopexit27

461:                                              ; preds = %457
  %462 = zext i32 %13 to i64
  %463 = add i32 %407, -1
  %464 = zext i32 %463 to i64
  %465 = add nuw nsw i64 %464, 1
  %466 = icmp ult i32 %463, 3
  %467 = icmp slt i32 %463, 0
  %468 = or i1 %466, %467
  br i1 %468, label %.preheader84, label %469

.preheader84:                                     ; preds = %498, %469, %461
  %.ph = phi i64 [ %499, %498 ], [ %462, %461 ], [ %462, %469 ]
  br label %514

469:                                              ; preds = %461
  %470 = getelementptr i32, i32* %459, i64 %462
  %471 = add nuw nsw i64 %465, %462
  %472 = getelementptr i32, i32* %459, i64 %471
  %473 = getelementptr i32, i32* %458, i64 %465
  %474 = icmp ult i32* %470, %473
  %475 = icmp ult i32* %458, %472
  %476 = and i1 %474, %475
  br i1 %476, label %.preheader84, label %477

477:                                              ; preds = %469
  %478 = and i64 %465, 8589934588
  %479 = insertelement <4 x i32> poison, i32 %13, i32 0
  %480 = shufflevector <4 x i32> %479, <4 x i32> poison, <4 x i32> zeroinitializer
  %481 = add <4 x i32> %480, <i32 0, i32 1, i32 2, i32 3>
  br label %482

482:                                              ; preds = %482, %477
  %483 = phi i64 [ 0, %477 ], [ %494, %482 ]
  %484 = phi <4 x i32> [ %481, %477 ], [ %495, %482 ]
  %485 = phi <4 x i32> [ %481, %477 ], [ %496, %482 ]
  %486 = add i64 %483, %462
  %487 = getelementptr inbounds i32, i32* %459, i64 %486
  %488 = sub <4 x i32> %484, %480
  %489 = bitcast i32* %487 to <4 x i32>*
  store <4 x i32> %488, <4 x i32>* %489, align 4, !tbaa !12, !alias.scope !174, !noalias !177
  %490 = extractelement <4 x i32> %488, i32 0
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds i32, i32* %458, i64 %491
  %493 = bitcast i32* %492 to <4 x i32>*
  store <4 x i32> %485, <4 x i32>* %493, align 4, !tbaa !12, !alias.scope !177
  %494 = add nuw i64 %483, 4
  %495 = add <4 x i32> %484, <i32 4, i32 4, i32 4, i32 4>
  %496 = add <4 x i32> %485, <i32 4, i32 4, i32 4, i32 4>
  %497 = icmp eq i64 %494, %478
  br i1 %497, label %498, label %482, !llvm.loop !179

498:                                              ; preds = %482
  %499 = add nuw nsw i64 %478, %462
  %500 = icmp eq i64 %465, %478
  br i1 %500, label %.loopexit27, label %.preheader84

501:                                              ; preds = %501, %443
  %indvars.iv = phi i64 [ %indvars.iv.next, %501 ], [ %445, %443 ]
  %502 = phi i64 [ %508, %501 ], [ %444, %443 ]
  %503 = getelementptr inbounds i32, i32* %406, i64 %502
  %504 = trunc i64 %502 to i32
  store i32 %504, i32* %503, align 4, !tbaa !12
  %505 = add nsw i64 %indvars.iv, %.pre-phi
  %506 = getelementptr inbounds i32, i32* %408, i64 %505
  %507 = trunc i64 %505 to i32
  store i32 %507, i32* %506, align 4, !tbaa !12
  %508 = add nuw nsw i64 %502, 1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %509 = icmp eq i64 %508, %411
  br i1 %509, label %.loopexit28, label %501, !llvm.loop !180

.loopexit27:                                      ; preds = %514, %498, %457
  br i1 %107, label %510, label %524

510:                                              ; preds = %.loopexit27
  %511 = load i8*, i8** bitcast (i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 24, i32 0, i32 0, i32 0, i32 0) to i8**), align 8
  %512 = zext i32 %14 to i64
  %513 = shl nuw nsw i64 %512, 2
  tail call void @llvm.memset.p0i8.i64(i8* align 4 %511, i8 0, i64 %513, i1 false)
  br label %524

514:                                              ; preds = %.preheader84, %514
  %515 = phi i64 [ %521, %514 ], [ %.ph, %.preheader84 ]
  %516 = getelementptr inbounds i32, i32* %459, i64 %515
  %517 = trunc i64 %515 to i32
  %518 = sub i32 %517, %13
  store i32 %518, i32* %516, align 4, !tbaa !12
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds i32, i32* %458, i64 %519
  store i32 %517, i32* %520, align 4, !tbaa !12
  %521 = add nuw nsw i64 %515, 1
  %522 = trunc i64 %521 to i32
  %523 = icmp sgt i32 %14, %522
  br i1 %523, label %514, label %.loopexit27, !llvm.loop !181

524:                                              ; preds = %510, %.loopexit27
  %525 = add i64 %10, 4294967295
  %526 = sub i32 %13, %11
  br i1 %105, label %527, label %.loopexit26

527:                                              ; preds = %524
  %528 = shl i64 %10, 32
  %529 = ashr exact i64 %528, 32
  %530 = and i64 %10, 4294967295
  br label %537

.loopexit26:                                      ; preds = %542, %524
  %531 = bitcast %struct.timeval* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %531) #2
  %532 = bitcast %struct.timeval* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %532) #2
  %533 = call i32 @gettimeofday(%struct.timeval* nonnull %6, i8* null) #2
  %534 = load double, double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 48), align 8, !tbaa !10
  %535 = load double, double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 52), align 8, !tbaa !10
  %536 = fcmp olt double %534, %535
  br i1 %536, label %.preheader24, label %.loopexit25

537:                                              ; preds = %542, %527
  %538 = phi i64 [ 0, %527 ], [ %543, %542 ]
  %539 = mul nsw i64 %538, %529
  %540 = mul nsw i64 %539, %529
  %541 = load i32*, i32** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 24, i32 0, i32 0, i32 0, i32 0), align 8
  br label %545

542:                                              ; preds = %545
  %543 = add nuw nsw i64 %538, 1
  %544 = icmp eq i64 %543, %530
  br i1 %544, label %.loopexit26, label %537, !llvm.loop !182

545:                                              ; preds = %545, %537
  %546 = phi i64 [ 0, %537 ], [ %578, %545 ]
  %547 = mul nsw i64 %546, %529
  %548 = add nsw i64 %547, %540
  %549 = getelementptr inbounds i32, i32* %541, i64 %548
  %550 = load i32, i32* %549, align 4, !tbaa !12
  %551 = or i32 %550, 1
  store i32 %551, i32* %549, align 4, !tbaa !12
  %552 = add i64 %525, %548
  %553 = shl i64 %552, 32
  %554 = ashr exact i64 %553, 32
  %555 = getelementptr inbounds i32, i32* %541, i64 %554
  %556 = load i32, i32* %555, align 4, !tbaa !12
  %557 = or i32 %556, 8
  store i32 %557, i32* %555, align 4, !tbaa !12
  %558 = add nsw i64 %546, %540
  %559 = getelementptr inbounds i32, i32* %541, i64 %558
  %560 = load i32, i32* %559, align 4, !tbaa !12
  %561 = or i32 %560, 16
  store i32 %561, i32* %559, align 4, !tbaa !12
  %562 = trunc i64 %558 to i32
  %563 = add i32 %526, %562
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds i32, i32* %541, i64 %564
  %566 = load i32, i32* %565, align 4, !tbaa !12
  %567 = or i32 %566, 128
  store i32 %567, i32* %565, align 4, !tbaa !12
  %568 = add nsw i64 %546, %539
  %569 = getelementptr inbounds i32, i32* %541, i64 %568
  %570 = load i32, i32* %569, align 4, !tbaa !12
  %571 = or i32 %570, 256
  store i32 %571, i32* %569, align 4, !tbaa !12
  %572 = trunc i64 %568 to i32
  %573 = add i32 %407, %572
  %574 = sext i32 %573 to i64
  %575 = getelementptr inbounds i32, i32* %541, i64 %574
  %576 = load i32, i32* %575, align 4, !tbaa !12
  %577 = or i32 %576, 2048
  store i32 %577, i32* %575, align 4, !tbaa !12
  %578 = add nuw nsw i64 %546, 1
  %579 = icmp eq i64 %578, %530
  br i1 %579, label %542, label %545, !llvm.loop !183

.preheader24:                                     ; preds = %.loopexit26, %.preheader24
  tail call void @_Z13TimeIncrementv()
  tail call void @_Z16LagrangeLeapFrogv()
  %580 = load double, double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 48), align 8, !tbaa !10
  %581 = load double, double* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 52), align 8, !tbaa !10
  %582 = fcmp olt double %580, %581
  br i1 %582, label %.preheader24, label %.loopexit25, !llvm.loop !184

.loopexit25:                                      ; preds = %.preheader24, %.loopexit26
  %583 = call i32 @gettimeofday(%struct.timeval* nonnull %7, i8* null) #2
  %584 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i64 0, i32 0
  %585 = load i64, i64* %584, align 8, !tbaa !185
  %586 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 0
  %587 = load i64, i64* %586, align 8, !tbaa !185
  %588 = sub nsw i64 %585, %587
  %589 = sitofp i64 %588 to double
  %590 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i64 0, i32 1
  %591 = load i64, i64* %590, align 8, !tbaa !188
  %592 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 1
  %593 = load i64, i64* %592, align 8, !tbaa !188
  %594 = sub nsw i64 %591, %593
  %595 = sitofp i64 %594 to double
  %596 = fmul double %595, 0x3EB0C6F7A0B5ED8D
  %597 = fadd double %596, %589
  %598 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), double %597)
  %599 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @str, i64 0, i64 0))
  %600 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %11)
  %601 = load i32, i32* getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 75), align 8, !tbaa !12
  %602 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %601)
  %603 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 34, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %604 = load double, double* %603, align 8, !tbaa !10
  %605 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), double %604)
  %606 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 34, i32 0, i32 0, i32 0, i32 0), align 8
  br i1 %105, label %609, label %607

607:                                              ; preds = %.loopexit25
  %608 = tail call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %.loopexit

609:                                              ; preds = %.loopexit25
  %610 = shl i64 %10, 32
  %611 = ashr exact i64 %610, 32
  %612 = and i64 %10, 4294967295
  br label %620

.loopexit23:                                      ; preds = %.preheader, %620
  %613 = phi double [ %625, %620 ], [ %644, %.preheader ]
  %614 = phi double [ %624, %620 ], [ %642, %.preheader ]
  %615 = phi double [ %623, %620 ], [ %647, %.preheader ]
  %616 = add nuw nsw i64 %622, 1
  %617 = icmp eq i64 %626, %612
  br i1 %617, label %618, label %620, !llvm.loop !189

618:                                              ; preds = %.loopexit23
  %619 = tail call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %659

620:                                              ; preds = %.loopexit23, %609
  %621 = phi i64 [ 0, %609 ], [ %626, %.loopexit23 ]
  %622 = phi i64 [ 1, %609 ], [ %616, %.loopexit23 ]
  %623 = phi double [ 0.000000e+00, %609 ], [ %615, %.loopexit23 ]
  %624 = phi double [ 0.000000e+00, %609 ], [ %614, %.loopexit23 ]
  %625 = phi double [ 0.000000e+00, %609 ], [ %613, %.loopexit23 ]
  %626 = add nuw nsw i64 %621, 1
  %627 = mul nsw i64 %621, %611
  %628 = icmp slt i64 %626, %611
  br i1 %628, label %.preheader, label %.loopexit23

.preheader:                                       ; preds = %620, %.preheader
  %629 = phi i64 [ %648, %.preheader ], [ %622, %620 ]
  %630 = phi double [ %647, %.preheader ], [ %623, %620 ]
  %631 = phi double [ %642, %.preheader ], [ %624, %620 ]
  %632 = phi double [ %644, %.preheader ], [ %625, %620 ]
  %633 = add nsw i64 %629, %627
  %634 = getelementptr inbounds double, double* %606, i64 %633
  %635 = load double, double* %634, align 8, !tbaa !10
  %636 = mul nsw i64 %629, %611
  %637 = add nsw i64 %636, %621
  %638 = getelementptr inbounds double, double* %606, i64 %637
  %639 = load double, double* %638, align 8, !tbaa !10
  %640 = fsub double %635, %639
  %641 = tail call double @llvm.fabs.f64(double %640) #2
  %642 = fadd double %631, %641
  %643 = fcmp olt double %632, %641
  %644 = select i1 %643, double %641, double %632
  %645 = fdiv double %641, %639
  %646 = fcmp olt double %630, %645
  %647 = select i1 %646, double %645, double %630
  %648 = add nuw nsw i64 %629, 1
  %649 = icmp eq i64 %648, %612
  br i1 %649, label %.loopexit23, label %.preheader, !llvm.loop !190

.loopexit:                                        ; preds = %659, %607
  %650 = phi %struct._IO_FILE* [ %608, %607 ], [ %619, %659 ]
  %651 = phi double [ 0.000000e+00, %607 ], [ %615, %659 ]
  %652 = phi double [ 0.000000e+00, %607 ], [ %614, %659 ]
  %653 = phi double [ 0.000000e+00, %607 ], [ %613, %659 ]
  %654 = tail call i32 @fclose(%struct._IO_FILE* %650)
  %655 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([36 x i8], [36 x i8]* @str.14, i64 0, i64 0))
  %656 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), double %653)
  %657 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), double %652)
  %658 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), double %651)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %532) #2
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %531) #2
  ret i32 0

659:                                              ; preds = %659, %618
  %660 = phi i64 [ 0, %618 ], [ %665, %659 ]
  %661 = load double*, double** getelementptr inbounds (%struct.Mesh, %struct.Mesh* @mesh, i64 0, i32 34, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !3
  %662 = getelementptr inbounds double, double* %661, i64 %660
  %663 = load double, double* %662, align 8, !tbaa !10
  %664 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %619, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), double %663)
  %665 = add nuw nsw i64 %660, 1
  %666 = icmp eq i64 %665, %612
  br i1 %666, label %.loopexit, label %659, !llvm.loop !191
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

; Function Attrs: inaccessiblememonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: noreturn
declare dso_local void @_ZSt20__throw_length_errorPKc(i8*) local_unnamed_addr #28

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znwm(i64) local_unnamed_addr #29

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
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
  br i1 %5, label %.loopexit16, label %6

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
  br i1 %15, label %121, label %16

16:                                               ; preds = %6
  %17 = load double, double* %3, align 8, !tbaa !10
  %18 = ptrtoint double* %1 to i64
  %19 = sub i64 %12, %18
  %20 = ashr exact i64 %19, 3
  %21 = icmp ugt i64 %20, %2
  br i1 %21, label %22, label %66

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
  %45 = add i64 %26, -8
  %46 = lshr exact i64 %45, 3
  %47 = add nuw nsw i64 %46, 1
  %48 = icmp eq i64 %45, 0
  br i1 %48, label %.preheader23, label %49

49:                                               ; preds = %43
  %50 = and i64 %47, 4611686018427387902
  %51 = insertelement <2 x double> poison, double %17, i32 0
  %52 = shufflevector <2 x double> %51, <2 x double> poison, <2 x i32> zeroinitializer
  br label %53

53:                                               ; preds = %53, %49
  %54 = phi i64 [ 0, %49 ], [ %57, %53 ]
  %55 = getelementptr double, double* %1, i64 %54
  %56 = bitcast double* %55 to <2 x double>*
  store <2 x double> %52, <2 x double>* %56, align 8, !tbaa !10
  %57 = add nuw i64 %54, 2
  %58 = icmp eq i64 %57, %50
  br i1 %58, label %59, label %53, !llvm.loop !196

59:                                               ; preds = %53
  %60 = getelementptr double, double* %1, i64 %50
  %61 = icmp eq i64 %47, %50
  br i1 %61, label %.loopexit16, label %.preheader23

.preheader23:                                     ; preds = %59, %43
  %.ph24 = phi double* [ %60, %59 ], [ %1, %43 ]
  br label %62

62:                                               ; preds = %.preheader23, %62
  %63 = phi double* [ %64, %62 ], [ %.ph24, %.preheader23 ]
  store double %17, double* %63, align 8, !tbaa !10
  %64 = getelementptr inbounds double, double* %63, i64 1
  %65 = icmp eq double* %64, %44
  br i1 %65, label %.loopexit16, label %62, !llvm.loop !197

66:                                               ; preds = %16
  %67 = sub i64 %2, %20
  switch i64 %67, label %68 [
    i64 0, label %.loopexit18
    i64 1, label %.preheader28
  ]

68:                                               ; preds = %66
  %69 = and i64 %67, -2
  %70 = and i64 %67, 1
  %71 = insertelement <2 x double> poison, double %17, i32 0
  %72 = shufflevector <2 x double> %71, <2 x double> poison, <2 x i32> zeroinitializer
  br label %73

73:                                               ; preds = %73, %68
  %74 = phi i64 [ 0, %68 ], [ %77, %73 ]
  %75 = getelementptr double, double* %10, i64 %74
  %76 = bitcast double* %75 to <2 x double>*
  store <2 x double> %72, <2 x double>* %76, align 8, !tbaa !10
  %77 = add nuw i64 %74, 2
  %78 = icmp eq i64 %77, %69
  br i1 %78, label %79, label %73, !llvm.loop !198

79:                                               ; preds = %73
  %80 = getelementptr double, double* %10, i64 %69
  %81 = icmp eq i64 %67, %69
  br i1 %81, label %.loopexit18, label %.preheader28

.preheader28:                                     ; preds = %79, %66
  %.ph29 = phi i64 [ %70, %79 ], [ %67, %66 ]
  %.ph30 = phi double* [ %80, %79 ], [ %10, %66 ]
  br label %82

82:                                               ; preds = %.preheader28, %82
  %83 = phi i64 [ %85, %82 ], [ %.ph29, %.preheader28 ]
  %84 = phi double* [ %86, %82 ], [ %.ph30, %.preheader28 ]
  store double %17, double* %84, align 8, !tbaa !10
  %85 = add i64 %83, -1
  %86 = getelementptr inbounds double, double* %84, i64 1
  %87 = icmp eq i64 %85, 0
  br i1 %87, label %.loopexit18, label %82, !llvm.loop !199

.loopexit18:                                      ; preds = %82, %79, %66
  %88 = phi double* [ %10, %66 ], [ %80, %79 ], [ %86, %82 ]
  store double* %88, double** %9, align 8, !tbaa !193
  %89 = icmp eq i64 %19, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %.loopexit18
  %91 = bitcast double* %88 to i8*
  %92 = bitcast double* %1 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %91, i8* align 8 %92, i64 %19, i1 false) #2
  %93 = load double*, double** %9, align 8, !tbaa !193
  br label %94

94:                                               ; preds = %90, %.loopexit18
  %95 = phi double* [ %93, %90 ], [ %88, %.loopexit18 ]
  %96 = getelementptr inbounds double, double* %95, i64 %20
  store double* %96, double** %9, align 8, !tbaa !193
  %97 = icmp eq double* %10, %1
  br i1 %97, label %.loopexit16, label %98

98:                                               ; preds = %94
  %99 = sub i64 -8, %18
  %100 = add i64 %99, %12
  %101 = lshr i64 %100, 3
  %102 = add nuw nsw i64 %101, 1
  %103 = icmp ult i64 %100, 8
  br i1 %103, label %.preheader25, label %104

104:                                              ; preds = %98
  %105 = and i64 %102, 4611686018427387902
  %106 = insertelement <2 x double> poison, double %17, i32 0
  %107 = shufflevector <2 x double> %106, <2 x double> poison, <2 x i32> zeroinitializer
  br label %108

108:                                              ; preds = %108, %104
  %109 = phi i64 [ 0, %104 ], [ %112, %108 ]
  %110 = getelementptr double, double* %1, i64 %109
  %111 = bitcast double* %110 to <2 x double>*
  store <2 x double> %107, <2 x double>* %111, align 8, !tbaa !10
  %112 = add nuw i64 %109, 2
  %113 = icmp eq i64 %112, %105
  br i1 %113, label %114, label %108, !llvm.loop !200

114:                                              ; preds = %108
  %115 = getelementptr double, double* %1, i64 %105
  %116 = icmp eq i64 %102, %105
  br i1 %116, label %.loopexit16, label %.preheader25

.preheader25:                                     ; preds = %114, %98
  %.ph26 = phi double* [ %115, %114 ], [ %1, %98 ]
  br label %117

117:                                              ; preds = %.preheader25, %117
  %118 = phi double* [ %119, %117 ], [ %.ph26, %.preheader25 ]
  store double %17, double* %118, align 8, !tbaa !10
  %119 = getelementptr inbounds double, double* %118, i64 1
  %120 = icmp eq double* %119, %10
  br i1 %120, label %.loopexit16, label %117, !llvm.loop !201

121:                                              ; preds = %6
  %122 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %123 = load double*, double** %122, align 8, !tbaa !3
  %124 = ptrtoint double* %123 to i64
  %125 = sub i64 %12, %124
  %126 = ashr exact i64 %125, 3
  %127 = sub nsw i64 1152921504606846975, %126
  %128 = icmp ult i64 %127, %2
  br i1 %128, label %129, label %130

129:                                              ; preds = %121
  tail call void @_ZSt20__throw_length_errorPKc(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0)) #33
  unreachable

130:                                              ; preds = %121
  %131 = icmp ult i64 %126, %2
  %132 = select i1 %131, i64 %2, i64 %126
  %133 = add i64 %132, %126
  %134 = icmp ult i64 %133, %126
  %135 = icmp ugt i64 %133, 1152921504606846975
  %136 = or i1 %134, %135
  %137 = select i1 %136, i64 1152921504606846975, i64 %133
  %138 = ptrtoint double* %1 to i64
  %139 = sub i64 %138, %124
  %140 = ashr exact i64 %139, 3
  %141 = icmp eq i64 %137, 0
  br i1 %141, label %146, label %142

142:                                              ; preds = %130
  %143 = shl nuw nsw i64 %137, 3
  %144 = tail call noalias nonnull i8* @_Znwm(i64 %143) #34
  %145 = bitcast i8* %144 to double*
  br label %146

146:                                              ; preds = %142, %130
  %147 = phi double* [ %145, %142 ], [ null, %130 ]
  %148 = getelementptr inbounds double, double* %147, i64 %140
  %149 = load double, double* %3, align 8, !tbaa !10
  %150 = icmp ult i64 %2, 2
  br i1 %150, label %.preheader, label %151

151:                                              ; preds = %146
  %152 = and i64 %2, -2
  %153 = and i64 %2, 1
  %154 = insertelement <2 x double> poison, double %149, i32 0
  %155 = shufflevector <2 x double> %154, <2 x double> poison, <2 x i32> zeroinitializer
  br label %156

156:                                              ; preds = %156, %151
  %157 = phi i64 [ 0, %151 ], [ %160, %156 ]
  %158 = getelementptr double, double* %148, i64 %157
  %159 = bitcast double* %158 to <2 x double>*
  store <2 x double> %155, <2 x double>* %159, align 8, !tbaa !10
  %160 = add nuw i64 %157, 2
  %161 = icmp eq i64 %160, %152
  br i1 %161, label %162, label %156, !llvm.loop !202

162:                                              ; preds = %156
  %163 = getelementptr double, double* %148, i64 %152
  %164 = icmp eq i64 %152, %2
  br i1 %164, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %162, %146
  %.ph = phi i64 [ %153, %162 ], [ 1, %146 ]
  %.ph22 = phi double* [ %163, %162 ], [ %148, %146 ]
  br label %165

165:                                              ; preds = %.preheader, %165
  %166 = phi i64 [ %168, %165 ], [ %.ph, %.preheader ]
  %167 = phi double* [ %169, %165 ], [ %.ph22, %.preheader ]
  store double %149, double* %167, align 8, !tbaa !10
  %168 = add i64 %166, -1
  %169 = getelementptr inbounds double, double* %167, i64 1
  %170 = icmp eq i64 %168, 0
  br i1 %170, label %.loopexit, label %165, !llvm.loop !203

.loopexit:                                        ; preds = %165, %162
  %171 = load double*, double** %122, align 8, !tbaa !3
  %172 = ptrtoint double* %171 to i64
  %173 = sub i64 %138, %172
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %178, label %175

175:                                              ; preds = %.loopexit
  %176 = bitcast double* %147 to i8*
  %177 = bitcast double* %171 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %176, i8* align 8 %177, i64 %173, i1 false) #2
  br label %178

178:                                              ; preds = %175, %.loopexit
  %179 = ashr exact i64 %173, 3
  %180 = add nsw i64 %179, %2
  %181 = getelementptr inbounds double, double* %147, i64 %180
  %182 = load double*, double** %9, align 8, !tbaa !193
  %183 = ptrtoint double* %182 to i64
  %184 = sub i64 %183, %138
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %189, label %186

186:                                              ; preds = %178
  %187 = bitcast double* %181 to i8*
  %188 = bitcast double* %1 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %187, i8* align 8 %188, i64 %184, i1 false) #2
  br label %189

189:                                              ; preds = %186, %178
  %190 = ashr exact i64 %184, 3
  %191 = getelementptr inbounds double, double* %181, i64 %190
  %192 = icmp eq double* %171, null
  br i1 %192, label %195, label %193

193:                                              ; preds = %189
  %194 = bitcast double* %171 to i8*
  tail call void @_ZdlPv(i8* nonnull %194) #2
  br label %195

195:                                              ; preds = %193, %189
  store double* %147, double** %122, align 8, !tbaa !3
  store double* %191, double** %9, align 8, !tbaa !193
  %196 = getelementptr inbounds double, double* %147, i64 %137
  store double* %196, double** %7, align 8, !tbaa !195
  br label %.loopexit16

.loopexit16:                                      ; preds = %117, %62, %195, %114, %94, %59, %4
  ret void
}

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #2 = { nounwind }
attributes #3 = { inlinehint nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #9 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #13 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
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
attributes #27 = { inaccessiblememonly mustprogress nofree nosync nounwind willreturn }
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
