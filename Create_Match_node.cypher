// Create Match node
load csv with headers from "file:///ipl_matches_2008_to_2019.csv" as rows
create(m:match{match_id:rows.id,date:rows.date,toss_winner:rows.toss_winner,toss_decision:rows.toss_decision,result:rows.result,dl_applied:rows.dl_applied,winner:rows.winner,win_by_runs:rows.win_by_runs,win_by_wickets:rows.win_by_wickets,player_of_match:rows.player_of_match})