# Diana Zepeda Martinez
# José Juan García Romero

library(boot)
library(dplyr)

# INCISO A

brillo = UsingR::brightness
mediaP = mean(brillo)

muestra1 = sample(brillo,replace = T,size = 50)
media1 = mean(muestra1)

muestra2 = sample(brillo,replace = T,size = 300)
media2 = mean(muestra2)

muestra3 = sample(brillo,replace = T,size = 600)
media3 = mean(muestra3)

medias = rbind(mediaP,media1,media2,media3)
medias

# Diana Zepeda Martinez
# José Juan García Romero
# INCISO B

medias = NULL
for(i in 1:200){
  muestra = sample(brillo, replace = T)
  medias[i] = mean(muestra)
}

mediaP
muestra200 = mean(medias)
muestra200

# Diana Zepeda Martinez
# José Juan García Romero
# INCISO C
library(boot)

func_media <- function(m,d){ # v:datos d:indice
  (mean(m[d]))
}

boot_media <- boot(brillo, func_media, R = 100000)
media_boot <- mean(boot_media$t)
media_pob <- boot_media$t0
tabla = rbind(media_pob,media_boot)
tabla

# INCISO C2

IC <- boot.ci(boot_media,conf = 0.99,type = "norm")
IC

# INCISO C3

hist(boot_media$t,freq = F,ylim = c(0,12))
abline(v = boot_media$t0,col = "purple",lwd = 3)
abline(v = IC$normal[2],col = "green",lwd = 2,lty = 5)
abline(v = IC$normal[3],col = "blue",lwd = 2,lty = 5)
lines(density(boot_media$t),col = "red",lwd = 2)

# Diana Zepeda Martinez
# José Juan García Romero
# INCISO D
library(bootstrap)

funcion <- function(x){mean(x)}

replicas_bootstrap <- bootstrap(brillo,100000,funcion)
mediaP
media_bootstap <- mean(replicas_bootstrap$thetastar)
media_bootstap

# Diana Zepeda Martinez
# José Juan García Romero
# INCISO E

tabla_general = rbind(mediaP,media1,media2,media3,muestra200,media_boot,media_bootstap)
rownames(tabla_general) = c("poblacion","muestra1","muestra2","muestra3","muestra200",
                            "media_boot","media_bootstap")
colnames(tabla_general) = c("medias")
tabla_general
