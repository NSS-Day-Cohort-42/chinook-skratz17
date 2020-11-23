/*
Provide a query that includes the purchased track name AND artist name with each invoice line item.
*/
SELECT il.InvoiceLineId, t.Name as TrackName, ar.Name as ArtistName
FROM InvoiceLine il
JOIN Track t 
ON il.TrackId = t.TrackId
JOIN Album al
ON t.AlbumId = al.AlbumId
JOIN Artist ar
ON al.ArtistId = ar.ArtistId;