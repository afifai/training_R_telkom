buah1 <- c(0.5,0.5)
buah2 <- c(1,2)
buah3 <- c(1.5,1)

sayur1 <- c(5,5)
sayur2 <- c(5.1,5.7)
sayur3 <- c(4.1,5.7)

label <- factor(c(rep("Buah",3),rep("Sayur",3)))
tes <- c(4,4)

library(class)
trainingData <- rbind(buah1,buah2,buah3,sayur1,sayur2,sayur3)
plot(trainingData)

classifier <- knn(trainingData, tes, label, k=3)

# lihat label
summary(classifier)