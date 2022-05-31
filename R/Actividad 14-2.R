# Diana Zepeda Martinez
# José Juan García Romero
#Actividad 14

library(TeachingDemos)
inter_conf = 0.95
z_alfa <- qnorm((1-inter_conf),lower.tail = TRUE)
z_alfa = round(z_alfa,2)
z_alfa
z.test(x=84, mu=87,
       stdev=3.5, alternative="less",
       n=40, conf.level = inter_conf)
