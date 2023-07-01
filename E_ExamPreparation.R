# The way to read particular data from csv file

data <- read.csv("Data\\duke_forest.csv", header=T)
bed <- data$bed[data$cooling=="central"]
bed

# Task 6
table <- read.csv("Data\\EnergyBar.csv", header=T)
table
#data <- opened$Price[opened$marker=="A"]
#data
m = lm(Price ~ Protein, data=table)
plot(Price ~ Protein, data=table )
abline( coef(m), lwd=2 )