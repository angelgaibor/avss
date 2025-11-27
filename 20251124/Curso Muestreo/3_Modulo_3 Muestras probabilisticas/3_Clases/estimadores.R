
#ESTIMADOR DE HORVITZ THOMPSON 
# cualquier variable de interes 

#trabajo muestreo
rm(list = ls())

#abrir base con libreria rio
library(rio)
library(tidyverse)
personas = import("C:/Users/DIANA/Downloads/enemdu/enemdu_persona_201912.sav")

#crear una nueva variablepoblacion en edad de trabajar
personas = personas %>% 
  mutate(v1=petn*fexp)

#BORRE LOS valores perdidos para poder sumar
sum(personas$v1, na.rm = T) #total de personas en edad de trabajar en el año 2019

#crear una nueva variable PEA
personas = personas %>% 
  mutate(v2=pean*fexp)

pea = sum(personas$v2, na.rm = T) #total de las poblacion economicamente activa en el año 2019

#TASA DE DESEMPLEO 
#NUMERO DE PERSONAS DESEMPLEADADS/ NUMERO DE PERSONAS DE LA PEA
personas = personas %>% 
  mutate(v3=desem*fexp) #desempleadas
desempleados = sum(personas$v3, na.rm = T) #total de personass desempleadas 

tasa_desempleo = (desempleados/pea)*100
tasa_desempleo #♦3.84% desempleo con respecto a la pea



#EMPLEO ADECUADO
#NUMERO DE PEESONAS QUE TIENEN EMPLEO ADECUADO/ NUMERO DE PERSONAD DE LA PEA

personas = personas %>% 
  mutate(v4=adec*fexp) #desempleadas
empl_adecuado = sum(personas$v4, na.rm = T) #total de personass desempleadas 

empleo_adecuado = (empl_adecuado/pea)*100
empleo_adecuado #♦38.84% empleo adecuado


#varianza
library(srvyr)

plan = personas %>% 
  as_survey_design(ids = upm, 
                   strata = estrato,
                   weights = fexp) #declarar el plan de muestreo
options(survey.lonely.psu = "certainty")
#primero me aseguro q la upm tenga 12 digitos y los estratos 4
# personas$upm
# n_distinct(personas$upm) #ver valores unicos de la base 
# personas$estrato
# n_distinct(personas$estrato)
table(personas$tadec, useNA = "ifany") #frecuencia de tadec
t1 = plan %>% 
  summarise(tasa_empleo_adecuado = survey_mean(tadec, na.rm = T))
t1


table(personas$tdesem, useNA = "ifany") 
t2 = plan %>% 
  summarise(tasa_desempleo = survey_mean(tdesem, na.rm = T, vartype=c("se", "ci", "cv")))
t2

