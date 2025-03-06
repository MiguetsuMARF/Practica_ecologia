                            # GRAFICAS #

library(ggplot2)

Datos_graficas <- data.frame(
  color = character(),
  bolsa = character(),
  n_fichas = numeric(),
  stringsAsFactors = FALSE
)

for (i in 2:ncol(Datos)) {
  Datos_graficas <- rbind(Datos_graficas, data.frame(
    color = rep(Datos$Color, each = 1),
    bolsa = names(Datos)[i],
    n_fichas = Datos[, i]
  ))
}

View(Datos_graficas) # data frame con datos acomodados


          # Grafica de cantidad de fichas por bolsa #
ggplot(Datos_graficas, aes(x= n_fichas, fill =bolsa )) + 
  geom_density()


               # Extrayendo datos de la bolsa 3 #
Datos_graficas[which(Datos_graficas$bolsa == "Bolsa_3"),] -> bolsa_3


          # Grafica de distribución de fichas por color #
ggplot(bolsa_3, aes(x= color, y= n_fichas)) +
  geom_point(pch = 25) + theme_linedraw() +
  theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = 0.5))
