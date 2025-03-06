
#### PRACTICA ESTIMACION DE DIVERSIDAD ALFA Y BETA DE BOLSAS CON FICHAS ####

## Las funciones para estimar las diversidades se encuentran en el script "Funciones.R", lo debemos cargar para realizar
# la practica

source("Scripts/Funciones.R")

## Para empezar debemos registrar los datos en una base de datos, tenemos un total de 12 colores y 7 bolsas.

Datos <- data.frame(
  Color = c("azul_medio","azul_claro","azul_fuerte", "verde_fuerte","verde_claro","rojo","rosa_fuerte",
            "rosa_medio","rosa_claro", "morado","Naranja","Amarillo"),
  Bolsa_1 = c(0,0,0,0,0,0,0,0,0,0,88,0),
  Bolsa_2 = c(0,0,0,66,0,0,0,0,0,0,0,0),
  Bolsa_3 = c(4,7,12,3,1,12,12,0,2,13,11,0),
  Bolsa_4 = c(14,10,3,1,1,2,3,2,2,0,0,0),
  Bolsa_5 = c(4,4,18,10,15,2,5,1,3,1,2,3),
  Bolsa_6 = c(4,6,10,3,7,10,9,10,10,10,10,10),
  Bolsa_7 = c(5,3,7,9,4,5,3,2,1,2,5,4)
)

View(Datos)

## Posteriormente necesitamos una lista de matrices que contenga el resultado de las estimaciones beta.

mj <- matrix(0, nrow = 7, ncol = 7)
rownames(mj) <- names(Datos)[2:8]
colnames(mj) <- names(Datos)[2:8]

for (i in 1:7){
  for (j in i:7){
    x <- Jaccard(Datos, (names(Datos)[i + 1]), (names(Datos)[j + 1]))
    mj[j,i] <- x
    mj[i,j] <- x
  } 
}

mj

ms <- matrix(0, nrow = 7, ncol = 7)
rownames(ms) <- names(Datos)[2:8]
colnames(ms) <- names(Datos)[2:8]

for (i in 1:7){
  for (j in i:7){
    x <- Sorensen_Dice(Datos, (names(Datos)[i + 1]), (names(Datos)[j + 1]))
    ms[j,i] <- x
    ms[i,j] <- x
  } 
}

ms

mb <- matrix(0, nrow = 7, ncol = 7)
rownames(mb) <- names(Datos)[2:8]
colnames(mb) <- names(Datos)[2:8]

for (i in 1:7){
  for (j in i:7){
    x <- Bray_curtis(Datos, (names(Datos)[i + 1]), (names(Datos)[j + 1]))
    mb[j,i] <- x
    mb[i,j] <- x
  } 
}

mb

Resultados_Diversidades_Beta <- list(
  Jaccard = mj,
  Sorensen = ms,
  Bray_curtis = mb
)

Resultados_Diversidades_Beta

## Ahora si podemos construir los resultados de diversidad alfa y beta de cada bolsa.

#--------------------------------------------------------------------------------------------------------------------------------#
## Bolsa 1 ##

# Naranjas, 88

R_bolsa_1 <- list(
  Shannon = Indice_Shannon(c(88))$Indice_Shannon,
  Pielou = Indice_Shannon(c(88))$Indice_Pielou,
  Simpson = Simpson(c(88)),
  Chao1 = Chao1(c(88)),
  Jaccard = Resultados_Diversidades_Beta$Jaccard[1,],
  Sorensen_Dice = Resultados_Diversidades_Beta$Sorensen[1,],
  Bray_curtis = Resultados_Diversidades_Beta$Bray_curtis[1,]
)
R_bolsa_1

## Bolsa 2 hoja ##

# Verdes, 66

R_bolsa_2 <- list(
  Shannon = Indice_Shannon(c(66))$Indice_Shannon,
  Pielou = Indice_Shannon(c(66))$Indice_Pielou,
  Simpson = Simpson(c(66)),
  Chao1 = Chao1(c(66)),
  Jaccard = Resultados_Diversidades_Beta$Jaccard[2,],
  Sorensen_Dice = Resultados_Diversidades_Beta$Sorensen[2,],
  Bray_curtis = Resultados_Diversidades_Beta$Bray_curtis[2,]
)
R_bolsa_2

## Bolsa 3 (3 puntitos) ##
# total = 77

Bolsa_3 <- c(11,12,7,3,1,4,12,2,13,12)
nombres <- c("Naranja","Azul_obscuro","Azul_claro","Verde_oscuro","Verde_claro","Azul_intermedio","rojo","Rosa_claro",
             "Morado","Rosa_obscuro")
names(Bolsa_3) <- nombres
Bolsa_3

R_bolsa_3 <- list(
  Shannon = Indice_Shannon(Bolsa_3)$Indice_Shannon,
  Pielou = Indice_Shannon(Bolsa_3)$Indice_Pielou,
  Simpson = Simpson(Bolsa_3),
  Chao1 = Chao1(Bolsa_3),
  Jaccard = Resultados_Diversidades_Beta$Jaccard[3,],
  Sorensen_Dice = Resultados_Diversidades_Beta$Sorensen[3,],
  Bray_curtis = Resultados_Diversidades_Beta$Bray_curtis[3,]
)
R_bolsa_3

## Bolsa 4 alfa ##

# total 39

Bolsa_4 <- c(14,10,3,1,1,2,3,2,2)
  
