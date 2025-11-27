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




sizes = FrameI %>%
  group_by(Stratum) %>%
  summarise(NIh = n(),
            nIh = 2, 
            dI = NIh/nIh)

#ver el numero de estratos totales
n_distinct(BigCity$Stratum)
n_distinct(FrameI$Stratum)


NIh <- sizes$NIh #numero de conglomerados de cada estrato en la poblacion
nIh <- sizes$nIh #numero de conglomerados de cada estrato en la muestra
head(sizes, 10)


samI <- S.STSI(Stratum, NIh, nIh) 
UI <- levels(as.factor(FrameI$PSU)) #poblacion de los conglomerados
sampleI <- UI[samI]

sum(sizes$NIh)
sum(sizes$nIh)


FrameII <- left_join(sizes,
                     BigCity[which(BigCity$PSU %in% sampleI), ])
attach(FrameII)
head(FrameII, 10)



HHdb <- FrameII %>%
  group_by(PSU) %>% 
  summarise(Ni = length(unique(HHID)))


Ni <- as.numeric(HHdb$Ni) 
ni <- ceiling(Ni * 0.1)
sum(ni)

# para un conglomerado
sam = S.SI(Ni[1], ni[1]) 
clusterII = FrameII[which(FrameII$PSU == sampleI[1]), ]
sam.HH <- data.frame(HHID = unique(clusterII$HHID)[sam]) 
clusterHH <- left_join(sam.HH, clusterII, by = "HHID") 
clusterHH$dki <- Ni[1]/ni[1]
clusterHH$dk <- clusterHH$dI * clusterHH$dki 
data = clusterHH

#para todos los demas

for (i in 2:length(Ni)) {
  sam = S.SI(Ni[i], ni[i])
  clusterII = FrameII[which(FrameII$PSU == sampleI[i]), ] 
  sam.HH <- data.frame(HHID = unique(clusterII$HHID)[sam])
  clusterHH <- left_join(sam.HH, clusterII, by = "HHID") 
  clusterHH$dki <- Ni[i]/ni[i] 
  clusterHH$dk <- clusterHH$dI * clusterHH$dki 
  data1 = clusterHH 
  data = rbind(data, data1)
}


dim(data) #2618 PERSONAS Y 17 VARIABLE
sum(data$dk)#SUMA DE FACTORES DE EXPANSION

attach(data)
estima <- data.frame(Income, Expenditure)
area <- as.factor(PSU) 
stratum <- as.factor(Stratum)

hist(data$dk)
boxplot(data$dk ~ data$Stratum)
E.UC(stratum, area, dk, estima)
