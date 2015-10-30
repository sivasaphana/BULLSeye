install.packages("sqldf")
install.packages("plyr")
install.packages("tcltk2")

library(sqldf)
library(plyr)
library(tcltk2)

#work flow analysis - first look
ProjectDir <- getwd()
CodeDir <- file.path(ProjectDir, "R")
data_po <- read.csv(file.path(ProjectDir, "data_po.csv")
#data_po$time1 <- strptime(data_po$Start.Timestamp, "%Y/%m/%d %H:%M:%OS")
#data_po$time2 <- strptime(data_po$Complete.Timestamp, "%Y/%m/%d %H:%M:%OS")
data_po$Timediff <- as.numeric(difftime(data_po$Complete.Timestamp,data_po$Start.Timestamp,units="hours"))
#View(data_po)
#
df<- sel
#
Rolebased <- sqldf("select Role,sum(Timediff) as Cumulative_Timediff,count(Role) as Frequency from data_po group by Role")
#View(Rolebased)

