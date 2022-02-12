# LIBRERIAS Y DATOS

library(MASS);
library(neuralnet);
library(ggplot2);

set.seed(65)

# Almacena informaicón en la variable datos
datos <- Boston

# Imprime en consola los datos
datos

# Toma todos las filas y las almacena en la variable 'n'
n <- nrow(datos)

# Extraer el 70% de la población
muestra <- sample(n, n * .70)

# Variable para el entrenamiento
train <- datos[muestra, ]

# Discrimina los datos negativos
test <- datos[-muestra, ]

# Normalización de datos
maxs <- apply(train, 2, max)