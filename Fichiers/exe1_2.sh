#!/bin/bash
for i in {0..2}
do
    source ./exe1_1.sh $1 `expr 2016 + $i`
done