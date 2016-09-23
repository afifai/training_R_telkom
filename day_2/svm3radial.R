dataX <- runif(40,min<-0, max<-10)
dataY <- runif(40,min<-0, max<-10)
plot(dataX,dataY)
class < rep("B",40)
class[dataX>2.5 & dataX<4.5] <- "A"
data <- data.frame(dataX, dataY, class)
plot(dataX, dataY, col=ifelse(class=="A","red","blue"),pch=16)

#model <- svm(class ~ dataY+dataX,data, kernel="radial", gamma=2 , cost=2)
#plot(model,data=data)

#better model

tunedModel <- tune(svm,class ~ dataY+dataX , data=data, kernel="radial", ranges=list(cost=c(0.01,0.1,1,10,100), gamma=c(0.01,0.1,1,10)))
bestmodel<- tunedModel$best.model

plot(bestModel,data=data)

predict(bestModel,data.frame(dataX=10,dataY=8))