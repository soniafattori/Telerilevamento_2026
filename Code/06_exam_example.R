library(terra)
library(imageRy)
library(
library(

setwd("")
# c:://blblabla/lnlnln
getwd()
list.files()

  
richat <- rast("C:\Users\Sonia\Desktop\richatstructure_oli_20260306.jpg")
richat <- flip(richat)
plot(richat)

png("figura.png")
plot(richat)
dev.off()

png("bande.png")
im.multiframe (2,1)
plot(richat[[1]])
plot(richat[[2]])
dev.off()

  code da chat gpt

  
