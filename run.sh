#!/bin/bash

if [ $# -ne 2 ]
then
	echo "Usage: <algorithm> <set>"
	exit $E_BADARGS
fi

echo "Full Factorial Experiment"
echo "Running..."

mkdir -p output

for i in {0..9}
do
	for j in {1..5}
	do
		echo -en "\rSet #$((i+1)) - Run #$j"
		(time bin/solver $1 data/$2.norm $i) >> output/$1-$2.rawout 2>&1
	done
done

echo -e "\rParsing output..."
bin/parseOutput < output/$1-$2.rawout > output/$1-$2.out
rm output/$1-$2.rawout
echo "Saved at output/$1-$2.out"
echo "Done."
