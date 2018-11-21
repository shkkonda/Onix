# Clear Environment
rm(list = ls())

# Clear Console
cat("\014")

# Set Working Directory
setwd("~/Desktop/Onix")

#Get Working Directory
getwd()

# Load Packages
# install.packages("xlsx")
# install.packages("XLConnect")
# library(xlsx)
# library(XLConnect)
# install.packages('rJava', type='source')

options(scipen=999)


trades <- read.csv("sampleTrades.csv",stringsAsFactors = F)

library(dplyr)

View(blah <- ok %>% group_by(Type,Coin) %>% summarise(vol = sum(Amount)))

install.packages("reshape")
library(reshape)

blah2 <- cast(blah,Coin~Type,sum) %>% mutate(Balance = Buy-Sell)

