executable=$(echo "$1"| rev | cut -d'.' -f2- | rev)
clang++-3.9 -o $executable $1 `llvm-config-3.9 --cxxflags` `llvm-config-3.9 --ldflags` `llvm-config-3.9 --libs` -lpthread -lncurses -ldl