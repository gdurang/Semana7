
# Importando el paquete gMOIP
if (!require("gMOIP")) {install.packages("gMOIP", dependencies = TRUE);library(gMOIP)}

# z<-25*f+22*l 
# 0.6*f+0.5*l<=9
# l<=0.6f
# -0.6f+1*l <= 0
# f >= 5 /*-1
# -1*f + 0*l <= -5

# Detreminando Matriz, función objetivo y restricciones
A = matrix(c(0.6,0.5,-0.6,1,-1,0), nrow = 3, byrow = TRUE)
b = c(9, 0, -5)
obj = c(25, 22)

#Graficando la solución
plotPolytope(A, b, obj, type = rep("c", ncol(A)), crit = "max", faces = rep("c", 
ncol(A)), plotFaces =T, plotFeasible = FALSE, plotOptimum = T, labels = "coord") +
ggplot2::ggtitle("Región factible") + ggplot2::xlab("f") + ggplot2::ylab("l")