nombres_bolsa_4 <- c("azul_medio","azul_claro","azul_fuerte", "verde_fuerte","verde_claro","rojo","rosa_fuerte",
                     "rosa_medio","rosa_claro")

names(Bolsa_4) <- nombres_bolsa_4

Bolsa_4

R_bolsa_4 <- list(
  Shannon = Indice_Shannon(Bolsa_4)$Indice_Shannon,
  Pielou = Indice_Shannon(Bolsa_4)$Indice_Pielou,
  Simpson = Simpson(Bolsa_4),
  Chao1 = Chao1(Bolsa_4),
  Jaccard = Resultados_Diversidades_Beta$Jaccard[4,],
  Sorensen_Dice = Resultados_Diversidades_Beta$Sorensen[4,],
  Bray_curtis = Resultados_Diversidades_Beta$Bray_curtis[4,]
)
R_bolsa_4


##  Bolsa 5 luna, estrella, pi, oso ##


Bolsa_5 <- c(4,4,18,10,15,2,5,1,3,1,2,3)
nombres_bolsa_5 <- c("azul_medio","azul_claro","azul_fuerte", "verde_fuerte","verde_claro","rojo","rosa_fuerte",
                     "rosa_medio","rosa_claro", "morado","Naranja","Amarillo")

names(Bolsa_5) <- nombres_bolsa_5

R_bolsa_5 <- list(
  Shannon = Indice_Shannon(Bolsa_5)$Indice_Shannon,
  Pielou = Indice_Shannon(Bolsa_5)$Indice_Pielou,
  Simpson = Simpson(Bolsa_5),
  Chao1 = Chao1(Bolsa_5),
  Jaccard = Resultados_Diversidades_Beta$Jaccard[5,],
  Sorensen_Dice = Resultados_Diversidades_Beta$Sorensen[5,],
  Bray_curtis = Resultados_Diversidades_Beta$Bray_curtis[5,]
)
R_bolsa_5

##  Bolsa 6 luna grande ##

Bolsa_6 <- c(4,6,10,3,7,10,9,10,10,10,10,10)
nombres_bolsa_6 <- c("azul_medio","azul_claro","azul_fuerte", "verde_fuerte","verde_claro","rojo","rosa_fuerte",
                     "rosa_medio","rosa_claro", "morado","Naranja","Amarillo")

names(Bolsa_6) <- nombres_bolsa_6

R_bolsa_6 <- list(
  Shannon = Indice_Shannon(Bolsa_6)$Indice_Shannon,
  Pielou = Indice_Shannon(Bolsa_6)$Indice_Pielou,
  Simpson = Simpson(Bolsa_6),
  Chao1 = Chao1(Bolsa_6),
  Jaccard = Resultados_Diversidades_Beta$Jaccard[6,],
  Sorensen_Dice = Resultados_Diversidades_Beta$Sorensen[6,],
  Bray_curtis = Resultados_Diversidades_Beta$Bray_curtis[6,]
)
R_bolsa_6

##  Bolsa 7 carita feliz ##

Bolsa_7 <- c(5,3,7,9,4,5,3,2,1,2,5,4)
nombres_bolsa_7 <- c("azul_medio","azul_claro","azul_fuerte", "verde_fuerte","verde_claro","rojo","rosa_fuerte",
                     "rosa_medio","rosa_claro", "morado","Naranja","Amarillo")

names(Bolsa_7) <- nombres_bolsa_7

R_bolsa_7 <- list(
  Shannon = Indice_Shannon(Bolsa_7)$Indice_Shannon,
  Pielou = Indice_Shannon(Bolsa_7)$Indice_Pielou,
  Simpson = Simpson(Bolsa_7),
  Chao1 = Chao1(Bolsa_7),
  Jaccard = Resultados_Diversidades_Beta$Jaccard[7,],
  Sorensen_Dice = Resultados_Diversidades_Beta$Sorensen[7,],
  Bray_curtis = Resultados_Diversidades_Beta$Bray_curtis[7,]
)
R_bolsa_7


#Para hacer las curvas de acumulación creamos una función y usamos
#tablas de presencia ausencia para las 7 bolsas las cuáles se encuentran
#en la carpeta "tablas de graficas"
curvabolsa1<-read.csv(file ="Scripts/Tablas de graficas/Bolsa1.csv")
curvabolsa2<-read.csv(file ="Scripts/Tablas de graficas/Bolsa2.csv")
curvabolsa3<-read.csv(file ="Scripts/Tablas de graficas/Bolsa3.csv")
curvabolsa4<-read.csv(file ="Scripts/Tablas de graficas/Bolsa4.csv")
curvabolsa5<-read.csv(file ="Scripts/Tablas de graficas/Bolsa5.csv")
curvabolsa6<-read.csv(file ="Scripts/Tablas de graficas/Bolsa6.csv")
curvabolsa7<-read.csv(file ="Scripts/Tablas de graficas/Bolsa7.csv")



#Ahora sí las gráficas, lo seleccionamos de la columna 2 a la 13 para que
#No tome en cuenta el contador de muestreos como una especie
as.acumulacion_especies(curvabolsa1[,2:13])
as.acumulacion_especies(curvabolsa2[,2:13])
as.acumulacion_especies(curvabolsa3) 
as.acumulacion_especies(curvabolsa4[,2:13])
as.acumulacion_especies(curvabolsa5[,2:13])
as.acumulacion_especies(curvabolsa6[,2:13])
as.acumulacion_especies(curvabolsa7[,2:13])
