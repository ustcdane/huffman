#!/bin/sh

\rm *\.o

swig -python huffman_encode.i
g++ -O3 -mavx2 -Wno-cpp -std=c++11 -fPIC -c huffman_encode.cpp huffman_encode_wrap.c -I./local_config_python/python_include -I./local_config_python/numpy_include -I.
g++ -shared huffman_encode.o huffman_encode_wrap.o -o _huffman_encode.so
