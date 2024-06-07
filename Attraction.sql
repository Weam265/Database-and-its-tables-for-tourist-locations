CREATE PROCEDURE [dbo].[AddAttraction]
@AttractionName nvarchar(255), @Descreption nvarchar(MAX), @LocationId int
AS
INSERT into Attraction(AttractionName, Descreption, LocationId)
VALUES
(@AttractionName,@Descreption, @LocationId )
GO