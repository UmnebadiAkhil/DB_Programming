
	------------Sorting data-------------
----Asending order
SELECT  CustomerName FROM  customers ORDER BY CustomerName ASC;
----Desending order
SELECT  CustomerName FROM  customers ORDER BY CustomerName DESC;
----Sort a result set by one column in ascending order
SELECT  CustomerName, City FROM  customers ORDER BY CustomerName ASC;
----Sort a result set by one column in descending order
SELECT  CustomerName, City FROM  customers ORDER BY CustomerName DESC;
---- Sort a result set by multiple columns
SELECT  CustomerName, City FROM  customers ORDER BY CustomerName,City ASC;
----Sort a result set by multiple columns and different orders
SELECT  CustomerName, City FROM  customers ORDER BY CustomerName DESC, City ASC;
----Sort a result set by a column that is not in the select list
SELECT  CustomerName, City FROM  customers ORDER BY Address ASC;
----Sort a result set by an expression
SELECT  CustomerName, City FROM  customers ORDER BY LEN(CustomerName) DESC;
----Sort by ordinal positions of columns
SELECT  CustomerName, City FROM  customers ORDER BY 1,2;