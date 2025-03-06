
# En total tenemos 12 colores.

# "azul_medio","azul_claro","azul_fuerte", "verde_fuerte","verde_claro","rojo","rosa_fuerte", "rosa_medio","rosa_claro", "morado","Naranja","Amarillo"

# Por lo que podemos realizar una base de datos que contenga los valores de abundancia para las cuatro bolsas.

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

