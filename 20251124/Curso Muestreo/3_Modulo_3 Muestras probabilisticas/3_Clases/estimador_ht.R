install.packages("TeachingSampling") 
library(TeachingSampling)

rm(list = ls())
U <- c("Yves", "Ken", "Erik", "Sharon", "Leslie") 
U

length(U)

N <- length(U)
N 

n <- 2 
n

#espacio muestral 
Support(N,n)

#podemos ver los nombres
Support(N,n,U)

#probabilidad de seleccionar una posible muestra
p <- c(0.13,0.2,0.15,0.1,0.15,0.04,0.02,0.06,0.07,0.08) 
p
sum(p)
max(p) #mayor probabilidad
min(p) #menor probabilidad
p<0
p>1

#crea una matriz de valores
Q <- Support(N, n, U)
Q
Ind <- Ik(N, n)
?Ik #ayuda
Ind
#crea una bbdd
base <- data.frame(Q, p, Ind)
#calcular las probabilidades de inclusion 
multip <- p * Ind
colSums(multip)
sum(colSums(multip))

#calcular las probabilidades de inclusion 
pik <- Pik(p, Ind) 
pik

#calcular las probabilidades de inclusion de segundo orden
pikl <- Pikl(N, n, p) 
pikl

#estimador del total
y<- c(32, 34, 46, 89, 35)
ty <- sum(y)
ty

#estimador de la media
ybar <- ty / N 
ybar


y.s <- c(32, 34) #caracteristica de interes
pik.s <- c(0.58, 0.34) #probabilidad de inclusion
y.s/pik.s #dividir
sum(y.s/pik.s)#estimador de ht del total 
HT(y.s, pik.s)#otra manera 


#muestra 8
y.s <- c(46, 89) #caracteristica de interes
pik.s <- c(0.48, 0.33) #probabilidad de inclusion
y.s/pik.s #dividir
sum(y.s/pik.s)#estimador de ht del total 
HT(y.s, pik.s)#otra manera 



sum(p * all.HT)

base1 <- data.frame(Q, p)
base1
base1 <- base1 %>% 
  mutate(x1.1 = ifelse(X1=="Yves", pik[1],
                       ifelse(X1=="Ken", pik[2],
                              ifelse(X1=="Erik", pik[3], pik[4]))),
         x2.1 = ifelse(X2=="Ken", pik[2],
                        ifelse(X2=="Erik", pik[3],
                               ifelse(X2=="Sharon", pik[4], pik[5]))),
         x1.2 = ifelse(X1=="Yves", y[1],
                       ifelse(X1=="Ken", y[2],
                              ifelse(X1=="Erik", y[3], y[4]))),
         x2.2 = ifelse(X2=="Ken", y[2],
                       ifelse(X2=="Erik", y[3],
                              ifelse(X2=="Sharon", y[4], y[5]))),
         ht1 =  x1.2/x1.1,
         ht2 = x2.2/x2.1,
         all.HT = ht1+ht2,
         insesgado = p*all.HT)

sum(base1$insesgado)
