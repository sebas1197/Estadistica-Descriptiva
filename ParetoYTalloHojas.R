#Instalar el paquete qcc
#Verificar que este el paquete activado


data("cars")
vector <- cars$speed

paste("El tamanio de la muestra es: ", length(vector))

names(vector) <- 
c("A", "B", "C", "D", "E", 
  "F", "G", "H", "I", "J")


pareto.chart(
vector[1:10], ylab = "Frecuencias", 
col = heat.colors(length(vector)),
cumperc = seq(0, 100, by = 20),
ylab2 = "Porcentaje acumulado",
main = "Comentarios")


tiempoEspera <- 
c(54, 11, 10, 88, 99, 89, 74, 65, 55)

stem(tiempoEspera, scale = 2)
