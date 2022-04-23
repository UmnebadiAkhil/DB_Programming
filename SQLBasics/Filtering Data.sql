-----Filtering Data-----

-- SQL Server SELECT DISTINCT
SELECT DISTINCT CustomerName
FROM Customers;

SELECT DISTINCT city, Address, PostalCode
FROM customers;

--- Finding rows by using a simple equality
SELECT
    CustomerID,
    CustomerName,
    ContactName
FROM
    Customers
WHERE
    CustomerID = 2
ORDER BY
    ContactName DESC;

---Finding rows that meet any of two conditions
SELECT CustomerID, CustomerName, ContactName, PostalCode FROM Customers
WHERE
    ContactName > 6458222112 OR PostalCode = 518400
ORDER BY
    CustomerName DESC;

---Finding rows with the value between two values
SELECT CustomerID, CustomerName, ContactName, PostalCode FROM Customers
WHERE
    CustomerID Between 2 and 6
ORDER BY
    CustomerName DESC;

---Finding rows that have a value in a list of values
SELECT CustomerID, CustomerName, ContactName, PostalCode FROM Customers
WHERE
    CustomerID IN (6,5)
ORDER BY
    CustomerName DESC;

---Finding rows whose values contain a string
SELECT CustomerID, CustomerName, ContactName, PostalCode FROM Customers
WHERE
    CustomerName Like '%Yeshwanth%'
ORDER BY
    CustomerName DESC;