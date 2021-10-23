//c) Show all the teams from season 2019. 
MATCH (t1:team)<-[h:HOME]-(m1:match)<-[g1:GAMES]-(s1:season{year:"2019"})
MATCH (t2:team)<-[a:AWAY]-(m2:match)<-[g2:GAMES]-(s2:season{year:"2019"})
return distinct t1, t2