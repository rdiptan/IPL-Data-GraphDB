// Home Relationship between Team and Match
load csv with headers from 'file:///ipl_matches_2008_to_2019.csv' as rows
match(m:match),(t:team) where m.match_id=rows.id and t.team_name=rows.team1
merge(m)-[:HOME]->(t);