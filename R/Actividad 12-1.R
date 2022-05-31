# Diana Zepeda Martinez
# José Juan García Romero

x=seq(-5,5,length=100)
fdp=dnorm(x,mean=0,sd=1) #función de distribución de probabilidad
plot(x,fdp,type = "l")   #grafica la curva normal

#variacion de la media
plot(x,fdp,type = "l") #grafica la curva normal
lines(x,dnorm(x,mean=-2,sd=1),lwd=2, col="red")
lines(x,dnorm(x,mean=2,sd=1),lwd=2, col="blue")

#variacion de la desviacion
plot(x,fdp,type = "l") #grafica la curva normal
lines(x,dnorm(x,mean=0,sd=2),lwd=2, col="red")
lines(x,dnorm(x,mean=0,sd=3),lwd=2, col="blue")
lines(x,dnorm(x,mean=0,sd=4),lwd=2, col="green")
