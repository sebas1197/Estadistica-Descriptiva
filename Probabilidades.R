vector <- 
c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

permutacion <- 
  function(vector, eventos){
    
longitud <- length(vector)
return(
  permutations(
    n = longitud, 
    r = eventos, 
    v = vector,
    repeats.allowed = FALSE)
  )
  }

numeroPermutaciones 
<- function(vector, eventos){
  n <- length(vector)
  
return(factorial(n) / factorial(n - eventos))  
}

permutacion(vector, 3)
numeroPermutaciones(vector, 3)


combinaciones <- function(vector, eventos){
  longitud <- length(vector)
  return(combinations(
          n = longitud,
          r = eventos,
          v = vector,
          repeats.allowed = TRUE)
        )  
}

numeroCombinaciones <- function(vector, eventos){
  n <- length(vector)
  nr <- n - eventos
  
return(
    factorial(n) / 
    (factorial(nr) * factorial(eventos))
    )
}


combinaciones(vector, 3)
numeroCombinaciones(vector, 3)





