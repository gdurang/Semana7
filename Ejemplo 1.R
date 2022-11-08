

#Realiza a sus clientes la oferta siguiente: Lote A: 3 paquetes de detergente y 3 botellas de
#lavavajillas. Lote B: 2 paquetes de detergente y 4 botellas de lavavajillas. El precio de venta de cada lote A es de 24
#euros y de cada lote B, 22 euros, pero no pueden venderse más de 9 lotes de la clase B. En el almacén hay 36 paquetes
#de detergente y 48 botellas de lavavajillas. 1) Dibuja la región factible. 2) Determina cuántos lotes de cada clase hay
#que vender para que el beneficio sea máximo. 3) Calcula el beneficio máximo.
#devtools::install_github("relund/gMOIP",build_vignettes= TRUE)
# Importando el paquete gMOIP
if (!require("gMOIP")) {install.packages("gMOIP", dependencies = TRUE);library(gMOIP)}
# Detreminando Matriz, función objetivo y restricciones
A = matrix(c(3,2,3,4,0,1), nrow = 3, byrow = TRUE)
b = c(36, 48, 9)
obj = c(24, 22)

#Graficando la solución
plotPolytope(A, b, obj, type = rep("c", ncol(A)), crit = "max", faces = rep("c", 
ncol(A)), plotFaces =T, plotFeasible = T, plotOptimum = T, labels = "coord") +
ggplot2::ggtitle("Feasible region only") + ggplot2::xlab("x") + ggplot2::ylab("y")
