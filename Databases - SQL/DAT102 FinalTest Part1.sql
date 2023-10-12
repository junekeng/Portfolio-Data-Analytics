# DAT102 Databases 
# Created by June Tan on June 13,2023 
# Final Test: Part 1 - SQL Statements 

# Q1: Name of each category and count of different products by category
SELECT CategoryName, COUNT(products.ProductID) AS ProductCount 
FROM categories
INNER JOIN products ON categories.CategoryID = products.CategoryID
GROUP BY CategoryName;

# Q2: Name of employee responsible for each territory description
SELECT TerritoryDescription, employees.FirstName, employees.LastName
FROM employees
INNER JOIN employeeterritories ON employees.EmployeeID = employeeterritories.EmployeeID 
INNER JOIN territories ON territories.TerritoryID = employeeterritories.TerritoryID;

# Q3: Number of employees by region description
SELECT RegionDescription, COUNT(employeeterritories.EmployeeID) AS EmployeeCount
FROM region
INNER JOIN territories ON region.RegionID = territories.RegionID
INNER JOIN employeeterritories ON employeeterritories.TerritoryID = territories.TerritoryID
GROUP BY RegionDescription;

# Q4: Product with highest number of units in stock
SELECT ProductName, UnitsInStock FROM products
WHERE UnitsInStock = (SELECT MAX(UnitsInStock) FROM products);

# Q5: Show product name, quantity sold, orderID, order date and customer’s companyname, sorted by order ID, then by product name
SELECT products.ProductName, Quantity, orders.OrderID, orders.OrderDate, customers.CompanyName
FROM `order details`
INNER JOIN products ON products.ProductID = `order details`.ProductID
INNER JOIN orders ON orders.OrderID = `order details`.OrderID
INNER JOIN customers ON orders.CustomerID = customers.CustomerID
ORDER BY orders.OrderID, products.ProductName;

# Q6: Remove the LastName and PostalCode indexes on the Employees table
ALTER TABLE employees
DROP INDEX LastName;

ALTER TABLE employees
DROP INDEX PostalCode;

# Q7: Add an index for the City on the Employees table
CREATE INDEX City
ON employees (City);