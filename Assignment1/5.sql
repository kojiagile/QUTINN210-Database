select givenname, familyname, eventgender, distance
from competitors
natural join results
natural join events
where place = 1 and style = 'freestyle'
order by familyname, givenname;