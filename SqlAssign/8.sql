select Title as OnlyDVDFormatMovie,
        Yearreleased
from Movies
where Movienum not in (select Movienum
                        from Copies
                        where Format='Blu-ray');