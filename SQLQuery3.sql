Select * from Employees

insert into Categories (CategoryName,Description)
values ('Test Category','Test Catgeory Description')



insert into [Order Details] values (10248,12,12,10,0)
--Bunu �al��t�r�sak t�m category name ler s�f�rlan�r dikkatli ol
update Categories set CategoryName=''

update Categories set CategoryName='Test Category 2',Description='Test Catgeory 2 description'
where CategoryId>=9

---T�m tabloyu sileblir !!!!!!!! bir ili�kisi olmayan tabloyu direk siler
delete from Categories

delete from Categories where CategoryID>=9



Select * from CustomersWork

--Belirtilen tabloda olu�turdu�umuz tabloya veri .�ektik
insert into CustomersWork (CustomerID,CompanyName, ContactName) 
select CustomerID,CompanyName, ContactName from Customers

delete from CustomersWork


--belirtilen �art� sa�layan verileri getirdi sadece
insert into CustomersWork (CustomerID,CompanyName, ContactName) 
select CustomerID,CompanyName, ContactName from Customers
where ContactName like '%en%'

--�lk verileri �ekti�imiz ana tanbloyu yeni tabloya tada�k sonras�nda �zerinde i�lem yap�p eski tabloya entegre edebilriz.
update Customers set CompanyName = CustomersWork.CompanyName
from 
Customers inner join CustomersWork
on Customers.CustomerID = CustomersWork.CustomerID
where CustomersWork.CompanyName like '%TEST%'


--Silme
delete Customers 
from 
Customers inner join CustomersWork
on Customers.CustomerID = CustomersWork.CustomerID
where CustomersWork.CompanyName like '%TEST%'

--�ki farkl� tabloyu ayr� ayr� �a��rd�k
sELECT * from Customers
Select * from CustomersWork


--�imdi birle�tirerek �a��rcaz.
sELECT CustomerId,CompanyName,ContactName from Customers
union
Select * from CustomersWork

--Union all dersek ortaklarda gelir
sELECT CustomerId,CompanyName,ContactName from Customers
union all
Select * from CustomersWork

