/*
Provide a query that shows the top 3 best selling artists.
*/
SELECT a.Name, SUM(il.Quantity) as PurchaseCount
FROM Artist a
JOIN Album al
ON al.ArtistId = a.ArtistId
JOIN Track t
ON t.AlbumId = al.AlbumId
JOIN InvoiceLine il
ON il.TrackId = t.TrackId
GROUP BY a.ArtistId
ORDER BY PurchaseCount DESC
LIMIT 3;