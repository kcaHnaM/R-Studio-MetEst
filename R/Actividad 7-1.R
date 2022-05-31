#Diana Zepeda Martínez
#Jose Juan García Romero


# 0 1 5 3 1 5 5 0
# 5 3 3 4 3 4 4 5
# 5 1 1 3 3 3 5 5
# 1 2 0 4 4 3 5 4
# 2 3 5 4 2 5 6 3
# 0 4 4 5 5 5 2 5
# 5 4 3 3 2 2 4 3
# 1 5 1 5 4 4 2 5
# 5 1 3 4 1 2 3 2
# 3 0 5 6 3 2 5 2

Tel <- scan()
Tel
mean(Tel) #media
median(Tel) #mediana
table(Tel) #tabla de frecuencias
names(which(table(Tel)==max(table(Tel)))) #moda
