diagramaCaja <- function(vector){
boxplot(vector, col = "yellow", 
        horizontal=TRUE)
}

diagramaPuntos <- function(vector){
plot(vector)
}

x <- c(8.54, 8.76, 8, 8.95, 8.67, 8, 8, 7.07, 7.64, 8.50, 8.01, 8.20, 8.5, 9.03, 8.11, 8.56, 8.35)
y <- c(1.23, 5.25, 4.23, 9.36, 4.52, 5, 8.25, 8.45, 9, 2)
diagramaCaja(y)
diagramaPuntos(x)
abline(h = mean(x), col = "red")
