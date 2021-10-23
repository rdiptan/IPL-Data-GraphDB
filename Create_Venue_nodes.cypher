// Create Venue nodes
load csv with headers from "file:///ipl_matches_2008_to_2019.csv" as rows
merge(v:venue{stadium:rows.venue, city:rows.city})