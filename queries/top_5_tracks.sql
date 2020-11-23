/*
Provide a query that shows the top 5 most purchased tracks over all.
*/
SELECT t.Name, COUNT(*) as PurchaseCount
FROM Track t
JOIN InvoiceLine il
ON il.TrackId = t.TrackId
GROUP BY t.TrackId
ORDER BY PurchaseCount DESC
LIMIT 5;