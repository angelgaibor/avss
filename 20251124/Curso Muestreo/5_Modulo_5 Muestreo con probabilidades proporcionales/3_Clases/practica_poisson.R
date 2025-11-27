rm(list = ls())

library(TeachingSampling) 
library(dplyr) 
data("BigCity")

#creamos la base de datos de los hogares
Hogares <- BigCity %>% group_by(HHID) %>% 
  summarise(Ingreso = sum(Income),
            Gasto = sum(Expenditure), 
            EdadMedia = mean(Age),
            Personas = n())
head(Hogares)
#fijamos la base
attach(Hogares) 
N <- dim(Hogares)[1]
n <- 2000
pik <- n * Personas / sum(Personas)
which(pik > 1)

#vemos valores maximo y minimo
max(pik)
min(pik)
# 
sum(pik) #total de la muestra preguntar porque 
#matriz de correlaciones
matriz <- cbind(pik, Ingreso, Gasto, Personas)
cor(matriz)
#grafico personas - ingreso
plot(Personas ~ Ingreso)
abline(lm(Personas ~ Ingreso), col=2)
#grafico personas - gasto
plot(Personas ~ Gasto)
abline(lm(Personas ~ Gasto), col=2)
#grafico ingreso - gasto
plot(Ingreso ~ Gasto)
abline(lm(Ingreso ~ Gasto), col=2)

# creamos nuestra muestra con el diseño de poisson
set.seed(1)
sam <- S.PO(N, pik) 
muestra <- Hogares[sam,] 
n.s <- dim(muestra)[1] 
n.s 
head(muestra)
#obtenemos los estimadores bajo el diseño poisson
pik.s <- pik[sam] 
estima <- data.frame(Ingreso, Gasto, Personas) 
estimadores <- E.PO(estima, pik.s)
write.table(estimadores, "clipboard", dec = ",", sep="\t")



# clase ppt

attach(Hogares) 
N <- nrow(Hogares)
m <- 2000

(N^2 / m) * cov(Personas, (Ingreso^2 / Personas))
(N^2 / m) * cov(Personas, (Gasto^2 / Personas))



#correlacion debe ser positiva para q tenga mas eficiencia 
cor(Personas, (Ingreso^2 / Personas))
cor(Personas, (Gasto^2/Personas))                


# grafico
#gastos perosnas
plot(Gasto/Personas) 
abline(h = mean(Gasto/Personas), col = 2)

#ingreso perosnas

plot(Ingreso/Personas) 
abline(h = mean(Ingreso/Personas), col = 2)


plot(Gasto ~ Personas) 
abline(lm(Gasto ~ Personas), col=2)

plot(Ingreso ~ Personas)
abline(lm(Ingreso ~ Personas), col=2)


M.I <- lm(Gasto ~ Personas) 
summary(M.I)



M.E <- lm(Ingreso ~ Personas)
summary(M.E)
#estimaciones
#obtenemos las probabilidades 
pk <- Personas / sum(Personas) 
# determinamos la muestra
sam <- S.PPS(m, Personas) 
muestra <- Hogares[sam,] 
attach(muestra)
#visualizamos primeros valores 
head(muestra)

pk.s <- pk[sam] 
estima <- data.frame(Ingreso, Gasto, Personas)
estimadores <- E.PPS(estima, pk.s)
write.table(estimadores, "clipboard", dec = ",", sep="\t")



#ejercicio 3 pipt
rm(list = ls())
attach(Hogares)
N <- dim(Hogares)[1]
N
n <- 2000

res <- S.piPS(n, Personas)
sam <- res[,1]
muestra <- Hogares[sam,] 
attach(muestra)


pik.s <- res[, 2] 
estima <- data.frame(Ingreso, Gasto, Personas) 
estimadores <- E.piPS(estima, pik.s)
write.table(estimadores, "clipboard", dec = ",", sep="\t")


