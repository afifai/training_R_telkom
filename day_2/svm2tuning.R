dataX <- runif(20, min<-0, max<-10)
dataY <- runif(20, min<-0, max<-10)
plot(dataX,dataY)
class <- rep("A",20)
class[dataX > 5] <- "B"
plot(dataX,dataY, col=ifelse(class=="A","red","blue"),pch=16)

library(e1071)

data <- data.frame(dataX,dataY,class)

set.seed(1)


tunedModel <- tune(svm,class ~ dataY+dataX , data=data, kernel="linear", ranges=list(cost=c(0.001,0.01,0.1,1,10,100)))

bestModel <- tunedModel$best.model
plot(bestModel,data=data)

predict(bestModel,data.frame(dataX=10,dataY=8))
