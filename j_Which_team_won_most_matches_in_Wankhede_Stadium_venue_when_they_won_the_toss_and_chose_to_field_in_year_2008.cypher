// j) Which team won most matches in “Wankhede Stadium” venue when they won the toss and chose to field in year 2008. 
match(v:venue{stadium:"Wankhede Stadium"})<-[:PLAYED_IN]-(m:match{toss_decision:"field"})<-[:GAMES]-(s:season{year:"2008"})
where m.toss_winner=m.winner 
with max(m.winner) as `Winning Team`, count(m.winner) as `Most Matches Won`,
v.name as Venue,s.year as Year
return`Winning Team`,`Most Matches Won`