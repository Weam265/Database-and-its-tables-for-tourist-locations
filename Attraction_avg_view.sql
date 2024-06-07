Create VIEW [Attraction_avg] AS
SELECT Attraction.AttractionName, Country.CountryName, Location.LocationName,  AVG(Comment_Rating.UserRating) as avarge  
FROM Attraction, Country, [Location], Comment_Rating
where Attraction.LocationId=[Location].[LocationId] and [Location].CountryId= Country.CountryId and Attraction.AttractionId=Comment_Rating.AttractionId
GROUP by Attraction.AttractionName, Country.CountryName, Location.LocationName
order by avarge  DESC OFFSET 0 ROWS