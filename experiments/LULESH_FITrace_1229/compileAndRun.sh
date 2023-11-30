#!/bin/bash
#
# LLFI_BUILD_ROOT must be set to the directory where LLFI is installed (same as that in setup)

rm -rf ./llfi*
rm *.ll 
fname=$1
LLFI_BUILD_ROOT='/home/hjiang/LLTFI/BUILD'
# Generate Makefile
#$LLFI_BUILD_ROOT/tools/GenerateMakefile --readable --all -o "$fname.ll"
#make
#clang -w -emit-llvm -lstdc++ -fno-use-cxa-atexit  -ftime-report -Xclang -disable-O0-optnone -S *.c 
#clang++ -w -emit-llvm -lstdc++ -fno-use-cxa-atexit  -ftime-report -Xclang++ -disable-O0-optnone -S *.cc
#echo "Done compile"
#clang++ -w -emit-llvm  -lstdc++ -fno-use-cxa-atexit -O3  -S *.cc
clang++ -w -emit-llvm -fno-unroll-loops -lstdc++ -fno-use-cxa-atexit -O3  -S *.cc
echo "Done compile" 
/home/hjiang/llvm-project/build/bin/llvm-link -o "$fname.ll" -S *.ll
echo "Done llvm-link"

opt  "$fname.ll" -O3 --disable-inlining -time-passes -S -o "$fname.ll"
# opt  "$fname.ll" -S -o "$fname.ll"
# Instrument it
$LLFI_BUILD_ROOT/bin/instrument -lstdc++ --readable "$fname.ll"

# Call the profiling script
#shift
$LLFI_BUILD_ROOT/bin/profile ./llfi/"$fname-profiling.exe" 10 $@

# Inject the faults
#$LLFI_BUILD_ROOT/bin/injectfault ./llfi/"$fname-faultinjection.exe" 30 $@

#echo "Done injecting faults"
