library(neuralnet)

X <- c(0,0,1,1)
Y <- c(0,1,0,1)
Output <- c(0,1,1,0)
trainingData <- data.frame(X,Y,Output)

nn <- neuralnet(Output ~ X + Y, trainingData, hidden=3, threshold = 0.01)
plot(nn)

prediction <- compute(nn,data.frame(X=0,Y=0))
print(prediction$net.result)