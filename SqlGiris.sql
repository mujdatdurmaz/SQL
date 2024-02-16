Use AriSqlDb

--A��klama sat�r�
--DML(DATA MANUPILATION LANGUAGE)
--SELECT   SE�ME
--INSERT    EKLEME
--UPDATE   DE���T�RME
--DELETE  S�LME


SELECT * FROM Musteriler

SELECT ad,soyad,gelir FROM Musteriler

SELECT * FROM Musteriler
WHERE sehir='Bursa' AND cinsiyet='Kadin'

SELECT ad as Ad�, soyad as Soyad�, sehir SEH�R FROM Musteriler
WHERE puan>=60 AND cinsiyet='Erkek' AND gelir>20000

--Sehir bursa ve ankara olan kay�tlar
SELECT * FROM Musteriler
WHERE sehir='Bursa' or sehir='Anakara'

SELECT * FROM Musteriler
WHERE sehir IN('Bursa','Ankara')

SELECT * FROM Musteriler
WHERE puan >50 and puan<75

SELECT * FROM Musteriler
WHERE puan BETWEEN 50 AND 75


--geliri 20000 ile 30000 aras� olan 
--ve puan� 50 den k���k olan erkek musteriler
--ad�, soyad�, geliri,puan, cinsiyet


SELECT ad,soyad,gelir,puan,cinsiyet FROM Musteriler
WHERE gelir BETWEEN 20000 AND 30000
AND puan<100
AND cinsiyet='Erkek'


SELECT * FROM Musteriler
WHERE ad LIKE '______'

--SOYADI Z ile biten
--maa�� 10000 ile 50000 aras� olan
--Kad�n m��teriler

SELECT * FROM Musteriler
WHERE soyad LIKE '%Z' AND gelir BETWEEN 10000 AND 50000
AND cinsiyet ='Kadin'

SELECT * FROM Musteriler
ORDER BY gelir desc

INSERT INTO Musteriler(musteriNo,ad,soyad,dTarih,sehir,cinsiyet,puan,meslek,gelir)
VALUES(4,'Osman','Y�ld�z','01-01-1987','Kars','Erkek',55,'Muhasebeci',25600)

UPDATE Musteriler SET puan=99
WHERE musteriNo=1
UPDATE Musteriler SET sehir='Burdur'
WHERE sehir='Bursa'

DELETE FROM Musteriler
WHERE musteriNo=4

SELECT SUM(gelir) FROM Musteriler
SELECT MAX(gelir) FROM Musteriler
SELECT MIN(gelir) FROM Musteriler

SELECT AVG(gelir) FROM Musteriler

--Geliri ortalama gelirden y�ksek olanlar erkekler

SELECT * FROM Musteriler
WHERE gelir>(SELECT AVG(gelir) FROM Musteriler) and cinsiyet='Kadin'

SELECT TOP 3 * FROM Musteriler
ORDER BY gelir desc

SELECT UPPER(ad)  ISIM, UPPER(soyad)  SOYISIM  FROM Musteriler



SELECT COUNT(*)AS KAYIT FROM Musteriler

SELECT cinsiyet,COUNT(cinsiyet) FROM Musteriler
GROUP BY cinsiyet


