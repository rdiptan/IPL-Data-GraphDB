// h) Show all the umpire and the number of matches they have umpired.
match(m:match)-[:UMPIRES]->(u:umpire) return u.name as `Umpire Name`, count(m) as `number of matches` order by count(m) desc