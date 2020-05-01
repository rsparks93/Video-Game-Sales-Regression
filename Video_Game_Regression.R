# INST 314
# Project 3
# Ryan Sparks
# Last revised 4/23/2019


# Load the video game sales dataset csv
vg = read.csv(file.choose())

library(summarytools)

vg.new = subset(vg, vg$Global_Sales > .1 & vg$Global_Sales < 1 & as.numeric(as.character(vg$Year)) < 2017)

# Check the structure of both the year and global_sales variables
str(vg.new$Year)
str(vg.new$Global_Sales)

# Store year as a numeric variable since it is a factor
vg.new$year.new = as.numeric(as.character(vg.new$Year))

# Check the year variable to see if it converted properly
table(vg.new$year.new)

# Run descr on both variables for the bivariate table
descr(vg.new$year.new)
descr(vg.new$Global_Sales)

# Regression diagnostics
par(mfrow = c(2,2))
plot(lm(vg.new$Global_Sales ~ vg.new$year.new))
par(mfrow = c(1,1))

# Linear regression model
summary(lm(vg.new$Global_Sales ~ vg.new$year.new))

# Scatterplot for year and global sales variables
plot(jitter(vg.new$Global_Sales, 2) ~ jitter(vg.new$year.new, 2), xlab = "Year", ylab = "Global Sales (in millions)", main = "Global Sales for Video Game Titles by Year")
abline(lm(vg.new$Global_Sales ~ vg.new$year.new), col = "red")