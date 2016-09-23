x <- runif(100,0,10)
y <- runif(100,0,10)

plot(x,y)
data <- data.frame(x,y)

km <- kmeans(data,4,nstart=15)

plot(data,col=km$cluster, pch=16)