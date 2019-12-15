# Base plot
hist(df$mpg, main = 'base plot - Histogram')
ggplot(data=df, aes(x=mpg)) + geom_histogram() +ggtitle('ggplot- histogram')

