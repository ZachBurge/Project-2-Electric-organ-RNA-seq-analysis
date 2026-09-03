#!/bin/bash

#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --time=1-00:00:00
#SBATCH --cpus-per-task=8

/usr/bin/time -v agat_convert_sp_gff2gtf.pl --gff campylomormyrus.gff -o campylomormyrus.gtf