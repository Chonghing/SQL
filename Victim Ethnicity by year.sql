select RIGHT(Recorded_Date, 2) as Year, Officer_Observed_Ethnicity as 'Victim Ethnicity', count (*) as Number, count(*) * 100.0 / sum(count(*)) over(partition by RIGHT(Recorded_Date, 2)) as Percentage
from [LDS Homicide Victims 2003-2021]
group by Officer_Observed_Ethnicity, RIGHT(Recorded_Date, 2) 
order by Officer_Observed_Ethnicity, Year