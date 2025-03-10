Chao1 <- function(Abundancias){
  x <- length(Abundancias)
  s <- 0
  d <- 0
  for (i in 1:length(Abundancias)){
    if (Abundancias[i] == 1){
      s <- s + 1
    } else if (Abundancias[i] == 2){
      d <- d + 1
    }
  }
  if (d == 0){
    C <- x
  } else {
    C <- x + ((s*s)/(2*d))
  }
  return(C)
}

Simpson <- function(Abundancias){
  x <- c()
  for(i in 1:length(Abundancias)){
    x <- c(x,(Abundancias[i]*(Abundancias[i]-1))/(sum(Abundancias)*(sum(Abundancias)-1)))
  }
  return(sum(x))
}

Simpson_2 <- function(Abundancias){
  x <- c()
  for(i in 1:length(Abundancias)){
    x <- c(x,(Abundancias[i]/sum(Abundancias))*(Abundancias[i]/sum(Abundancias)))
  }
  return(sum(x))
}

Simpson_Div <- function(Abundancias){
  return(1 - Simpson(Abundancias))
}

Simpson_Inv <- function(Abundancias){
  return(1/Simpson(Abundancias))
}

Indice_Shannon <- function(x){
  N <- length(x)
  Total <- sum(x)
  Shannon <- c()
  for (i in 1:N){
    y <- (x[i]/Total)*log((x[i]/Total))
    Shannon <- c(Shannon, y)
  }
  SShannon <- (-1)*(sum(Shannon))
  Max <- log(N)
  Pielou <- SShannon/Max
  Resultados <- list(
    Riqueza = N,
    Total_de_individuos = Total,
    Indice_Shannon = SShannon,
    Maximo = Max,
    Indice_Pielou = Pielou
  )
  return(Resultados)
}

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

Bray_curtis <- function(data,conjunto_A,conjunto_B){
  A <- data[[conjunto_A]]
  B <- data[[conjunto_B]]
  cAB <- 0
  for (i in 1:length(A)){
    x <- c(A[i],B[i])
    if (all(x != 0) == TRUE){
      if ( x[1] >= x[2]){
        cAB <- cAB + x[2]
      } else if (x[1] < x[2]){
        cAB <- cAB + x[1]
      }
    }
  }
  return(1 - ((2*cAB)/(sum(A) + sum(B))))
}


#Función para acumulación de especies


as.acumulacion_especies<-function(datos) {
  Curva<- specaccum(datos)
  plot(Curva, ci.type="poly", col="blue", lwd=2, ci.lty=0,
       ci.col="lightblue", xlab = "Muestreo", ylab = "Especies")
}


# Librerias

library(ggplot2)
library(vegan)
