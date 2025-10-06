rm(list = ls())

library(tidyverse)
library(rio)

bdd_dic_19 <- import("20250820/enemdu_persona_201912.csv")
table(substr(str_pad(bdd_dic_19$ciudad, 6, "left", "0"), 1, 2))


bdd_sep_14 <- import("20250820/201409/bdd_enemdu_15anios_09_2014/201409_EnemduBDD_viviendahogar.sav")
table(substr(str_pad(bdd_dic_19$ciudad, 6, "left", "0"), 1, 2))

lol <- bdd_sep_14 |> 
  group_by(ciudad, zona, sector, panelm) |> 
  summarise(n = n())

table(lol$n)
