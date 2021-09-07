# uniform distribution
runif(1,0,10)
runif(10,0,1)
x <- runif(100, 0,1)
y <- matrix(runif(100,0,1), ncol=10)
set.seed(1)
sample(1:10,5)
sample(x,5)
state.name
sample(state.name,10)
s1 <- sample(1:5,1000,replace=T,prob=c(.2,.2,.2,.2,.2))
table(s1)
s2 <- sample(1:5,1000,replace=T,prob=c(.1,.2,.3,.3,.2))
table(s2)

# normal distribution
rnorm(1)
rnorm(1,0,100) # mean 0 and std 100
x <- rnorm(1000,0,100)
mean(x)
sd(x)