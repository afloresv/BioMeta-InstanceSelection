#!/bin/bash

alg=SGA
options="-alg $alg -iter 1000 -pop 30 -cross 1.0"
inits=("Random" "CNN" "ClosestNE" "FarthestNE" "NEHS")

for file in `ls data/*.csv`
do
	l=`expr ${#file} - 9`
	f=${file:5:$l}
	./fold.sh test/$alg-$f-$1.csv $options -f $file -init $1
done