###----------------------------------------------------------------------------
## 06-dataviz2.R 
## In-class exercises
###----------------------------------------------------------------------------

library(tidyverse)
library(readxl)
data_dir = 'https://raw.githubusercontent.com/mdporter/SYS2202/master/data'

#--------------------------------------------------------------------
## Your Turn: Stop and Frisk
#--------------------------------------------------------------------
# https://www1.nyc.gov/assets/nypd/downloads/excel/analysis_and_planning/stop-question-frisk/sqf-2016.csv


#--------------------------------------------------------------------
## Your Turn: Meta Data problems
#--------------------------------------------------------------------

# 1. Try to load this via the RStudio importer:  
#   file.path(dir_data, 'offers3.csv')
# - Something is not correct.
# 2. Use `read_lines()` to help understand the problem.
# 3. Fix the problems and load this dataset into R. 


#--------------------------------------------------------------------
## Your Turn:  Import Delimited data
#--------------------------------------------------------------------
# 1. Try to load the file: https://raw.githubusercontent.com/mdporter/SYS2202/master/data/offers2a.
# txt.
# 2. Try to load the file: https://raw.githubusercontent.com/mdporter/SYS2202/master/data/offers2b.
# txt.

#--------------------------------------------------------------------
## Your Turn:  Fixed Width Files
#--------------------------------------------------------------------
# Read this file into R http://www.cpc.ncep.noaa.gov/data/indices/wksst8110.for
#   - SST is sea surface temperature
#   - SSTA is sea surface temperature anomaly (which can have negative values)
# Note: Data from https://www.cpc.ncep.noaa.gov/data/indices/ under Sea Surface Temperature (SST),
# Weekly.


#--------------------------------------------------------------------
## Your Turn:  Flat Files
#--------------------------------------------------------------------
# Read in the data from here https://raw.githubusercontent.com/mdporter/SYS2202/master/data/smoke.
# csv. The description of the data from: http://data.princeton.edu/wws509/datasets/#smoking
# - Open the data in your browser and check the delimiter
# - do not read in the first column
# - the age column should be an ordered factor with levels:
#   "40-44", "45-49", "50-54", "55-59", "60-64", "65-69", "70-74",
# "75-79", "80+"
# - Note any problems with the data



#--------------------------------------------------------------------
## Your Turn: Excel
#--------------------------------------------------------------------
# You can find an excel file on the course website 
#  https://raw.githubusercontent.com/mdporter/SYS2202/master/data/offers1.xlsx
#  that is taken from the APT problem.

# 1. Download the file on your local machine.

# 2. Load into R as a data frame named `offers`

# 3. What is the average salary?



#--------------------------------------------------------------------
## Your Turn: Load R Data
#--------------------------------------------------------------------
# 1. Read in the .rds data file.path(dir_data, 'offers1.rds')

# 2. Load the cars .RData  file.path(dir_data, 'cars.RData')








