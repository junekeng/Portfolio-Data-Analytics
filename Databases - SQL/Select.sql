-- DAT102 Midterm Test
-- June Tan
-- Part 2 SELECT Statements 

-- Question 6a: 
SELECT ContactName, CompanyName, City FROM customer;

-- Question 6b:
SELECT ContactName, CompanyName, City FROM customer ORDER BY City;

-- Question 6c:
SELECT CompanyName, City FROM customer WHERE Country='Germany' ORDER BY City;

-- Question 6d:
SELECT ContactName, CompanyName, City, Country, Phone FROM customer
WHERE ContactTitle='Owner' AND Country IN ('Mexico', 'France') ORDER BY CompanyName;
