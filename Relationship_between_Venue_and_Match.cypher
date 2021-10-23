// Relationship between Venue and Match
load csv with headers from 'file:///ipl_matches_2008_to_2019.csv' as rows
match(m:match),(v:venue) where m.match_id=rows.id and v.stadium=rows.venue
merge(m)-[:PLAYED_IN]->(v);