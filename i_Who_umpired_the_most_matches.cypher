// i) Who umpired the most matches? 
match(m:match)-[:UMPIRES]->(u:umpire) 
with u.name as `Umpire Name`, count(u) as Count
with max(Count) as MaxGameUmpired
match(m:match)-[:UMPIRES]->(u:umpire) 
with u.name as `Umpire Name`, count(u) as Count, MaxGameUmpired
where MaxGameUmpired=Count
return `Umpire Name`, MaxGameUmpired