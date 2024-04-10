#!/bin/bash

read -e -p "Please provide the relative frequency table file name? " freqtable
read -e -p "Please provide the metadata file name: " metadata
read -e -p "Please provide the column name: " colname
read -e -p "Please provide the column number in metadata file: " colnum

# create a directory
mkdir -p $colname


# create a  copy of main frequency file for that column
\cp $freqtable ${colname}/${colname}-frequency-table-temp.tsv

# Take the column from metadata file and convert it to row
cut -f $colnum ${metadata} | \
awk  '{ printf( "%s\t", $1 ); } END { printf( "\n" ); }'  > ${colname}/${colname}-class-column-temp.tsv

# add the row to the first of the frquency file
sed -i "1i $(head -n 1 ${colname}/${colname}-class-column-temp.tsv)" ${colname}/${colname}-frequency-table-temp.tsv


# remove 2nd line as it is unecessary
sed '2d' ${colname}/${colname}-frequency-table-temp.tsv > ${colname}/${colname}-frequency-table-v1-temp.tsv

awk '(NR==2){sub($1,"Sample",$0);} 1' ${colname}/${colname}-frequency-table-v1-temp.tsv > ${colname}/${colname}-lefse-input.tsv

# last column contains an unnecessary info so remove it
#awk 'NF{NF-=1}1' FS='\t' OFS='\t' ${colname}/${colname}-frequency-table-v2.tsv > ${colname}/${colname}-final-file.tsv

# Remove the intermediate files
rm -f ${colname}/*-temp.tsv


