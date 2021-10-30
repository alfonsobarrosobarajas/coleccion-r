# Generación de números aleatorios
# 3 parámetros de la función rweibul
# Tamaño de muestra
# Parámetros de forma y escala
p0<-2
p1<-1
x<-sort(rweibull( 1000, p0, p1))

# Generar histograma
hist(x)

# Generar función de densidad de probabilidad, los datos deben estar ordenados
d<-dweibull(x, p0, p1)

# Generar gráfica de PDF
plot(x, d, type='l')

# Generar la Función de distribución acumulada  CDF
ac<-pweibull(x, p0, p1)

plot(x, ac, type<-'l')

par(mfrow=c(2, 2))

# Teorema de límite central
uni<-rgamma(100000, 1.5, 2)
hist(uni)

# Muestra
sam<-sample(uni, 1000)
hist(sam)
 # Plan de muestreo
samples<-as.data.frame(replicate(1000, sample(uni, 100)))
prom<-colMeans(samples)

hist(prom)

