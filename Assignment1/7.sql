select res1.eventid, 
res1.place,
res1.competitornum as num1,
res2.competitornum as num2
from results as res1
join results as res2 on res1.eventid = res2.eventid
where res1.elapsedtime = res2.elapsedtime 
 and res1.competitornum <> res2.competitornum
 and res1.competitornum < res2.competitornum
order by res1.eventid, res1.place;