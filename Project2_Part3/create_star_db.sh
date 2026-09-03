#!/bin/bash

#SBATCH --account=bgmp                    # REQUIRED: which account to use
#SBATCH --partition=bgmp                  # REQUIRED: which partition to use
#SBATCH --time=1-00:00:00
#SBATCH --cpus-per-task=8                 # optional: number of cpus, default is 1

genomeDir=/projects/bgmp/zburge/bioinfo/Bi623/Project2/Project2_QAA/Project-2-Electric-organ-RNA-seq-analysis/Project2_Part3/campylomormyrus_star_db
genomeFasta=/projects/bgmp/zburge/bioinfo/Bi623/Project2/Project2_QAA/Project-2-Electric-organ-RNA-seq-analysis/Project2_Part3/campylomormyrus.fasta
genomeGTF=/projects/bgmp/zburge/bioinfo/Bi623/Project2/Project2_QAA/Project-2-Electric-organ-RNA-seq-analysis/Project2_Part3/campylomormyrus.gtf

/usr/bin/time -v pixi run STAR --runThreadN 8 \
--runMode genomeGenerate \
--genomeDir $genomeDir \
--genomeFastaFiles $genomeFasta \
--sjdbGTFfile $genomeGTF \
--genomeSAindexNbases 13