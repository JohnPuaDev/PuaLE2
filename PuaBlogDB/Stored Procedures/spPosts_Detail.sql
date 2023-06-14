CREATE PROCEDURE [dbo].[spPosts_Detail]
	@id int
AS
BEGIN
	set nocount on;

	SELECT [p].[Id], [p].[Title],[p].[Body],[p].[DateCreated], [u].[Username], [u].[FirstName], [u].[LastName]
	FROM dbo.Posts p 
	INNER JOIN dbo.users u
	ON p.UserId = u.Id
	WHERE p.Id = @id;
END
