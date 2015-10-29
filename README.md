# BULLSeye

Description
=============
This is my first github test commit.

test
first cut copy paste


data_po <- read.csv("C:/PROJECT/data_po/data_po.csv")


View(data_po)

#data_po$time1 <- strptime(data_po$Start.Timestamp, "%Y/%m/%d %H:%M:%OS")
#data_po$time2 <- strptime(data_po$Complete.Timestamp, "%Y/%m/%d %H:%M:%OS")
data_po$Timediff <- as.numeric(difftime(data_po$Complete.Timestamp,data_po$Start.Timestamp,units="hours"))


df<- sel
library(sqldf)
library(plyr)
library(tcltk2)

Rolebased <- sqldf("select Role,sum(Timediff) as Cumulative_Timediff,count(Role) as Frequency from data_po group by Role")

View(Rolebased)
