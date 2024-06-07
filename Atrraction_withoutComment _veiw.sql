create view Attraction_withoutComment as 
select AttractionName from Attraction
EXCEPT
SELECT Attraction.AttractionName
FROM Attraction, Comment_Rating
where Attraction.AttractionId=Comment_Rating.AttractionId
group by Attraction.AttractionName
having count(Comment_Rating.UserComment)>0