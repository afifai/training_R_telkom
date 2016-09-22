number <- sample(1:20,1)
guess <- 0
i <- 0
print("Hello! What is your name?")
name <- scan(what=" ",nmax=1)
greetings <- paste ("Well",name,"I am thinking of a number between 1 and 20.")
print(greetings)
while(guess != number){
  print("Take a guess !")
  guess <- scan(nmax=1)
  i <- i+1
  if(number<guess){
    print("Your guess is too high.")
  }
  else if(number > guess){
    print("Your guess is too low.")
  }
}
congrats <- paste("Good job",name,", you guessed my number in",i,"guesses!",sep=" ")
print(congrats)