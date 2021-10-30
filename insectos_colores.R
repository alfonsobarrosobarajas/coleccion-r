# Ejemplo de captura de insectos y colores

"
0. Introducción
Los procedimientos t de dos muestras permiten comparar las medias de dos poblaciones o las respuestas medias a dos tratamientos de un experimento. Sin embargo, en ocasiones necesitamos comparar más de 2 grupos. El modelo del Análisis de la Varianza (ANOVA), nos permitirá abordar este tipo de situaciones. Lo vemos con un ejemplo:

Estamos interesados en conocer si hay colores más atractivos para los insectos. Para ello se diseñaron trampas con los siguientes colores: amarillo, azul, blanco y verde. Se cuantificó el número de insectos que quedaban atrapados:

Azul: 16 11 20 21 14 7

Verde: 37 32 15 25 39 41

Blanco: 21 12 14 17 13 17

Amarillo: 45 59 48 46 38 47

1. Organización de los datos
Generamos dos variables: insectos es la variable respuesta y colores es la variable factor (establece los grupos de interés):

insectos <- c(16,11,20,21,14,7,37,32,15,25,39,41,21,12,14,17,13,17,45,59,48,46,38,47)
colores <- as.factor(c(rep(c(\"azul\", \"verde\", \"blanco\", \"amarillo\"), each =6)))
Exploramos los datos de la muestra:

boxplot(insectos ~ colores, col = c(\"yellow\", \"blue\", \"white\",\"green\"), ylab = \"Número de insectos atrapados\")
"




insectos <- c(16,11,20,21,14,7,37,32,15,25,39,41,21,12,14,17,13,17,45,59,48,46,38,47)
colores <- as.factor(c(rep(c("azul", "verde", "blanco", "amarillo"), each =6)))
boxplot(insectos ~ colores, col = c("yellow", "blue", "white","green"), ylab = "Número de insectos atrapados")

tapply(insectos, colores, mean)


"
2. ANOVA y pruebas post-hoc
Esta es la forma de pedir un ANOVA en R:
"
fm = aov( lm(insectos ~ colores) )

# Pedimos un resumen de la tabla del ANOVA

summary(fm)
"
#>             Df Sum Sq Mean Sq F value   Pr(>F)    
#> colores      3   4218    1406   30.55 1.15e-07 ***
#> Residuals   20    921      46                     
#> ---
#> Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
Elementos generados en el ANOVA:
"
names(fm)


