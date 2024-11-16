#!/usr/bin/env python3

import sys
import os

f_size = os.path.getsize(sys.argv[1])
f_in = open(sys.argv[1], 'rb')
f_out = open(sys.argv[2], 'wb')
for i in range(1, f_size):
    byte1=f_in.read(1)
    byte2=f_in.read(1)
    f_out.write(byte2)
    f_out.write(byte1)
f_in.close
f_out.close


