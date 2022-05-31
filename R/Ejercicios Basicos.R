#José Juan García Romero
#Métodos Númericos
#Operaciones Básicas De R

5+9
suma = 25+36
suma

0:9
9:0
1:6.6
1.5:6.9
2.3:6

vector = 0:6
vector
length(vector)
vector[4]

(1:20)*2
(0:2)+(1:3)

NOMBRES <- c("José","Marta","Pedro","Juan","Lizet","Carlos")
SEXO <- c("H","M","H","H","M","H")
SEXO == "H"
NOMBRES[SEXO == "M"]

matrix(data = 0:9, nrow = 5, ncol = 6)

DATOS <- c(
  +80, 1.68, 36,
  +30, 1.91, 40,
  +70, 1.74, 28,
  +89, 1.64, 25,
  +65, 1.78, 19)
matrix(DATOS,5,3, by = "T", dim = list(c(),c("PESO","ESTATURA","EDAD")))

MIS.DATOS <- matrix(DATOS, 5, 3, by = "T", dim = list(c("María","Pepe","Ana","Pedro","Juan"),
                                                      c("PESO","ESTATURA","EDAD")))
MIS.DATOS

MIS.DATOS[,2]
MIS.DATOS[5,]
MIS.DATOS[2,2]
MIS.DATOS["Pepe","ESTATURA"]

MatrizA = matrix(1:6,2,3)
MatrizB = matrix(2:7,2,3)
MatrizA + MatrizB

seq(1,10,2)
seq(from = 1, to = 10, by = 2)
seq(10, -6, -2)
seq(from = 1, to = 11, length = 6)
seq(from = 1, to = 12, length = 6)

x = c(0:10,50)
x

c(1,3,5,2)
c(T,F,T,T,F)

x <- c(1,3,5)
y <- c(2,4,6)
c(x,y)

scan()
lectura = scan()
lectura
