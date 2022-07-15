select Age_Group as 'Age Group', count (*) as Number, count(*) * 100.0 / sum(count(*)) over() as Percentage
from [LDS Homicide Victims 2003-2021]
group by Age_Group
order by case Age_Group
      when '0 to 12' then 1
	  when '13 to 19' then 2
	  when '20 to 24' then 3
	  when '25 to 34' then 4
	  when '35 to 44' then 5
	  when '45 to 54' then 6
	  when '55 to 64' then 7
	  else 10
	  end