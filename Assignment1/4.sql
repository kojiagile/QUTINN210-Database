select givenname, count(givenname) as num
from competitors
group by givenname
order by num desc, givenname asc;