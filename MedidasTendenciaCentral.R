media <- function(vector){
  return(mean(vector))
}

mediana <- function(vector){
  x <- sort(vector)
  return(median(x))
}

moda <- function(x) {
  return(as.numeric(
    names(which.max(table(x)))))
}

data <- read.csv("train.csv")
print(data)
x <- data$Weekly_Sales
print(x)
print(length(x))

media(x)
mediana(x)
moda(x)


