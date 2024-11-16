#!/bin/bash
mkdir -p temp
dd bs=512 if=_Batsugun.exe.extracted/10B990 of=temp/tp030_1a.bin skip=0 count=1024
dd bs=512 if=_Batsugun.exe.extracted/10B990 of=temp/tp030_2.bin skip=14336 count=512
dd bs=512 if=_Batsugun.exe.extracted/10B990 of=temp/tp030_3h.bin skip=4096 count=2048
dd bs=512 if=_Batsugun.exe.extracted/10B990 of=temp/tp030_3l.bin skip=2048 count=2048
dd bs=512 if=_Batsugun.exe.extracted/10B990 of=temp/tp030_4h.bin skip=8192 count=2048
dd bs=512 if=_Batsugun.exe.extracted/10B990 of=temp/tp030_4l.bin skip=6144 count=2048
dd bs=512 if=_Batsugun.exe.extracted/10B990 of=temp/tp030_5.bin skip=10240 count=2048
dd bs=512 if=_Batsugun.exe.extracted/10B990 of=temp/tp030_6.bin skip=12288 count=2048
rm -f batsugun.zip
zip batsugun.zip temp/*


