#!/usr/bin/env bash

r=$( grep -m1 -ao '[0-10]' /dev/urandom | sed s/0/10/ | head -n1 ) #? range(0, 10)

n=$( ls ../../../ | wc -l )
r=$(( (RANDOM % $n) +1 | bc )); #? range(1, n* fiels in dir )

forWord=$( ls ../../../ | head -$r | tail -1 ) 

echo $forWord
./02_word_some_len.sh $forWord
