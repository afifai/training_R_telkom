irisData <- read.table(file="data/iris_data.csv",header=TRUE,sep=",")

#table(irisData$Class) 
irisData$Class <- factor(irisData$Class, level=c("Iris-setosa","Iris-versicolor","Iris-virginica"), labels=c("A","B","C"))

#summary(irisData[c("PetalLength","PetalWidth")])

#fungsi normalisasi
normalize <- function(x) {return ((x-min(x))/(max(x)-min(x)))}
normalizedData <- as.data.frame(lapply(irisData[1:4],normalize))

trainData <- normalizedData[1:120,]
testData <- normalizedData[121:150,]
irisTrainLabels <- irisData[1:120,5]
irisTestLabels <- irisData[121:150,5]

library(class)

prediction <- knn(train<-trainData,test<-testData,cl<-irisTrainLabels,k=10)
