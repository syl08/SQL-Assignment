select Givenname,Familyname,Address
from Customers
where Customernum in (select Customernum
                        from Rentals
                        group by Customernum
                        having count(Customernum) >= all (select count(Customernum)
                                                            from Rentals
                                                            group by Customernum));