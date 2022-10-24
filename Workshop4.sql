-- Çalýþan ismi ve üst rütbeli sorumlu personel

Select e2.FirstName + ' ' +e2.LastName as Personel,
e1.FirstName + ' ' + e1.LastName as Üstü
from Employees e1 inner join Employees e2
on e1.EmployeeID = e2.EmployeeID
