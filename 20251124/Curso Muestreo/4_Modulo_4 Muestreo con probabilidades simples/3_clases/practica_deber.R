

rm(list = ls())

library(tidyverse) 
library(srvyr)
library(rio)
base <- import("D:/2_INEC/1_curso_muestreo_r/base_enemdu/enemdu_persona_201912.sav")
names(base)
n_distinct(base$id_persona)
N <- dim(base)[1] #tomando a la base de datos como un marco de muestreo
N
set.seed(1)#seleccionar numero aleatotios y sean los mismos
n <- 2000
muestra <- sample_n(base, n, F)
names(base)
sum(muestra$empleo, na.rm = T)
class(muestra$empleo)
table(muestra$empleo, useNA = "ifany")

# realizar estimaciones
#empleo total
t_empleo <- (N/n)* sum(muestra$empleo, na.rm = T)
t_empleo

#media del ingreso
m_i <- mean(muestra$empleo, na.rm = T)
m_i

resultados <- data.frame(muestra$empleo, muestra$desempleo)
names(resultados)[1]<- "empleo"
names(resultados)[2]<- "desempleo"
resultados <- resultados %>% 
  mutate(empleo = ifelse(is.na(empleo),0,empleo),
         desempleo = ifelse(is.na(desempleo),0,desempleo))
E.SI(N, n, resultados)

table(muestra$desempleo, useNA = "ifany")


#estimaciones por dominio 
dominio <- Domains(muestra$p02)
head(dominio)
table(resultados$empleo, useNA = "ifany")
hombres <- dominio [,1]*resultados
table(hombres$empleo, useNA = "ifany")
table(hombres$desempleo, useNA = "ifany")
mujeres <- dominio [,2]*resultados
table(mujeres$empleo, useNA = "ifany")
table(mujeres$desempleo, useNA = "ifany")
E.SI (N, n, dominio)  
E.SI (N, n, hombres)
E.SI (N, n, mujeres)

#estimaciones por dominio 
muestra<- muestra %>% 
  mutate (grupo_edad = ifelse(p03 >=15 & p03<=35, 1,
                              ifelse(p03 >=36 & p03<=55, 2,
                                     ifelse(p03 >=56, 3,  NA))))
d <- filter(muestra, !is.na(grupo_edad))#debido a los valores perdidos creamos un nuevo objeto sin ellos 
table(d$grupo_edad, useNA = "ifany") #verificamoa que no existan valores perdidos
dominio_grupo_edad <- Domains(d$grupo_edad) #creamos el dominio por grupo de edad
head(dominio_grupo_edad)

mayores15_menores35 <- dominio_grupo_edad [,1]*resultados #creamos un objeto con las personas mayores a 15 y menores a 35
table(mayores15_menores35$empleo, useNA = "ifany") #realizamos una tabla de frecuenca de los empleados
table(mayores15_menores35$desempleo, useNA = "ifany") #realizamos una tabla de frecuenca de los desempleados

mayores36_menores55 <- dominio_grupo_edad [,2]*resultados #creamos un objeto con las personas mayores a 36 y menores a 55
table(mayores36_menores55$empleo, useNA = "ifany") #realizamos una tabla de frecuenca de los empleados
table(mayores36_menores55$desempleo, useNA = "ifany") #realizamos una tabla de frecuenca de los desempleados

mayores56 <- dominio_grupo_edad [,3]*resultados #creamos un objeto con las personas mayores a 56
table(mayores56$empleo, useNA = "ifany") #realizamos una tabla de frecuenca de los empleados
table(mayores56$desempleo, useNA = "ifany") #realizamos una tabla de frecuenca de los desempleados

E.SI (N, 1526, dominio_grupo_edad)  
E.SI (N, n, mayores15_menores35)  
E.SI (N, n, mayores36_menores55)  
E.SI (N, n, mayores36_menores55) 

#estimaciones por dominio 
base<- base %>% 
  mutate (grupo_edad = ifelse(p03 >=15 & p03<=35, 1,
                              ifelse(p03 >=36 & p03<=55, 2,
                                     ifelse(p03 >=56, 3,  NA))))
d <- filter(base, !is.na(grupo_edad))#debido a los valores perdidos creamos un nuevo objeto sin ellos 
table(d$grupo_edad, useNA = "ifany") #verificamoa que no existan valores perdidos

mayores15_menores35_p <- filter(base, grupo_edad ==1) #creamos un objeto con las personas mayores a 15 y menores a 35
table(mayores15_menores35_p$empleo, useNA = "ifany") #realizamos una tabla de frecuenca de los empleados
table(mayores15_menores35_p$desempleo, useNA = "ifany") #realizamos una tabla de frecuenca de los desempleados


8881.200000-(1.96*464)
8881.200000+(1.96*464)
