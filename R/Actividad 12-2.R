# Diana Zepeda Martinez
# José Juan García Romero

#Intervalos de confianza

intervalo_media_z = function(x, varianza=var(x), nivel_conf=0.95){
  z<-qnorm((1-nivel_conf)/2, lower.tail = FALSE)
  xbarra <- mean(x)
  eem <- sqrt(varianza/length(x))
  c(xbarra - z * eem, xbarra + z * eem)
}

intervalo_media_z(x)
intervalo_media_z(x,nivel_conf = 0.99)
intervalo_media_z(x,nivel_conf = 0.80)

intervalo_media= function(n, media, desv_est, niv_conf){
  error = desv_est/sqrt(n)
  z<-qnorm((1-niv_conf)/2, lower.tail = FALSE)
  c(media - z * error, media + z * error)
}
intervalo_media(40,25,10,0.90)
intervalo_media(40,25,10,0.95)
intervalo_media(40,25,10,0.99)
