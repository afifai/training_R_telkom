#install.packages("e1071")
library(e1071)

irisData <- read.csv("data/iris_data.csv",TRUE,",")

head(irisData)

#shuffle
irisData <- irisData[sample.int(nrow(irisData)),]

trainingSet <- irisData[1:100,]
testSet <- irisData[101:150,]

model <- naiveBayes(Class ~ . , data <- trainingSet)
prediction <- predict(model,testSet)

originalResult <- testSet[,5]
table(prediction,originalResult)
acc<-mean(prediction==originalResult)
print(acc)