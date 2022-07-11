select RIGHT(Recorded_Date, 2) as Year, Borough, count (*) as Number, count(*) * 100.0 / sum(count(*)) over(partition by RIGHT(Recorded_Date, 2)) as Percentage
into Borogh_victim_year
from [LDS Homicide Victims 2003-2021]
group by Borough, RIGHT(Recorded_Date, 2) 
order by Borough, Year