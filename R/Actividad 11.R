#Diana Zepeda Martinez
#José Juan García Romero


datos = c(3,3.9,3.5,2.7,3.1,3,2.6,3.7,3.1,3.5,3.9,
          3.7,3,3.7,3,3,2.7,3.4,2.6,3.6,4,2.7,3.5,
          3,3.6,3.7,3.1,3,4.3,2.8)

library(modeest)

#ASIMETRIA-PEARSON
KP = (mean(datos)-mfv(datos))/sd(datos)
KP

#ASIMETRIA-FISHER
AF = sum((datos-mean(datos))^3)/(length(datos)*sd(datos)^3)
AF

#Otra forma de calcular asimetria
library(moments)
skewness(datos)

#curtosis con Fisher
CF = sum((datos-mean(datos))^4)/(length(datos)*sd(datos)^4)
CF

#lebreria moments
kurtosis(datos)     #gráfico achatada
hist(datos)
