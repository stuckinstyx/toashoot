#!/bin/bash
mkdir -p temp
dd bs=262144 if=_GrindStormer.exe.extracted/101A10 of=temp/01.bin skip=0 count=2
dd bs=262144 if=_GrindStormer.exe.extracted/101A10 of=temp/tp027_02.bin skip=4 count=4
dd bs=262144 if=_GrindStormer.exe.extracted/101A10 of=temp/tp027_03.bin skip=8 count=4
rm -f grindstm.zip
zip grindstm.zip temp/*


