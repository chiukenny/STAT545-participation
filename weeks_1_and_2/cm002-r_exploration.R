# number * 2
number <- 5 + 2
number * 2
# a * 2

(times = c(60, 40, 33, 15, 20, 55, 35))
times
(times)
times = times / 60
times

mean(times)
sqrt(times)
range(times)

times < 30
times == 20
times != 20
times > 20 & times < 50
times < 20 | times > 50
i = which(times < 30)
times[which(times < 30)]
sum(times < 30)
i # This is an inline comment
# This is a comment
a = all(times < 30)

# Subsetting:
times[3]
times[-3]
times[c(2,4)]
times[c(4,2)]
times[1:5]
times[times < 30]
times
times[times > 50] = 50
times

times[8] = NA
times
mean(times)

?mean
mean(times, na.rm = TRUE)
mean(x = times, na.rm = TRUE)
mean(times, 0, TRUE)
mean(na.rm = TRUE, x = times)

mtcars
str(mtcars)
names(mtcars)
head(mtcars)
mtcars$mpg