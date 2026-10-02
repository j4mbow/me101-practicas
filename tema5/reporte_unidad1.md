Reporte de la Unidad I  

Fernando Fabian Davila Aucapuri



En esta práctica trabajé con los datos de seis estudiantes que quedaron después de la limpieza del Tema 4. Analicé las columnas nota y asistencia\_pct utilizando Python y R.



En nota obtuve una media de 12.6667, una desviación estándar muestral de 3.9833 y un coeficiente de variación de 31.4471 %. Mi función clasificar\_dispersion() indicó una dispersión Alta, porque el CV es mayor o igual a 30 %.



En asistencia\_pct obtuve una media de 77.0000, una desviación estándar muestral de 16.3095 y un coeficiente de variación de 21.1812 %. Según los límites de la actividad, su dispersión es Moderada, porque el CV está entre 15 % y menos de 30 %. Al comparar ambos coeficientes, observé que las notas presentan mayor dispersión relativa.



La media, la mediana y la desviación estándar coincidieron en Python y R a la precisión mostrada. Sin embargo, la varianza fue 13.2222 en NumPy y 15.8667 en R. Esto ocurre porque NumPy divide entre n por defecto, mientras que R divide entre n−1. También encontré diferencias en la asimetría y la curtosis, debido a las distintas fórmulas de ajuste que utilizan pandas y e1071.

