# KEY BUSINESS QUESTION 1: top-selling products
#Top-Selling Track
SELECT t.TrackId, t.Name, ROUND(SUM(il.UnitPrice*Quantity),2) AS TotalSales FROM  track t 
JOIN invoiceline il ON
t.TrackId=il.TrackId
GROUP BY t.TrackId, t.Name
ORDER BY TotalSales DESC;
 # all tracks were either sold once or twice we cant really predict which one is best selling track
 
 #Top-Selling Album
 SELECT a.AlbumId, a.Title, ROUND(SUM(c.UnitPrice*Quantity),2) AS TotalSales  FROM Album a
 JOIN track b 
 ON a.AlbumId=b.AlbumId
 JOIN invoiceline c 
 ON b.TrackId=c.TrackId
 GROUP BY a.AlbumId, a.Title
 ORDER BY TotalSales DESC;
# top 3 are Minha Historia, Prenda Minha, Afrociberdelia

#top-Selling Genre
SELECT a.GenreId, a.Name, ROUND(SUM(c.UnitPrice*Quantity),2) AS TotalSales
FROM genre a join
track b ON a.GenreId=b.GenreId
JOIN invoiceline c
ON b.trackId=c.trackId
GROUP BY a.GenreId, a.Name
ORDER BY TotalSales DESC;
#u see top 3 ganre are Latin, Rock and Metal

#top selling MediaType
SELECT a.MediaTypeId, a.name , COALESCE(ROUND(SUM(c.UnitPrice*Quantity),2),0) AS TotalSales
FROM mediatype a 
LEFT JOIN track b ON
a.MediaTypeId=b.MediaTypeId
LEFT JOIN invoiceline c
ON b.trackId=c.trackId
GROUP BY a.MediaTypeId, a.name
ORDER BY TotalSales DESC;
# Althought there are more than 5 Media Types but only MPEG audio file and Protected AAC audio file is being sold anomg them both
# MPEG audio file is highest selling media type than Protected AAC audio file

#top-Selling Playlist
SELECT  a.Name, COALESCE(ROUND(SUM(c.UnitPrice*Quantity),2),0) AS TotalSales
FROM playlist a 
LEFT JOIN playlisttrack b
ON a.playlistId=b.playlistId
LEFT JOIN invoiceline c
ON b.trackId=c.trackId
GROUP BY a.Name
ORDER BY TotalSales DESC;
#top 3 selling playlist are Music, 90â€™s Music and TV Shows

# top Artists
SELECT a.ArtistId, a.Name, ROUND(SUM(d.UnitPrice*Quantity),2) AS TotalSales
FROM artist a JOIN Album b
ON a.ArtistId= b.ArtistId
JOIN track c
ON b.AlbumId=c.AlbumId
JOIN invoiceline d
ON c.trackId=d.trackId
GROUP BY a.ArtistId, a.Name
ORDER BY TotalSales DESC;

#find out top 3 Artsists using window function
WITH cte AS(
SELECT a.ArtistId, a.Name, ROUND(SUM(d.UnitPrice*Quantity),2) AS TotalSales
FROM artist a JOIN Album b
ON a.ArtistId= b.ArtistId
JOIN track c
ON b.AlbumId=c.AlbumId
JOIN invoiceline d
ON c.trackId=d.trackId
GROUP BY a.ArtistId, a.Name
)
SELECT ArtistId,Name,TotalSales FROM(
SELECT *, dense_rank() OVER(ORDER BY TotalSales DESC) as `rank`
FROM cte) s
WHERE `rank`<=3;
# I COVERED ALL TOP SELLING PRODUCTS

