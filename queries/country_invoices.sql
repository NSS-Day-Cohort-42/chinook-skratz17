/*
Provide a query that shows the # of invoices per country.
*/
SELECT InvoiceId, BillingCountry, COUNT(*) As CountryCount
FROM Invoice
GROUP BY BillingCountry;