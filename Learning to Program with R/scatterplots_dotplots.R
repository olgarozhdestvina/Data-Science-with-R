data(Cars93)
Cars93
ncol(Cars93)
attach(Cars93)

# scatter plot
plot(x=Price, y=Weight)
plot(x=Price, y=MPG.city)
plot(x=Weight, y=MPG.city)
abline(lm(MPG.city~Weight), col='red')
abline(h=max(MPG.city), col='blue')
abline(v=mean(Weight), col='green')

# multiple scatter plots
pairs(~Weight+Price+MPG.city+EngineSize, main='Scatterplot Matrix')

# dotchart
dotchart(MPG.city, labels=paste(Manufacturer, Model))
orderCars <- Cars93[order(MPG.city),]
attach(orderCars)
dotchart(MPG.city, labels=paste(Manufacturer, Model), cex=0.5)
