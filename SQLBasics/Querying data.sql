----Querying data----

SELECT  CustomerName FROM Customers;
---retrieve some columns of a table
SELECT CustomerName, ContactName FROM customers;
SELECT CustomerName, ContactName, Email FROM customers;
---retrieve all columns from a table
SELECT * FROM customers;
---sort the result set
SELECT * FROM customers where City = 'Kurnool';
SELECT * FROM customers where City = 'Kurnool' order by CustomerName; 
---group rows into groups
SELECT City, COUNT(*) FROM customers where City = 'Kurnool' group by City order by City;
---filter groups
SELECT City, COUNT(*) FROM customers where City = 'Kurnool' group by City having COUNT(*)<10 order by City;