#!/bin/bash

#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --time=1-00:00
#SBATCH --cpus-per-task=8

/usr/bin/time -v pixi run trimmomatic PE SRR25630380_1_cut.fastq SRR25630380_2_cut.fastq \
    SRR25630380_1_trimm_paired.fq.gz SRR25630380_1_trimm_unpaired.fq.gz \
    SRR25630380_2_trimm_paired.fq.gz SRR25630380_2_trimm_unpaired.fq.gz \
    LEADING:3 TRAILING:3 SLIDINGWINDOW:5:15 MINLEN:35