Create VIEW  Attraion_WithAll AS
select AttractionName, CountryName, LocationName, UserComment 
from Attraction, Country, [Location], Comment_Rating
where Attraction.LocationId=[Location].[LocationId] and [Location].CountryId= Country.CountryId and Attraction.AttractionId=Comment_Rating.AttractionId;