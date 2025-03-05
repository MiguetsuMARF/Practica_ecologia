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