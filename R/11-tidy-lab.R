###----------------------------------------------------------------------------
## 11-tidy-lab.R 
## In-class exercises
## SYS-2202 | Fall 2019 | University of Virginia
###----------------------------------------------------------------------------

library(tidyverse)
data(package="tidyr")

#--------------------------
#-- Your Turn #1: table1
#--------------------------
# What `dplyr` function can be used to create the `rate` column of table1?
table1


#--------------------------
#-- Your Turn #2: table2
#--------------------------
# What needs to be done to calculate the rate (by country and year) of `table2`?
table2 

#--------------------------
#-- Your Turn #3: table3
#--------------------------
# What needs to be done to actually calculate the rate in table 3? 
table3


#--------------------------
#-- Your Turn #4: table4
#--------------------------
# What needs to be done to calculate the rate from tables 4a and 4b? 
# Hint: The info is split between two tables.  Would it help if each table was 
#       in a different form?
table4a
table4b

#--------------------------
#-- Your Turn #5: gather()
#--------------------------

# 1. For tidying table4a, how were the columns to gather specified 
#    (in the example above)? 

# 2. What would be an alternative way to specify them?

# 3. Tidy up table4b.

# 4. Calculate the disease rate.

#--------------------------
#-- Your Turn #6: separate()
#--------------------------
url = "https://raw.githubusercontent.com/mdporter/SYS2202/master/data/date-event.csv"
df = read_csv(url)

# 1. Find the counts per `day`

# 2. Convert the data to make the following table


#--------------------------
#-- Your Turn #7: Tidy Tornadoes
#--------------------------
url_tornado = 'https://raw.githubusercontent.com/mdporter/SYS2202/master/data/tornado.csv'


# a. Import the tornado data

# b. Create a data frame with columns year (`yr`), Fujita score (`f`), 
#    and count (`n`).

# c. Use `spread()` to convert to the required (untidy) table. Note: Some 
#    years have 0 EF-5 tornadoes. 

#--------------------------
#-- Your Turn #8: Time-of-Day
#--------------------------
# a. Use the `separate()` function to create three new columns 
#    (*hour*, *min*, *sec*) from the `time` column. 

# b. Add another column, named `time2`, that gives the fractional number of 
#    hours that a tornado occurred. 

# c. Generate a density plot of `time2`. Are there any differences by severity? 

#--------------------------
#-- Your Turn #9: Pew Survey
#--------------------------
url_pew = 'https://raw.githubusercontent.com/tidyverse/tidyr/master/data-raw/relig_income.csv'
  
# a. Load the data into R. 

# b. What are the three variables in the data?

# c. Use `gather()` to make the data *tidy* (i.e., long format, with one column 
#    for each variable). 

# d. Make a graphic from the long data comparing the distribution of income 
#    between `Catholic` and `Evangelical Prot`. 

