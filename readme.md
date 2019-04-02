Dockerhub
---
https://hub.docker.com/r/indiansher/program-analysis

Purpose
---

This is the Image I used for all of my LLVM related programming assignments. This image bundles llvm-3.9 and every other related package used for assignments related to program analysis (building llvm passes)

How to build image ? 
---

~docker build -t indiansher/program_analysis:[version] .~

~docker push indiansher/program_analysis:[version]~

Automated build as soon as something is merged to master branch

How is this docker image meant to be used ?
---

I would recommend mounting your assignment files to the container and then work with them.

1. `docker pull indiansher/program-analysis`
2. Assuming there is a Assignment Folder on the host machine: `docker run --name llvmAssignment -v /home/ <yourUser> /Desktop/PPA/Assignment/:/home/ubuntu/Assignment -d -it indiansher/program-analysis`
3. Login to Docker Container (Access via shell): `docker exec -it llvmAssignment /bin/bash`
4. Access assignment files: `cd /home/ubuntu/Assignment`
5. Whatever you generate here will be automatically written to the host machine as well

Additional Scripts
---

1. **compileLLVMPass**
  
    This can be used to easily compile the LLVM Passes (for eg: StackSet, taintchecker etc.)
  
    Usage example: `compileLLVMPass taintchecker.cpp`
  
    Output File: `taintchecker`

2. **compileLLVMPass**
  
    This can be used to easily compile the test programs to required ll files (for eg: test1.c)
  
    Usage example: `compileLLVMPass test-cases/test1.c`
  
    Output File: `test-cases/test1.ll`
    
3. **runLLVMPassOnTests**

    This script can be used to generate output of the given LLVM Pass on all the test files present in `test-cases folder`. 
    
    This will
      1. generate ll files for all test-cases
      2. generate single log file which has output for all the test-cases.

    Usage example: `runLLVMPassOnTests taintchecker`
    
    Output: `Log Written to test-reports/033119_042445.log`
    
    Check log file: `cat test-reports/033119_042445.log`

4. **makeCfg**

    This script creates a Control Flow Graph pdf of any given ll program
    
    Usage example: `makeCfg test-cases/test1.ll`
    
    Output File: `test-cases/test1.pdf`
    
    Since the folder would be already mounted on the host machine, you can navigate to the corresponding folder on host machine and open the pdf
    
 *NOTE*: For more concrete examples, please check `readme.txt` in StackSet or RandomPathGenerator folders
