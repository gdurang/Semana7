# Importando el paquete gMOIP

#devtools::install_github("relund/gMOIP",build_vignettes= TRUE)
if (!require("gMOIP")) {install.packages("gMOIP", dependencies = TRUE);library(gMOIP)}

# Preparando componentes
A = matrix(c(1,0,2,3,1,1), nrow = 3, byrow = TRUE)
b = c(16, 19, 8)
obj = c(5, 7)

# Gráfica

plotPolytope(A, b, obj, type = rep("c", ncol(A)), crit = "max", faces = rep("c", 
ncol(A)), plotFaces = TRUE, plotFeasible = TRUE, plotOptimum = TRUE, labels = "coord") +
ggplot2::ggtitle("Feasible region only") + ggplot2::xlab("x") + ggplot2::ylab("y")

