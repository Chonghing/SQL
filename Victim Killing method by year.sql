select RIGHT(Recorded_Date, 2) as Year, Method_of_Killing as 'Killing Method', count (*) as Number, count(*) * 100.0 / sum(count(*)) over(partition by RIGHT(Recorded_Date, 2)) as Percentage
from [LDS Homicide Victims 2003-2021]
group by Method_of_Killing, RIGHT(Recorded_Date, 2) 
order by Method_of_Killing, Year