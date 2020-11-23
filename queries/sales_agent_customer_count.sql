/*
Provide a query that shows the count of customers assigned to each sales agent.
*/
SELECT e.EmployeeId, e.FirstName || ' ' || e.LastName as FullName, COUNT(*) as CustomerCount
FROM Employee e
JOIN Customer c
ON c.SupportRepId = e.EmployeeId
GROUP BY e.EmployeeId;