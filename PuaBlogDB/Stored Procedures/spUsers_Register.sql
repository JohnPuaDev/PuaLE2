CREATE PROCEDURE [dbo].[spUsers_Register]
	@username nvarchar(16),
	@firstname nvarchar(50),
	@lastname nvarchar(50),
	@password nvarchar(16)
AS
BEGIN
	set nocount on;

	INSERT INTO dbo.Users
	(UserName, FirstName, LastName, Password)
	VALUES(@username, @firstname, @lastname, @password)
END