#!/bin/bash
#./exe1_sh type d'entité année
ls ./$1/$2/* -l |grep "^-"|wc -l
