--Hiç satýþ yapamayan personel

Select * from Employees e left join Orders o
on e.EmployeeID = o.EmployeeID
where o.EmployeeID is null