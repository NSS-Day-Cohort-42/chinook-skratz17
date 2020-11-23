/*
Provide a query that shows total sales made by each sales agent.
*/
SELECT e.EmployeeId, e.FirstName || ' ' || e.LastName as EmployeeFullName, SUM(i.Total) as TotalSales
FROM Employee e
JOIN Customer c
ON c.SupportRepId = e.EmployeeId
JOIN Invoice i
ON i.CustomerId = c.CustomerId
WHERE Title = 'Sales Support Agent'
AND i.InvoiceDate >= '2009-01-01' AND i.InvoiceDate <= '2009-12-31'
GROUP BY e.EmployeeId
ORDER BY TotalSales DESC
LIMIT 1;

/*
Provide a query that shows total sales made by each sales agent (using max + subquery).
*/
SELECT EmployeeId, EmployeeFullName, MAX(TotalSales)
FROM (
  SELECT e.EmployeeId, e.FirstName || ' ' || e.LastName as EmployeeFullName, SUM(i.Total) as TotalSales
  FROM Employee e
  JOIN Customer c
  ON c.SupportRepId = e.EmployeeId
  JOIN Invoice i
  ON i.CustomerId = c.CustomerId
  WHERE Title = 'Sales Support Agent'
  AND i.InvoiceDate >= '2009-01-01' AND i.InvoiceDate <= '2009-12-31'
  GROUP BY e.EmployeeId
);