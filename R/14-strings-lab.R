###----------------------------------------------------------------------------
## 14-strings-lab.R 
## In-class exercises
## SYS-2202 | Fall 2019 | University of Virginia
###----------------------------------------------------------------------------


## ------------------------------------------------------------------------
library(rvest)      # for getting html tables
library(babynames)  # for babynames data
library(tidyverse)  # includes stringr


## ------------------------------------------------------------------------
x = "Bacon and Eggs"
class(x)


## ------------------------------------------------------------------------
y = c("Bacon and Eggs", "French Toast", "coffee")
length(y)
y[2:3]


## ------------------------------------------------------------------------
single = 'The fear of the Lord is the beginning of wisdom'
double = "The fear of the Lord is the beginning of wisdom"
identical(single, double)


## ------------------------------------------------------------------------
quotes = "She said, \"there\'s is no time like the present\""  # escape \
quotes2 = 'She said, "there\'s is no time like the present"'   # mix quotes
quotes
cat(quotes)                            # cat() displays in readable form
identical(quotes, quotes2)


## ------------------------------------------------------------------------
cat("there\'s no \time like the present")


## ------------------------------------------------------------------------
library(tidyverse)
#library(stringr)  # part of tidyverse and loaded automatically


## ------------------------------------------------------------------------
str_c("A", "B", "C")


## ------------------------------------------------------------------------
#- change the sep= argument to a space
str_c("A", "B", "C", sep=" ")

#- change the sep= argument to a :
str_c("A", "B", "C", sep= ":")


## ------------------------------------------------------------------------
str_c("X", 1:5)
ABC = c("A", "B", "C")
str_c(ABC, 1:3)
str_c(ABC, 1:3, sep='-')
str_c(LETTERS[1:6], 1:3, sep='-')


## ------------------------------------------------------------------------
str_c("---", "Iteration: ", 1:10, "---" )


## ------------------------------------------------------------------------
str_dup(ABC, times = 2)
str_dup(ABC, times = 1:3)

rep(ABC, times=1:3)
rep(ABC, each=2)


## ------------------------------------------------------------------------
str_c(ABC)                 # three element vector
str_c(ABC, collapse="")    # one element vector
str_c(ABC, collapse=", ")  # one element vector


## ------------------------------------------------------------------------
data(state)  # access to state.name data
str_sub(state.name, start=1, end=4)    # 1st 4 letters
str_sub(state.name, start=-4, end=-1)  # last 4 letters


## ------------------------------------------------------------------------
tibble(state=state.name, letters = str_length(state.name))


## ---- cache=TRUE---------------------------------------------------------
url = "https://mdporter.github.io/SYS2202/data/colossians.txt"
lines = read_lines(url)       # vector: each element a string 
single = read_file(url)       # single element: string of entire file


## ------------------------------------------------------------------------
str_length(lines) %>% head()    # notice there are empty lines
sum(str_length(lines)) # total number of characters  
str_length(single)      # number of characters in long string


## ------------------------------------------------------------------------
lines[1:3]
str_sub(single, start=1, end=211)


## ------------------------------------------------------------------------
single2 = str_remove_all(string=single, pattern="\\n|\\r")
str_length(single2)
sum(str_length(lines))
str_sub(single2, 1, 211)


## ------------------------------------------------------------------------
lines2 = str_c(lines, collapse="")
identical(lines2, single2)


## ------------------------------------------------------------------------
writeLines(lines[1])                 # writeLines() displays in readable form 
writeLines(str_wrap(lines[1], width=50)) # adds newlines '\n' 
writeLines(str_wrap(lines[1], width=1))  # special treament for width<=1 
str_trunc(lines[1], width = 30)      # reduces string to only `width` characters


## ------------------------------------------------------------------------
str_trim("  String with trailing and leading white space\t")
str_trim("\n\nString with trailing and leading white space\n\n")


## ------------------------------------------------------------------------
x = c("A", "BB", "CCC", "DDDD")
(x.pad = str_pad(x, width=4, side="right"))  # `width` is minimum width
str_length(x.pad)
str_pad(x, width=4, side="right", pad="-")


