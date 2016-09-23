library(tree)

bankData <- read.csv("data/bank.csv",TRUE,";")
head(bankData)
nrow(bankData)

set.seed(5)
trainingSet <- sample(1:nrow(bankData),3000)

model <- tree(y~., bankData, subset = trainingSet)

summary(model)
plot(model)
text(model, pretty=5)

prediction <- predict(model, bankData[-trainingSet,], type="class")
with(bankData[-trainingSet,], table(prediction,y))
mean(bankData[-trainingSet,17]==prediction)