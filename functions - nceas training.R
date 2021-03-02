airtemps <- c(212, 30.3, 78, 32)             # fake some F airtemps
celsius1 <- (airtemps[1] - 32) * 5/9         # do some conversions
celsius2 <- (airtemps[2] - 32) * 5/9
celsius3 <- (airtemps[3] - 32) * 5/9

fahr_to_celsius <- function(airtemps) {      # turn into a function F to C
  celsius <- (airtemps - 32) * 5/9
  
  return(celsius)
}

celsius4 <- fahr_to_celsius(airtemps[1])     # now test is for one and all 

celsius <- fahr_to_celsius(airtemps)

celsius_to_fahr <- function(airtemps) {      # create the 
  fahrenheit <- (airtemps * 9/5) + 32
  
  return(fahrenheit)
}
airtemps2 <- c(0, 50, 100)
celsius_to_fahr(airtemps2)
