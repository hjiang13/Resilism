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

Scripts command:
    $ ./compileAndRun.sh LULESH

Output:
