create table dbo.customer (
customerId int primary key identity(100,1), --identity column with seed 100 and increment 1
customerAddress nvarchar(500) not null,
customerCountry nvarchar(20) not null,
customerEmail nvarchar(80) not null,
customerContact nvarchar(30) not null);

/*
this is multiline comment
*/

--this is single line comment