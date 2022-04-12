---------Limiting rows----------

---SQL Server OFFSET and FETCH examples--

----sorts the products by their list prices and names
SELECT
    CustomerName,
    ContactName
FROM
    customers
ORDER BY
    CustomerName,
    ContactName;

----To skip the first 5 customers and return the rest, you use the OFFSET clause as shown in the following statement:
SELECT
    CustomerName,
    ContactName
FROM
    customers
ORDER BY
    CustomerName,
    ContactName 
OFFSET 5 ROWS;

----To skip the first 5 products and select the next 5 customers, you use both OFFSET and FETCH clauses as follows:
SELECT
    CustomerName,
    ContactName
FROM
    customers
ORDER BY
    CustomerName,
    ContactName
OFFSET 5 ROWS 
FETCH NEXT 5 ROWS ONLY;

----To get the top 5 most expensive customers you use both OFFSET and FETCH clauses:
SELECT
    CustomerName,
    ContactName
FROM
    customers
ORDER BY
    ContactName DESC,
    CustomerName 
OFFSET 0 ROWS 
FETCH FIRST 5 ROWS ONLY;

---------to SQL Server SELECT TOP---------
