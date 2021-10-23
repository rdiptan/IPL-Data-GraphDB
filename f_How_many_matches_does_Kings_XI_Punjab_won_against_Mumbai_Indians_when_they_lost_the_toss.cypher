// f) How many matches does “Kings XI Punjab” won against “Mumbai Indians” when they lost the toss? 
match(g:match{winner:"Kings XI Punjab", toss_winner:"Mumbai Indians"})
return Count(g) as `KXIP won against MI when lost toss`