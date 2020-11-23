/*
Which sales agent made the most in sales over all?
*/
SELECT FullName, MAX(TotalSales)
FROM (
  SELECT e.FirstName || ' ' || e.LastName as FullName, ROUND(SUM(i.Total), 2) as TotalSales
  FROM Employee e
  JOIN Customer c
  ON c.SupportRepId = e.EmployeeId
  JOIN Invoice i
  ON i.CustomerId = c.CustomerId
  GROUP BY e.EmployeeId
);