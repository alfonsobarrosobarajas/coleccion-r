# Ejemplo Clase PlantGrowth

# Carga librería pwr
library(pwr)

# Carga base de datos de R de prueba
datos <- PlantGrowth


# Declaración de hipótesis nula
# H0; Mu = 5
# H1: Mu != 0

# Prueba T Student, Prueba de significancia estadística
t.test(datos$weight, mu=5, conf.level=0.95, alternative="two.sided")

# Valor-p(0.5729) > 0.05; No se rechaza H0
# Intervalo de confianza de la media(4.811171 5.334829), 95% de confianza
# Cálculo de potencias y tamaños de muestra
pwr.t.test(n=30, d=1, sig.level=0.05, power=NULL,
           type=c("one.sample"),
           alternative=c("two.sided"))
datos
anova=aov(weight ~ group, data=datos)
summary(anova)
