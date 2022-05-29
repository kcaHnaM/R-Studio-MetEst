#Diana Zepeda Martinez
#Jose Juan Garcia Romero

gastos_prom = c(25, 21, 15, 22, 15, 16, 28, 30, 23, 15)
ventas = c(126, 110, 87, 97, 80, 84, 129, 126, 115, 91)

library(psych)
canal_venta = cbind.data.frame(gastos_prom, ventas)
View(canal_venta)
pairs(canal_venta)
pairs.panels(canal_venta,
             method = "spearman",
             density = F,
             ellipses = F,
             smooth = F)
pairs.panels(canal_venta,
             method = "pearson",
             density = F,
             ellipses = F,
             smooth = F)

#Diana Zepeda Martinez
#Jose Juan Garcia Romero

#metodo de pearson
t_alfa<-(qt(p = 0.05/2, df=8, lower.tail = F,))
t_alfa=round(t_alfa,4)
t_alfa
cor.test(gastos_prom, ventas,method = "pearson")


#metodo de spearman
cor.test(gastos_prom, ventas,method = "spearman")
