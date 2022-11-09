# Ejemplo con enunciado
#
#Ejemplo 1:  Ud. realiza la siguiente oferta:
#  
#Lote A: 3 paquetes de jabones y 3 botellas de shampoo. 
#Lote B: 2 paquetes de jabones y 4 botellas de shampoo. 
#
#El precio de venta de cada lote A es de 24 dólares y de cada lote B, 22 dólares; pero no pueden venderse más de 9 lotes de la lote B. 
#
#En bodega hay 36 paquetes de jabones y 48 botellas de shampoo.
#
#Grafique la región factible.
#Determina cuántos lotes de cada clase hay que vender para que el beneficio sea máximo.
#Calcula el beneficio máximo.

if (!require("gMOIP")) {install.packages("gMOIP", dependencies = TRUE);library(gMOIP)}

A = matrix(c(3,2,3,4,0,1), nrow = 3, byrow = TRUE)
b = c(36, 48, 9)
obj = c(24, 22) 

# f(x,y)=z<-24*x+22*y
#Graficando la solución
plotPolytope(A, b, obj, type = rep("c", ncol(A)), crit = "max", faces = rep("c", 
ncol(A)), plotFaces = TRUE, plotFeasible = TRUE, plotOptimum = TRUE, labels = "coord") +
ggplot2::ggtitle("Regón") + ggplot2::xlab("x") + ggplot2::ylab("y")
