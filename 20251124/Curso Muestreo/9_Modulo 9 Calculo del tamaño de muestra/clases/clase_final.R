rm(list = ls())
library(TeachingSampling) 
library(tidyverse)
library(samplesize4surveys)
data(BigCity)

BigCity1 <- BigCity[!is.na(BigCity$Employment), ] 
summary(BigCity1$Employment)
BigCity1$Unemp <- Domains(BigCity1$Employment)[, 1]
BigCity1$Active <- Domains(BigCity1$Employment)[, 1] + Domains(BigCity1$Employment)[, 3]

N <- nrow(BigCity)
M <- length(unique(BigCity$PSU)) 
r <- sum(BigCity1$Active)/N
b <- N/length(unique(BigCity$HHID))
rho <- ICC(BigCity1$Unemp, BigCity1$PSU)$ICC

delta <- 0.07
conf <- 0.95
m <- c(5:15)

P <- sum(BigCity1$Unemp)/sum(BigCity1$Active)
margen.error <- P * delta 
margen.error

P - margen.error
P + margen.error


ss4HHSp(N, M, r, b, rho, P, delta, conf, m)



data(BigCity)
BigCity1 <- BigCity %>% 
  group_by(HHID) %>%
  summarise(IncomeHH = sum(Income),
            PSU = unique(PSU))

head(BigCity1, 10)
summary(BigCity1$IncomeHH)

N <- nrow(BigCity1)
M <- length(unique(BigCity1$PSU))
rho <- ICC(BigCity1$IncomeHH, BigCity1$PSU)$ICC
mu <- mean(BigCity1$IncomeHH) 
sigma <- sd(BigCity1$IncomeHH)

delta <- 0.05
conf <- 0.95 
m <- c(5:15)

margen.error <- mu * delta
margen.error
mu - margen.error
mu + margen.error

ss4HHSm(N, M, rho, mu, sigma, delta, conf, m)
