library(MASS)
library(ISLR2)

head(Auto)
?Auto
fit1 = lm(mpg~as.double(horsepower), Auto)
summary(fit1)

plot(mpg~horsepower, Auto)
abline(fit1, col="blue")

fit2 = lm(medv~lstat, Boston)
summary(fit2)

head(Auto)
head(Boston)

