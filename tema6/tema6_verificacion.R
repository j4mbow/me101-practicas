# Completa: reconstruye el degradado con matrix()

valores <- floor(seq(0, 255, length.out = 5))

gris <- matrix(
  rep(valores, times = 5),
  nrow = 5,
  ncol = 5,
  byrow = TRUE
)

print(gris)
# Completa: dim() y mean()
cat("Dimensiones:\n")
print(dim(gris))

cat("Media:", mean(gris), "\n")


# Completa: reconstruye la imagen RGB con los mismos colores

rgb <- array(0, dim = c(4, 4, 3))
# Completa: gris_luminosidad en R
rgb[, 1:2, ] <- rep(c(0, 0, 255), each = 8)
rgb[, 3:4, ] <- rep(c(255, 255, 0), each = 8)

cat("Dimensiones:\n")
print(dim(rgb))

cat("Pixel [1,1]:\n")
print(rgb[1, 1, ])

cat("Pixel [1,4]:\n")
print(rgb[1, 4, ])


#Completa: gris_luminosidad en R
luminosidad_decimal <- (
  0.299 * rgb[, , 1] +
    0.587 * rgb[, , 2] +
    0.114 * rgb[, , 3]
)

cat("Luminosidad antes de convertir a enteros:\n")
print(round(luminosidad_decimal, 2))

gris_luminosidad <- floor(luminosidad_decimal)

cat("Luminosidad entera, equivalente a Python:\n")
print(gris_luminosidad)