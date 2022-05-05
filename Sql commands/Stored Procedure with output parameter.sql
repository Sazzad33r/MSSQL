create procedure [Test]
@ID int,
@Name nvarchar(150) output
As
Begin
set @Name = (select customerName from customer where customerId = @ID);
End

declare @user nvarchar(150)
exec [Test] 103,@user output
print @user