# Diana Zepeda Martinez
# José Juan García Romero
#Actividad 16


mujeres = c(12,11,14,13,13,14,13,12,14,12)
hombres = c(13,10,11,12,13,12,10,12)

gl = length(mujeres) + length(hombres) - 2

t_alfa <- (qt(p = 0.05,
              df = gl,
              lower.tail = FALSE))
t_alfa = round(t_alfa,3)
t_alfa

t.test(x = mujeres, y = hombres,
       alternative = "greater",
       mu = 0,
       var.equal = T,
       config.level = 0.95)
 
area_t = function(x = 0, gl){
  t = seq(-4,4,0.01)
  fdp = dt(t,gl)
  plot(t, fdp, type = "l")
  polygon(c(t[t<=x],x), c(fdp[t<=x], fdp[t == -4]), col = "yellow")
  text(3,0.1,"Region de rechazo", cex = 0.5)
  text(0,0.3, "Region de aceptacion", cex = 0.5)
}
area_t(2.2453,16)

