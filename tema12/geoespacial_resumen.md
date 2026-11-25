# Resumen del Tema 12: Datos Geoespaciales

## a) Lugares que elegí y por qué
Elegí 4 lugares de Cusco que conozco bien:
- **Wanchaq Casa:** lo puse como punto de partida porque es mi domicilio.
- **UNSAAC (Perayoc):** porque es la universidad donde estudio y a donde voy desde mi casa.
- **Plaza de Armas y Sacsayhuamán:** los elegí porque son lugares a los que voy a caminar y a ver presentaciones típicas del Cusco.

## b) Par más cercano y más lejano
Con la fórmula de Haversine obtuve estas distancias:
- **Par más cercano:** Plaza de Armas y Sacsayhuamán, a **1.1116 km** (muy cerca quedó también el tramo de Wanchaq Casa a la UNSAAC, con 1.1554 km).
- **Par más lejano:** Wanchaq Casa y Sacsayhuamán, a **3.8618 km**.

## c) Sobre el CRS y los códigos EPSG
Si le paso solo los números de mis coordenadas a un compañero que usa UTM sin decirle en qué CRS están, sus datos y los míos no van a coincidir al juntarlos en un mapa, porque los míos están en grados (`EPSG:4326`) y los suyos en metros. Como resultado, mis puntos aparecerían en cualquier otro sitio. Indicar el código EPSG evita ese error porque deja claro en qué referencia está cada archivo y permite reproyectar una capa al sistema de la otra antes de combinarlas.
