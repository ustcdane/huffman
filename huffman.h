#pragma once
// modify from: https://github.com/drichardson/huffman
#include <stdio.h>
#include <stdint.h>

int huffman_encode(uint8_t *source, long num, unsigned int *symbol_freq, FILE *out);
int huffman_decode(FILE *in, uint8_t *decodeOut, int num);