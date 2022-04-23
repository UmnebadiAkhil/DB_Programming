---- Create Table to implement Join ----

Create table Employee
(
	Emp_Id int Identity Primary key,
	Emp_Name varchar(150) null
	
);

create table EmployeeDetails
(
 Emp_ID int Not null,
 Emp_Age int not null,
 Emp_Address char(255) null,
 Emp_Salary decimal(8,2) null
);

--- Insert some dummy data in Table ---
insert into Employee(Emp_Name)
values  ('Akhil'),
		('yeshwanth'),
		('Nenika'),
		('Kumar'),
		('Sahana');

---- Insert Some dummy data ----
Insert into EmployeeDetails
values	(1,33,'Delhi',56942.65),
		(2,43,'Bangalore',5942.65),
		(3,53,'Hyderbad',6942.65),
		(4,63,'UP',46942.65),
		(8,75,'MP',36942.65),
		(10,25,'Delhi',45542.65);

---- Retrieve all data from Table -----
select * from Employee
select * from EmployeeDetails

----- Implement Inner Join ----
select Employee.Emp_Id,Employee.Emp_Name,EmployeeDetails.Emp_Age,EmployeeDetails.Emp_Address,EmployeeDetails.Emp_Salary,EmployeeDetails.Emp_ID from Employee 
INNER JOIN EmployeeDetails
ON(Employee.Emp_Id=EmployeeDetails.Emp_ID);

----- Implement Left Join ----
select Employee.Emp_Id,Employee.Emp_Name,EmployeeDetails.Emp_Age,EmployeeDetails.Emp_Address,EmployeeDetails.Emp_Salary,EmployeeDetails.Emp_ID from Employee 
Left JOIN EmployeeDetails
ON(Employee.Emp_Id=EmployeeDetails.Emp_ID);

----- Implement Right Join ----
select Employee.Emp_Id,Employee.Emp_Name,EmployeeDetails.Emp_Age,EmployeeDetails.Emp_Address,EmployeeDetails.Emp_Salary,EmployeeDetails.Emp_ID from Employee 
Right JOIN EmployeeDetails
ON(Employee.Emp_Id=EmployeeDetails.Emp_ID);

----- Implement Full Join ----
select Employee.Emp_Id,Employee.Emp_Name,EmployeeDetails.Emp_Age,EmployeeDetails.Emp_Address,EmployeeDetails.Emp_Salary,EmployeeDetails.Emp_ID from Employee 
FULL JOIN EmployeeDetails
ON(Employee.Emp_Id=EmployeeDetails.Emp_ID);

----- Implement Cross Join ----
select Employee.Emp_Id,Employee.Emp_Name,EmployeeDetails.Emp_Age,EmployeeDetails.Emp_Address,EmployeeDetails.Emp_Salary,EmployeeDetails.Emp_ID from Employee 
Cross JOIN EmployeeDetails;

