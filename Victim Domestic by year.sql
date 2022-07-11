select RIGHT(Recorded_Date, 2) as Year, Domestic_Abuse as 'Domestic Abuse', count (*) as Number, count(*) * 100.0 / sum(count(*)) over(partition by RIGHT(Recorded_Date, 2)) as Percentage
from [LDS Homicide Victims 2003-2021]
group by Domestic_Abuse, RIGHT(Recorded_Date, 2) 
order by Domestic_Abuse, Year