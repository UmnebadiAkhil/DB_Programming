/*---- Set Operators Union and union all----*/
select COUNT(*) from Employee
select COUNT(*) from EmployeeDetails

select Emp_ID from Employee
Union
Select Emp_ID from EmployeeDetails

select Emp_ID from Employee
Union all
Select Emp_ID from EmployeeDetails

select Emp_ID from Employee
Union all
Select Emp_ID from EmployeeDetails
order by Emp_ID;

--- Set Operators INTERSECT ---
select Emp_ID from Employee
intersect
Select Emp_ID from EmployeeDetails

--- Set Operators Except ----
select Emp_Id from Employee
Except
Select Emp_ID from EmployeeDetails

select Emp_Id from Employee
Except
Select Emp_ID from EmployeeDetails
order by Emp_ID;