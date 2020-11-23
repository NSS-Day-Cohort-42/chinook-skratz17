/*
Which country's customers spent the most?
*/
SELECT BillingCountry, MAX(TotalSales)
FROM (
  SELECT BillingCountry, ROUND(SUM(Total), 2) as TotalSales
  FROM Invoice
  GROUP BY BillingCountry
);