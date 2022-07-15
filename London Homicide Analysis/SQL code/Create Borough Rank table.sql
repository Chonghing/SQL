select v.year, p.name as Borough, p.population as Population, p.percentage as 'Population percentage', v.number as 'Victim number', v.percentage as 'Victim percentage', 
p.percentage-v.percentage as Difference, rank () over (partition by v.year order by p.percentage-v.percentage desc) rank
into Borough_rank
from borough_population as p
left join borogh_victim_year as v
on p.name = v.borough
order by p.population desc, p.name, v.year