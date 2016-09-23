dataX <- runif(20, min<-0, max<-10)
dataY <- runif(20, min<-0, max<-10)
plot(dataX,dataY)
class <- rep("A",20)
class[dataX > 5] <- "B"
plot(dataX,dataY, col=ifelse(class=="A","red","blue"),pch=16)

library(e1071)

data <- data.frame(dataX,dataY,class)

model <- svm(class ~ dataY+dataX , data, kernel="linear", cost=0.1)

plot(model,data=data)

predict(model,data.frame(dataX=10,dataY=8))
