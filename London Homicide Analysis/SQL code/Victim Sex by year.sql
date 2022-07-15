select RIGHT(Recorded_Date, 2) as Year, Sex, count (*) as Number, count(*) * 100.0 / sum(count(*)) over(partition by RIGHT(Recorded_Date, 2)) as Percentage
from [LDS Homicide Victims 2003-2021]
group by Sex, RIGHT(Recorded_Date, 2) 
order by Sex, Year