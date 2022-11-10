# -*- coding: utf-8 -*-

# Import library dan module
from time import time,sleep
from os import getpid
from multiprocessing import Pool,Process

"""Nama : Yosua Satria Bara Harmoni

NPM : 21083010029

Soal latihan :
Dengan menggunakan pemrosesan paralel buatlah program yang dapat menentukan sebuah bilangan itu ganjil atau genap!

Batasan 
1. Nilai yang dijadikan argumen pada fungsi sleep() adalah satu detik.
2. Masukkan jumlah'nya satu dan berupa bilangan bulat.
3. Masukkan adalah batas dari perulangan tersebut.

4. Setelah perulangan selesai program menampilkan
waktu eksekusi pemrosesan sekuensial dan paralel.
"""

# Membuat function

def odd_even(data):
    for i in range(1,data+1):
        if i%2 ==0:
            print(f'{i} Genap Get ID-{getpid()}')
        else:
            print(f'{i} Ganjil Get ID-{getpid()}')

# Menggunakan sequential

seq_start=time()
in_user=int(input('silahkan masukan data:'))
odd_even(in_user)
seq_finish=time()

seq_finish-seq_start

# Menggunakan process

process_start=time()
memo=[]
for i in range(in_user):
    p=Process(target=odd_even,args=(i,))
    memo.append(p)
    p.start()
for sub in memo:
    p.join()

process_end=time()

# Menggunakan pool

pool_start=time()
pool=Pool()
pool.map(odd_even,range(1,in_user+1))

