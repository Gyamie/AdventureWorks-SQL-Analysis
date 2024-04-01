-------------------------Revenue by each Product Category------------------
select [Product].Name,[SalesOrderDetail].[total]
from [Production].[Product]
join(
----- finding quantity_sold and with its total(sub query)
select ProductID,sum(LineTotal) AS [total]
from [Sales].[SalesOrderDetail] 
group by ProductID ) -------- end
[SalesOrderDetail] 
on [Product].ProductID=[SalesOrderDetail].ProductID
ORDER BY [Product].ProductID desc;
