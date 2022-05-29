# Diana Zepeda Martinez
# José Juan García Romero

#Regresion Lineal
library(graphics)
library(psych)

horas_estudio = c(3,6,8,2,1,6) #Variable Independientes
nota = c(8,10,15,8,5,12) #Variable Dependiente

#**************
# A) En Excel obtener:
# 1. La gráfica y el modelo de regresión lineal del problema

#**************
# B) En RStudio obtener:
# 1. DIAGRAMA DE DISPERSIÓN Y CORRELACIÓN BIVARIADA
cor.test(x=horas_estudio, y=nota, method = "pearson")
estudio_notas = cbind.data.frame(horas_estudio, nota)
pairs.panels(estudio_notas,
             method = "pearson",
             density = F,
             ellipses = F,
             smooth = F)

# 2-4. TABLA DE ANOVA, r2, TABLA DE COEFICIENTES
modelo1 = lm(formula = nota ~ horas_estudio)
summary(modelo1)

# 5. CONSTRUIR LA ECUACIÖN
modelo1$coefficients

#(Intercept) horas_estudio
#4.36071    1.223214
# nota = 4.366071 + 1.223214(horas_estudio)

# 6. Graficar el modelo obtenido 
plot(formula = nota ~ horas_estudio)
abline(modelo1, col = "red")

# 7. Calcular las notas si las horas de estudio fueron (5, 10 y 12)
# para ejemplificar se hará con otras horas 15
nota_5 = 4.366071 + 1.223214*(5)
nota_5 = round(nota_5)
nota_5

nota_10 = 4.366071 + 1.223214*(10)
nota_10 = round(nota_10)
nota_10

nota_12 = 4.366071 + 1.223214*(12)
nota_12 = round(nota_12)
nota_12
