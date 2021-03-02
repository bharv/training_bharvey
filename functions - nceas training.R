airtemps <- c(212, 30.3, 78, 32)
celsius1 <- (airtemps[1] - 32) * 5/9
celsius2 <- (airtemps[2] - 32) * 5/9
celsius3 <- (airtemps[3] - 32) * 5/9

fahr_to_celsius <- function(airtemps) {
  celsius <- (airtemps - 32) * 5/9
  
  return(celsius)
}

celsius4 <- fahr_to_celsius(airtemps[1])
