#!/bin/bash

#SBATCH --account=bgmp                    # REQUIRED: which account to use
#SBATCH --partition=bgmp                  # REQUIRED: which partition to use
#SBATCH --time=1-00:00:00
#SBATCH --cpus-per-task=8                 # optional: number of cpus, default is 1

R1=/projects/bgmp/zburge/bioinfo/Bi623/Project2/Project2_QAA/Project-2-Electric-organ-RNA-seq-analysis/Project2_Part2/SRR25630298_1_trimm_paired.fq.gz
R2=/projects/bgmp/zburge/bioinfo/Bi623/Project2/Project2_QAA/Project-2-Electric-organ-RNA-seq-analysis/Project2_Part2/SRR25630298_2_trimm_paired.fq.gz
genomeDir=/projects/bgmp/zburge/bioinfo/Bi623/Project2/Project2_QAA/Project-2-Electric-organ-RNA-seq-analysis/Project2_Part3/campylomormyrus_star_db

/usr/bin/time -v pixi run STAR --runThreadN 8 --runMode alignReads \
--outFilterMultimapNmax 3 \
--outSAMunmapped Within KeepPairs \
--alignIntronMax 1000000 --alignMatesGapMax 1000000 \
--readFilesCommand zcat \
--readFilesIn $R1 $R2 \
--genomeDir $genomeDir \
--outFileNamePrefix ./star_align_results/SRR25630298/