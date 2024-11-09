#!/bin/bash


while [ true ];
do

SLEEP=$((1 + $RANDOM % ${MAX_SLEEP:-7}))
UNIT=$((1 + $RANDOM % ${MAX_UNIT:-1000}))
WORK=$((1 + $RANDOM % ${MAX_WORK:-1000}))


echo "Processed $UNIT units of work across $WORK things"

sleep $SLEEP


cat /local/myfile.txt


done
