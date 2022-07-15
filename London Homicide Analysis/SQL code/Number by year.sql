select right(Recorded_date,2) as Year, count(*) as 'Number of cases' 
from [LDS Homicide Victims 2003-2021]
group by right(Recorded_date,2)
order by Year