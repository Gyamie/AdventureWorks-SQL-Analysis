---------------------------Total selling products------------------------------------
---- with a join query to attach the name of the products sold more
select [Product].Name,[SalesOrderDetail].[quantity_sold],[SalesOrderDetail].[total]
from [Production].[Product]
join(
----- finding quantity_sold and with its total(sub query)
select ProductID,count(OrderQty)AS [quantity_sold],sum(LineTotal) AS [total]
from [Sales].[SalesOrderDetail] 
group by ProductID ) -------- end
[SalesOrderDetail] 
on [Product].ProductID=[SalesOrderDetail].ProductID
ORDER BY [Product].ProductID desc;