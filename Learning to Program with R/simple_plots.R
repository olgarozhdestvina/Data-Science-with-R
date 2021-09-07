# simple plots 
x <- rnorm(1000)
xU <- runif(1000)
# running sum of the data set
csum <- cumsum(x)
plot(x)
plot(xU)
plot(csum)

x <- rnorm(1000)
plot(x, type = 'l')
plot(csum, type = 'l')
plot(csum, type = 'h')
plot(csum, type = 'o')
plot(rnorm(10), type = 's')

# plotting a few line plots, styling, adjusting axis limits
plot(csum, type='l', col='red')
lines(cumsum(rnorm(1000)), col='blue')
csum_y = cumsum(rnorm(1000))
csum_z = cumsum(rnorm(1000))
random_data <- cbind(csum,csum_y,csum_z)
plot(csum, type='l', col='red', ylim=c(min(random_data), max(random_data)))
lines(csum_y, col='blue')
lines(csum_z, col='green')

# adding points onto the plot (for example, mean)
points(rowMeans(random_data), col='orange')
