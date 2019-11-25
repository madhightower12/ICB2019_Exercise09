# Madeline Hightower
# Exercise 09

# Part One
# Load text file of two related variables from Excel or Text file
# Assume that temperature (in F) and ice cream sales (in $) are positively correlated
sales<-read.table("~/Desktop/ICB2019_Exercise09/sales.txt", sep=',',header=T,stringsAsFactors = F)
# Produce a scatter plot of the two variables 
sales2<-ggplot(sales,aes(x=Temperature,y=sales))+geom_point()

# Part Two
# Generate two figures summarizing the data in 'data.txt'


# Barplot with the means of two populations

# Generate a scatterplot with all of the observations
# Use 'geom_jitter()' function to make observations easier to see
# What do the bar versus scatter plots tell us?