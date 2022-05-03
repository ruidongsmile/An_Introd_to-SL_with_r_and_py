### vectors, data, matrics, subsetting
#seq, c, matrix, dim, ls
x = c(2, 7, 5)
y=seq(from=4, length=3, by=3)
y
x + y
x / y
x^y
x[2:3]
x[-2]
x[-c(1,2)]
z = matrix(seq(1, 12), 4, 3)
z
z[3:4, 2:3]
z[,2:3]
z[,1]
z[,1,drop=FALSE]
dim(z)
ls()

### Generating random data, graphics
# runif, rnorm, plot, par, hist
x = runif(50)
y = rnorm(50)
plot(x, y)
plot(x, y, xlab="Random Uniform", ylab="Random Normal", pch="*", col="blue")
par(mfrow=c(2, 1))
plot(x, y)
hist(y)
par(mfrow=c(1, 1))

### Reading in data
# read.csv, $, attach
Auto = read.csv('Desktop/An_Introd_to-SL_with_r_and_py/data/Auto.csv')
names(Auto)
dim(Auto)
class(Auto)
summary(Auto)
plot(Auto$cylinders, Auto$mpg)
plot(Auto$cyl, Auto$mpg)
length(Auto$cylinders)
attach(Auto)
search()
plot(cylinders, mpg)
cyclinders=as.factor(cylinders)
horsepower = as.numeric(horsepower)
fit <- lm(mpg~horsepower)
summary(fit)
plot(mpg~horsepower)
abline(fit, col="red")
