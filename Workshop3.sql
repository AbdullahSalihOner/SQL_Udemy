--Hangi kategoriden kaç tane
Select C.CategoryName ürünAdý, count(*) as Adet from Products p inner join Categories c
on p.CategoryID = c.CategoryID
group by c.CategoryName
order by c.CategoryName

Select c.CategoryName,COUNT(*) as adet from Products p inner join Categories c
on p.CategoryID = c.CategoryID
inner join [Order Details] od
on od.ProductID = p.ProductID
group by c.CategoryName