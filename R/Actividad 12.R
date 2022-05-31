# EQUIPO 4:
#     Diana Zepeda Martinez
#     José Juan García Romero

#MUESTRA ALEATORIA SIMPLE CON Y SIN REEMPLAZO

library(dplyr)

data = UsingR::nym.2002
View(data)

Z = 1.96

tam_muestra = (1000*(Z^2)*(0.5)*(0.5))/(((1000-1)*(0.03^2))+((Z^2)*(0.5)*(0.5)))
tam_muestra = round(tam_muestra,0)
dim(data)
nren = dim(data)[1]
set.seed(6)
seleccion = sample(nren, tam_muestra, replace = F);seleccion
selec_ord = sort(seleccion);selec_ord
muestra = data[selec_ord,];View(muestra)

# EQUIPO 4:
#     Diana Zepeda Martinez
#     José Juan García Romero

#MUESTRA ESTRATIFICADA
library(survey)

library(sampling)

#creando una base de datos

region = c(rep (1,100), rep (2,200), rep(3, 100))

ingreso = c(rnorm(100, 1000, 100), rnorm (200, 5000, 800),
            rnorm(100, 2500,300))
db = cbind.data.frame (region, ingreso)
db

names(db) = c("Region", "Ingreso")

#selección de la muestra

estrato = strata(db, c("Region"), size = c(5,20,10),
               
               method="srswor")

DatosMuestra = getdata(db, estrato)
DatosMuestra
