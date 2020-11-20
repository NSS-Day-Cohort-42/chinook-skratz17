/*
Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.
*/

SELECT i.Total, c.FirstName as CustomerFirstName, c.LastName as CustomerLastName, i.BillingCountry, e.FirstName as EmployeeFirstName, e.LastName as EmployeeLastName
FROM Invoice i 
JOIN Customer c
ON i.CustomerId = c.CustomerId
JOIN Employee e
ON c.SupportRepId = e.EmployeeId;