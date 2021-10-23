// k) Display top 10 batsman in IPL season 2008-2019.
match(m:match_details) 
return distinct m.batsman, sum(toInteger(m.batsman_runs)) as Runs  order by Runs desc limit 10