# Author : Alicia Wang
# Date : 13 June 2014
# File : Prep.R
# Preparation for the test.
#-------------------------------------------------

# setwd("Codes/R/Coursera/RepData_PeerAssessment2/")

storm <- read.csv("repdata-data-StormData.csv", sep = ",")
small <- storm[sample(nrow(storm), 1000), ]

qplot(EVTYPE, data = small, weight = FATALITIES, facets = geom = "bar") + 
    scale_y_continuous("FATALITIES", limits= c(0, 10)) +
    theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
    xlab("Event Type") 