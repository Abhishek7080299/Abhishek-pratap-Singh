# Barplots
library(ggplot2)
library(dplyr)
df=mtcars
names(df)
str(df)
catcols =c('cyl','vs','gear','carb')
df[,catcols]= lapply(df,[catcols], as.factor)
sapply(df, class)
barplot(height=c(10,15,39))
barplot(c(19,34),col=8:7)
(cylinders = table(df$cyl))
barplot(height= cylinders)
barplot(height=table(df$am))
barplot(height=table(df$gear), col=1:3, main='no of cars of each gear type', xlab='gear type', ylab='count of cars')
barplot(height=table(df$carb), col=1:5, horiz =T)

count <-table(df$gear)
barplot(counts, main="car Distribution",xlab="number of gears")
count <-table(df$gear)
barplot(counts, main="car Distribution", horiz=TRUE, names.arg=c("3 Gears", "4 Gears", "5 Gears"))

# histogram(continuous variable)
