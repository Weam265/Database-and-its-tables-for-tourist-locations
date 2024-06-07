CREATE PROCEDURE [dbo].[Add_Comment_Rating]
@AttractionId int, @UserId int, @UserComment nvarchar(MAX), @UserRating int
AS
INSERT into Comment_Rating(AttractionId, UserId, UserComment, UserRating)
VALUES
(@AttractionId,@UserId,  @UserComment, @UserRating)
GO