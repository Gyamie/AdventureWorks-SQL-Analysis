---------------------------Order Frequeny---------------------------------
select count(SalesOrderID) AS [Number of order],CustomerID AS [Customer] from[Sales].[SalesOrderHeader]
group by CustomerID
Having count(SalesOrderID) > 1
ORDER BY count(SalesOrderID) desc