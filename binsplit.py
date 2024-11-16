#!/usr/bin/env python3

import sys

f_in = open(sys.argv[1], 'rb')
f_out1 = open(sys.argv[2], 'wb')
f_out2 = open(sys.argv[3], 'wb')
for i in range(1, 252144):
    byte1=f_in.read(1)
    f_out1.write(byte1)
    byte2=f_in.read(1)
    f_out2.write(byte2)
f_in.close
f_out1.close
f_out2.close


