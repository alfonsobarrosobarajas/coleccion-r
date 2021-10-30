# Eiercicio 01
# @author Alfonso Jose Barroso Barajas

library(pwr)
datos <- c(97.8,97.2,97.4,97.6,97.8,97.9,98.0,98.0,98.0,98.1,98.2,98.3,98.3,98.4,98.4,98.4, 98.5,98.6,98.6,98.7,98.8,98.8,98.9,98.9,99.0)
# a) Prueba de Hipótesis
t.test(datos, mu = 98.6, conf.level = 0.95, alternative = "two.sided")
# b) Cálculo de potencia
pwr.t.test(n=25, d=1, sig.level=0.05, power=NULL, type=c("one.sample"), alternative=c("two.sided"))
# c) Cálculo de muestra
pwr.t.test(n=NULL, d=0.9, sig.level=0.02, power=0.98, type=c("one.sample"), alternative=c("two.sided"))
# d) Intervalo de confianza bilateral
t.test(datos, mu = 98.6, conf.level = 0.95, alternative = "two.sided")