--Hangi �r�nden ka� tane satm���z
Select p.ProductName �r�nAd�, count(*) as Adet from Products p inner join [Order Details] od
on p.ProductID = od.ProductID
where od.Discount>0
group by p.ProductName
order by P.ProductName

