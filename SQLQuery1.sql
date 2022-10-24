select * from products

Select ProductName from Products

select p.ProductName,p.UnitsInStock * p.UnitPrice as Total from Products p

select p.ProductName + '  ' + p.QuantityPerUnit as NewBlock from Products p

select 'Salih' as Egitmen

select 9*8 as Sonuc

Select * from Products where CategoryID=1

--birbirleri ile ilgili ifadeler yazabilce�imiz g�stermek i�in yazd�k sa�ma
Select * from Products where UnitsInStock=UnitPrice *UnitsOnOrder 

Select p.ProductName from Products as p Where UnitsInStock =0 and UnitsOnOrder>0

Select * from Products as p Where UnitsInStock =0 or UnitsOnOrder=0

Select * from Products as p Where UnitsInStock =0 and UnitsOnOrder=0

--Chai d���nda olanlar ve stok adedi s�f�r olanlar
Select * from Products where not ProductName='Chai' and UnitsInStock=0

--Metinsel ifadeyi alfabetik say�sal ifdayi ariymrtik s�ralar
Select * from Products order by ProductName

-- asc= ascending desc= descending s�ralama �ekilleri
Select * from Products order by ProductName desc

--�nce ilk belirtilene g�re s�ralama yapar
Select * from Products order by UnitPrice,ProductName

--ch ile ba�layan
Select * from Products where ProductName like 'ch%'

--a ile bitenler
Select * from Products where ProductName like '%a'

--i�inde h olan �r�nler
Select * from Products where ProductName like '%h%'

Select * from Products where UnitPrice between 10 and 50 order by UnitPrice

Select * from Products where CategoryID in(1,2)

Select Count(*) as [�r�n Say�s�] from Products
Select Count(ProductName) from Products 

Select COUNT(Region) from Customers

Select Min(UnitPrice) from Products
Select Max(UnitPrice) from Products

Select Avg(UnitPrice) from Products

Select Sum(UnitPrice * Quantity) as Kazan� from [Order Details]

Select Rand()

Select LEFT('Salih Bey',3)
sELECT LEFT(ProductName,3) from Products

sELECT RIGHT(ProductName,3) from Products

sELECT LEN('Salih')

Select ProductName,LEN(ProductName) as Karakter from Products

Select LOWER('eNGin Salih')
Select Upper('eNGin Salih')


Select LTrim('  eNGin Salih         ')
Select RTrim('  eNGin Salih         ')
Select * from Products where LTrim(ProductName) = 'Chai' 

Select * from Products where LEN(ProductName)>10

Select REVERSE(' Salih ')

Select CHARINDEX('N','SaliH A�nEr',3)

Select ProductName from Products
where CHARINDEX('anton',ProductName,1)>0

--Belirtilen ifade yerinde belirtilen di�er ifade yaz�l�r.
Select REPLACE(' Salih �ner',' ','_')


Select REPLACE(ProductName,'','_') from Products

Select SUBSTRING('Salih Demirr',2,5)

Select ASCII('A')


--Tekrar eden kolonlar� �a��rd�k
Select distinct(Country),(City) from Customers order by Country

--GROUP BY
--Her country i�in bir tablo olu�turur.
Select Country,Count(*) Adet from Customers group by Country


--Where ko�ulu veriye y�nelik ken Having k�m�latif yap�lar i�in kullan�l�r
Select Country,City,Count(*) Adet from Customers
where City <>'Nantes'
group by Country,City having Count(*)>1 
order by Country



































