/home/hjiang/Resilism/experiments/LULESH_FITrace_1229

The experiments have been setup to do fult injection and trace.

The Fault injections are targets on the most frequent instructions. 

Input:
    /home/hjiang/Resilism/experiments/LULESH_FITrace_1229/LULESH.cc
    /home/hjiang/Resilism/experiments/LULESH_FITrace_1229/input.yaml

Scripts:
   /home/hjiang/Resilism/experiments/LULESH_FITrace_1229/compileAndRun.sh  
   Steps in 'compileAndRun.sh':
    1. compile and link and optimization
        output: LULESH.ll
    2. instrument 
        output:
        ├── fiindexLinenumberMap.json
        ├── llfi
        │   ├── LULESH-faultinjection.exe
        │   ├── LULESH-faultinjection.ll
        │   ├── LULESH-llfi_index.ll
        │   ├── LULESH-profiling.exe
        │   └── LULESH-profiling.ll
        ├── llfi.config.compiletime.txt
        ├── llfi.log.compilation.txt
        ├── llfi.stat.totalindex.txt
    3. profile
        output:
        ├── compileAndRun.sh
        ├── fiindexLinenumberMap.json
        ├── input.yaml
        ├── llfi
            ├── baseline
            │   │   ├── element.prof.dat
            │   │   └── golden_std_output
        │   ├── error_output
        │   ├── LULESH-faultinjection.exe
        │   ├── LULESH-faultinjection.ll
        │   ├── LULESH-llfi_index.ll
        │   ├── LULESH-profiling.exe
        │   ├── LULESH-profiling.ll
        │   ├── prog_input
        │   └── prog_output
        ├── llfi.config.compiletime.txt
        ├── llfi.log.compilation.txt
        ├── llfi.stat.prof.txt
        ├── llfi.stat.totalindex.txt
        ├── LULESH.cc
        ├── LULESH.ll
        └── README.md
    The cycles of each instruction is in 'llfi.stat.prof.txt'

    4. Rank the instructions according to its cycle.



Scripts command:
    $ ./compileAndRun.sh LULESH

Output:
