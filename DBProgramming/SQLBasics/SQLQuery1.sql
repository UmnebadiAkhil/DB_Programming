create database customerdetails

CREATE TABLE Customer  ( 
CustomerID int, 
CustomerName varchar(100), 
ContactName varchar(100),
Address varchar(250),
City varchar(100),
PostalCode int,
Country varchar(100)
); 

drop table Customers

CREATE TABLE Customers  ( 
CustomerID int identity primary key, 
CustomerName varchar(100) not null, 
ContactName varchar(100) not null,
Email varchar(150)  not null,
Address varchar(250)  not null,
City varchar(100)  not null,
PostalCode int  not null,
Country varchar(100) not null
);

INSERT INTO Customers(CustomerName,ContactName, Email,Address, City, PostalCode,Country) values
 ('Bill', 8975632142,'bill@gmail.com', 'sirugapuram', 'Kurnool','518348','India'),
 ('Peter', 897463215,'peter@gmail.com', 'Bangalore','Bangalore','560100','India'),
 ('Charlie', 9874563215,'Charlie@gmail.com', 'Hyderabad' ,'Hyderabad','534922','India')

 select *from Customers

 SELECT CustomerName, City FROM Customers;

