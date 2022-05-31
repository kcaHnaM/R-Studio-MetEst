#Diana Zepeda Martinez
#José Juan García Romero

# 54 65 65 66 78 78 78 79 80 81 83 84 85 88 93

datos = scan()

#Cuartiles
quantile(datos,.25)
quantile(datos,.50)
quantile(datos,.75)

quantile(datos,c(.25,.50,.75))

#Deciles
quantile(datos, .02)
quantile(datos, .05)
quantile(datos, .08)

quantile(datos,c(.02,.25,.08))

#Pecentiles
quantile(datos, .05)
quantile(datos, .50)
quantile(datos, .90)

quantile(datos,c(.05,.50,.90))
