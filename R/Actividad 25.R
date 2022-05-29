# Diana Zepeda Martinez
# José Juan García Romero

# Practica 25 - LDA

library(MASS)
data("anorexia")

library(ggplot2)
library(ggpubr)

#a) Verificar traslape individual con gráfico

p1 <- ggplot(data = anorexia, aes(x = Prewt, fill = Treat)) +
  geom_histogram(position = "identity", alpha = 0.5)
p2 <- ggplot(data = anorexia, aes(x = Postwt, fill = Treat)) +
  geom_histogram(position = "identity", alpha = 0.5)

ggarrange(p1, p2, nrow = 2, common.legend = TRUE)

#b) Gráfico de correlación

pairs(x = anorexia[, c("Prewt","Postwt")],
      col = c("firebrick", "green3", "blue")[anorexia$Treat],
      pch = 19)

#c) Generar el modelo LDA

library(MASS)
modelo_lda <- lda(Treat~., anorexia)

modelo_lda

#d) Gráfica de partición para identicar límites de clasificación

library(klaR)

partimat(Treat ~., data = anorexia, method = "lda")

#e) Predicción de Prewt = 70, Postwt = 90

nuevas_observaciones <- data.frame(Prewt = 70, Postwt = 90)
prediccion <- predict(object = modelo_lda,
                      newdata = nuevas_observaciones,
                      interval = "confidence",
                      level = 0.95)

prediccion$class

# Probabilidad de pertenencia a cada clase:

prediccion$posterior


#f) Predición de Prewt = 80, Postwt = 100

nuevas_observaciones <- data.frame(Prewt = 80, Postwt = 100)

prediccion <- predict(object = modelo_lda,
                      newdata = nuevas_observaciones,
                      interval = "confidence")

prediccion$class

# Probabilidad de pertenencia a cada clase:

prediccion$posterior
