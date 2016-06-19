select givenname, familyname, gender 
from competitors
where familyname like '%''%'
order by familyname asc, gender desc;