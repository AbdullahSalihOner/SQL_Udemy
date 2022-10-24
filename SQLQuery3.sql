Select * from Employees

insert into Categories (CategoryName,Description)
values ('Test Category','Test Catgeory Description')



insert into [Order Details] values (10248,12,12,10,0)
--Bunu çalýþtýrýsak tüm category name ler sýfýrlanýr dikkatli ol
update Categories set CategoryName=''

update Categories set CategoryName='Test Category 2',Description='Test Catgeory 2 description'
where CategoryId>=9

---Tüm tabloyu sileblir !!!!!!!! bir iliþkisi olmayan tabloyu direk siler
delete from Categories

delete from Categories where CategoryID>=9



Select * from CustomersWork

--Belirtilen tabloda oluþturduðumuz tabloya veri .çektik
insert into CustomersWork (CustomerID,CompanyName, ContactName) 
select CustomerID,CompanyName, ContactName from Customers

delete from CustomersWork


--belirtilen þartý saðlayan verileri getirdi sadece
insert into CustomersWork (CustomerID,CompanyName, ContactName) 
select CustomerID,CompanyName, ContactName from Customers
where ContactName like '%en%'

--Ýlk verileri çektiðimiz ana tanbloyu yeni tabloya tadaýk sonrasýnda üzerinde iþlem yapýp eski tabloya entegre edebilriz.
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

--Ýki farklý tabloyu ayrý ayrý çaðýrdýk
sELECT * from Customers
Select * from CustomersWork


--Þimdi birleþtirerek çaðýrcaz.
sELECT CustomerId,CompanyName,ContactName from Customers
union
Select * from CustomersWork

--Union all dersek ortaklarda gelir
sELECT CustomerId,CompanyName,ContactName from Customers
union all
Select * from CustomersWork

