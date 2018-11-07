select Yearreleased,Title
from Movies
where (Yearreleased > 2004
and Yearreleased <= 2010)
order by Yearreleased,Title;