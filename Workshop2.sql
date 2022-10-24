--Hangi üründen kaç tane satmýþýz
Select p.ProductName ürünAdý, count(*) as Adet from Products p inner join [Order Details] od
on p.ProductID = od.ProductID
where od.Discount>0
group by p.ProductName
order by P.ProductName

