INSERT INTO Personel(adi,soyadi,gorevi,yoneticisi,girisTarihi)
VALUES('Ali','Veli','Müdür',1,'01-01-1999')

INSERT INTO Personel(adi,soyadi,gorevi,yoneticisi,girisTarihi)
VALUES('Veli','Yýldýz','Þef',2,'01-01-1998')

INSERT INTO Personel(adi,soyadi,gorevi,yoneticisi,girisTarihi)
VALUES('Ayþe','Cansýz','Koordinatör',1,'01-01-1996')

SELECT * FROM Personel

DELETE FROM Personel
where personelNo=3

TRUNCATE TABLE Personel --tabloyu siler ID PK resetler

SELECT adi,soyadi,gorevi FROM Personel


select top 60 PERCENT * FROM Personel

--Adý ali olan kayýtlar ahmet olsun


UPDATE Personel set adi='Ahmet' WHERE adi='Ali'

