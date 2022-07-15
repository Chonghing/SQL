select Domestic_Abuse as 'Domestic Abuse', count (*) as Number, count(*) * 100.0 / sum(count(*)) over() as Percentage
from [LDS Homicide Victims 2003-2021]
group by Domestic_Abuse
order by percentage desc