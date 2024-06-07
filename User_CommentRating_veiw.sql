Create VIEW User_Comment_Rating as
select UserName,UserComment,UserRating
from [User], Comment_Rating
where [User].UserId=Comment_Rating.UserId
order by UserName OFFSET 0 ROWS;