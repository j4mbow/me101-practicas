library(tidyverse)
# Completa: lee el CSV
df <- read_csv("estudiantes.csv")
# Completa: muestra la estructura y los NA por columna
glimpse(df)

print(colSums(is.na(df)))

# Completa: aplica drop_na() y replace_na() encadenados con el pipe
df_limpio <- df %>%
  drop_na(nota) %>%
  mutate(
    asistencia_pct = replace_na(
      asistencia_pct,
      mean(asistencia_pct, na.rm = TRUE)
    )
  )
# Completa: verifica que no queden NA
print(colSums(is.na(df_limpio)))
print(nrow(df_limpio))

print(
  df_limpio$asistencia_pct[df_limpio$nombre == "Salvador"]
)

# Completa: promedio de nota agrupado por curso, estilo dplyr
promedio_por_curso <- df_limpio %>%
  group_by(curso) %>%
  summarise(
    promedio_nota = mean(nota),
    .groups = "drop"
  )

print(promedio_por_curso)


write_csv(df_limpio, "estudiantes_limpio_R.csv")

print("Archivo estudiantes_limpio_R.csv guardado.")