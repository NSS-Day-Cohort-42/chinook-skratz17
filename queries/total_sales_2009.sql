/*
What are the respective total sales for each of those years?
*/
SELECT ROUND(SUM(Total), 2) as YearSales
FROM Invoice
WHERE InvoiceDate >= '2009-01-01' AND InvoiceDate <= '2009-12-31';