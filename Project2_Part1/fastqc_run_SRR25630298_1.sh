#!/bin/bash

#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --cpus-per-task=8
#SBATCH --time=1-00:00

/usr/bin/time -v pixi run fastqc SRR25630298_1.fastq -o /projects/bgmp/zburge/bioinfo/Bi623/Project2/Project2_QAA/SRR25630298_metrics
