CREATE PROCEDURE [dbo].[spPosts_Insert]
	@userId int,
	@title nvarchar(159),
	@body text,
	@datecreated datetime2
AS
BEGIN
	INSERT INTO dbo.Posts
	(UserId, Title, Body, DateCreated)
	VALUES
	(@userId, @title, @body, @datecreated)
END
