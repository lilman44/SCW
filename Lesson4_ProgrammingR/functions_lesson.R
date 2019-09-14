gapminder <- read.table("gapminder.txt", header = TRUE)

farenheit_to_celsius <- function(temp){
  celsius <- (temp - 32) * 5/9
  return(celsius)
}
celcius_to_kelvin <- function(temp_c){
  kelvin <- temp_c + 273.15
  return(kelvin)
}

farenheit_to_kelvin <- function(temp_f){
  celsius <- farenheit_to_celsius(temp_f)
  kelvin <- celcius_to_kelvin(celsius)
  return(kelvin)
}

MeanlifeExp <- function(Continent){
  subset_continent_gapminder <- gapminder[gapminder$continent == Continent, "lifeExp"]
  mean_life_exp <- mean(subset_continent_gapminder)
  return(mean_life_exp)
}

x <- 8
if(x >= 10){
  print("x is greater than or equal to 10")
}else{
  print("x is smaller than 10")
}

if(x >= 10){
  print("x is greater than or equal to 10")
}else if(x > 5){
  print("x is greater than 5 and less than 10")
}else{
  print("x is smaller than 10")
}
x <-  4 == 4
if(x >= 10){
  print("x is greater than or equal to 10")
}else{
  print("x is smaller than 10")
}

Asia_lifeExp <- MeanlifeExp("Asia")
if(Asia_lifeExp >= 50) {
  print("Life Expectancy of Asia is greater than or equal to 50")
} else {
  print("Life Expectancy of Asia is lower than 50")
}

for (i in 1:10){
  print(i)
}


menuItems <- c("chicken", "soup", "salad", "tea")
menuType <- factor(c("solid", "liquid", "solid", "liquid"))
menuCost <- c(4.99, 2.99, 3.29, 1.89)
myorder_df <- data.frame(menuItems, menuType, menuCost)

for(items in myorder_df$menuItems){
  myorder_df_subset <- myorder_df[myorder_df$menuItems == items, ]
  print(items)
  print(myorder_df_subset$menuCost)
}

gapminder <- read.table("gapminder.txt", header = TRUE)

thresholdValue <- 50

continent_list <- unique(gapminder$continent)

for(continent in continent_list) {
  continent_subset <- gapminder[gapminder$continent == continent, "lifeExp"]
  tmp <- mean(continent_subset)
  if(tmp <= thresholdValue){
    print(paste0("Average Life Expectancy in ", continent, " is less than ", thresholdValue))
  }
  else{
    print(paste0("Average Life Expectancy in ", continent, " is greater than ", thresholdValue))
  } # end if else condition
  rm(tmp)
}
