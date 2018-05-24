%module huffman_encode
%{
    #include <Python.h>
    #include "numpy/arrayobject.h"
    void huffman_encode_dump(PyObject *pLabel, PyObject *pCodeBook, int labelNum, int nCodeBookLen, char *fileName);
    void huffman_encode_dump(PyObject *pLabel, int labelNum, char *fileName);
    void huffman_decode(char *fileName, PyObject *pOut, int outLen, bool hasCodeBook=true);
%}
    #include <Python.h>
    #include "numpy/arrayobject.h"
    void huffman_encode_dump(PyObject *pLabel, PyObject *pCodeBook, int labelNum, int nCodeBookLen, char *fileName);
    void huffman_encode_dump(PyObject *pLabel, int labelNum, char *fileName);
    void huffman_decode(char *fileName, PyObject *pOut, int outLen, bool hasCodeBook=true);
