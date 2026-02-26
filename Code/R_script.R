# First R script

2 + 3

# oggetti e assegnazione
michele <- 2 + 3 

tecla <- 4 + 6

# tutte le operazioni possibili
michele + tecla
michele ^ tecla
michele / tecla

# arrais o vettori
sonia <- c(10, 8, 3, 1, 0)    # funzione e argomenti, c: concatena
giorgia <- c(3, 10, 20, 50, 100)

plot(giorgia, sonia)    # primo nome X, secondo Y (variabile dipendente)
plot(giorgia, sonia, col="blue")

# pch sono i simboli utilizzabili in R
plot(giorgia, sonia, col="blue", pch=19)

# cex per modificare le dimensioni dei simboli
plot(giorgia, sonia, col="blue", pch=19, cex=2)

# xlab per etichette su x e ylab per le y
plot(giorgia, sonia, col="blue", pch=19, cex=2, xlab="pollution", ylab="numero di delfini")

# installazione pacchetti
# tramite CRAN R 
install.packages("terra")   #intalla il pacchetto, ricorda le " ogni volta che esci da R
library(terra)          #richiama il pacchetto per utilizzarlo

# tramite github
install.packages("devtools")  #remote
library(devtools)
install_github("ducciorocchini/imageRy")

im.list()
