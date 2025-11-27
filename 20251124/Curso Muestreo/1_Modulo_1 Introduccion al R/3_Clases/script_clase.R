library(TeachingSampling)
library(samplesize4surveys)
library(dplyr)
citation("TeachingSampling")
citation("samplesize4surveys")

sexo <- c("Hombre", "Hombre", "Mujer", "Mujer", "Hombre", "Mujer")
sexo

sexo1 <- as.factor(sexo) 
sexo1

sexo1 == "Hombre" 

which(sexo1 == "Hombre")

H <- sexo1[sexo1 == "Hombre"]
H
M <- sexo1[sexo1 == "Mujer"]
M

help(TeachingSampling)

H < M 

summary(sexo1)
summary(H)
summary(M)



id <- paste0("CEPALIDk", c(1:5)) 
ingreso <- c(450, 500, 250, 1000, 500) 
gasto <- 100 + ingreso * 0.25 
zona <- c(rep("urbano", 3), rep("rural", 2)) 
sexo <- c(rep("hombre", 2), rep("mujer", 3))

datos <- data.frame(ID = id, INC = ingreso, EXP = gasto, ZON = zona, SEX = sexo)          
datos          

head(datos,3)
tail(datos,2)
str(datos)
datos[1,]
datos[,2:4]
datos[c(1, 4), 3 ]
datos[, c(2, 5)]
datos[1 , 1]
datos[c(2, 5), c(2, 5)]

datos$ID
datos$INC
datos$EXP


datos$ESC <- c("Lee", "Lee", "Lee", "No lee", "Lee")
datos$IOE <- datos$INC / datos$EX


z <- c("Jefe", "Hijo", "Jefe", "Conyuge")
z
Domains(z)


data(BigCity)
data
names(BigCity)

is(BigCity$Income)
is(BigCity$PersonID)

head(BigCity[,1:6])
head(BigCity[,7:12])

