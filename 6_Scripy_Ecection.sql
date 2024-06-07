DECLARE @RC int
DECLARE @AttractionId int
DECLARE @UserId int
DECLARE @UserComment nvarchar(max)
DECLARE @UserRating int

-- TODO: Set parameter values here.

EXECUTE @RC = [dbo].[Add_Comment_Rating] 
   @AttractionId =1
  ,@UserId=5
  ,@UserComment= 'Mycket fin'
  ,@UserRating=3
GO

DECLARE @RC int
DECLARE @AttractionName nvarchar(255)
DECLARE @Descreption nvarchar(max)
DECLARE @LocationId int

-- TODO: Set parameter values here.

EXECUTE @RC = [dbo].[AddAttraction] 
   @AttractionName= 'Skandinaviens största katedral'
  ,@Descreption = 'Uppsala domkyrka är Skandinaviens absolut största katedralkyrka med sina 119 meter höga kyrkotorn. Kyrkobygget började omkring 1270 men katedralen invigdes inte förrän 1435'
  ,@LocationId = 7
GO

DECLARE @RC int
DECLARE @UserName nvarchar(50)
DECLARE @Email nvarchar(50)
DECLARE @PassWord nvarchar(50)

-- TODO: Set parameter values here.

EXECUTE @RC = [dbo].[NewUser] 
   @UserName ='Weam'
  ,@Email='weam.as@hotmail.com'
  ,@PassWord='7026'
GO

select * from Attraction_avg
GO
SELECT * from Attraction_withoutComment
GO
SELECT * from Attraction_WithAll
GO
Select *from  User_Comment_Rating
GO