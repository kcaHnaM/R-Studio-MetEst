# Diana Zepeda Martinez
# Jos� Juan Garc�a Romero

#Pr�ctica 25  DCA

library(readxl)

base_de_datos <- read_excel("C:/Users/josej/Downloads/Diseno_de_experimentos_marca_vibracion.xlsx")
Diseno_de_experimentos_marca_vibracion <- base_de_datos

View(Diseno_de_experimentos_marca_vibracion)

datos <- Diseno_de_experimentos_marca_vibracion
attach(datos)
f_marca <- factor(MARCA)

# a)  Planteamiento del problema:
#       Factor de inter�s (variable independiente): Marcas
#       Niveles del factor (n�mero de marcas): 5
#       Variable respuesta (variable dependiente): vibraci�n (menor)
#       Observaciones por marcas (repeticiones): 6
#       Unidades experimentales (TxR)L: 30

#b)
#H0: Las cinco marcas tienen un promedio igual de vibraciones
#H1: Al menos una de las marcas tiene n�mero de vibraciones diferente


#c)

library(agricolae)
anova <- aov(VIBRACION~f_marca, data = datos)
anova
summary(anova)

#d)

shapiro.test(residuals(anova))

#e)

bartlett.test(VIBRACION~f_marca, data = datos)

#f)

Grupos <-LSD.test(y = anova,
                  trt = 'f_marca',
                  group = F,
                  console = T)
