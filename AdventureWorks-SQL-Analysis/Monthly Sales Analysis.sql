---------------------------Monthly Sales Analysis------------------------------------
 ---Total Revenue for each month(numerical)
 select MONTH(OrderDate)'MONTH',YEAR(OrderDate) 'YEAR',Sum(subtotal) 'TOTAL' from [Sales].[SalesOrderHeader]
 group by MONTH(OrderDate),YEAR(OrderDate)
 order by MONTH(OrderDate),YEAR(OrderDate) asc
 
 ---Total Revenue for each month(words)
 select DateName(MONTH,Dateadd(MONTH,MONTH(OrderDate-1),'1900-01-01'))'MONTH',YEAR(OrderDate) 'YEAR',Sum(subtotal) 'TOTAL' 
 from [Sales].[SalesOrderHeader]
 group by DateName(MONTH,Dateadd(MONTH,MONTH(OrderDate-1),'1900-01-01')),YEAR(OrderDate)
 order by DateName(MONTH,Dateadd(MONTH,MONTH(OrderDate-1),'1900-01-01')),YEAR(OrderDate) asc

 
select * from [Production].[Product]
order by ProductID 
