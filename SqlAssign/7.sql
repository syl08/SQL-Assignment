select M1.Title,
        M1.Yearreleased,M2.Yearreleased
from Movies M1,Movies M2
where (M1.Title=M2.Title
and M1.Yearreleased<M2.Yearreleased)
order by M1.Title;