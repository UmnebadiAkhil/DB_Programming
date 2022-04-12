----------------Views in SQL-----------------
use customerdetails;
go
---------Create View----------

select * from EmployeeDetails

select * from Employee


CREATE VIEW vwsEmployeeDetails
as
select * from EmployeeDetails

select * from Employee
go
--------Alter or moifiy view-----------

ALTER VIEW vwsEmployeeDetails
as
select Emp_ID,Emp_Address,Emp_Salary from EmployeeDetails

select * from EmployeeDetails

----Defination------

sp_helptext 'vwsEmployeeDetails'

drop view vwsEmployeeDetails

----------Create view from single or multiple tables----------

select * from Employee

CREATE VIEW vwEmployeeDetailsMultipleTable
as
select a.Emp_Name,a.Emp_Id,b.Emp_Salary from Employee a join EmployeeDetails b on a.Emp_Id=b.Emp_ID;

select * from vwEmployeeDetailsMultipleTable

-------Update metadata of view---------

create view vwsEmployeeDetails
as
select * from Employee

select * from vwsEmployeeDetails

alter table Employee add city varchar(100)

exec sp_refreshview vwsEmployeeDetails

-------Schema binding in view--------

create view vwsEmployeeDetails
as
select * from Employee

select * from vwsEmployeeDetails

alter table Employee drop column city

create view vwsEmployeeDetails2WithSchemaBinding
with schemabinding
as
select Emp_Name,Emp_Id from dbo.Employee

alter table Employee drop column city

drop view vwsEmployeeDetails2WithSchemaBinding

-------Hide complexity of query------

-------Row Level Security-----------

create view vwEmployeeRowLevel
as
select * from EmployeeDetails where Emp_Salary > 26000

select * from vwEmployeeRowLevel order by Emp_Salary

------------Column Level Security-----------------

create view vwEmployeeColumnLevel
as
select Emp_ID,Emp_Address from EmployeeDetails

select * from vwEmployeeColumnLevel


--------Update,Delete,insert into view------------

CREATE VIEW vwCustomers
as
select * from Customers

select * from vwCustomers

delete from vwCustomers where Email= umsesh@gmail.com;

--------- Insert Data------------

insert into vwCustomers(employee_name,gender,phone_no,city,zip,manager_id) values('Ram','M',9538129542,'Thane',666301,9)

delete from DemoDetails where employee_id=1008
update DemoDetails set employee_name='Jayesh' where employee_id=1

-----------with check in option------------


create view WithCheckOption
as
select * from Employee where city='Pune'
with check option

select * from WithCheckOption

insert into WithCheckOption(employee_name,gender,phone_no,city,zip,manager_id) values('Prerna','F',5039215831,'Kolkata',332135,9)

