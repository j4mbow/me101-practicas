# Completa: crea el vector 'notas'
notas <- c(11, 14, 20, 8, 16, 13)
# Completa: muestra el primer y el ultimo elemento
primero <- notas[1]
ultimo <- notas[6]
print(primero)
print(ultimo)

# Completa: promedio, maximo y cantidad de aprobados
promedio <- mean(notas)
maximo <- max(notas)
cantidad_aprobados <- sum(notas >= 10.5)
print(promedio)
print(maximo)
print(cantidad_aprobados)

library(tidyverse)
# Completa: crea el data.frame o tibble 'datos' con las mismas columnas y valores de la Tarea 1

datos <- data.frame(
  nombre = c("Abel", "Luana", "Salvador", "Tania", "Carlos"),
  nota = c(2, 13, 12, 17, 6),
  asistencia_pct = c(10, 66, 48, 80, 30)
)

# Completa: filtra con las dos condiciones combinadas
# pista: en R el operador logico 'y' es &
datos_filtrados <- datos[datos$nota >= 10.5 & datos$asistencia_pct >= 70, ]
print(datos_filtrados)