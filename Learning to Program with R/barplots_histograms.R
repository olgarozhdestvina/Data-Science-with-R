require(MASS)
data(caith)
caith

# barplots
EyeColour <- rowSums(caith)
HairColour <- colSums(caith)
barplot(EyeColour, main='Eye Colour')
barplot(HairColour, main='Hair Colour', col='blue', xlab='colour', ylab='No of People', density=c(5,10,15,20))
barplot(as.matrix(caith), col=c('blue', 'green', 'red', 'orange'))
barplot(t(as.matrix(caith)), col=c('blue', 'green', 'red', 'orange'))
barplot(as.matrix(caith), col=c('blue', 'green', 'red', 'orange'), beside=T)

# histograms
hist(as.matrix(caith), breaks=10)
r <-  rnorm(1000)
hist(r)
r <- rnorm(20000)
hist(r, breaks=100)
r <- rchisq(10000, df=2)
hist(r, breaks=100)
r <- rchisq(10000, df=5)
hist(r, breaks=100)
