datos=PlantGrowth 

#H0: Mu = 5
#H1: Mu ? 0

t.test(datos$weight,mu=5,conf.level=0.95,alternative="two.sided")

#Valor-p(0.5726)>0.05; No Rechazar H0
#Intervalo de confianza de la media (4.81, 5.33) 95%. NO RECHAZAR H0

#Calculo de potencias y tama�os de muestra

library(pwr)
pwr.t.test(n = NULL, d = 1, sig.level = 0.05, power = 1,
           type = c("one.sample"),alternative = c("two.sided"))

#Prueba para diferencia de dos medias

#Generacion de datos artificiales
y=seq(5,8,0.1)

#H0: Mu1 = Mu2; Mu1 - Mu2 = 0
#H1: Mu1 ? Mu2; Mu1 - Mu2 ? 0

t.test(x=datos$weight,y=y,mu=0,conf.level=0.95,alternative="two.sided")

#Valor-p(5.418e-09)<0.05 RECHAZAR H0


