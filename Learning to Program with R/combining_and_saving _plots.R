# load data
require(MASS)
data(Cars93)
attach(Cars93)

# plot the data
plot(x=Weight, y=MPG.city)
plot(x=Weight, y=Price)

# plot on the same axis
par(mfrow=c(2,1))
plot(x=Weight, y=MPG.city, col='green')
plot(x=Weight, y=Price, col='red')

# plot 2x2 graph
par(mfrow=c(2,2))
plot(x=Weight, y=MPG.city, col='green')
plot(x=Weight, y=Price, col='red')
plot(x=Weight, y=EngineSize)
plot(x=Price, y=EngineSize, col='blue')

# create three plots using a layout matrix
matrix(c(1,2,1,3), ncol=2, byrow=T)
layout(matrix(c(1,2,1,3), nrow=2, byrow=T))
plot(x=Weight, y=MPG.city, col='green')
plot(x=Weight, y=Price, col='red')
plot(x=Weight, y=EngineSize)
