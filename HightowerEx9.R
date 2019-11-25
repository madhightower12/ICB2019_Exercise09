# Madeline Hightower
# Exercise 09

# Part One
# Load text file of two related variables from Excel or Text file
# Assume that temperature (in F) and daily ice cream sales (in $) are positively correlated
sales<-read.table("~/Desktop/ICB2019_Exercise09/sales.txt", sep=',',header=T,stringsAsFactors = F)
# Produce a scatter plot of the two variables 
# Use ggplot and set axes as Temperature and sales
# Geom_point() creates scatterplot
# Use geom_smooth to add trendline to scatterplot
sales2<-ggplot(sales,aes(x=Temperature,y=sales))+geom_point()+geom_smooth(method="lm",color="black")

# Part Two
# Generate two figures summarizing the data in 'data.txt'
# Start by loading file into R
data<-read.table("~/Desktop/ICB2019_Exercise09/data.txt",sep=',', header=T, stringsAsFactors=F)
# First, create barplot with the mean for each region
# Set x variable equal to region, y variable equal to observations
# Use stat_summary to select bar graph and mean of variable y (observations)
# Color code bars by region using fill=region in aesthetics
bar1<-ggplot(data,aes(x=region,y=observations))+stat_summary(geom="bar", fun.y="mean",aes(fill=region))
# Add Axis Labels
bar2<-bar1+xlab("Region")+ylab("Mean # of Observations")
# Then, generate a scatterplot with all of the observations
# Add axis labels 
scatter1<-ggplot(data,aes(x=region,y=observations))+geom_point()
scatter2<-scatter1+xlab("Region")+ylab("Observations")
# Use 'geom_jitter()' function to make observations easier to see
scatter3<-scatter2+geom_jitter()
# What do the bar versus scatter plots tell us?
# In the bar plot, the mean observation numbers all appear to be very similar (~15)
# After looking at the scatter plot
# The ranges for the four regions are all very diffrent
# The north area has most values around 15 that contribute to the average
# The east region appears to have a normal distribution centered around the mean
# The south area has values above and below the mean that average out
# The west area has observations at all values
# In summary, the scatter plot gives a better idea of what the data look like
# That we would miss out on had we only looked at the bar plot
