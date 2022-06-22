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

cp /truba/home/egitim/Emrah/HandsOn_Kraken2/data/links_jensen.txt data/
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
