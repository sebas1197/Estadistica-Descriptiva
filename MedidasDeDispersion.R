rango<-function(x){
  R <- max(x) - min(x)
  return(R)
}

varianza <- function(vector){
return(var(vector, na.rm = FALSE))
}

desviacionEstandar <- function(vector){
  return(sd(vector)) 
}

cuartiles <- function(vector){
  q <- quantile(vector, 
        probs = c(0.25, 0.5, 0.75))
  
  return(q)
} 

deciles <- function(vector){
  d <- quantile(vector,
    probs = seq(0.1, 0.9, by=0.1))
  return(d)
}

percentiles <- function(vector){
  p <- quantile(vector, 
  probs = seq(0.01, 0.99, by=0.01))
  
  return(p)
}

coeficienteVariacion <- function(vector){
  return(cv(vector)) 
} 



dataset <- 
  read.csv(file.choose()) 

x <- dataset$Weekly_Sales

rango(x)
varianza(x)
desviacionEstandar(x)
cuartiles(x)
deciles(x)
percentiles(x)
coeficienteVariacion(x)

  
  #Varianza
#Una varianza alta podria representar que 
#los valores estas muy dispersos, 
#mientras que una varianza baja podria 
#representar que los valores estan cerca de la media

  #Desviación estandar
#Una desviación estandar baja indica que 
#la mayoria de lo valores terminan cerca 
#del promedio, mientras que un valor alto 
#podria representar que los valores varian más ampliamente
