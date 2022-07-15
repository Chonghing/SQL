select Sex, count (*) as Number, count(*) * 100.0 / sum(count(*)) over() as Percentage
from [LDS Homicide Victims 2003-2021]
group by Sex
order by percentage desc