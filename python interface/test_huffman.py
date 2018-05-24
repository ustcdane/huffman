import huffman_encode as huff
import numpy as np

label = ['A','A','A','A','B','B','C','C']
label = np.array([np.uint8(ord(i)) for i in label])
print 'Origin label:', label
cnt = np.zeros(256,dtype=np.uint32)
cnt[65] = 4
cnt[66] = 2
cnt[67] = 3
huff.huffman_encode_dump(label, 8, "huf.test")
data_vec = np.empty(8, dtype=np.uint8)
huff.huffman_decode('huf.test', data_vec, 8, False)
print 'No codebook:', data_vec

#has codebook
codebook = np.zeros(256,dtype=np.float32)
codebook[65] = 98.0
codebook[66] = 99.0
codebook[67] = 100.0
huff.huffman_encode_dump(label, codebook, 8, 256, "huf.test1")
data_vec = np.empty(8, dtype=np.float32)
huff.huffman_decode('huf.test1', data_vec, 8)
print 'Has codebook:', data_vec
