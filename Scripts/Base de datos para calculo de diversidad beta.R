
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

Jaccard <- function (data, conjunto_A, conjunto_B){
  A <- data[[conjunto_A]]
  B <- data[[conjunto_B]]
  int <- 0
  uni <- 0
  for (i in 1:length(A)){
    x <- c(A[i],B[i])
    if (all(x != 0) == TRUE){
      int <- int + 1
      uni <- uni + 1
    } else if (any(x != 0) == TRUE){
      uni <- uni + 1
    } 
  }
  return(int/uni)
}

Sorensen_Dice <- function(data,conjunto_A,conjunto_B){
  A <- data[[conjunto_A]]
  B <- data[[conjunto_B]]
  A2 <- length(A[which(A != 0)])
  B2 <- length(B[which(B != 0)])
  int <- 0
  for (i in 1:length(A)){
    x <- c(A[i],B[i])
    if (all(x != 0) == TRUE){
      int <- int + 1
    }
  }
  return((2*int)/(A2 + B2))
}

Bray_curtis <- function(data, conjunto_A, conjunto_B){
  A <- data[[conjunto_A]]
  B <- data[[conjunto_B]]
  cAB <- 0
  for (i in 1:length(A)){
    x <- c(A[i],B[i])
    if (all(x != 0) == TRUE){
      if (x[1] >= x[2]){
      cAB <- cAB + x[2]
      } else if (x[1] < x[2]){
      cAB <- cAB + x[1]
      } 
    }
  }
  return(1 - ((2*cAB)/((sum(A) + sum(B)))))
}

Datos
Jaccard(Datos, "Bolsa_4", "Bolsa_3")
Sorensen_Dice(Datos, "Bolsa_1", "Bolsa_3")
Bray_curtis(Datos, "Bolsa_2", "Bolsa_3")

A <- c(1,0,66)
A2 <- length(A[which(A != 0)])
A2
any(a != 0) == TRUE
sum(A)
A 