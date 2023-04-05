#!/bin/bash

SAMPLES_Paired=(
    "ERR6226021"
)
for SAMPLE in "${SAMPLES_Paired[@]}" ; do
    spades.py -1 "${SAMPLE}_1_TRIM.fastq.gz" -2 "${SAMPLE}_2_TRIM.fastq.gz" -o "${SAMPLE}_paired_assembly"
    echo "${SAMPLE} is done"
done

SAMPLES_Single=(
    "SRR9434952_TRIM.fastq.gz"
)
for SAMPLE in "${SAMPLES_Single[@]}" ; do
    spades.py -s "${SAMPLE}" -o "${SAMPLE}_single_assembly"
    echo "${SAMPLE} is done"
done