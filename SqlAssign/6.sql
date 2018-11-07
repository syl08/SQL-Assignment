select Givenname,Familyname,
        count(*) as ActsInMovieNumber
from Movies
        natural join ActsIn
        natural join Stars
group by Givenname,Familyname
having count(*)>=4;