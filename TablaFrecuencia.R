data("cars")
distancias <- cars$dist

mostrarVectorDatos <- 
  function(vector){
    print(vector)    
  }

tablaFrecuencia <- 
  function(vector){
    listax <- 
      hist(vector, 
           plot = FALSE)
    tf <- 
      table.freq(listax)
    View(tf)
  }

muestra <- function(vector){
  n <- length(vector)
  paste("El tamaño de mi muestra es: ", n)
}

nombresColumnas <- function(){
  print(
    "1) Límite inferior
    2) Límite superior
    3) Marca de clase
    4) Frecuencia absoluta
    5) Frecuencia relativa
    6) Frecuencia acumulada
    7) Frecuencia acumulada relativa"
  )  
}

histograma <- function(vector){
  return(hist(vector, main = "Titulo"))
}

poligonoFrecuencia <- function(histograma){
  polygon.freq(histograma, lwd = 2)  
}

diagramaBarras <- function(vector){
  barplot(vector)  
}

diagramaPastel <- function(vector){
  pie(vector)  
}

mostrarVectorDatos(distancias)
tablaFrecuencia(distancias) #Verificar que la libreria "agricolae" este activa
muestra(distancias)
nombresColumnas()
hist <- histograma(distancias)
poligonoFrecuencia(hist)
diagramaBarras(distancias)
diagramaPastel(distancias)
