#Diana Zepeda Martínez
#Jose Juan García Romero

# 58 67 51 57 40 75 44 56 42 46
# 55 50 68 67 49 51 62 57 65 65
# 75 43 53 65 59 45 57 54 62 61
# 47 41 58 51 56 56 61 52 75 65
# 69 49 69 55 78 54 54 41 67 77
# 78 51 59 66 40 43 70 72 78 49
# 71 41 52 57 76 59 56 56 76 60
# 42 50 55 61 54 46 57 54 80 57
# 40 69 70 57 54 47 51 41 40 78
# 52 44 44 74 43 63 69 41 50 50

edades <- scan()

TEdadesInter5 = as.data.frame(table(edad=factor(cut(edades,breaks = 5))))

TEdadesInter5

TEdadesInter5Freq = transform(TEdadesInter5, FreAc=cumsum(Freq),
                              Rel=round(prop.table(Freq),2),
                              RealAc=round(cumsum(prop.table(Freq)),2))

TEdadesInter5Freq

media=mean(edades)
mediana=median(edades)
Int.modal = TEdadesInter5Freq$edad[which
                                   (TEdadesInter5Freq$Freq==max(TEdadesInter5Freq$Freq))]
                                    moda=max(TEdadesInter5$Freq)

media
moda
mediana
Int.modal
