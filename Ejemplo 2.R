#Una compañía de telefonía móvil quiere celebrar una jornada de “Consumo razonable” y ofrece a sus
#clientes la siguiente oferta: 15 céntimos de euro por cada mensaje SMS y 25 céntimos de euro por cada minuto de
#conversación incluyendo el coste de establecimiento de llamada. Impone las condiciones: (a) El número de llamadas de
#un minuto no puede ser mayor que el número de mensajes aumentado en 3, ni ser menor que el número de mensajes
#disminuido en 3. (b) Sumando el quíntuplo del número de mensajes con el número de llamadas no puede obtenerse
#más de 27. 1) Dibuja la región factible. 2) Determina el número de mensajes y de llamadas para que el beneficio
#sea máximo. 3) ¿Cuál es ese beneficio máximo?
  

# Importando el paquete gMOIP
if (!require("gMOIP")) {install.packages("gMOIP", dependencies = TRUE);library(gMOIP)}

# Detreminando Matriz, función objetivo y restricciones
A = matrix(c(-1,1,1,-1,5,1), nrow = 3, byrow = TRUE)
b = c(3, 3, 27)
obj = c(15, 25)

#Graficando la solución
plotPolytope(A, b, obj, type = rep("c", ncol(A)), crit = "max", faces = rep("c", 
ncol(A)), plotFaces =T, plotFeasible = T, plotOptimum = T, labels = "coord") +
ggplot2::ggtitle("Región factible") + ggplot2::xlab("x") + ggplot2::ylab("y")
