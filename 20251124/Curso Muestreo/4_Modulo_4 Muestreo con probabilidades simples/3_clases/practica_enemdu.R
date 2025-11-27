rm(list = ls())

library(tidyverse) 
library(srvyr)
library(rio)
library(TeachingSampling)
base <- import("D:/2_INEC/1_curso_muestreo_r/base_enemdu/enemdu_persona_201912.sav")
names(base)
n_distinct(base$id_persona)
N <- dim(base)[1] #tomando a la base de datos como un marco de muestreo
N
#muestreo aleatorio 
set.seed(1)#seleccionar numero aleatotios y sean los mismos
n <- 5000
muestra <- sample_n(base, n, F)
muestra <- muestra %>% 
  mutate(pobreza= ifelse(is.na(pobreza), 0, pobreza),
         empleo= ifelse(is.na(empleo), 0, empleo))
estima <- data.frame(muestra$pobreza, muestra$empleo)
head(estima)
E.SI(N, n, estima)


#MUESTREO BERNOULLI
pik <- 0.05 # probabilidad de incluision es de 0.025 supuesto para calcular el tamaño de muestra
sam <- S.BE(N, pik)
sam
dim(sam)
#  obtener una muestra por medio del muestreo Bernoulli
muestra_b <- base[sam,]
muestra_b #(3072)
muestra_b  <- muestra_b %>% 
  mutate(pobreza=ifelse(is.na(pobreza),0,pobreza),
         empleo = ifelse(is.na(empleo), 0, empleo))
n_b <- dim(muestra_b)[1]
n_b
estima_b <- data.frame(muestra_b$pobreza, muestra_b$empleo)
head(estima_b)
E.BE(estima_b, pik)
table(muestra_b$pobreza, useNA = "ifany")
table(muestra_b$empleo, useNA = "ifany")


# MUESTREO SISTEMATICO 
a <- 30 #numero de grupos   dividimos en 30 grupos 
floor(N/a) 
sam_s <- S.SY(N, a)
sam_s
dim(sam_s)
# seleccion de la muestra
muestra_s <- base[sam_s,]
muestra_s
muestra_s <- muestra_s %>% 
  mutate(pobreza=ifelse(is.na(pobreza),0,pobreza),
         empleo = ifelse(is.na(empleo), 0, empleo))
n_s <- dim(muestra_s)[1]
n_s
estima_s <- data.frame(muestra_s$pobreza, muestra_s$empleo)
head(estima_s)
E.SY(N, a, estima_s)
table(muestra_s$pobreza, useNA = "ifany")

