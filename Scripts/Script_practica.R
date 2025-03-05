
## 

# Bolsa 1

# Naranjas, 88

Indice_Shannon(c(88))
Simpson(c(88))
Chao1(c(88))

# Bolsa 2 hoja

# Verdes, 66

Indice_Shannon(c(66))
Simpson(c(66))
Chao1(c(66))

# Diversidad beta, bolsa 1 y bolsa 2

# interseccion de 1 y 2 = 0.

# Jaccard = 0
# Sorensen-dice = 0
# Bray-curtis = 1

# Bolsa 3 (3 puntitos)
# total = 77

Bolsa_3 <- c(11,12,7,3,1,4,12,2,13,12)
nombres <- c("Naranja","Azul_obscuro","Azul_claro","Verde_oscuro","Verde_claro","Azul_intermedio","rojo","Rosa_claro",
             "Morado","Rosa_obscuro")
names(Bolsa_3) <- nombres
Bolsa_3

Indice_Shannon(Bolsa_3)
Simpson(Bolsa_3)
Chao1(Bolsa_3)

# Diversidad beta, bolsa 1 y bolsa 3

# Interseccion de 1 y 3 = 1

# Jaccard = 0.1
# Sorensen = 0.1818
# Bray-curtis = 0.86667

# Diversidad beta, bolsa 2 y bolsa 3

# Interseccion de 2 y 3 = 1

# Jaccard = 0.1
# Sorensen = 0.1818
# Bray-curtis = 0.958

# Bolsa 4 alfa

# total 39

bolsa_4 <- c(14,10,3,1,1,2,3,2,2)
  
nombres_bolsa_4 <- c("azul_medio","azul_claro","azul_fuerte", "verde_fuerte","verde_claro","rojo","rosa_fuerte",
                     "rosa_medio","rosa_claro")

names(bolsa_4) <- nombres_bolsa_4

bolsa_4

Indice_Shannon(bolsa_4)
Simpson(bolsa_4)
Chao1(bolsa_4)

# Bolsa 5 luna, estrella, pi, oso


Bolsa_5 <- c(4,4,18,10,15,2,5,1,3,1,2,3)
nombres_bolsa_5 <- c("azul_medio","azul_claro","azul_fuerte", "verde_fuerte","verde_claro","rojo","rosa_fuerte",
                     "rosa_medio","rosa_claro", "morado","Naranja","Amarillo")

names(Bolsa_5) <- nombres_bolsa_5

Indice_Shannon(Bolsa_5)
Simpson(Bolsa_5)
Chao1(Bolsa_5)


# Bolsa 6 luna grande

Bolsa_6 <- c(4,6,10,3,7,10,9,10,10,10,10,10)
nombres_bolsa_6 <- c("azul_medio","azul_claro","azul_fuerte", "verde_fuerte","verde_claro","rojo","rosa_fuerte",
                     "rosa_medio","rosa_claro", "morado","Naranja","Amarillo")

names(Bolsa_6) <- nombres_bolsa_6

Indice_Shannon(Bolsa_6)
Simpson(Bolsa_6)
Chao1(Bolsa_6)

# Bolsa 7 carita feliz

