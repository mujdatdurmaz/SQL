INSERT INTO Personel(adi,soyadi,gorevi,yoneticisi,girisTarihi)
VALUES('Ali','Veli','M�d�r',1,'01-01-1999')

INSERT INTO Personel(adi,soyadi,gorevi,yoneticisi,girisTarihi)
VALUES('Veli','Y�ld�z','�ef',2,'01-01-1998')

INSERT INTO Personel(adi,soyadi,gorevi,yoneticisi,girisTarihi)
VALUES('Ay�e','Cans�z','Koordinat�r',1,'01-01-1996')

SELECT * FROM Personel

DELETE FROM Personel
where personelNo=3

TRUNCATE TABLE Personel --tabloyu siler ID PK resetler

SELECT adi,soyadi,gorevi FROM Personel


select top 60 PERCENT * FROM Personel

--Ad� ali olan kay�tlar ahmet olsun


UPDATE Personel set adi='Ahmet' WHERE adi='Ali'

