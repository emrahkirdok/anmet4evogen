#!/bin/bash

#SBATCH --account=egitim
#SBATCH --partition=barbun
#SBATCH --ntasks-per-node=8

PREFIX=$1

metaphlan data/${PREFIX}.fasta.gz \
	--input_type fasta \
	--bowtie2db /truba/home/egitim/evogen/Emrah/anmet4evogen/proje-1/data/databases/metaphlan_databases \
	-x mpa_v30_CHOCOPhlAn_201901 \
	--bowtie2out results/metaphlan/${PREFIX}.bowtie2out \
	--nproc 8 \
	-s results/metaphlan/${PREFIX}.sam > results/metaphlan/${PREFIX}.txt
