#!/bin/bash
mkdir -p temp
dd bs=32768 if=_TwinHawk.exe.extracted/F9A00 of=temp/b87-01.3f skip=41 count=16
dd bs=32768 if=_TwinHawk.exe.extracted/F9A00 of=temp/b87-02.3h skip=25 count=16
dd bs=32768 if=_TwinHawk.exe.extracted/F9A00 of=temp/b87-03.3j skip=73 count=16
dd bs=32768 if=_TwinHawk.exe.extracted/F9A00 of=temp/b87-04.3k skip=57 count=16
dd bs=32768 if=_TwinHawk.exe.extracted/F9A00 of=temp/b87-07.13e skip=24 count=1
dd bs=32768 if=_TwinHawk.exe.extracted/F9A00 of=temp/b87-1011temp skip=0 count=8

python3 binsplit.py temp/b87-1011temp temp/b87-10.u5 temp/b87-11.u7 
rm temp/b87-1011temp
rm -f twinhawk.zip
zip twinhawk.zip temp/*


