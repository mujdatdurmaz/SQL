SELECT * FROM Urunler
SELECT * FROM Kategoriler

--elektronik �r�nler listesini sorgula
SELECT * FROM Urunler 
WHERE KategoriRefID=(SELECT KategoriID FROM Kategoriler
WHERE KategoriAdi='Mobilya')

SELECT KategoriID FROM Kategoriler
WHERE KategoriAdi='Elektronik'

--Ortalama �r�n fiyat�
SELECT AVG(UrunFiyat) FROM Urunler


--ortalama �r�n fiyat�ndan b�y�k olan �r�nler
SELECT * FROM Urunler 
WHERE UrunFiyat>(SELECT AVG(UrunFiyat) FROM Urunler)
ORDER BY UrunFiyat desc


--ortalama �r�n fiyat�ndan b�y�k olan Elektronik �r�nler
SELECT * FROM Urunler 
WHERE UrunFiyat>(SELECT AVG(UrunFiyat) FROM Urunler)
AND KategoriRefID =(SELECT KategoriID FROM Kategoriler
WHERE KategoriAdi='Elektronik')
ORDER BY UrunFiyat desc


--ortalama �r�n fiyat�ndan b�y�k olan Beyaz e�yalar �r�nler
SELECT * FROM Urunler 
WHERE UrunFiyat>(SELECT AVG(UrunFiyat) FROM Urunler)
AND KategoriRefID =(SELECT KategoriID FROM Kategoriler
WHERE KategoriAdi='Beyaz E�ya')
ORDER BY UrunFiyat desc


--En pahal� �r�n�m hangisi ?
SELECT TOP 1* FROM Urunler 
ORDER BY UrunFiyat desc


--En UCUZ �r�n�m hangisi ?
SELECT TOP 1* FROM Urunler 
ORDER BY UrunFiyat 

--�r�nlerin toplam fiyat�
SELECT SUM(UrunFiyat) FROM Urunler


--�r�nlerin toplam stok adedi
SELECT SUM(UrunStokAdet) FROM Urunler


-- �r�n ad� | �r�n fiyat� | stok adedi | Toplam tutar
SELECT UrunAdi,
UrunFiyat,
UrunStokAdet,
(UrunFiyat*UrunStokAdet) AS [Toplam Tutar]
FROM Urunler
ORDER BY  [Toplam Tutar] desc

--3 adet yeni �r�n ekle
--1 elektronik 1 mobilya 1 beyaz e�ya
INSERT INTO Urunler(UrunAdi,UrunAciklama,UrunFiyat,UrunStokAdet,KategoriRefID)
VALUES('TV','',25000,12,1)
INSERT INTO Urunler(UrunAdi,UrunAciklama,UrunFiyat,UrunStokAdet,KategoriRefID)
VALUES('Dolap','',3000,25,3)
INSERT INTO Urunler(UrunAdi,UrunAciklama,UrunFiyat,UrunStokAdet,KategoriRefID)
VALUES('Kurutma Mak.','',12500,12,2)


--fiyat� 20000 ile 30000 aras� �r�nlerin stok say�lar� 100 olsun
UPDATE Urunler SET UrunStokAdet=100
WHERE UrunFiyat BETWEEN 20000 and 30000


