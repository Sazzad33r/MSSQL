create table purchase (
pID int primary key identity(500,4),
cID int not null,
iID nvarchar(100) not null,
billNumber numeric(15,0) not null,
amount numeric(20,0) not null,
method nvarchar(50) not null);

select * from purchase;

alter table purchase add iID nvarchar(100);

--Insert Query
insert into purchase (cID, iID, billNumber, amount, method) values
(101, '5|8', 500103, 120000, 'cash');