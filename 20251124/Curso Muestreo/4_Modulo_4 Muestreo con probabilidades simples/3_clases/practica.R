
rm(list = ls())
library(TeachingSampling)
library(dplyr)

#abrir la base de datos 
data("BigCity")
n_distinct(PSU)
#fijar la base Bigcity 
attach(BigCity)
rownames(BigCity) <- NULL # preguntar porque no se anula el nombre de las filas
head(BigCity[,c(2:9)] ) #mostar variables desde la  2-9
?BigCity #para verificar los nombres de las variables de la base y su composicion


#seleccion de una muestra
N <- dim(BigCity)[1] #tomando a la base de datos como un marco de muestreo
N
set.seed(1)#seleccionar numero aleatotios y sean los mismos
n <- 2000
muestra <- sample_n(BigCity, n, F)
sum(muestra$Income)


#realizar estimaciones
#ingreso total
t_ingreso <- (N/n)* sum(muestra$Income)
t_ingreso

#gasto total
t_gasto <- (N/n)* sum(muestra$Expenditure)
t_gasto

#total poblacional
muestra <- mutate(muestra, unos = 1 )
total <- (N/n)* sum(muestra$unos)
total 

#media del ingreso
m_i <- mean(muestra$Income)
m_i
#varianza muestral
var_i <- (1/(n-1))*sum((muestra$Income - m_i)^2)
var_i

#estimador de la varianza del ingreso total 
var_ti <- (N^2/n)*(1-n/N)*var_i
var_ti
#estimador del error standar  del ingreso total 
sd_ti <- sqrt(var_ti)
sd_ti
#coeficiente de variacion del ingreso total
c_var <- (sd_ti/t_ingreso)*100
c_var


#de otra manera
estima <- data.frame(muestra$Income, muestra$Expenditure)
head(estima)
E.SI(N, n, estima)


#para obtener los dominios 
Dominios <- Domains(muestra$Sex) # de la muestra 
head(Dominios)

#mujeres
mujeres <- Dominios[, 1] * estima 
head(mujeres)
#hombres
hombres <- Dominios[, 2] * estima 
head(hombres)
# total de mujeres y hombres en la poblacion
E.SI(N, n, Dominios)
# total de  ingreso y gasto para los hombres
E.SI(N, n, hombres)
# total de  ingreso y gasto para los mujeres
E.SI(N, n, mujeres)
#total de ingreso y gasto en la poblacion
E.SI(N, n, estima)


#MUESTREO BERNOULLI
pik <- 0.025 # probabilidad de incluision es de 0.025 supuesto para calcular el tamaño de muestra
sam <- S.BE(N, pik)
sam
dim(sam)
#  obtener una muestra por medio del muestreo Bernoulli
muestra_b <- BigCity[sam,]
muestra_b #(3741)
n_b <- dim(muestra_b)[1]
n_b
estima_b <- data.frame(muestra_b$Income, muestra_b$Expenditure)
head(estima_b)
E.BE(estima_b, pik)


# MUESTREO SISTEMATICO 
a <- 40 #numero de grupos   dividimos en 40 grupos 
floor(N/a) 
sam_s <- S.SY(N, a)
sam_s
dim(sam_s)
# seleccion de la muestra
muestra_s <- BigCity[sam_s,]
muestra_s
n_s <- dim(muestra_s)[1]
n_s
estima_s <- data.frame(muestra_s$Income, muestra_s$Expenditure)
head(estima_s)
E.SY(N, a, estima_s)
