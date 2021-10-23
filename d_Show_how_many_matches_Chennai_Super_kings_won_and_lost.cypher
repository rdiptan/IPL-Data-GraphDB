// d) Show how many matches “Chennai Super kings” won and lost
Match (t1:team)<-[:HOME]-(m1:match)-[:AWAY]-(t2:team)
where t1.team_name="Chennai Super Kings" or t2.team_name="Chennai Super Kings"
with count(*) as Total
Match (t3:team)<-[:HOME]-(m2:match)-[:AWAY]-(t4:team)
where t3.team_name="Chennai Super Kings" or t4.team_name="Chennai Super Kings" and m2.winner="Chennai Super King"
with count(m2) as Win, Total
return Win, Total-Win as Lost