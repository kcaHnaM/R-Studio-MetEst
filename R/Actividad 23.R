# Practica 23
# Diana Zepeda Martinez
# Jos� Juan Garc�a Romero

library(markovchain)

# 1. Clima

clima <- matrix(c(0.5,0.3,0.2,0.2,0.5,0.3,0.15,0.45,0.4), nrow = 3, byrow = T)
clima

mc_Clima = new("markovchain",transitionMatrix = clima,
               states = c("Soleado","Nublado","Lluvioso"),
               name = "Cadena Markov")
# a)

library(diagram)
library(shape)

plotmat(mc_Clima@transitionMatrix, pos = c(1,2),
        lwd = 1, box.lwd = 1,
        cex.txt = 0.5, box.size = 0.1, box.type = "circle",
        box.prop = 0.5, box.col = "light yellow",
        box.cex = 0.6,
        arr.length = 0.1, arr.width = 0.1,
        self.cex = 0.4, self.shifty = -0.01,
        self.shiftx = 0.13,
        main = "Diagrama de transición")

# b)

predict(mc_Clima,newdata = c("Lluvioso"),n.ahead = 3)

#c)

round(steadyStates(mc_Clima),2)

# d)

n <- 15
mc_Clima^n


# e)

probf_clima <- steadyStates(mc_Clima)
probf_clima

30*probf_clima

round(30*probf_clima)


# 2- Estado De Un Paciente

estado <- matrix(c(0.6,0.3,0.1,0.4,0.4,0.2,0.1,0.4,0.5), nrow = 3, byrow = T)
estado

mc_estado = new("markovchain",transitionMatrix = estado,
               states = c("Critico","Serio","Estable"),
               name = "Cadena Markov")

# a)

plotmat(mc_estado@transitionMatrix, pos = c(1,2),
        lwd = 1, box.lwd = 1,
        cex.txt = 0.5, box.size = 0.1, box.type = "circle",
        box.prop = 0.5, box.col = "light yellow",
        box.cex = 0.6,
        arr.length = 0.1, arr.width = 0.1,
        self.cex = 0.4, self.shifty = -0.01,
        self.shiftx = 0.13,
        main = "Diagrama de transiciónn")

# b)

predict(mc_estado,newdata = c("Serio"),n.ahead = 4)

# c)

round(steadyStates(mc_estado),2)

# d)

n <- 10
mc_estado^n

# e)

probf_Estado <-steadyStates(mc_estado)
probf_Estado

15*probf_Estado
round(15*probf_Estado)

# 3- Compran O No Compran Un Producto

compra <- matrix(c(0.8,0.2,0.3,0.7), nrow = 2, byrow = T)
compra

mc_Compra = new("markovchain",transitionMatrix=compra,
                states=c("Compran","No compran"),
                name="Cadena Markov")

# a)

plotmat(mc_Compra@transitionMatrix, pos = c(1,1),
        lwd = 1, box.lwd = 1,
        cex.txt = 0.5, box.size = 0.1, box.type = "circle",
        box.prop = 0.5, box.col = "light yellow",
        box.cex = 0.6,
        arr.length = 0.1, arr.width = 0.1,
        self.cex = 0.4, self.shifty = -0.01,
        self.shiftx = 0.13,
        main = "Diagrama de transición")

# b)

predict(mc_Compra,
        newdata = c("No compran"),
        n.ahead = 3)

# c)

round(steadyStates(mc_Compra), 2)

# d)

n <- 24
mc_Compra^n

# e)

probf_Compra <- steadyStates(mc_Compra)
probf_Compra

50*probf_Compra

# Fuman No Fuman

fuman <- matrix(c(0.93,0.05,0.02,0.10,0.80,0.10,0.05,0.10,0.85),
                nrow = 3, byrow = T)
fuman

mc_Fuman = new("markovchain",transitionMatrix=fuman,
               states=c("No Fuman","Fuman menos","Fuman más"),
               name="Cadena Markov")

# a)

plotmat(mc_Fuman@transitionMatrix, pos = c(1,2),
        lwd = 1, box.lwd = 1,
        cex.txt = 0.5, box.size = 0.1, box.type = "circle",
        box.prop = 0.5, box.col = "light yellow",
        box.cex = 0.6,
        arr.length = 0.1, arr.width = 0.1,
        self.cex = 0.4, self.shifty = -0.01,
        self.shiftx = 0.13,
        main = "Diagrama de transición")

# b)

predict(mc_Fuman,
        newdata = c("Fuman menos"),
        n.ahead = 2)

# c)

steadyStates(mc_Fuman)

# d)

n<-124
mc_Fuman^n

# e)

probf_Fuman <- steadyStates(mc_Fuman)
probf_Fuman

25*probf_Fuman
fuman <- round(25*probf_Fuman)
fuman
sum(fuman[,2:3])
