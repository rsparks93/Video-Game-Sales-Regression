# Video-Game-Sales-Regression
For this project I pulled a data set from Kaggle, https://www.kaggle.com/gregorut/videogamesales. This data set contains 16,599 video game titles sold from 1980 to 2017 and contains the following information for each title:

* Rank - Ranking of overall sales

* Name - The games name

* Platform - Platform of the games release (i.e. PC,PS4, etc.)

* Year - Year of the game's release

* Genre - Genre of the game

* Publisher - Publisher of the game

* NA_Sales - Sales in North America (in millions)

* EU_Sales - Sales in Europe (in millions)

* JP_Sales - Sales in Japan (in millions)

* Other_Sales - Sales in the rest of the world (in millions)

* Global_Sales - Total worldwide sales.

For my linear regression model I used the global sales and year variables to see if there is a linear relationship between the year a video game was released and global sales. One question I want to answer with my model is whether there is a relationship between the year a video game was released and the global sales for the video game. The independent variable for my model is the year of release while the dependent variable is the global sales. There were some severe linearity, homoscedasticity, and normality violations that I attempted to correct by subsetting the data to only include titles that sold less than one million copies. 

For my regression analysis I used an alpha of 0.05. Each increase in year corresponds to a 0.0008 average decrease in games sold globally, (p = 0.045). The R2 value is very small at 0.0005, so hardly any of the global sales can be explained by year. My findings were just barely statistically significant with a p value of 0.045, so I cannot say that there is a linear relationship between year and global sales with such a small coefficient.

One very big weakness for this analysis is the extreme violation of normality, most of my data was pulling off to the sides in my normal QQ plot. I think this is due to the low and high ends of the amount of game copies sold globally for each title, there are a lot of titles with under 200,000 copies sold. Subsetting the data even further might correct this issue.
