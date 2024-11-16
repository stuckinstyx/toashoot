#!/bin/bash
mkdir -p temp
dd bs=524288 if=_Truxton2.exe.extracted/F7680 of=temp/tp1temp skip=0 count=1
dd bs=524288 if=_Truxton2.exe.extracted/F7680 of=temp/tp024_2.bin skip=5 count=1
dd bs=524288 if=_Truxton2.exe.extracted/F7680 of=temp/tp024_3.bin skip=3 count=2
dd bs=524288 if=_Truxton2.exe.extracted/F7680 of=temp/tp024_4.bin skip=1 count=2

python3 binswap.py temp/tp1temp temp/tp024_1.bin 
rm temp/tp1temp
rm -f truxton2.zip
zip truxton2.zip temp/*


