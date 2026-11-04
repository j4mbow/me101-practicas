library(tidyverse)

# Completa: reconstruye tu dataset y matriz de correlacion (mismos datos del Tema 9)
datos <- data.frame(
  pm10_ugm3 = c(45.0, 28.0, 62.0, 35.0, NA),
  no2_ppb   = c(18.2, 12.5, 25.4, 15.0, 9.8),
  ruido_db  = c(72, 58, 81, 65, 52),
  row.names = c("Centro", "San Jeronimo", "Wanchaq", "San Sebastian", "Poroy")
)

# Imputamos el NA de pm10_ugm3 con la mediana (40.0) igual que en Python
datos$pm10_ugm3[is.na(datos$pm10_ugm3)] <- median(datos$pm10_ugm3, na.rm = TRUE)

matriz_corr <- cor(datos)
print(round(matriz_corr, 4))

# Completa: convierte a formato largo
orden_vars <- colnames(matriz_corr)

corr_larga <- as.data.frame(matriz_corr) %>%
  rownames_to_column("var1") %>%
  pivot_longer(-var1, names_to = "var2", values_to = "correlacion") %>%
  mutate(
    var1 = factor(var1, levels = orden_vars),
    var2 = factor(var2, levels = rev(orden_vars))
  )

print(corr_larga)
cat("Numero de filas resultante:", nrow(corr_larga), "\n")




# Completa: heatmap con ggplot2
grafico_gg <- ggplot(corr_larga, aes(x = var1, y = var2, fill = correlacion)) +
  geom_tile(color = "white", linewidth = 0.8) +
  geom_text(aes(label = round(correlacion, 2)), size = 4) +
  scale_fill_gradient2(
    low = "blue",
    mid = "white",
    high = "red",
    midpoint = 0,
    limits = c(-1, 1)
  ) +
  labs(
    title = "Matriz de correlacion ambiental con ggplot2",
    x = NULL,
    y = NULL
  ) +
  coord_fixed() +
  theme_minimal()

print(grafico_gg)
ggsave("heatmap_ggplot2.png", plot = grafico_gg, width = 6, height = 5, dpi = 150)








library(pheatmap)
library(grid)

while (!is.null(dev.list())) dev.off()

paleta_cor <- colorRampPalette(c("blue", "white", "red"))(100)
cortes_cor <- seq(-1, 1, length.out = 101)

# 1. Completa: pheatmap CON agrupamiento (por defecto)
# Guardamos el PNG como pide la guia:
pheatmap(
  matriz_corr,
  display_numbers = TRUE,
  color = paleta_cor,
  breaks = cortes_cor,
  main = "Con agrupamiento jerarquico (por defecto)",
  filename = "heatmap_pheatmap_agrupado.png"
)

# Y lo mostramos en el panel Plots de RStudio para tomar captura:
grid.newpage()
p_agrupado <- pheatmap(
  matriz_corr,
  display_numbers = TRUE,
  color = paleta_cor,
  breaks = cortes_cor,
  main = "Con agrupamiento jerarquico (por defecto)",
  silent = TRUE
)
grid.draw(p_agrupado$gtable)

# 2. Completa: pheatmap SIN agrupamiento
# Guardamos el PNG como pide la guia:
pheatmap(
  matriz_corr,
  display_numbers = TRUE,
  cluster_rows = FALSE,
  cluster_cols = FALSE,
  color = paleta_cor,
  breaks = cortes_cor,
  main = "Sin agrupamiento (orden original)",
  filename = "heatmap_pheatmap_sin_agrupar.png"
)

# Y lo mostramos en el panel Plots de RStudio para tomar captura:
grid.newpage()
p_sin_agrupar <- pheatmap(
  matriz_corr,
  display_numbers = TRUE,
  cluster_rows = FALSE,
  cluster_cols = FALSE,
  color = paleta_cor,
  breaks = cortes_cor,
  main = "Sin agrupamiento (orden original)",
  silent = TRUE
)
grid.draw(p_sin_agrupar$gtable)

