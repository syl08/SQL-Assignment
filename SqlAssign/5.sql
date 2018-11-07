select Title,Yearreleased
from Movies
        natural join ActsIn
        natural join Stars
where (Givenname='Cameron'
and Familyname='Diaz');