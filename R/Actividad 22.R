# Diana Zepeda Martinez
# José Juan García Romero

library(markovchain)

# CLIMAS

# a)

clima <- matrix(c(0.5,0.3,0.2,
                  0.2,0.5,0.3,
                  0.15,0.45,0.4),
                nrow = 3,
                byrow = T)
clima
mc_Clima = new("markovchain", transitionMatrix = clima,
               states = c("Soleado","Nublado","Lluvioso"),
               name = "Cadena Markov")
mc_Clima

steadyStates(mc_Clima)
plot(mc_Clima)

clima_P0 = matrix(c(0,1,0),nrow = 1,byrow = T)

# b)

clima_P0 = clima_P0 %*% mc_Clima@transitionMatrix
clima_P0

# c)

clima_P0 = clima_P0 %*% mc_Clima@transitionMatrix
clima_P0


# ESTADOS

# a)

estado <- matrix(c(0.6,0.3,0.1,
                  0.4,0.4,0.2,
                  0.1,0.4,0.5),
                nrow = 3,
                byrow = T)
estado
mc_Estados = new("markovchain", transitionMatrix = estado,
               states = c("Critico","Serio","Estable"),
               name = "Cadena Markov")
mc_Estados

steadyStates(mc_Estados)
plot(mc_Estados)

# b)

dias <- 2
mc_Estados_2dias <- mc_Estados^dias
mc_Estados_2dias

mc_Estados_2dias@transitionMatrix

mc_Estados_2dias@transitionMatrix[1,3]

# c)

mc_Estados_2dias@transitionMatrix
mc_Estados_2dias@transitionMatrix[3,]

sum(mc_Estados_2dias@transitionMatrix[3,1],
    mc_Estados_2dias@transitionMatrix[3,2])




# COMPRAS

# a)

compra <- matrix(c(0.8,0.2,0.3,0.7),
                 nrow = 2, byrow = T)
mc_Compra = new("markovchain", transitionMatrix = compra,
                 states = c("Compra","No Compra"),
                 name = "Cadena Markov")
mc_Compra
steadyStates(mc_Compra)
plot(mc_Compra)

# b)

si_no = matrix(c(100,900), nrow = 1, byrow = T)
si_no = si_no %*% mc_Compra@transitionMatrix
si_no

# c)

si_no = matrix(c(100,900), nrow = 1, byrow = T)
mc_Compra_2meses = mc_Compra^2
mc_Compra_2meses
mc_Compra_2meses@transitionMatrix

si_no = si_no %*% mc_Compra_2meses@transitionMatrix
si_no




# FUMADORES

# a)

fuman <- matrix(c(0.93,0.05,0.02,0.10,0.80,0.10,0.05,0.10,0.85),
                 nrow = 3, byrow = T)
fuman
mc_Fuman = new("markovchain", transitionMatrix = fuman,
                states = c("No Fuman","Fuman Menos","Fuman Mas"),
                name = "Cadena Markov")
mc_Fuman
steadyStates(mc_Fuman)
plot(mc_Fuman)

# b)
si_no_f = matrix(c(5000,2500,2500),nrow = 1,byrow = T)
si_no_f = si_no_f %*% mc_Fuman@transitionMatrix
si_no_f
