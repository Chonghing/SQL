select Name, Population, Population * 100.00 / (select sum(Population) from [housing-density-borough] where year = '2010' and Name != 'London' and Name != 'Inner London' and Name != 'Outer London') as Percentage
into Borough_population
from [housing-density-borough]
where year = '2010' and Name != 'London' and Name != 'Inner London' and Name != 'Outer London'
order by Percentage desc