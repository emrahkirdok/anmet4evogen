# Metagenomik Uygulama

Önce araçları nasıl kullanacağımıza bakalım. İlk olarak `metaphlan3` aracını kullancağız.

İlk olarak aşağıdaki satırları yazarak kullanacağımız araçların yolunu belirleyelim:

```
source ~/../egitim/.bashrc
shopt -sq expand_aliases
```

Metaphlan3 programının kullanım kılavuzunu görüntüleyelim:

```
metaphlan -h
```

Bir biyoinformatik proje dosyası oluşturalım. Kendi projenizin ismini belirleyin. Ben `Metagenomik` ismini kullancağım:

```
mkdir Metagenomik
cd Metagenomik
```

Şimdi de bu klasör içinde verilerimizi depolayacağımız ve sonuçları depolayacağımız klasörleri oluşturalım:

```
mkdir data
mkdir results

```

Bu kısımda kullancağımız dosyalar bu klasörde:

```
/truba/home/egitim/Emrah/HandsOn_Metaphlan3
```

Şimdi de, kullanacağımız slurm dosyasını kopyalayalım ve içine bakalım:


```
cp /truba/home/egitim/Emrah/HandsOn_Metaphlan3/metaphlan2.sh .

cat metaphlan2.sh
```

Şimdi de kullancağımız dosyaları kopyalayalım:

```
cp /truba/home/egitim/Emrah/HandsOn_Metaphlan3/data/*.gz data/

ls data/
```


Şimdi sadece bir tane dosyayı metaphlan3 ile inceleyelim:


```
sbatch metaphlan2.sh
```
