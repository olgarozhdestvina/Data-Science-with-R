# load the data
require(MASS)
data(Cars93)
attach(Cars93)

# compare with normal distribution
x <- rnorm(1000)
qqnorm(x)
qqline(x, col='red')
qqnorm(MPG.city)
qqline(MPG.city, col='red')

# compare distribution of two data sets
y <- rnorm(100)
qqplot(x,y)
qqline(y, col='red')

qqplot(EngineSize, MPG.city)
qqline(MPG.city, col='red')

# scale the data
qqplot(scale(EngineSize), scale(MPG.city))
qqline(scale(MPG.city), col='red')

x <- c(1,3,5,10,7,8,9,6,89,6,4)
scale(x)
mean(x) # center
sd(x) # scale
(x -mean(x))/sd(x) # how scaling is done 

# compare Cars93 to chi-sq distribution
qqplot(scale(rchisq(nrow(Cars93), df=5)), scale(MPG.city))
qqline(scale(MPG.city), col='red')
