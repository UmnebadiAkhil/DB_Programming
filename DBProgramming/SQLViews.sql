use customerdetails
go

select * from Employee

CREATE VIEW vwEmployee
as
select *from Employee;

select * from vwEmployee
sp_helptext vwEmployee

drop view vwEmployee

select *from Employee;
select *from EmployeeDetails;

CREATE VIEW vwEmployeeDetailsTable
As
select Employee.Emp_Id, Emp_Name, Emp_Address, Emp_Salary 
from Employee
JOIN EmployeeDetails
on Employee.Emp_Id = EmployeeDetails.Emp_ID;

select * from vwEmployeeDetailsTable;