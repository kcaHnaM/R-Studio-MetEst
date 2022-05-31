#   37 41 10 44 22 38 39 27 24 29 18 12 45 20 17 
#   42 23 47 33 31 30 22 45 42 35 38 16 34 26 43 
#   38 23 37 12 42 14 23 45 37 30 48 13 31 17 31 
#   10 14 23 27 19 10 31 30 46 13 26 38 23 17 10 
#   32 32 49 31 17 21 29 21 24 12 33 41 44 43 35 
#   19 14 16 26 35 49 26 17 26 19 11 33 50 28 41

# Diana Zepeda Martinez
# José Juan García Romero

datos = scan()
datos
TdatosFAbs = as.data.frame(table(datos))
TdatosFAbs
transform(TdatosFAbs,
          FrecAc = cumsum(Freq),
          Rel = round(prop.table(Freq),2),
          RelAc = round(cumsum(prop.table(Freq)),2))

TDatosIntervalos = as.data.frame(table(tabla = factor(cut(datos,
                                                          breaks = 4))))
TDatosIntervalos
transform(TDatosIntervalos,
          FrecAc = cumsum(Freq),
          Rel = round(prop.table(Freq),2),
          RelAc = round(cumsum(prop.table(Freq)),2))
