# Antik Metagenomik Uygulama

İlk olarak aşağıdaki satırları yazarak kullanacağımız araçların yolunu belirleyelim:

```bash
source ~/../egitim/.bashrc
shopt -sq expand_aliases
```

Şimdi `kraken2` aracı kullanım kılavuzuna bakalım:


```bash
kraken2 -h

```

Bu kapsamda kullanacağımız her şey bu dosya içerisinde:

```
/truba/home/egitim/Emrah/HandsOn_Kraken2
```

Öncelikle projemizi oluşturalım:

```
mkdir Ancient_metagenomics
cd Ancient_metagenomics
```

Şimdi de klasörleri:

```
mkdir data
mkdir results
```

Kullancağımız dosyaları aşağıdaki metin dosyasından indreceğiz:

```

cp /truba/home/egitim/Emrah/HandsOn_Kraken2/data/* data/
```

Bu dosya içinde ne var?

```

cat data/links_jensen.txt:
```

Şimdi ilk dosyayı indirelim:


```
cd data
wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR325/004/ERR3250144/ERR3250144.fastq.gz
```

Bir üst klasöre çıkalım:

```
cd ..
```

Şimdi slurm dosyasını kopyalayalım:

```

cp /truba/home/egitim/Emrah/HandsOn_Kraken2/kraken2.sh .
cat kraken2.sh
```

Şimdi sadece tür profillerini elde edelim:


```
awk -F"\t" '$2 > 100 && $4 == "S" ' results/Report.txt > results/species.txt
```

Sadece Streptococcus pneumoniae ile eşleşmiş DNA dizilerinin isimlerini alalım:


```
grep "Streptococcus pneumoniae" results/Sequences.txt | cut -f 2 > results/streptococcus_pneumoniae_ids.txt
```

Peki, S. pneumonia okumalarını nasıl alabiliriz?

```
seqtk subseq data/ERR3250144.fastq.gz results/streptococcus_pneumoniae_ids.txt > results/streptococcus_pneumoniae.fastq

``

