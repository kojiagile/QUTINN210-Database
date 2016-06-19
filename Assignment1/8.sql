select eventgender,
distance,
style,
res1.place,
comp1.givenname,
comp1.familyname,
ctry1.countryname,
comp2.givenname,
comp2.familyname,
ctry2.countryname
from results as res1
join results as res2 on res1.eventid = res2.eventid
join events as ev on res1.eventid = ev.eventid
join competitors as comp1 on res1.competitornum = comp1.competitornum
join competitors as comp2 on res2.competitornum = comp2.competitornum
join countries as ctry1 on comp1.countrycode = ctry1.countrycode
join countries as ctry2 on comp2.countrycode = ctry2.countrycode
where res1.elapsedtime = res2.elapsedtime
 and res1.competitornum <> res2.competitornum
 and res1.competitornum < res2.competitornum
order by eventgender, distance, style, place;