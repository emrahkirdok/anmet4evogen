#!/bin/bash

#SBATCH --account=egitim
#SBATCH --partition=barbun
#SBATCH --ntasks-per-node=8

metaphlan data/SRS014459-Stool.fasta.gz \
	--input_type fasta \
	--bowtie2db /truba/home/egitim/evogen/Emrah/anmet4evogen/proje-1/data/databases/metaphlan_databases \
	-x mpa_v30_CHOCOPhlAn_201901 \
	--bowtie2out results/metaphlan/SRS014459-Stool.bowtie2out \
	--nproc 8 \
	-s results/metaphlan/SRS014459-Stool.sam > results/metaphlan/SRS014459-Stool.txt
