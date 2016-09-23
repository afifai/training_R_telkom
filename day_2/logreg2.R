#install.packages("ISLR")
library(ISLR)

dataset <- read.csv("data/credit_data.csv",TRUE,",")
head(dataset)

nrow(dataset)
colnames(dataset) <- c("ID","income","age","loan","LTI","default")

attach(dataset)

trainDataset <- ID < 1500
testDataset <- !trainDataset

model <- glm(formula=default~income+age+loan, family="binomial",data=dataset, subset=trainDataset)
summary(model)
model <- glm(formula=default~income+age+loan,family="binomial",data=dataset,subset=trainDataset)

plot(default,age)
prob <- predict(model, newdata <- dataset[testDataset,],type="response")

predictedResults <- ifelse(prob>0.5,1,0)
originalResults <- default[testDataset]

# akurasi
table(originalResults,predictedResults)
mean(originalResults==predictedResults)