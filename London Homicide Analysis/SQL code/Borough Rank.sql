select Borough, avg (rank *1.0) as 'Average Rank in 10 years', rank () over (order by avg (rank *1.0)) Rank
from Borough_rank
where (year > 11 and year <22) or year is NULL
group by borough
order by avg (rank)

select Borough, sum (rank *1.0) /10 as 'Average Rank in 10 years', rank () over (order by sum (rank *1.0) /10) Rank
from Borough_rank
where (year > 11 and year <22) or year is NULL
group by borough
order by sum (rank *1.0) /10