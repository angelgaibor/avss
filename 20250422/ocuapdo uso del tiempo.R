rm(list = ls())

library(tidyverse)
library(rio)

bdd <- import("20250422/Base EUT 2012.sav")

names(bdd)


bdd01 <- bdd |> 
  rename_all(tolower) |> 
  mutate(ocupado1 = case_when(p15 == 1 ~ 1,
                              p15 == 2 & p16 >=1 & p16 < 12 ~ 1,
                              p15 == 2 & p16 == 12 & p17 == 1 ~ 1,
                              T ~ 0),
         desocup1 = case_when(ocupado1 == 0 & p15 == 2 & p16 == 12 & p17 == 2 & p21 < 11 ~ 1,
                              T ~ 0))


table(bdd01$ocupado, bdd01$ocupado1, useNA = "ifany")
table(bdd01$desocup, bdd01$desocup1, useNA = "ifany")
table(bdd01$ocupado1, bdd01$desocup1, useNA = "ifany")


