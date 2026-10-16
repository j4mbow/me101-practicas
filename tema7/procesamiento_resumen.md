
Creé una imagen de 120 × 120 píxeles con un fondo azul de color RGB (40, 40, 160).
Dibujé un rectángulo naranja, con RGB (255, 100, 0), en la parte inferior izquierda, 
y un círculo verde, con RGB (0, 200, 80), en la parte superior derecha.

Comparé el píxel de fondo ubicado en (5, 5). Con convert("L") de Pillow obtuve 54. 
Con rgb2gray() de scikit-image obtuve aproximadamente 0.190792, que al multiplicarlo por 255 da 48.652. 
Los resultados fueron distintos porque las bibliotecas usan diferentes pesos para convertir los canales RGB a grises. Pillow también guarda el resultado como un entero.

El umbral de Otsu fue aproximadamente 0.1916 en la escala de 0 a 1. 
La proporción de píxeles que quedó por encima fue 0.1978, equivalente al 19.78 % de la imagen.
En el resultado binario, las dos figuras quedaron blancas y el fondo quedó negro.
EOF
