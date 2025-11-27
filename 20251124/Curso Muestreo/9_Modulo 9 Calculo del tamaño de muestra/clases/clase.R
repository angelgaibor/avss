#practica

rm(list = ls())
library(TeachingSampling)
library(survey)
library(dplyr)
library(samplesize4surveys)
data("BigCity")

Hogares <- BigCity %>%
  group_by(HHID) %>%
  summarise(Estrato = unique(Zone),
            Personas = n(),
            Ingreso = sum(Income), 
            Gasto = sum(Expenditure), 
            Pobreza = unique(Poverty))

attach(Hogares)

N <- nrow(Hogares)
mu <- mean(Ingreso)
sigma <- sd(Ingreso)
rme <- 0.05 #margen relativo


ss4m(N = N, mu = mu, sigma = sigma, error = "rme", delta = rme)


me <- 10 # error relativo menor a 10 dólares
rme <- me/mu


ss4m(N = N, mu = mu, sigma = sigma, error = "me", delta = 10)
ss4m(N = N, mu = mu, sigma = sigma, error = "rme", delta = rme)


ss4m(N = N, mu = mu, sigma = sigma, error = "me", delta = 10, plot = TRUE)

#proporcion de la condicion de pobreza extrema 
prop.table(table(Pobreza))


N <- nrow(Hogares)

P <- prop.table(table(Pobreza))[2]

#☻error relativo del 2%
me <- 0.05
ss4p(N = N, P = P, error = "me", delta = me)                                

# #☻error relativo del 5%
# me <- 0.05
# ss4p(N = N, P = P, error = "me", delta = me)  


rme <- 0.05
me <- rme * P


ss4p(N = N, P = P, error = "me", delta = me)


ss4p(N = N, P = P, error = "me", delta = me, plot = TRUE)



#proporcion de la condicion de no pobres
prop.table(table(Pobreza))


N <- nrow(Hogares)

P <- prop.table(table(Pobreza))[1]

#☻error relativo del 2%
me <- 0.02
ss4p(N = N, P = P, error = "me", delta = me)                                

# #☻error relativo del 5%
# me <- 0.05
# ss4p(N = N, P = P, error = "me", delta = me)  


rme <- 0.02
me <- rme * P


ss4p(N = N, P = P, error = "me", delta = me)


ss4p(N = N, P = P, error = "me", delta = me, plot = TRUE)



#proporcion de la condicion de pobreza relativa
prop.table(table(Pobreza))


N <- nrow(Hogares)

P <- prop.table(table(Pobreza))[3]

#☻error relativo del 2%
me <- 0.02
ss4p(N = N, P = P, error = "me", delta = me)                                

# #☻error relativo del 5%
# me <- 0.05
# ss4p(N = N, P = P, error = "me", delta = me)  


rme <- 0.02
me <- rme * P


ss4p(N = N, P = P, error = "me", delta = me)


ss4p(N = N, P = P, error = "me", delta = me, plot = TRUE)





rm(list = ls())
library(TeachingSampling)
library(survey)
library(dplyr)
library(samplesize4surveys)
data("BigCity")

Hogares <- BigCity %>%
  group_by(HHID) %>%
  summarise(Estrato = unique(Zone),
            Personas = n(),
            Ingreso = sum(Income), 
            Gasto = sum(Expenditure), 
            Pobreza = unique(Poverty))


attach(Hogares) 
N <- nrow(Hogares)
mu <- mean(Ingreso) 
sigma <- sd(Ingreso) 
deff <- 2.5 
rme <- 0.05

ss4m(N = N, mu = mu, sigma = sigma, DEFF = deff, delta = rme, error = "rme")


me <- 10 
rme <- me/mu
rme


ss4m(N = N, mu = mu, sigma = sigma, DEFF = deff, delta = rme, error = "rme")
ss4m(N = N, mu = mu, sigma = sigma, DEFF = deff, delta = me, error = "me")


ss4m(N = N, mu = mu, sigma = sigma, DEFF = deff, delta = me, error = "me", plot = TRUE)


prop.table(table(Pobreza))
N <- nrow(Hogares)
P <- prop.table(table(Pobreza))[2]
deff <- 2.5
me <- 0.02

ss4p(N = N, P = P, DEFF = deff, delta = me, error = "me")

rme <- 0.02 
me <- rme * P
me 

ss4p(N = N, P = P, DEFF = deff, delta = me, error = "me")


ss4p(N = N, P = P, DEFF = deff, delta = rme, error = "rme", plot = TRUE)
     