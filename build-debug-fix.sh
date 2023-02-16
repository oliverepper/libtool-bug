#!/bin/bash

clang++ -std=c++20 one/hello_one.cpp -o one/build/hello.o -c -g -DDEBUG
clang++ -std=c++20 two/hello_two.cpp -o two/build/hello.o -c -g -DDEBUG

ar rcs one/lib/one.a one/build/hello.o
ar rcs two/lib/two.a two/build/hello.o

/opt/homebrew/Cellar/llvm/15.0.7_1/bin/llvm-libtool-darwin -static -o all.a one/lib/one.a two/lib/two.a

clang++ -std=c++20 main.cpp -Ione/include -Itwo/include all.a -g -DDEBUG -o debug