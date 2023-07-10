
# download one file from jensen et al 2019
wget -nc ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR325/004/ERR3250144/ERR3250144.fastq.gz

mkdir -p data

mv ERR3250144.fastq.gz data