## ------------------------------------------------------------------------
s1 = "This is not the same sentence"
s2 = "this is NOT the same sentence"

#- identical when all lowercase
str_to_lower(s1)
str_to_lower(s2)

#- identical when all uppercase
str_to_upper(s1)
str_to_upper(s2)

#- title case example
str_to_title(s1)

#- Sentence case example
str_to_sentence(s2)


## ------------------------------------------------------------------------
y = 'Bacon and Eggs'
str_remove(y, pattern = " and")  # removed `whitespace + and`


## ------------------------------------------------------------------------
student <- c("John Davis","Angela Williams","Bullwinkle Moose",
             "David Jones","Janice Markhammer",
             "Cheryl Cushing","Reuven Ytzrhak",
             "Greg Knox","Joel England","Mary Rayburn")
str_split_fixed(student, " ", n=2)


## ---- cache=TRUE---------------------------------------------------------
library(rvest)
url = 'http://www.nfl.com/stats/categorystats?tabSeq=0&statisticCategory=RUSHING&conference=null&season=2015&seasonType=REG&d-447263-s=RUSHING_YARDS&d-447263-o=2&d-447263-n=1'
nfl.1 = read_html(url) %>% html_node("table") %>% html_table()
str(nfl.1)

str_replace(nfl.1$Yds, ",", "")    # remove commas
str_detect(nfl.1$Lng, 'T')         # detect elements with a `T`


## ------------------------------------------------------------------------
#- literal strings must be on one line, or R will insert a new line (\n) character
x = "Not everything that can be counted counts, and not everything that counts can be counted."


## ------------------------------------------------------------------------
str_view_all(x, 'counts')     # finds all `counts`
str_view_all(x, 'counted')    # finds all `counted`
str_view_all(x, 'count')      # finds the `count` in `counted` and `counts`
str_view_all(x, 'c')          # finds all `c`
str_view_all(x, 'a')          # finds all `a`
str_view_all(x, ' ')          # finds all whitespaces
str_view_all(x, 'can be')     # finds the `can be` string
str_view_all(x, 'not')        # finds all `not` with lowercase `n`
str_view_all(x, 'Not')        # finds all `Not` with uppercase `N`
str_view_all(x, 'not ever')   # does this find what you expect?


## ------------------------------------------------------------------------
str_view_all(x, pattern='Not|not')


## ------------------------------------------------------------------------
str_view_all(x, pattern='[Nn]ot')   # matches 'N' or 'n', followed by 'ot'
str_view_all(x, pattern='[aeiou]')  # find all lowercase vowels


## ------------------------------------------------------------------------
str_view_all(x, pattern='[^aeiou]')  # find all lowercase consonants (not vowels)


## ------------------------------------------------------------------------
fruit = c("apple", "banana", "pear", "pineapple")

strings = c(
  "apple", 
  "219 733 8965", 
  "329-293-8753", 
  "Work: 579-499-7527; Home: 543.355.3679")


## ---- eval=FALSE---------------------------------------------------------
str_view_all(strings, pattern='[7-9]')


## ---- eval=FALSE---------------------------------------------------------
str_view_all(fruit, pattern='a.')  # finds 'a' followed by anything
str_view_all(x, pattern='t.')      # finds 't' followed by anything


## ---- eval=FALSE---------------------------------------------------------
str_view_all(strings, pattern='\\d')  # finds digits
str_view_all(strings, pattern='\\s')  # finds all whitespaces
str_view_all(strings, pattern='[\\s[:upper:]]') # whitespaces OR uppercase


## ---- eval=FALSE---------------------------------------------------------
#- find the phone numbers
str_view_all(strings, pattern='\\d{3}-\\d{3}-\\d{4}')
str_view_all(strings, pattern='\\d{3}[- \\.]\\d{3}[- \\.]\\d{4}')


## ---- eval=FALSE---------------------------------------------------------
y = c("0abc0", "0abcc0", "0abccc0", "0abcabc0", "0abcabcabc0")

