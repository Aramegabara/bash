#!/usr/bin/env bash
# -*- coding: utf-8 -*-

word=$1
size=${#word}

if [ $size -eq 3 ]
then
    echo "Word $word len is three !!!";
else 
    echo "Word $word = len $size ";
fi
cd
egrep $size /LICENSE.txt #? select from only words with that many characters