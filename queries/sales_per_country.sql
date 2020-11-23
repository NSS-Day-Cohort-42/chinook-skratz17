/*
Provide a query that shows the total sales per country.
*/
SELECT BillingCountry, ROUND(SUM(Total), 2) as TotalSales
FROM Invoice
GROUP BY BillingCountry;