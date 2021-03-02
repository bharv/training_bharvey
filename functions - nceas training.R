library(ggplot2)

airtemps <- c(212, 30.3, 78, 32)             # fake some F airtemps
celsius1 <- (airtemps[1] - 32) * 5/9         # do some conversions
celsius2 <- (airtemps[2] - 32) * 5/9
celsius3 <- (airtemps[3] - 32) * 5/9


fahr_to_celsius <- function(airtemps) {      # turn into a function F to C
  celsius <- (airtemps - 32) * 5/9
  
  return(celsius)
}

celsius4 <- fahr_to_celsius(airtemps[1])     # now test for one and all 

celsius <- fahr_to_celsius(airtemps)

celsius_to_fahr <- function(airtemps) {      # create opposite func for C to F 
  fahrenheit <- (airtemps * 9/5) + 32
  
  return(fahrenheit)
}
airtemps2 <- c(0, 50, 100)                   # now test the C to F function
celsius_to_fahr(airtemps2)

convert_temps <- function(fahr) {            # this function returns multiple conversions
  celsius <- (fahr-32 * 5/9)
  kelvin <- celsius + 275.15
  
  return(list(fahr = fahr, celsius = celsius, kelvin = kelvin))  # return as list
}

temps_df <- data.frame (convert_temps(seq(-100, 100, 10)))     # use new func to create dataframe

ggplot(temps_df, mapping=aes(x=fahr, y=celsius, color=kelvin)) +
  geom_point() 