str_view_all(y, pattern="0abc+0")
str_view_all(y, pattern="0(abc)+0")


## ------------------------------------------------------------------------
R = "ggplot(cars, aes(reorder(type, enginesize)))+geom_bar()+facet_wrap(~origin) +
labs(x='car type')"


## ---- eval=FALSE---------------------------------------------------------
str_view_all(R, pattern='ggplot\\(.*\\)')    # entire string matched


## ---- eval=FALSE---------------------------------------------------------
str_view_all(R, pattern='ggplot\\(.*?\\)')    # finds first closing parenthesis
str_view_all(R, pattern='ggplot\\(.*?\\)+')   # finds first set of closing parentheses


## ---- eval=FALSE---------------------------------------------------------
str_view_all(fruit, pattern='apple')  # finds all 'apple' substrings


## ---- eval=FALSE---------------------------------------------------------
str_view_all(fruit, pattern='^apple')  # finds strings that *start* with `apple`


## ---- eval=FALSE---------------------------------------------------------
str_view_all(fruit, pattern='apple$')  # finds strings that *end* with `apple`


## ---- eval=FALSE---------------------------------------------------------
url = "https://mdporter.github.io/SYS2202/data/colossians.txt"
lines = read_lines(url)       # vector: each element a string
single = read_file(url)       # single element: string of entire file


## ------------------------------------------------------------------------
col_text = str_remove_all(single, pattern='\\[.+? ESV\\]')
str_trunc(col_text, 50)


## ------------------------------------------------------------------------
str_split(col_text, " ")[[1]] %>% head(30)
str_split(col_text, boundary("word"))[[1]] %>% head(30)


## ------------------------------------------------------------------------
str_extract_all(col_text, boundary("word"))[[1]] %>% head()


## ------------------------------------------------------------------------
str_count(single, 'God') 


## ------------------------------------------------------------------------
#- get the words from Book of Colossians
col_words = str_split(col_text, boundary("word"))[[1]] # vector of words

#- Get frequency of words
word_freq = tibble(word=col_words) %>% count(word, sort=TRUE)


## ------------------------------------------------------------------------
filter(word_freq, str_detect(word, 'God'))


## ----baby-names, cache=TRUE----------------------------------------------
library(babynames)

#- get names from 2014 (only most common names included)
baby2017 = filter(babynames, year==2017)


## ------------------------------------------------------------------------
library(stringr)

#- return matching strings
str_subset(baby2017$name, "Michael")
str_subset(baby2017$name, "michael")
str_subset(baby2017$name, "(M|m)ichael")   # contains Michael or michael
str_subset(baby2017$name, "(M|m)ichael$")  # ends in Michael or michael
str_subset(baby2017$name, "^(M|m)ichael")  # begins with Michael or michael
str_subset(baby2017$name, "^(M|m)ichael$") # begins and ends in Michael or michael

#- find matching records in database
baby2017 %>% filter(str_detect(name, pattern="^(M|m)ichael$"))


## ---- cache=FALSE--------------------------------------------------------
library(rvest)
url = 'http://en.wikipedia.org/wiki/3,000_hit_club'
hits = read_html(url) %>% html_node("table.wikitable.sortable") %>% html_table()
head(hits)



## ------------------------------------------------------------------------
#- We used the readr function parse_number()
parse_number(hits$Hits)

#- but we could use a combination of str_extract and str_remove
str_extract(hits$Hits, pattern='\\d+,*\\d+') %>% 
  str_remove_all(pattern=',') %>% 
  as.numeric()


## ------------------------------------------------------------------------
#- Extract with regex
str_extract(hits$Date, pattern='[A-Z][a-z]+ \\d{1,2}, \\d{4}')


## ------------------------------------------------------------------------
#- One way is to use str_extract_all(). From this it
#  not be too difficult to get the 
#  *number of seasons* played
years = '(18|19|20)\\d{2}'
str_extract_all(hits$Seasons, pattern=years, simplify=TRUE)


## ------------------------------------------------------------------------
str_extract(hits$`3,000th hit`, "Single|Double|Triple|Home run")
