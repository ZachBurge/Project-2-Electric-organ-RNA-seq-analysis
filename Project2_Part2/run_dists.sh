#!/bin/bash

#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --time=1-00:00
#SBATCH --cpus-per-task=8

/usr/bin/time -v pixi run python read_distributions.py -i1 SRR25630380_1_trimm_paired.fq.gz -i2 SRR25630380_2_trimm_paired.fq.gz -o SRR25630380_paired_dist.png