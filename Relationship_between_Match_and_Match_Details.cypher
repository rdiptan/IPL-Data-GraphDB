// Relationship between Match and Match Details
match(m1:match_details),(m2:match) where m1.match_details_id = m2.match_id
merge(m2)-[:HAS]->(m1);