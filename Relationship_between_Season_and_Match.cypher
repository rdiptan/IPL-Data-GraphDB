// Relationship between Season and Match
load csv with headers from 'file:///ipl_matches_2008_to_2019.csv' as rows
match(m:match),(s:season) where m.match_id=rows.id and s.year=rows.season
merge(s)-[:GAMES]->(m);