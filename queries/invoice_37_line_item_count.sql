/*
Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.
*/
SELECT COUNT(*) as Invoice37LineItems
FROM Invoice i
JOIN InvoiceLine il
ON il.InvoiceId = i.InvoiceId
WHERE i.InvoiceId = 37;