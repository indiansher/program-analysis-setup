apt-get update
apt-get install -y wget gnupg2
wget -O llvm-apt-key https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add llvm-apt-key -
apt-key add llvm-apt-key
apt-get install -y software-properties-common
apt-add-repository "deb https://apt.llvm.org/xenial/ llvm-toolchain-xenial-3.9 main"
apt -o Acquire::AllowInsecureRepositories=true update
apt-get install -y clang-3.9 llvm-3.9-dev 
apt-get install -y graphviz libncurses5-dev libncursesw5-dev
touch /root/.bashrc
echo "alias compileLLVMPass=\"/scripts/compileLLVMPass.sh\"" >> /root/.bashrc
echo "alias compileTestProgram=\"/scripts/compileTestProgram.sh\"" >> /root/.bashrc
echo "alias runLLVMPassOnTests=\"/scripts/tester.sh\"" >> /root/.bashrc
echo "alias makeCfg=\"/scripts/makeCfg.sh\"" >> /root/.bashrc