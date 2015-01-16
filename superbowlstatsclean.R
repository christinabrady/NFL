## sb data cleaning script

##import data:
setwd("~/Documents/Datafiles/NFL")
sb <- read.csv("superbowlstats.csv", header=TRUE, stringsAsFactors=FALSE)

## eliminate the last four rows for which there is no data
## because those games haven't been played yet
sb <- sb[-(49:52), ]

## eliminate symbols and numbers from team names
sb$Winning.team <- gsub("[^[:alpha:]]", "", sb$Winning.team)
sb$Winning.team <- gsub("note", "", sb$Winning.team)
sb$Losing.team <- gsub("[^[:alpha:]]", "", sb$Losing.team)
sb$Losing.team <- gsub("note", "", sb$Losing.team)

## clean symbols from score and separate into Winner.score and Loser.score
sb$Score <- gsub("\xff", "", sb$Score)
sb$Winner.score <- as.numeric(sapply(sb$Score, FUN= function(x) {strsplit(x, "_")[[1]][1]}))
sb$Loser.score <- as.numeric(sapply(sb$Score, FUN= function(x) {strsplit(x, "_")[[1]][2]}))


## create total appearances variable
winners <- as.data.frame(table(sb$Winning.team))
losers <- as.data.frame(table(sb$Losing.team))
total <- merge(winners, losers, by="Var1", all.x=TRUE, all.y=TRUE)
total[is.na(total)] <- 0
colnames(total) <- c("TeamName", "Wins", "Losses")
total$Appear <- total$Wins + total$Losses
total$Winning.perc <- total$Wins/total$Appear

