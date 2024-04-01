---------------------------Customer Analysis-----------------------------
-----verify data
select  * from[Sales].[Customer]ORDER BY CustomerID
select * from[Sales].[SalesOrderHeader]
ORDER BY CustomerID
----- customer and how much they spent
select top 10 CustomerID as [customer],sum(SubTotal) AS [total purchase]
from [Sales].[SalesOrderHeader]
group by CustomerID
ORDER BY [total purchase] desc