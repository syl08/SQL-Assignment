select distinct Title,Yearreleased,Format
from Movies natural join Copies
where Rentalcode in (select Rentalcode
                        from RentalRates
                        where Rate in (select min(Rate)
                                        from RentalRates));