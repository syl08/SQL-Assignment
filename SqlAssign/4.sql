select Yearreleased,count(*) as MovieNumber
from Movies
group by Yearreleased
order by MovieNumber desc;