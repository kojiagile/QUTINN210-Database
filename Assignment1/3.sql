select count(eventid),
min(distance) as shortest,
max(distance) as longest,
count(distinct distance) as difnum
from events;