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


               # Extrayendo datos de las bolsas #
Datos_graficas[which(Datos_graficas$bolsa == "Bolsa_1"),] -> bolsa_1
Datos_graficas[which(Datos_graficas$bolsa == "Bolsa_2"),] -> bolsa_2
Datos_graficas[which(Datos_graficas$bolsa == "Bolsa_3"),] -> bolsa_3
Datos_graficas[which(Datos_graficas$bolsa == "Bolsa_4"),] -> bolsa_4
Datos_graficas[which(Datos_graficas$bolsa == "Bolsa_5"),] -> bolsa_5
Datos_graficas[which(Datos_graficas$bolsa == "Bolsa_6"),] -> bolsa_6
Datos_graficas[which(Datos_graficas$bolsa == "Bolsa_7"),] -> bolsa_7




# Graficas de distribución de fichas por color y en orden decendente #

b1_graph <- ggplot(bolsa_1, aes(x = reorder(color, n_fichas, decreasing = TRUE), y= n_fichas)) +
  geom_point(pch = 25, colour = "darkorange") + theme_linedraw()+
  theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = 0.5)) +
  labs(x = NULL)

b2_graph <- ggplot(bolsa_2, aes(x = reorder(color, n_fichas, decreasing = TRUE), y= n_fichas)) +
  geom_point(pch = 25, colour = "darkgreen") + theme_linedraw()+
  theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = 0.5)) +
  labs(x = NULL)

b3_graph <- ggplot(bolsa_3, aes(x = reorder(color, n_fichas, decreasing = TRUE), y= n_fichas)) +
  geom_point(pch = 25, colour = "purple4") + theme_linedraw()+
  theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = 0.5)) +
  labs(x = NULL)

b4_graph <- ggplot(bolsa_4, aes(x = reorder(color, n_fichas, decreasing = TRUE), y= n_fichas)) +
  geom_point(pch = 25, colour = "darkturquoise") + theme_linedraw()+
  theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = 0.5)) +
  labs(x = NULL)

b5_graph <- ggplot(bolsa_5, aes(x = reorder(color, n_fichas, decreasing = TRUE), y= n_fichas)) +
  geom_point(pch = 25, colour = "darkblue") + theme_linedraw()+
  theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = 0.5)) +
  labs(x = NULL)

b6_graph <- ggplot(bolsa_6, aes(x = reorder(color, n_fichas, decreasing = TRUE), y= n_fichas)) +
  geom_point(pch = 25, colour = "deepskyblue") + theme_linedraw()+
  theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = 0.5)) +
  labs(x = NULL)

b7_graph <- ggplot(bolsa_7, aes(x = reorder(color, n_fichas, decreasing = TRUE), y= n_fichas)) +
  geom_point(pch = 25, colour = "darkred") + theme_linedraw()+
  theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = 0.5)) +
  labs(x = NULL)

