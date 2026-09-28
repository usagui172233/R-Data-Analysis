# Análisis Exploratorio de Datos (EDA) - Dataset Iris
# Lenguaje: R
# Descripción: Análisis estadístico básico de medidas botánicas

# 1. Cargar el dataset incorporado
data(iris)

# 2. Mostrar las primeras 5 filas para entender la estructura
head(iris)

# 3. Resumen estadístico de todas las variables (media, mediana, cuartiles)
summary(iris)

# 4. Calcular la media de la longitud del sépalo agrupada por especie
aggregate(Sepal.Length ~ Species, data = iris, FUN = mean)

# 5. Generar un gráfico de dispersión básico (Longitud vs Ancho)
plot(iris$Sepal.Length, iris$Sepal.Width, 
     col = iris$Species, 
     main = "Dispersión de Sépalos por Especie",
     xlab = "Longitud del Sépalo", 
     ylab = "Ancho del Sépalo",
     pch = 19)
