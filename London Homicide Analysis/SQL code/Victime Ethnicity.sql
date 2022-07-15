select Officer_Observed_Ethnicity as 'Victim Ethnicity', count (*) as Number, count(*) * 100.0 / sum(count(*)) over() as Percentage
from [LDS Homicide Victims 2003-2021]
group by Officer_Observed_Ethnicity
order by percentage desc