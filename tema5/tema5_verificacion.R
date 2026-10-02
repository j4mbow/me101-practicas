library(tidyverse)
library(e1071)

df <- read_csv("C:/Users/Fernando/Downloads/estudiantes_limpio.xls") # generado en el Tema 4
glimpse(df)

# Completa: media, mediana, sd, var, Q1, Q3, IQR
estadisticos <- c(
  media = mean(df$nota),
  mediana = median(df$nota),
  desv_std = sd(df$nota),
  var_muestral = var(df$nota),
  Q1 = unname(quantile(df$nota, 0.25)),
  Q3 = unname(quantile(df$nota, 0.75)),
  IQR = IQR(df$nota)
)

print(round(estadisticos, 4))

# Completa: skewness y kurtosis con e1071

skewness(df$nota) # type = 3 por defecto
kurtosis(df$nota) # type = 3 por defecto, exceso


# Completa: define la funcion resumen_estadistico
resumen_estadistico <- function(vector, decimales = 4) {
  media <- mean(vector)
  desv_std <- sd(vector)
  
  list(
    n = length(vector),
    media = round(media, decimales),
    mediana = round(median(vector), decimales),
    desv_std = round(desv_std, decimales),
    cv_pct = round((desv_std / media) * 100, decimales)
  )
}

print(resumen_estadistico(df$nota))



# Completa: define clasificar_dispersion
clasificar_dispersion <- function(cv_pct) {
  if (cv_pct < 15) {
    return("Baja")
  } else if (cv_pct < 30) {
    return("Moderada")
  } else {
    return("Alta")
  }
}
# Completa: bucle for sobre las dos columnas
for (columna in c("nota", "asistencia_pct")) {
  resumen <- resumen_estadistico(df[[columna]])
  nivel <- clasificar_dispersion(resumen$cv_pct)
  
  cat(sprintf(
    "%s: media=%.4f, desv_std=%.4f, CV=%.4f%% -> %s\n",
    columna,
    resumen$media,
    resumen$desv_std,
    resumen$cv_pct,
    nivel
  ))
}
