rm(list = ls())

library(tidyverse)
library(rio)

bdd <- import("20250310/papa.xlsx") |> 
  mutate(periodo = fin - inicio)

prueba <- "Juan Carlos II"

x <- bdd$nombre_sin_apodo

pos_las_white_space <- function(x) { 
  respuesta <- rep(0, length(x))
  for(i in 1:length(x)){
    lol <- as.vector(gregexpr(" ", x[i])[[1]]) 
    respuesta[i] <- lol[length(lol)]
  }
  
  
  return( respuesta ) 
}

pos_las_white_space(x)

bdd_01 <- bdd |> 
  cbind(posicion = pos_las_white_space(bdd$nombre_sin_apodo)) |> 
  mutate(orden = substr(nombre_sin_apodo, posicion + 1, nchar(nombre_sin_apodo)),
         orden = case_when(orden %in% c("I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX", "X",
                                        "XI", "XII", "XIII", "XIV", "XV", "XVI", "XVII", "XVIII", "XIX", "XX",
                                        "XXI", "XXII", "XXIII", "XXIV", "XXV", "XXVI", "XXVII", "XXVIII", "XXIX", "XXX") ~ orden,
                           T ~ "I"),
         nombre_solo = case_when(posicion != -1 & orden != "I" ~ substr(nombre_sin_apodo, 1, posicion - 1),
                                 T ~ nombre_sin_apodo),
         nombre_solo = case_when(substr(nombre_solo, 1, 3) == "San" ~ substr(nombre_solo, 5, nchar(nombre_solo)),
                                 T ~ nombre_solo))

table(bdd_01$nombre_solo, bdd_01$orden)
