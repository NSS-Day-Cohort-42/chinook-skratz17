/*
How many Invoices were there in 2009 and 2011?
*/
SELECT * FROM Invoice
WHERE InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2011-12-31';