// Relationship between Umpires and Match
load csv with headers from 'file:///ipl_matches_2008_to_2019.csv' as rows
match(m:match),(u:umpire) where m.match_id=rows.id and u.name=rows.umpire1
merge(m)-[:UMPIRES]->(u);
load csv with headers from 'file:///ipl_matches_2008_to_2019.csv' as rows
match(m:match),(u:umpire) where m.match_id=rows.id and u.name=rows.umpire2
merge(m)-[:UMPIRES]->(u);
load csv with headers from 'file:///ipl_matches_2008_to_2019.csv' as rows
match(m:match),(u:umpire) where m.match_id=rows.id and u.name=rows.umpire3
merge(m)-[:UMPIRES]->(u);