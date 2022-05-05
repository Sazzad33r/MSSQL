select * from customer;

--another select query with column alias
select customerId as [Customer ID], customerName as [Customer Name], 
customerAddress as [Address], customerCountry as [Country], 
customerEmail as [Email], customerContact as [Contact Number] 
from customer;