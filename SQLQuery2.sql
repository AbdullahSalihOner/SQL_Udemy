-- Joinler Baþlangýç

--Ýnner join ayný olan deðerleri eþleþtirir Þart konusunda eþleþenleri getirir..
Select * from Products p inner join Categories c
on p.CategoryID = c.CategoryID
where p.UnitPrice>20
order by c.CategoryID

--hangi üründen ne kadar sipariþ aldýk ve ne kadar para kazandýk

Select p.ProductName,O.OrderDate,od.Quantity * od.UnitPrice as Total
from Products p inner join [Order Details] od
on p.ProductID = od.ProductID
inner join Orders o
on o.OrderID = od.OrderID
order by p.ProductName,o.OrderDate

--Left Join eþlelþmeyen datalar getirebilir.

Select * from Products p left join [Order Details] od 
on p.ProductID = od.ProductID
where od.ProductID is null

-- soldaki tabloda olup sol tabloda olan olmayan hepsini getirecek
Select * from Customers c left join Orders o
on c.CustomerID = o.CustomerID
where o.CustomerID is null


--Right Join

Select c.ContactName,c.CustomerID from Orders o right join Customers c
on o.CustomerID = c.CustomerID
where o.CustomerID is null


--Full join
Select * from Customers c full join Orders o 
on o.CustomerID =c.CustomerID

















