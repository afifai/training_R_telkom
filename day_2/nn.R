trainingInput <- as.data.frame(runif(50,min=0,max=1000))
trainingOutput <- sqrt(trainingInput)
trainingData <- cbind(trainingInput,trainingOutput)
colnames(trainingData) <- c("Input","Output")

library(neuralnet)
nn <- neuralnet(Output ~ Input, data=trainingData, hidden = 10, threshold = 0.01)

plot(nn)

pred <- compute(nn,36)
pred$net.result