
## 

# Bolsa 1

# Naranjas, 88

Indice_Shannon(c(88))
Simpson(c(88))
Chao1(c(88))

# Bolsa 2

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
# Bray-curtis = 0.13333
