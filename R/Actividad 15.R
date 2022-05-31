# Diana Zepeda Martinez
# José Juan García Romero
#Actividad 15

datos = c(88,82,81,87,80,78,79,89,83,88,79,85,81,77,78,85)

inter_conf = 0.95
t_alfa <- (qt(p = 0.05, df = 15, lower.tail = FALSE))
t_alfa = round(t_alfa, 2)
t_alfa
t.test(datos, mu = 87, alternative = "less")
