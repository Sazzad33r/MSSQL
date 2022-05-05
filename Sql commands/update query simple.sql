select * from customer;

--update query (simple)
update customer
set customerEmail = 'nobody@gmail.com'
where customerId = 100;

update customer
set customerAddress = 'Kalo panir tank, original 10, Dhaka',
customerEmail = 'iamnobody@gmail.com',
customerName = 'Jabed Ali'
where customerId = 102;