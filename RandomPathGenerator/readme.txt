How to build RandomPath ?
-------------------------

cd /home/ubuntu/RandomPathGenerator
compileLLVMPass RandomPath.cpp

How to Run this pass on a specific test-case ? 
----------------------------------------------

cd /home/ubuntu/RandomPathGenerator
compileTestProgram test-cases/test1.c
./RandomPathGenerator test-cases/test1.ll

How to Run this pass on all test-cases ?
----------------------------------------

cd /home/ubuntu/RandomPathGenerator
runLLVMPassOnTests RandomPathGenerator

How to generate CFG for test-cases ?
-------------------------------------

cd /home/ubuntu/RandomPathGenerator
makeCfg test-cases/test1.ll