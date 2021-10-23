// Create Season nodes
load csv with headers from "file:///ipl_matches_2008_to_2019.csv" as rows
merge(s:season{year:rows.season})