SELECT * FROM CUSTOMERS

UPDATE CUSTOMERS
SET NATION=''

UPDATE CUSTOMERS
SET NATION='TR'

--B�RDEN FAZLA ALANI UPDATE ETMEK ���N
UPDATE CUSTOMERS
SET NATION='TR' , AGE=35

UPDATE CUSTOMERS
SET NATION='US' , AGE=45

SELECT DATEDIFF(YEAR,'1980-12-11','2020-01-01')

SELECT DATEDIFF(YEAR,'1980-12-11',GETDATE())
--YA� HESAPLAMA
UPDATE CUSTOMERS
SET NATION='TR' , AGE=DATEDIFF(YEAR,BIRTHDATE,GETDATE())

INSERT INTO CUSTOMERS
(CUSTOMERNAME, CITY, BIRTHDATE, DISTRICT, GENDER, NATION, AGE)
VALUES ('K�BRA Y�CE','�STANBUL', '1996-11-17', 'GOP','K','TR','20')

--DELETE KOMUTU
SELECT * FROM CUSTOMERS
--T�M SATIRLARI S�LER
DELETE FROM CUSTOMERS

--TRUNCATE KOMUTU : tabloyu ilk olu�turdu�umuz haline d�n��t�ren komut. i�indeki t�m verileri silen komut.
--Delete from'dan fark� id'leri ilk haline al�r. Truncate i�lemi daha h�zl�d�r. id 1 den ba�lar devam eder delete'de kald��� yerden artt�r�r.
 TRUNCATE TABLE CUSTOMERS

 --WHERE �ARTI : filtreleme ama�l� kullan�l�r.
  SELECT * FROM CUSTOMERS

  SELECT * FROM CUSTOMERS 
  WHERE CUSTOMERNAME='K�BRA Y�CE'
  --�STANBUL OLANLARI GET�R.
  SELECT * FROM CUSTOMERS
  WHERE CITY='�STANBUL'

  --�STANBUL OLMAYANLARI GET�R.
  SELECT * FROM CUSTOMERS
  WHERE CITY<>'�STANBUL'

  --�STANBUL OLMAYANLARI GET�R
  SELECT * FROM CUSTOMERS
  WHERE NOT CITY='�STANBUL'
  
  SELECT * FROM CUSTOMERS
  WHERE BIRTHDATE>'1990-01-01'

  SELECT * FROM CUSTOMERS
  WHERE BIRTHDATE<'1990-01-01'

  SELECT * FROM CUSTOMERS
  WHERE BIRTHDATE >='1980-12-11'

  
  SELECT * FROM CUSTOMERS
  WHERE BIRTHDATE <='1996-11-17'

    
  SELECT * FROM CUSTOMERS
  WHERE BIRTHDATE BETWEEN '1980-12-11' AND '1997-11-17'

  SELECT * FROM CUSTOMERS
  WHERE AGE BETWEEN 20 AND 50

  --�SM� �MER �LE BA�LAYAN
  SELECT * FROM CUSTOMERS
  WHERE CUSTOMERNAME LIKE '�MER%'

  --�SM�NDE AL GE�ENLER:
  SELECT * FROM CUSTOMERS
  WHERE CUSTOMERNAME LIKE '%AL%'

    --�SM� �MER �LE BA�LAMAYANLAR:
  SELECT * FROM CUSTOMERS
  WHERE CUSTOMERNAME NOT LIKE '�MER%'
    
  SELECT * FROM CUSTOMERS
  WHERE CITY IN ('BURSA')

  SELECT * FROM CUSTOMERS
  WHERE CITY IN ('BURSA','�STANBUL')

  --C�NS�YET YAZILIMLARINI G�NCELLEME
  UPDATE CUSTOMERS SET GENDER='ERKEK' WHERE GENDER='E'

  UPDATE CUSTOMERS SET GENDER='KADIN' WHERE GENDER='K'

  --ID SE�EREK L�STELEME.
  SELECT * FROM CUSTOMERS WHERE ID=4
  --DELETE ��LEM� ���N SE��LEN ID'YE G�RE.
  DELETE  FROM CUSTOMERS WHERE ID=4

  --AND OPERAT�R�
  SELECT * FROM CUSTOMERS
  WHERE CITY='�STANBUL' AND DISTRICT='GOP' 

  SELECT * FROM CUSTOMERS
  WHERE GENDER='ERKEK' AND DISTRICT='�SK�DAR' 

  --OR OPERAT�R�
  SELECT * FROM CUSTOMERS
  WHERE GENDER='ERKEK' OR DISTRICT='GOP' 

  SELECT * FROM CUSTOMERS
  WHERE GENDER='ERKEK' OR DISTRICT='GOP' OR CITY='BURSA'

  --DISTINCT KOMUTU : tekrar eden komutlar� tek hale getirmesi.10 �r�n sat��� olmu� ve �r�n alan m��teri ayn� ki�i se bu kullan�l�r.
 -- ka� il�e var diye sorulunca:
 SELECT DISTINCT CITY ,DISTRICT FROM CUSTOMERS
 WHERE CITY='�STANBUL'

 SELECT DISTINCT GENDER FROM CUSTOMERS
 WHERE CITY='�STANBUL'

 --ORDER BY KOMUTU : s�ralama i�lemi i�in.
 --�S�MLER� (A-Z) SIRALI �EK�LDE GET�R�R
 SELECT *FROM CUSTOMERS
 ORDER BY CUSTOMERNAME


 SELECT *FROM CUSTOMERS
 ORDER BY CUSTOMERNAME ASC

  --�S�MLER� (Z-A) SIRALI �EK�LDE GET�R�R
 SELECT *FROM CUSTOMERS
 ORDER BY CUSTOMERNAME DESC

 --�K� KOLON ISRALAMA
 SELECT *FROM CUSTOMERS
 ORDER BY CITY,CUSTOMERNAME

  SELECT *FROM CUSTOMERS
 ORDER BY CITY ASC,CUSTOMERNAME DESC

 -- KOLON NUMARASI VEREREK DE SIRALAMA SA�LANAB�L�R.
	 SELECT *FROM CUSTOMERS
	 ORDER BY 5

--TOP KOMUTU: veri setinin tamam� yerine bir k�sm�n� g�rmemizi sa�layan komut.
	SELECT TOP 2 * FROM CUSTOMERS ORDER BY CUSTOMERNAME

	SELECT TOP 10 PERCENT  * FROM CUSTOMERS ORDER BY CUSTOMERNAME
