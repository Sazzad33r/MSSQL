select * from info;

select * from customer;

select customerId as [ID], customerName as [Name], 
customerContact as [Contact Number] ,customerAddress as [Address], 
customerEmail as [Email], customerCountry as [Country] from customer;

--View Creation Query
create view CustomerView 
As 
select customerId as [ID], customerName as [Name], 
customerContact as [Contact Number] ,customerAddress as [Address], 
customerEmail as [Email], customerCountry as [Country] from customer;
Go

--select query on view
select * from CustomerView order by ID desc;