# Diana Zepeda Martinez
# José Juan García Romero
#Actividad 17

library(EnvStats)

datos = c(510, 492, 494, 498, 492,
          496, 502, 491, 507, 496);

chi_alfa <- qchisq(p = 0.05,
                   df = 9,
                   lower.tail = FALSE)

varTest(x = datos,
        alternative = "greater",
        sigma.squared = 40,
        conf.level = 0.95)
