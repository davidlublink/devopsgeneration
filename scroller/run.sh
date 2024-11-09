#!/bin/bash



while [ true ];
do

SLEEP=$((1 + $RANDOM % 7))
UNIT=$((1 + $RANDOM % 1000))
WORK=$((1 + $RANDOM % 1000))


echo "Processed $UNIT units of work across $WORK things"

sleep $SLEEP


done
