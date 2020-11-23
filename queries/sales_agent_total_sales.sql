/*
Provide a query that shows total sales made by each sales agent.
*/
SELECT e.EmployeeId, e.FirstName || ' ' || e.LastName as EmployeeFullName, ROUND(SUM(i.Total), 2) as TotalSales
FROM Employee e
JOIN Customer c
ON c.SupportRepId = e.EmployeeId
JOIN Invoice i
ON i.CustomerId = c.CustomerId
WHERE Title = 'Sales Support Agent'
GROUP BY e.EmployeeId;