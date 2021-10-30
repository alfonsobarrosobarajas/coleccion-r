"
UNIVERSIDAD AUTÓNOMA DE CIUDAD JUAREZ
Instituto de Tecnología e Ingeniería
Métodos Estadísticos
Examen Parcial 1
@author Alfonso José Barroso Barajas
"

values <- c(24, 37, 42, 28, 44, 47, 37, 31, 52, 30, 35, 38)
treatment <- c("100", "110", "120", "100", "110", "120", "100", "110", "120", "100", "110", "120")

data <- data.frame(values, treatment)
anova <- aov(values~treatment, data=data)

summary(anova)

boxplot(values~treatment, data=data)
TukeyHSD(anova, conf.level = 0.95)
