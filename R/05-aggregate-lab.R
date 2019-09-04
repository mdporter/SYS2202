###----------------------------------------------------------------------------
## 05-aggregation-lab.R 
## In-class exercises
###----------------------------------------------------------------------------

library(dplyr)
library(nycflights13)



#--------------------------
## Your Turn #1: group_by
#--------------------------
#  Which plane (`tailnum`) has the worst on-time record?


#--------------------------
## Your Turn #2: thinking about plots
#--------------------------
monthly = count(flights, origin, month)

# 1. Are the plots better than the table?

# 2. Which plot do you think is better?

# 3. How can the plots be improved?


	
#--------------------------
## Your Turn #3: counting
#--------------------------
# 1. How many flights does the plane with the worst on-time record have?
#    You need to determine what is meant by "worst on-time record".

# 2. Which plane (`tailnum`) has had the most flights? 

# 3. Which plane (`tailnum`) has flown the most distance? 



#--------------------------
## Your Turn #4: chaining
#  Repeat these exercises using chaining
#--------------------------
# 1. How many flights does the plane with the worst on-time record have?

# 2. Which plane (`tailnum`) has made the most flights?

# 3. Which plane (`tailnum`) has flown the most overall distance? 


#--------------------------
## Your Turn #5: multiple groups
#--------------------------

# 1. Find the top 5 routes (`origin`, `dest`), in terms of number of flights. 

# 2. Which route (`origin`, `dest`) is most often delayed by more than 10 minutes? Are infrequent routes a concern? If so, what could we do about it?

# 3. Find the top 3 destinations (`dest`) for each origin (`origin`).



