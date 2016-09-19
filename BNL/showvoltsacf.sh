#!/bin/bash
# #####################################
# showvoltsacf.sh - for showing voltages in an acf
#  by H. Neal - 2016/08/04
# #####################################
export fil1=$1

echo showing bias voltages in  $fil1

mkdir -p temp

grep -i label $fil1 | sed 's/\r//' | grep "=.." > temp/tmp0
sed 's/LABEL/V/g' temp/tmp0 > temp/tmp000
awk -F "=" '{print $1}' temp/tmp000 | sed 's/\\/\\\\/g' | grep -v XV > temp/tmp00

echo "Values:"
egrep -f temp/tmp00 $fil1 > temp/tmp0g

sed 's/=/ /' temp/tmp0g | sort -k  1b,1 > temp/tmpsort


sed 's/=/ /' temp/tmp0 | sort -k  1b,1 > temp/tmp0l

cat temp/tmp0l | sed 's/LABEL/V/g' | sort -k  1b,1 > temp/tmpl

join temp/tmpl temp/tmpsort | sed 's/ /\t\t/g' | sort -u | tee volts-`echo $fil1 | awk -F '/' '{print $NF}'`.txt
