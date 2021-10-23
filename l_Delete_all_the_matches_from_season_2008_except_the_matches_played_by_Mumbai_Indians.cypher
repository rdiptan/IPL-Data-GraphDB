// l) Delete all the matches from season 2008 except the matches played by “Mumbai Indians”.
match(s:season)-[g:GAMES]->(m:match)
where s.year="2008"
match(t1:team)<-[h1:HOME]-(m:match)-[:AWAY]->(t2:team)
where not t1.team_name="Mumbai Indians"or not t2.team_name="Mumbai Indians"
match(m:match)-[h2:HAS]->(md:match_details)
where not md.batting_team="Mumbai Indians" or not md.bowling_team="Mumbai Indians"
detach delete g,h1,m,h2,md
