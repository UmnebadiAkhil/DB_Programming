---------------------------Indexes in SQL-----------------------
use customerdetails
go

select * from EmployeeDetails

select Emp_ID,Emp_Age,Emp_Salary from EmployeeDetails where Emp_Salary >26000 

------------------------non-clustered index-------------------

--if table already has clustered index then it will create non-clustered index

-----------------Index on multiple table----------------

create index ix_employee_salary
on EmployeeDetails(Emp_salary asc,Emp_ID);

---------Unique Index---------------

create Unique index ix_Employee_phoneno
on EmployeeDetails(phone_no);

select Emp_ID ,Emp_Address from EmployeeDetails where Emp_Address= Bangalore;

-----------------Index on single table------------------

select * from ItemSales

create clustered index ix_ItemsSales_brand
on ItemSales(brand);

select * from ItemSales where brand ='Samsung'


-------Rename index--------------

exec sp_rename
	N'Employeeinfo.ix_employee_salary',
	N'ix_Employee_Salary',
	N'Index';


---------Enable index-----------

alter index ix_Employee_phoneno on EmployeeDetails rebuild;

alter index all on Employeeinfo rebuild;

-------Disable index------------

alter index ix_Employee_phoneno on EmployeeDetails disable;

alter index all on EmployeeDetails disable;

----------Drop index------------

drop index ix_employee_salary on EmployeeDetails

drop index ix_ItemsSales_brand1 on ItemSales