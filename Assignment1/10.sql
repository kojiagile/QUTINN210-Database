select eventid, eventgender, distance, style, dateheld, starttime
from events
where starttime = (
    select max(starttime) 
    from events
    where dateheld = (
        select max(dateheld)
        from events
    )
);
