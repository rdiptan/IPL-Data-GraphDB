// e) Show how many times does “MS Dhoni” got the player of the match when their teams won the match.
match(g:match{player_of_match:"MS Dhoni"})
where g.winner="Chennai Super Kings" or g.winner="Rising Pune Supergiant"
return count(g) as `MSD wins match and got POM`