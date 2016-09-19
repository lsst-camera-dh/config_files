#!/bin/bash
# #####################################
# compacfs.sh - for comparing acf files
#  by H. Neal - 2016/08/04
# #####################################
export fil1=$1
export fil2=$2
echo comparing  $fil1" and "$fil2

mkdir -p temp

export nm="bnl_STA_20160803_A_name.acf"

grep -i label $nm | sed 's/\r//' | grep "=.." > temp/tmp0
sed 's/LABEL/V/g' temp/tmp0 > temp/tmp000
awk -F "=" '{print $1}' temp/tmp000 | sed 's/\\/\\\\/g' | grep -v XV > temp/tmp00

grep -i label $nm | sed 's/\r//' | grep "=.." > temp/tmp1
sed 's/LABEL/V/g' temp/tmp1 > temp/tmp100
awk -F "=" '{print $1}' temp/tmp100 | sed 's/\\/\\\\/g' | grep -v XV > temp/tmp10


echo "Values:"
egrep -f temp/tmp00 $fil1 > temp/tmp0g
egrep -f temp/tmp10 $fil2 > temp/tmp1g
sed 's/=/ /' temp/tmp0g | sort -k  1b,1 > temp/tmp0sort
sed 's/=/ /' temp/tmp1g | sort -k  1b,1 > temp/tmp1sort

join -a 1 -a 2 -o 1.1 1.2 2.1 2.2 temp/tmp0sort temp/tmp1sort > temp/tmpsort
#diff temp/tmp0sort temp/tmp1sort --side-by-side  > temp/tmpsort

sed 's/=/ /' temp/tmp0 | sort -k  1b,1 > temp/tmp0l
sed 's/=/ /' temp/tmp1 | sort -k  1b,1 > temp/tmp1l

cat temp/tmp0l temp/tmp1l | sed 's/LABEL/V/g' | sort -k  1b,1 > temp/tmpl

join temp/tmpl temp/tmpsort | sed 's/ /\t\t/g' | sort -u | tee comp-$fil1-$fil2.txt
