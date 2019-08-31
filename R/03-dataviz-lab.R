###----------------------------------------------------------------------------
## In-class exercises
## Data Visualization
## 03-datavis-lab.R 
###----------------------------------------------------------------------------

#-- Load Required Packages
library(tidyverse)  # which loads ggplot2
library(gcookbook)


#--------------------------
## Your Turn: Scatterplots
#--------------------------
library(ggplot2)
data(mpg)

# 1. Map a discrete variable to color, size, alpha, and shape. 
#    Then map a continuous variable to each. Does ggplot2 behave differently 
#    for discrete vs. continuous variables?
#    - The discrete variables in mpg are: manufacturer, model, trans, drv, fl, class
#    - The continuous variables in mpg are: displ, year, cyl, cty, hwy


# 2. Map the same variable to multiple aesthetics in the same plot. Does it work? 
#    How many legends does ggplot2 create?


# 3. Attempt to set an aesthetic to something other than a variable name, 
#    like `displ < 5`. What happens?


#--------------------------
## Your Turn: Geoms and Layers
#--------------------------
library(gcookbook)


# 1. what does `method='lm'` do for `geom_smooth()`? Try it.


# 2. What will this produce (describe in words)

ggplot(heightweight, aes(x = heightIn, y = weightLb, 
                                shape=sex, color=sex)) +
  geom_smooth(aes(fill=sex)) + 
  geom_point()

# 3. Why will this not work

ggplot(mapping=aes(heightIn)) + 
  geom_point(data=heightweight, aes(y=weightLb)) + 
  geom_smooth()


#--------------------------
## Your Turn: Bar Graphs
#--------------------------
library(ggplot2)

# Using the `mpg` data from `ggplot2` package:

# 1. Make a bar graph of `cyl` and facet by `drv`

# 2. Make a filled bar graph of `cyl` with a `fill=` according to `year`





