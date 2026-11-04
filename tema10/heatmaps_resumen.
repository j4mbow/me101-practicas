# Resumen del Tema 10: Construcción de Mapas de Calor

## a) ¿Qué herramienta me pareció más rápida de usar y por qué?
Las herramientas más rápidas fueron `sns.heatmap()` en Python y `pheatmap()` en R, porque ambas reciben directamente la matriz de correlación de 3x3 sin necesidad de pasarla antes a formato largo como en `ggplot2`, y con un solo argumento (`annot=True` o `display_numbers = TRUE`) ya muestran los valores redondeados dentro de cada celda.

## b) ¿El agrupamiento de pheatmap cambió el orden de las variables y qué reveló?
El orden de las tres variables (`pm10_ugm3`, `no2_ppb`, `ruido_db`) no cambió entre la versión con agrupamiento y sin agrupamiento porque en mi matriz original las dos variables con mayor correlación (`no2_ppb` y `ruido_db`, con r = 0.9844) ya estaban ubicadas juntas. Sin embargo, el dendrograma de `pheatmap` permitió ver claramente cómo esas dos variables se unen primero en un mismo clúster antes de agruparse con `pm10_ugm3`.

## c) Matriz de correlación completa (Calidad Ambiental en Cusco)

| Variable | pm10_ugm3 | no2_ppb | ruido_db |
| :--- | :---: | :---: | :---: |
| **pm10_ugm3** | 1.0000 | 0.8522 | 0.7940 |
| **no2_ppb** | 0.8522 | 1.0000 | 0.9844 |
| **ruido_db** | 0.7940 | 0.9844 | 1.0000 |
