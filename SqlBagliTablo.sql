SELECT * FROM Urunler
SELECT * FROM Kategoriler

--elektronik ürünler listesini sorgula
SELECT * FROM Urunler 
WHERE KategoriRefID=(SELECT KategoriID FROM Kategoriler
WHERE KategoriAdi='Mobilya')

SELECT KategoriID FROM Kategoriler
WHERE KategoriAdi='Elektronik'

--Ortalama ürün fiyatý
SELECT AVG(UrunFiyat) FROM Urunler


--ortalama ürün fiyatýndan büyük olan ürünler
SELECT * FROM Urunler 
WHERE UrunFiyat>(SELECT AVG(UrunFiyat) FROM Urunler)
ORDER BY UrunFiyat desc


--ortalama ürün fiyatýndan büyük olan Elektronik ürünler
SELECT * FROM Urunler 
WHERE UrunFiyat>(SELECT AVG(UrunFiyat) FROM Urunler)
AND KategoriRefID =(SELECT KategoriID FROM Kategoriler
WHERE KategoriAdi='Elektronik')
ORDER BY UrunFiyat desc


--ortalama ürün fiyatýndan büyük olan Beyaz eþyalar ürünler
SELECT * FROM Urunler 
WHERE UrunFiyat>(SELECT AVG(UrunFiyat) FROM Urunler)
AND KategoriRefID =(SELECT KategoriID FROM Kategoriler
WHERE KategoriAdi='Beyaz Eþya')
ORDER BY UrunFiyat desc


--En pahalý ürünüm hangisi ?
SELECT TOP 1* FROM Urunler 
ORDER BY UrunFiyat desc


--En UCUZ ürünüm hangisi ?
SELECT TOP 1* FROM Urunler 
ORDER BY UrunFiyat 

--Ürünlerin toplam fiyatý
SELECT SUM(UrunFiyat) FROM Urunler


--Ürünlerin toplam stok adedi
SELECT SUM(UrunStokAdet) FROM Urunler


-- Ürün adý | Ürün fiyatý | stok adedi | Toplam tutar
SELECT UrunAdi,
UrunFiyat,
UrunStokAdet,
(UrunFiyat*UrunStokAdet) AS [Toplam Tutar]
FROM Urunler
ORDER BY  [Toplam Tutar] desc

--3 adet yeni ürün ekle
--1 elektronik 1 mobilya 1 beyaz eþya
INSERT INTO Urunler(UrunAdi,UrunAciklama,UrunFiyat,UrunStokAdet,KategoriRefID)
VALUES('TV','',25000,12,1)
INSERT INTO Urunler(UrunAdi,UrunAciklama,UrunFiyat,UrunStokAdet,KategoriRefID)
VALUES('Dolap','',3000,25,3)
INSERT INTO Urunler(UrunAdi,UrunAciklama,UrunFiyat,UrunStokAdet,KategoriRefID)
VALUES('Kurutma Mak.','',12500,12,2)


--fiyatý 20000 ile 30000 arasý ürünlerin stok sayýlarý 100 olsun
UPDATE Urunler SET UrunStokAdet=100
WHERE UrunFiyat BETWEEN 20000 and 30000


