/*
Provide a query that shows the most purchased track of 2013.
*/
SELECT Name, MAX(PurchaseCount)
FROM (
  SELECT t.Name, SUM(il.Quantity) as PurchaseCount
  FROM Track t
  JOIN InvoiceLine il
  ON il.TrackId = t.TrackId
  JOIN Invoice i
  ON il.InvoiceId = i.InvoiceId
  WHERE i.InvoiceDate >= '2013-01-01' AND i.invoiceDate <= '2013-12-31'
  GROUP BY t.TrackId
);