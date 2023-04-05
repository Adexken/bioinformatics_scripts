#!/bin/bash


SAMPLES_Paired=(
    "ERR6226021"
)
for SAMPLE in "${SAMPLES_Paired[@]}" ; do
    fastp -i "${SAMPLE}_1.fastq.gz" -I "${SAMPLE}_2.fastq.gz" -o "${SAMPLE}_1_TRIM.fastq.gz" -O "${SAMPLE}_2_TRIM.fastq.gz"
    echo "${SAMPLE} is done"
done

SAMPLES_Single=(
    "SRR9434952"
)
for SAMPLE in "${SAMPLES_Single[@]}" ; do
    fastp -i "${SAMPLE}.fastq.gz" -o "${SAMPLE}_TRIM.fastq.gz"
    echo "${SAMPLE} is done"
done