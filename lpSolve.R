# Importando el paquete lpSolve
if (!require("lpSolve")) {install.packages("lpSolve", dependencies = TRUE);library(lpSolve)}

# Configurando función objetivo
f.obj <- c(5, 7)

# Estableciendo matriz con los ceficientes de restricción por fila

f.con <- matrix(c(1, 0,
                  2, 3,
                  1, 1), nrow = 3, byrow = TRUE)

# Estableciendo signos
f.dir <- c("<=",
           "<=",
           "<=")

# Estabelciendo Coeficientes del lado derecho
f.rhs <- c(16,
           19,
           8)

# Final valor (z)
lp("max", f.obj, f.con, f.dir, f.rhs)

# Variables final values
lp("max", f.obj, f.con, f.dir, f.rhs)$solution

