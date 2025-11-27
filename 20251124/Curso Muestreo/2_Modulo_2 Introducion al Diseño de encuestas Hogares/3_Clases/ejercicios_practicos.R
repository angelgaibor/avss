rm(list = ls())

library(TeachingSampling)
library(dplyr)

data("BigLucy")
names(BigLucy)
?BigLucy
#descriptivos de todas las variable de la base de datos
summary(BigLucy)
#analisis de datos
tamaño <- table(BigLucy$Level)
tamaño
condado <- table(BigLucy$Zone)
condado
ingresos <- table(BigLucy$Income)
ingresos
empleados <- table(BigLucy$Employees)
empleados
impuestos <- table(BigLucy$Taxes)
impuestos
internet <- table(BigLucy$SPAM)
internet
certificacion <- table(BigLucy$ISO)
certificacion
estabilidad  <- table(BigLucy$Years)
estabilidad

#tamaño
grande=BigLucy[BigLucy$Level=="Big",]
mediana=BigLucy[BigLucy$Level=="Medium",]
pequeña=BigLucy[BigLucy$Level=="Small",]
#condado
pais1 <- BigLucy[BigLucy$Zone=="County1",]
pais1 = pais1[,c(1:5)]

pais42 <- BigLucy[BigLucy$Zone=="County42",]
pais42 = pais42[,c(1,5,7)]

#ingresos
min(ingresos)
max(ingresos)
mean(ingresos)
median(ingresos)

# empleados
sum(BigLucy$Employees)
menores_100 <- BigLucy[BigLucy$Employees<100,]
sum(menores_100$Employees)
mayores_100 <- BigLucy[BigLucy$Employees>=100,]
sum(mayores_100$Employees)

#empresas con ingresos mayores a 100
# impuestos mayores a 10
# años mayores a 15
empresas=BigLucy[BigLucy$Income >100 & BigLucy$Taxes >10 & BigLucy$Years >15,] 
