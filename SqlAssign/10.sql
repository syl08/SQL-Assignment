select Title,Yearreleased
from Movies
where Movienum in (select Movienum
                    from Stars natural join ActsIn
                    where (Givenname='Eddie'
                    and Familyname='Murphy'))
and Yearreleased in (select max(Yearreleased)
                        from Movies
                        where Movienum in (select Movienum
                                            from Stars natural join ActsIn
                                            where (Givenname='Eddie'
                                            and Familyname='Murphy' )));