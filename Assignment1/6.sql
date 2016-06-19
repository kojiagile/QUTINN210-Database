select givenname, familyname,
count(*) as cnt, 
min(place) as best, 
max(place) as worst
from results
natural join competitors as comp
group by comp.competitornum, givenname, familyname
having count(*) > 1
order by cnt desc, best asc, worst asc, familyname asc;