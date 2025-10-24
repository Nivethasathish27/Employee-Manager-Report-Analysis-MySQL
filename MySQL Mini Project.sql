Create database Project;
use Project;

Create table Employees(
EmployeeID int Primary key,
EmployeeName varchar(225),
ManagerID int);

insert into Employees(EmployeeID, EmployeeName, ManagerID) values
(1, 'Alice', 3),
(2, 'Bob', 3),
(3, 'Charlie', 4),
(4, 'David', 5),
(5, 'Eve', 5),
(6, 'Frank', 5),
(7, 'Grace', 5),
(8, 'Hannah', 5),
(9, 'Ivan', 5),
(10, 'Jack', 5),
(11, 'Karen', 4),
(12, 'Leo', 4),
(13, 'Mike', 5),
(14, 'Nina', 5),
(15, 'Olivia',5);




select e.EmployeeName as Manager_Name,
count(emp.EmployeeID) as Report_Count
from Employees emp
join Employees e
on emp.ManagerID = e.EmployeeID
group by 
e.EmployeeName
having count(emp.EmployeeID) > 7;



