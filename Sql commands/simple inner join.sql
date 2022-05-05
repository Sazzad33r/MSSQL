--inner join query
select * from customer as c inner join
purchase as p on c.customerId = p.cID order by billNumber;