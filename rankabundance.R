rm(list = ls())

install.packages("RADanalysis")
library(RADanalysis)

setwd("/Users/mgaletti/Dropbox/R Codes/Ecologia de Campo/Seed dispersal")

saiba<-read.csv("saibadela.csv")

saiba
knitr::kable(head(rad, 10))

plot(x=,xlab = "Rank",ylab = "Abundance",pch = 19,type = "b",lwd = 0.5)

