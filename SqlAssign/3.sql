select count(*) as MovieCount,
        min(Yearreleased) as Oldest,
        max(Yearreleased) as MostRecent,
        count(distinct Yearreleased) as DifferentYearCount
from Movies;