#KEY BUSINESS QUESTION 2:revenue per region
SELECT 
 CASE
        WHEN Country IN ('USA','Canada') THEN 'North America'
        WHEN Country IN ('Argentina','Brazil','Chile') THEN 'South America'
        WHEN Country IN ('Austria','Belgium','Czech Republic','Denmark','Finland','France','Germany','Hungary','Ireland','Italy','Netherlands','Norway','Poland','Portugal','Spain','Sweden','United Kingdom') THEN 'Europe'
        WHEN Country = 'India' THEN 'Asia'
        WHEN Country = 'Australia' THEN 'Oceania'
        ELSE 'Other'
    END AS Region, COALESCE(ROUND(SUM(c.UnitPrice * Quantity),2),0) as revenue 
 FROM customer a
 JOIN invoice b ON
 a.CustomerId=b.CustomerId
JOIN invoiceline c
 ON b.InvoiceId=c.InvoiceId
 GROUP BY Region
 ORDER BY revenue DESC;
#Europe is Generating the Most Revenue

#Which Country generating highest Revenue?
SELECT Country, COALESCE(ROUND(SUM(c.UnitPrice * Quantity),2),0) as revenue 
 FROM customer a
 JOIN invoice b ON
 a.CustomerId=b.CustomerId
JOIN invoiceline c
 ON b.InvoiceId=c.InvoiceId
 GROUP BY Country
 ORDER BY revenue DESC;
 # USA Generating highest Revenue
 
 #Rank Counties Generating Higest Revenue
 WITH cte AS(
 SELECT Country, COALESCE(ROUND(SUM(c.UnitPrice * Quantity),2),0) as revenue 
 FROM customer a
 JOIN invoice b ON
 a.CustomerId=b.CustomerId
JOIN invoiceline c
 ON b.InvoiceId=c.InvoiceId
 GROUP BY Country)
 SELECT *, DENSE_RANK() OVER(ORDER BY revenue DESC) as `rank` FROM  cte
 ;
 
 #KEY BUSINESS QUESTION 3: monthly performance
 SELECT  YEAR(invoiceDate) AS `year`, SUM(UnitPrice*Quantity) as totalSales FROM invoice  as i
 JOIN invoiceline il
 ON i.InvoiceId=il.InvoiceId
 GROUP BY YEAR(invoiceDate);
 
 #YEAR OVER YEAR GROWTH 
 SELECT `year`,ROUND(((totalSales - lag(totalSales) OVER(ORDER BY `year`))/ lag(totalSales) OVER(ORDER BY `year`) ) * 100,2) as YoYGrowth FROM 
 (
  SELECT  YEAR(invoiceDate) AS `year`, SUM(UnitPrice*Quantity) as totalSales FROM invoice  as i
 JOIN invoiceline il
 ON i.InvoiceId=il.InvoiceId
 GROUP BY YEAR(invoiceDate)
) b;
#Revenue fluctuated over the years, with growth in 2010 and 2012, but declines in 2011 and 2013, showing an inconsistent year-over-year trend.

#Monthly Performance
 SELECT  MONTHNAME(invoiceDate) AS `month`, ROUND(SUM(UnitPrice*Quantity),2) as totalSales FROM invoice  as i
 JOIN invoiceline il
 ON i.InvoiceId=il.InvoiceId
 GROUP BY MONTHNAME(invoiceDate)
 ORDER BY totalSales DESC;
 #The monthly data shows a steady increase in sales throughout the year, starting lower in November–December and peaking around June–January. 
 #This indicates a seasonal upward trend in revenue.
 
 #Cumulative Monthly sum
 WITH cte AS(
  SELECT  YEAR(invoiceDate) AS `year`,
  MONTH(invoiceDate) AS Month_num,
  MONTHNAME(invoiceDate) AS `month`, ROUND(SUM(UnitPrice*Quantity),2) as totalSales FROM invoice  as i
 JOIN invoiceline il
 ON i.InvoiceId=il.InvoiceId
 GROUP BY YEAR(invoiceDate) ,MONTHNAME(invoiceDate), Month_num)
 SELECT `year`,`month`,totalSales,round(SUM(totalSales) OVER(PARTITION BY `year` ORDER BY Month_num),2) as cumulativeSum FROM cte;
 

 



