select givenname, familyname, count(*)
from competitors
natural join results as res
where place <= 3
group by res.competitornum, givenname, familyname
having count(*) >= all (
    select count(place)
    from competitors
    natural join results
    where place <= 3
    group by competitornum
);