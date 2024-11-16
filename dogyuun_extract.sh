#!/bin/bash
mkdir -p temp
dd bs=262144 if=_Dogyuun.exe.extracted/103AA0 of=temp/tp022_01.r16 skip=0 count=2
dd bs=262144 if=_Dogyuun.exe.extracted/103AA0 of=temp/tp022_2.w30 skip=26 count=1
dd bs=262144 if=_Dogyuun.exe.extracted/103AA0 of=temp/tp022_3.w92 skip=2 count=4
dd bs=262144 if=_Dogyuun.exe.extracted/103AA0 of=temp/tp022_4.w93 skip=6 count=4
dd bs=262144 if=_Dogyuun.exe.extracted/103AA0 of=temp/tp022_5.w16 skip=10 count=8
dd bs=262144 if=_Dogyuun.exe.extracted/103AA0 of=temp/tp022_6.w17 skip=18 count=8

rm -f dogyuun.zip
zip dogyuun.zip temp/*


