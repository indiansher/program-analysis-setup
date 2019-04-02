How to build StackSet ?
-------------------------

cd /home/ubuntu/StackSet
compileLLVMPass StackSet.cpp

How to Run this pass on a specific test-case ? 
----------------------------------------------

cd /home/ubuntu/StackSet
compileTestProgram test-cases/test1.c
./StackSet test-cases/test1.ll

How to Run this pass on all test-cases ?
----------------------------------------

cd /home/ubuntu/StackSet
runLLVMPassOnTests StackSet

How to generate CFG for test-cases ?
-------------------------------------

cd /home/ubuntu/StackSet
makeCfg test-cases/test1.ll