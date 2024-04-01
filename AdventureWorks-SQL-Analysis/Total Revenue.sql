use [AdventureWorks2017]

-----------------------finding Total Revenue-----------------------------------

----checked two tables [SalesOrderHeader] and [SalesOrderDetail]

select salesorderID, sum(SubTotal)'Total Revenue' from [Sales].[SalesOrderHeader]
group by salesorderID
order by  salesorderID asc

----[SalesOrderDetail] check if lineTotal is same as SubTotal
select salesorderID,sum(lineTotal)'total order price' from [Sales].[SalesOrderDetail]
--where salesorderID =43659
group by salesorderID
order by  salesorderID asc

----now sum-up all the SubTotal 
select sum(SubTotal)'Total Revenue' from [Sales].[SalesOrderHeader]

 
 select salesorderID,OrderDate,ShipDate, DueDate,subtotal from [Sales].[SalesOrderHeader]
 order by  salesorderID asc


