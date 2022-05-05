create procedure Retrive
As
Begin
select * from CustomerView
End


declare @table1 table(
Id int,
Name nvarchar(150),
Contact nvarchar(50),
[Address] nvarchar(500),
Email nvarchar(150),
Country nvarchar(50));
insert @table1 exec Retrive 
select * from @table1

select * from CustomerView;