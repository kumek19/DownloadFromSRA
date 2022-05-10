#!/bin/bash
thread=20

cat SRA_list.txt | while read line ;do

prefetch $line 

fasterq-dump $line -e ${thread} -p

if [ -e ${line}_1.fastq ] && [ -e ${line}_2.fastq ]; then 
pigz -p ${thread} ${line}_1.fastq
pigz -p ${thread} ${line}_2.fastq
elif [ -e ${line}.fastq ]; then
pigz -p ${thread} ${line}.fastq
fi

trash $line

done
