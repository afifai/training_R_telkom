data <- read.csv("data/house_prices.csv",TRUE,";")

#data

attach(data)

plot(HouseSize,HousePrice)

linearModel <- lm(HousePrice ~ HouseSize,data)
abline(linearModel, col="red")
summary(linearModel)

#predict
# predict(linearModel, data.frame(HouseSize=1500))