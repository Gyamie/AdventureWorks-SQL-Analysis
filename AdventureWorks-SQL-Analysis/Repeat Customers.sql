--------------------------Repeat Customers------------------------------ 

select count(SalesOrderID) AS [Number of Purchases],CustomerID AS [Customer] from[Sales].[SalesOrderHeader]
group by CustomerID
ORDER BY count(SalesOrderID) asc