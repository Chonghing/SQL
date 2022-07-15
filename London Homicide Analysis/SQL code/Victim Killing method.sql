select Method_of_Killing as 'Killing Method', count (*) as Number, count(*) * 100.0 / sum(count(*)) over() as Percentage
from [LDS Homicide Victims 2003-2021]
group by Method_of_Killing
order by percentage desc