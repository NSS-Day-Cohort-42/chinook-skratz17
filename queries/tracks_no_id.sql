/*
Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre.
*/
SELECT t.Name as TrackName, a.Title as AlbumName, m.Name as MediaTypeName, g.Name as GenreName
FROM Track t
JOIN Album a
ON t.AlbumId = a.AlbumId
JOIN MediaType m
ON t.MediaTypeId = m.MediaTypeId
JOIN Genre g
ON t.GenreId = g.GenreId;