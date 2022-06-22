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

