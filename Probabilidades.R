vector <- 
c(12, 13, 7, 15, 20, 18)

permutacion <- 
  function(vector, eventos){
longitud <- length(vector)
return(permutations(n = longitud, 
                    r = eventos))
}

permutacion(vector, 2)  
  
  