data <- read.csv("data/temperature_data.csv",TRUE,";")

attach(data)

plot(Temperature,Malfunction)
model <- glm(Malfunction~Temperature, data, family="binomial")
summary(model)
lines(Temperature, model$fitted, type="l", col="red")

#predict(model,data.frame(Temperature=20),type="response")