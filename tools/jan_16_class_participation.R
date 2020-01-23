2 + 2
3 + 4
number <- 3
# assign values with the arrow function
number
number * 2
number <- 5
number * 2
c(1, 2,3,4)
# use combine to create vectors
times <- c(17, 30, 25, 35, 25, 30, 40, 20)
times
mean(times)
time_hours <- times/60
# creating a new variable out of a variable you already have
range (times)
sqrt(times)
times > 30
times == 17
which (times >30)
any (times > 30)
all (times > 30)
?any
?mean
help(all)
# ? or help() bring up info on functions and their arguments
times[times >30]
# brackets subset commands
times[3]
times[-3]
times[3:5]
3:5
times[c(2, 4)]
times[-c(2,4)]
times[times>30]
times
times[1] <- 47
times
times[times > 30] <- NA
times
times <- c(47, 30, 25, 35, 25, 30, 40, 20)
times [times > 30] <- c(0,1)
times

times[times >30] <- NA
# subset times variable so that any number over 30 is marked as na
times
mean(times)
mean(times, na.rm = TRUE)
# r cant do some things when there is missing data
# (na), use na.rm= TRUE to remove missing data so the 
# function can be preformed while excluding missing data
times > 20 & times < 35
times[times > 20 & times < 35]
mean(times[times > 20 & times < 35], na.rm = TRUE)
mean(x = times, na.rm = TRUE)
mean (times, na.rm = TRUE)
mean (times, trim = .2, na.rm = TRUE)
# trim cuts of the top and bottom percentage of data, you decide percentage
mtcars
?mtcars
head(mtcars)
# first 6 rows
tail(mtcars)
# last 6 rows
str(mtcars)
# shows structure of dataframe
names(mtcars)
#shows column names of data frame
# "" means that it is a string variable