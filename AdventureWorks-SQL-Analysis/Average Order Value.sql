--------------------------Average Order Value------------------------------ 
select [SalesOrderDetail].[SalesOrderID], [SalesOrderHeader].TotalDue/[SalesOrderDetail].[Quantity] as [order value]
from[Sales].[SalesOrderHeader] 
join(
----- finding quantity_sold and with its total(sub query)
select SalesOrderID,sum(orderQty) Quantity 
from[Sales].[SalesOrderDetail] 
group by SalesOrderID ) -------- end
[SalesOrderDetail] 
on [SalesOrderDetail].SalesOrderID=[SalesOrderHeader].SalesOrderID
ORDER BY [SalesOrderDetail].SalesOrderID asc;
