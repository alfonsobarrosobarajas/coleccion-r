
tecnica <- c("1","2","3","4", "1","2","3","4", "1","2","3","4", "1","2","3","4")
resistencia <- c(3129,3200,2800,2600,3000,3300,2900,2700,2865,2975,2985,2600,2890,3150,3050,2765)

datos <- data.frame (resistencia, tecnica)
datos
anova <- aov(resistencia ~ tecnica, data=datos)

summary(anova)
boxplot(resistencia ~ tecnica)

TukeyHSD(anova, conf.level=0.95)