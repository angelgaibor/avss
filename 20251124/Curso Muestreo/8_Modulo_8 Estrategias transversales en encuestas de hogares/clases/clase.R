

rm(list = ls())
library(TeachingSampling)

#abrir la base
data('BigCity')

#SELECCIONAMOS LOS CONGLOMERDADOS 
#TODOS LOS CONGLONERADOS DE UN PAIS
FrameI <- BigCity %>% 
  group_by(PSU) %>% #CONGLOMERADOS
  summarise(Stratum = unique(Stratum),
            Persons = n(), 
            Income = sum(Income),
            Expenditure = sum(Expenditure))

attach(FrameI)
head(FrameI, 10)

#total de estratos
table(FrameI$Stratum, useNA = "ifany")
# #ejemplo de factores de expansion
# 9 numero de conglomerados del marco en el estrato 1
# 2 muestra de conglomerados en ese estrato suponiendo 
9/2
11/2
7/2
#marco de conglomerados
estrato_1 <- FrameI %>% 
  filter(Stratum == "idStrt001")
muestra  <-  sample_n(estrato_1, 2, replace = F)
#marco de hogares
hogares <- BigCity %>% 
  group_by(HHID) %>% 
  summarise(PSU = unique(PSU),
            Stratum = unique(Stratum),
           hogares = n(), 
           Income = sum(Income),
           Expenditure = sum(Expenditure))
  
estrato_1_hogares  <-  filter(hogares, PSU %in% muestra$PSU  )
table(estrato_1_hogares$PSU)
# seleccionar hogares

su1 <- filter(estrato_1_hogares, PSU == "PSU0002" )
hogares_seleccionados  <-  sample_n(su1, 4, replace = F) 


26/4

su8 <- filter(estrato_1_hogares, PSU == "PSU0008" )
hogares_seleccionados_8  <-  sample_n(su8, 4, replace = F)


36/4

# FACTOR DE EXPANSION
f_exp_1 <- 9/2*26/4
f_exp_8 <- 9/2*36/4

hogares_seleccionados<- hogares_seleccionados %>% 
  mutate(f_exp = 29.25)

hogares_seleccionados_8<- hogares_seleccionados_8 %>% 
  mutate(f_exp = 40.5)

base_total <- rbind(hogares_seleccionados, hogares_seleccionados_8)
sum(base_total$f_exp)  


muestra <- muestra %>% 
  mutate(f_exp = ifelse(PSU == "PSU0001", 29.25, 40.5),
         num_hogares = ifelse(PSU == "PSU0001", 26, 36))


table(hogares$Stratum)
table(FrameI$Stratum)

