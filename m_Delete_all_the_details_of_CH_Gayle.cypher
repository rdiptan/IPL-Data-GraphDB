// m) Delete all the details of CH Gayle
match(m1:match_details) where m1.player_dismissed="CH Gayle"
set m1.player_dismissed=null;

match(m1:match_details) where  m1.batsman="CH Gayle"
set m1.batsman=null;

match(m1:match_details) where m1.non_striker="CH Gayle"
set  m1.non_striker=null;

match(m1:match_details) where m1.bowler="CH Gayle"
set m1.bowler=null;

match(m1:match_details) where m1.fielder="CH Gayle"
set m1.fielder=null;

match(m2:match) where m2.player_of_match="CH Gayle"
set m2.player_of_match=null;