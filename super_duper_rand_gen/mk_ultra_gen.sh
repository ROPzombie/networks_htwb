#!/bin/bash

#awk 'NR == FNR { a[$1]; next } !($1 in a)' pass_z1g1.csv z1g1.csv | ./rand_gen.sh
awk 'NR == FNR { a[$1]; next } !($1 in a)' $1 $2 | shuf -n 1 
