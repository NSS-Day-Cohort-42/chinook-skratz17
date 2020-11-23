/*
Provide a query that shows the most purchased Media Type.
*/
SELECT MediaTypeName, MAX(MediaTypeCount) as QuantitySold
FROM (
  SELECT m.Name as MediaTypeName, SUM(il.Quantity) as MediaTypeCount
  FROM MediaType m
  JOIN Track t
  ON t.MediaTypeId = m.MediaTypeId
  JOIN InvoiceLine il
  ON il.TrackId = t.TrackId
  GROUP BY m.MediaTypeId
);