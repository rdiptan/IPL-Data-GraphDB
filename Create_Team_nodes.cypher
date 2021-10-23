// Create Team nodes
load csv with headers from "file:///ipl_matches_2008_to_2019.csv" as rows
merge(:team{team_name:rows.team1});
load csv with headers from "file:///ipl_matches_2008_to_2019.csv" as rows
merge(:team{team_name:rows.team2});