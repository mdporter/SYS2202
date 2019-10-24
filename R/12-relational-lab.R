###----------------------------------------------------------------------------
## 12-relational-lab.R 
## In-class exercises
## SYS-2202 | Fall 2019 | University of Virginia
###----------------------------------------------------------------------------

library(nycflights13)
library(Lahman)
library(babynames)
library(fueleconomy)
library(nasaweather)
library(tidyverse)

#--------------------------
#-- Exercises 
#--------------------------
# 1. Imagine you want to draw a line for the route each plane flies from 
#    its origin to its destination. What variables would you need? What 
#    tables would you need to combine?


# 2. I forgot to draw the a relationship between `weather` and `airports`.  
#    What is the relationship and what should it look like in the diagram?

# 3. `weather` only contains information for the origin (NYC) airports. If
#     it contained weather records for all airports in the USA, what 
#     additional relation would it define with `flights`?



#--------------------------
#-- Your Turn: Relations
#--------------------------
#1. You might expect that there is an implicit relationship between `planes` 
#   and `airlines`, because each plane is flown by a single airline. Confirm 
#   or reject this hypothesis using data.
#   - Can `planes` and `airlines` be directly connected?
#   - How could `planes` and `airlines` be connected from the `flights` data?
#   - Do some planes (`tailnum`) have multiple carriers? How can we find 
#     out with the `flights` data?



#--------------------------
#-- Exercises
#--------------------------
# 1. What is the primary key for flights dataset?

# 2. Add a surrogate key to flights.

# 3. Identify the keys in the `Lahman::Batting` dataset. Hint, 
#    convert `Batting` to tibble to help with printing. 

# 4. Draw a diagram illustrating the connections between the `Batting`,
#    `Master`, and `Salaries` tables in the Lahman package. 

# 5. How would you characterise the relationship between the `Batting`,
#    `Pitching`, and `Fielding` tables?


#--------------------------
#--  Your Turn: Keys
# Identify the keys in the following datasets:
#--------------------------

# 1. `babynames::babynames`

# 2.  `nasaweather::atmos`

# 3.  `fueleconomy::vehicles`



#--------------------------
#-- Exercises
#--------------------------

# 1.  Compute the average delay by destination, then join on the `airports`
#     data frame so you can show the spatial distribution of delays. 
#     (We will learn about the map components later in the course). 

#-- Get new table of avg delay with airport lon/lat coordinates
dest_delays = 
  flights %>% 
  group_by(dest) %>% 
  summarize(avg.delay = mean(arr_delay, na.rm=TRUE),
            n.flights = n()) %>% 
  inner_join(airports, by=c('dest' = 'faa'))

#-- Plot the aiports: color by average delay, size by number of flights
ggplot(dest_delays, aes(x=lon, y=lat, size=n.flights, color=avg.delay)) + 
  geom_point() + 
  scale_size_area() + 
  scale_color_gradient2(low='#91bfdb', mid='#ffffbf', high='#fc8d59') +  # color gradient
  borders("state") +                                # add map outline
  coord_quickmap(xlim=c(-125, -68), ylim=c(25, 50)) # mainland US only

# 2. We saw that MLB (baseball) players were more likely to be born in some 
#    months than others. But what about a player's name? 
#    Do MLB baseball players have unusual names? 
#     - The `babynames` package has a `babynames` dataset that gives popularity of US (first) names by year. 
#     - Calculate the proportion of names of MLB players for each year.
#     - Join the baseball and babyname tables to compare the proportions. 
#     - Note the largest anomalies.


# 3. Is there a relationship between the age of a plane and its *average* delay?
  

# 4. What weather conditions make it more likely to see a delay? Find the 
#    relationship between departure delays (`dep_delay`) and the weather 
#    variables at the origin (`dest`).

  
#--------------------------
#-- Your Turn: Joins
#--------------------------

# 1. What does `anti_join(flights, airports, by = c("dest" = "faa"))` tell you?
#    What does  `anti_join(airports, flights, by = c("faa" = "dest"))` tell you?
  
# 2. Find all the planes (`tailnum`) manufacturered by `AIRBUS` and 
#    flown by `Delta`. 


