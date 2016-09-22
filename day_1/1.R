if (mean(data1$y1) < 5) {
  if (mean(data1$y1) > 7) {
    print("average year, but still smarter than me")
  } else {
    print("average year, but I'm not that bad")
  }
} else {
  if (mean(data1$y1) > 8) {
    print("smart year, even smarter than me")
  } else {
    print("smart year, but I am smarter")
  }  
}