###----------------------------------------------------------------------------
## 06-dataviz2.R 
## In-class exercises
###----------------------------------------------------------------------------

library(tidyverse)
library(Lahman)


#--------------------------
## Your Turn #1: Get Batting Data
#--------------------------

# Get the team performance for year (`yearID`) 2018 
#  (Boston Red Sox beat the LA Dodgers in the World Series). Specifically, 
#   - extract only the team name (`name`), league (`lgID`), wins (`W`), runs (`R`), 
#     at-bats (`AB`), hits (`H`), doubles (`X2B`), triples (`X3B`), 
#     home runs (`HR`), walks (`BB`); 
#   - name the new object `bat18` for (batting 2018)

bat18 = ????

#--------------------------
## Your Turn #1: Dot Plot vs. Bar Plot
#--------------------------
#- (left) bar graph
ggplot(bat18) + 
  geom_col(aes(x=reorder(name, W), y=H)) + 
  labs(x='', y = 'Hits', title='Team Hits, ordered by Wins (2018)') +  
  coord_flip()  

#- (right) corresponding dot plot
ggplot(bat18) + 
  geom_point(aes(x=reorder(name, W), y=H)) + 
  labs(x='', y = 'Hits', title='Team Hits, ordered by Wins (2018)') +  
  coord_flip() 

# 1. What was changed in the code to make the Cleveland Dot Plot?
  
# 2. What are the differences between the two plots?  
  
# 3. How would you add information about team homeruns to the bar plot? How 
#    about to the dot plot? 


#--------------------------
## Your Turn #3: Dressing Up, Cleveland Style
#--------------------------

# Modify the dot plot by adding the following:
#   1. Size the dots by runs (`R`)
#   2. Color the dots by league (`lgID`)



#--------------------------
## Your Turn #4: Stock Price
#--------------------------

# This exercise will walk you through a simple way to plot stock data. 
#   1. The R package `tidyquant` provides quick access to daily stock price data. 
#       Install and load this package.

# 2. Get the Netflix (NFLX) stock data for 2018 - present. 

# 3. Examine the data, then create a line plot of the `close` price by `date`. 
#    Color the line darkgreen.

# 4. Use `geom_area()` to fill the area below the line with lightgreen. 


	
