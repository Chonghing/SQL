select count(*) 
from (
    select right(Recorded_date,2) as Year
    from [LDS Homicide Victims 2003-2021]
    group by right(Recorded_date,2)
) e

select count(*) *1.0 / 
(select count(*) 
from (
    select right(Recorded_date,2) as Year
    from [LDS Homicide Victims 2003-2021]
    group by right(Recorded_date,2)
) e) as 'Average case per year'
from [LDS Homicide Victims 2003-2021]