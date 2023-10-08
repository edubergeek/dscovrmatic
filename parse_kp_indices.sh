#!/bin/bash

for yr in 2022 2023
do
  rm -f ./data/swpc/kpindices-${yr}.csv
  echo "date,3,6,9,12,15,18,21,24" >./data/swpc/kpindices-${yr}.csv
  find ./data/swpc/${yr} -type f -name '*.txt' | while read f
  do
	file=`basename $f`
	day=`expr $file : '\(.*\)dayind.txt'`
	kp=`tail -1 $f | awk '{printf("%1.0f,%1.0f,%1.0f,%1.0f,%1.0f,%1.0f,%1.0f,%1.0f\n", $11, $12, $13, $14, $15, $16, $17, $18);}' `
	echo "$day,$kp" >>./data/swpc/kpindices-${yr}.csv
  done
done
