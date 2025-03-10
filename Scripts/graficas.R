                            # GRAFICAS #

# Librerias a utilizar
library(ggplot2)

# Primero hay que reacomodar las bases de datos para que las pueda usar ggplot
Datos_graficas <- data.frame(
  color = character(),
  bolsa = character(),
  n_fichas = numeric()
)

for (i in 2:ncol(Datos)) {
  Datos_graficas <- rbind(Datos_graficas, data.frame(
    color = rep(Datos$Color, each = 1),
    bolsa = names(Datos)[i],
    n_fichas = Datos[, i]
  ))
}

View(Datos_graficas) # data frame con datos acomodados
write.csv(Datos_graficas, file ="Scripts/Tablas de graficas/Datos_graficas.csv", row.names = FALSE)
Datos_graficas<-read.csv(file ="Scripts/Tablas de graficas/Datos_graficas.csv")




      # Grafica de cantidad de fichas por bolsa en orden decendente #

comunidad <- data.frame(
  bolsas = c("bolsa_1", "bolsa_2", "bolsa_3", "bolsa_4", "bolsa_5", "bolsa_6", "bolsa_7"),
  fichas = c(88,66,77,38,68,99,50)
)
View(comunidad)

write.csv(comunidad, file ="Scripts/Tablas de graficas/comunidad.csv", row.names = FALSE)
comunidad<-read.csv(file ="Scripts/Tablas de graficas/comunidad.csv")

View(comunidad)


comunidades <- ggplot(comunidad, aes(x = reorder(bolsas, fichas, decreasing = TRUE), y = fichas)) + 
  geom_point(pch = 25, colour = "brown4") + theme_linedraw()+
  theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = 0.5)) +
  labs(x = NULL)



               # Extrayendo datos de las bolsas #
Datos_graficas[which(Datos_graficas$bolsa == "Bolsa_1"),] -> b_1
write.csv(b_1, file ="Scripts/Tablas de graficas/b_1.csv", row.names = FALSE)
b_1 <-read.csv(file ="Scripts/Tablas de graficas/b_1.csv")


Datos_graficas[which(Datos_graficas$bolsa == "Bolsa_2"),] -> b_2
write.csv(b_2, file ="Scripts/Tablas de graficas/b_2.csv", row.names = FALSE)
b_2<-read.csv(file ="Scripts/Tablas de graficas/b_2.csv")

Datos_graficas[which(Datos_graficas$bolsa == "Bolsa_3"),] -> b_3
write.csv(b_3, file ="Scripts/Tablas de graficas/b_3.csv", row.names = FALSE)
b_3<- read.csv(file ="Scripts/Tablas de graficas/b_3.csv")


Datos_graficas[which(Datos_graficas$bolsa == "Bolsa_4"),] -> b_4
write.csv(b_4, file ="Scripts/Tablas de graficas/b_4.csv", row.names = FALSE)
b_4<- read.csv(file ="Scripts/Tablas de graficas/b_4.csv")

Datos_graficas[which(Datos_graficas$bolsa == "Bolsa_5"),] -> b_5
write.csv(b_5, file ="Scripts/Tablas de graficas/b_5.csv", row.names = FALSE)
b_5<- read.csv(file ="Scripts/Tablas de graficas/b_5.csv")

Datos_graficas[which(Datos_graficas$bolsa == "Bolsa_6"),] -> b_6
write.csv(b_6, file ="Scripts/Tablas de graficas/b_6.csv", row.names = FALSE)
b_6<- read.csv(file ="Scripts/Tablas de graficas/b_6.csv")

Datos_graficas[which(Datos_graficas$bolsa == "Bolsa_7"),] -> b_7
write.csv(b_7, file ="Scripts/Tablas de graficas/b_7.csv", row.names = FALSE)
b_7<- read.csv(file ="Scripts/Tablas de graficas/b_7.csv")



# Graficas de distribución de fichas por color y en orden decendente #

b1_graph <- ggplot(b_1, aes(x = reorder(color, n_fichas, decreasing = TRUE), y= n_fichas)) +
  geom_point(pch = 25, colour = "darkorange") + theme_linedraw()+
  theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = 0.5)) +
  labs(x = NULL)

b2_graph <- ggplot(b_2, aes(x = reorder(color, n_fichas, decreasing = TRUE), y= n_fichas)) +
  geom_point(pch = 25, colour = "darkgreen") + theme_linedraw()+
  theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = 0.5)) +
  labs(x = NULL)

b3_graph <- ggplot(b_3, aes(x = reorder(color, n_fichas, decreasing = TRUE), y= n_fichas)) +
  geom_point(pch = 25, colour = "purple4") + theme_linedraw()+
  theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = 0.5)) +
  labs(x = NULL)

b4_graph <- ggplot(b_4, aes(x = reorder(color, n_fichas, decreasing = TRUE), y= n_fichas)) +
  geom_point(pch = 25, colour = "darkturquoise") + theme_linedraw()+
  theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = 0.5)) +
  labs(x = NULL)

b5_graph <- ggplot(b_5, aes(x = reorder(color, n_fichas, decreasing = TRUE), y= n_fichas)) +
  geom_point(pch = 25, colour = "darkblue") + theme_linedraw()+
  theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = 0.5)) +
  labs(x = NULL)

b6_graph <- ggplot(b_6, aes(x = reorder(color, n_fichas, decreasing = TRUE), y= n_fichas)) +
  geom_point(pch = 25, colour = "deepskyblue") + theme_linedraw()+
  theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = 0.5)) +
  labs(x = NULL)

b7_graph <- ggplot(b_7, aes(x = reorder(color, n_fichas, decreasing = TRUE), y= n_fichas)) +
  geom_point(pch = 25, colour = "darkred") + theme_linedraw()+
  theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = 0.5)) +
  labs(x = NULL)



