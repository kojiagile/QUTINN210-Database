select eventid, competitornum, place, lane, elapsedtime, note 
from results 
where place in(1,2,3) and lane in(1,8);