#!/bin/bash                                                                                                                    
                                                                                                                                      
  # code 1: run fastp analysis on paired-end datasets   

    SAMPLES_Paired=(
    "ERR6226021"
)
for SAMPLE in "${SAMPLES_Paired[@]}" ; do
    fastp -i "${SAMPLE}_1.fastq.gz" -I "${SAMPLE}_2.fastq.gz" -o "${SAMPLE}_1_TRIM.fastq.gz" -O "${SAMPLE}_2_TRIM.fastq.gz"
    echo "${SAMPLE} is done"
done

# code 2: run fastp analysis on single-end datasets

    SAMPLES_Single=(
    "SRR9434952"
)
for SAMPLE in "${SAMPLES_Single[@]}" ; do
    fastp -i "${SAMPLE}.fastq.gz" -o "${SAMPLE}_TRIM.fastq.gz"
    echo "${SAMPLE} is done"
done

# code 3: run spades analysis on output of paired-end datasets fastp analysis
    SAMPLES_Paired=(
    "ERR6226021"
)
for SAMPLE in "${SAMPLES_Paired[@]}" ; do
    spades.py -1 "${SAMPLE}_1_TRIM.fastq.gz" -2 "${SAMPLE}_2_TRIM.fastq.gz" -o "${SAMPLE}_paired_assembly"
    echo "${SAMPLE} is done"
done

# code 4: run spades analysis on output of single-end datasets fastp analysis
    SAMPLES_Single=(
    "SRR9434952_TRIM.fastq.gz"
)
for SAMPLE in "${SAMPLES_Single[@]}" ; do
    spades.py -s "${SAMPLE}" -o "${SAMPLE}_single_assembly"
    echo "${SAMPLE} is done"
done
