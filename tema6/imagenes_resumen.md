\# Resumen del Tema 6



Nombre: Fernando Fabian Davila Aucapuri



Primero construí una imagen en escala de grises con shape (5, 5), 5 filas y 5 columnas. Cada fila contiene los valores 0, 63, 127, 191 y 255. Por eso la imagen pasa de negro a blanco de izquierda a derecha. Su intensidad media es 127.2.



Después construí una imagen RGB con shape (4, 4, 3), tiene 4 filas, 4 columnas y 3 canales de color. Elegí azul para la mitad izquierda, con valores RGB (0, 0, 255), y amarillo para la mitad derecha, con valores RGB (255, 255, 0).



Al aplicar la fórmula de luminosidad ponderada, obtuve 29.07 para el azul y 225.93 para el amarillo. Al convertir estos resultados a uint8 en Python, quedaron en 29 y 225. El amarillo quedó más claro que el azul.



Elegí un umbral de 100 porque está entre las intensidades de ambas mitades y permite separarlas. Al binarizar los píxeles de la mitad azul quedaron en 0 y los de la mitad amarilla en 255. El resultado fue una imagen con la mitad izquierda negra y la mitad derecha blanca.

