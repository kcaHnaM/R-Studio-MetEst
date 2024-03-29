# Diana Zepeda Martinez
# Jos� Juan Garc�a Romero

# Practica 25 - LDA

library(MASS)
data("anorexia")

library(ggplot2)
library(ggpubr)

#a) Verificar traslape individual con gr�fico

p1 <- ggplot(data = anorexia, aes(x = Prewt, fill = Treat)) +
  geom_histogram(position = "identity", alpha = 0.5)
p2 <- ggplot(data = anorexia, aes(x = Postwt, fill = Treat)) +
  geom_histogram(position = "identity", alpha = 0.5)

ggarrange(p1, p2, nrow = 2, common.legend = TRUE)

#b) Gr�fico de correlaci�n

pairs(x = anorexia[, c("Prewt","Postwt")],
      col = c("firebrick", "green3", "blue")[anorexia$Treat],
      pch = 19)

#c) Generar el modelo LDA

library(MASS)
modelo_lda <- lda(Treat~., anorexia)

modelo_lda

#d) Gr�fica de partici�n para identicar l�mites de clasificaci�n

library(klaR)

partimat(Treat ~., data = anorexia, method = "lda")

#e) Predicci�n de Prewt = 70, Postwt = 90

nuevas_observaciones <- data.frame(Prewt = 70, Postwt = 90)
prediccion <- predict(object = modelo_lda,
                      newdata = nuevas_observaciones,
                      interval = "confidence",
                      level = 0.95)

prediccion$class

# Probabilidad de pertenencia a cada clase:

prediccion$posterior


#f) Predici�n de Prewt = 80, Postwt = 100

nuevas_observaciones <- data.frame(Prewt = 80, Postwt = 100)

prediccion <- predict(object = modelo_lda,
                      newdata = nuevas_observaciones,
                      interval = "confidence")

prediccion$class

# Probabilidad de pertenencia a cada clase:

prediccion$posterior
