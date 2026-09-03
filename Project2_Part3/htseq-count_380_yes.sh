#!/bin/bash

#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --time=1-00:00:00
#SBATCH --cpus-per-task=8

/usr/bin/time -v pixi run htseq-count -s yes -i Parent -n 8 \
    /projects/bgmp/zburge/bioinfo/Bi623/Project2/Project2_QAA/Project-2-Electric-organ-RNA-seq-analysis/Project2_Part3/star_align_results/SRR25630380/Aligned.out.sam \
    /projects/bgmp/zburge/bioinfo/Bi623/Project2/Project2_QAA/Project-2-Electric-organ-RNA-seq-analysis/Project2_Part3/campylomormyrus.gff > SRR25630380_counts_stranded_yes