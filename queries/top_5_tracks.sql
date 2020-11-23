/*
Provide a query that shows the top 5 most purchased tracks over all.
*/
SELECT t.Name, SUM(il.Quantity) as PurchaseCount
FROM Track t
JOIN InvoiceLine il
ON il.TrackId = t.TrackId
GROUP BY t.TrackId
ORDER BY PurchaseCount DESC
LIMIT 5;