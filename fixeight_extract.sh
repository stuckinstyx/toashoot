#!/bin/bash
mkdir -p temp
dd bs=262144 if=_FixEight.exe.extracted/103660 of=temp/tp-026-1 skip=0 count=2
dd bs=262144 if=_FixEight.exe.extracted/103660 of=temp/tp-026-2 skip=18 count=1
dd bs=262144 if=_FixEight.exe.extracted/103660 of=temp/tp-026-3 skip=2 count=8
dd bs=262144 if=_FixEight.exe.extracted/103660 of=temp/tp-026-4 skip=10 count=8
dd bs=1 if=_FixEight.exe.extracted/103660 of=temp/fixeight.nv skip=4980992 count=128
rm -f fixeight.zip
zip fixeight.zip temp/*


