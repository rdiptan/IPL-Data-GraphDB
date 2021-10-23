// Create Umpires node
load csv with headers from "file:///ipl_matches_2008_to_2019.csv" as rows 
with rows where rows.umpire1 is not null
merge(:umpire{name:rows.umpire1});
load csv with headers from "file:///ipl_matches_2008_to_2019.csv" as rows 
with rows where rows.umpire2 is not null
merge(:umpire{name:rows.umpire2});
load csv with headers from "file:///ipl_matches_2008_to_2019.csv" as rows 
with rows where rows.umpire3 is not null
merge(:umpire{name:rows.umpire3});