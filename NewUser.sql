create PROCEDURE [dbo].[NewUser]
@UserName  nvarchar(50),
@Email nvarchar(50),
@PassWord nvarchar(50)
AS
INSERT into [User](UserName, Email, PassWord)
VALUES
(@UserName,@Email,@PassWord)
GO