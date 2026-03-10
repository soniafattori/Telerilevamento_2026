# R code for visualizing satellite images

libray(terra)
library(imagery)

install.packages("viridis")
library(viridis)

# listing data
im.list()

# import image
im.import("sentinel.dolomites.b2.tif)
# riflettanza tofane, quelli che riflettono maggiormente il blu hanno colore giallo, quelli che assorbono molto il blu sono blu

# change colors della legenda
cl<- colorRampePalette(c("#7FFFD4", "brown1", "gold"))(100)   #vai su R colors e selezionali, bisogna concatenarli e scrivere fuori quante sfumature
plot(b2, col=cl)

# virids palette
plot(b2, col=inferno(100))

#excercise: plot with mako
plot(b2, col=mako(100))
plot(b2, col=mako(3))

#plot b2 with a greyscale palette

# visualizzazione mappe
par(mfrow=c(1,2))
plot(b2, col=cl)
plot(b2, col=inferno(100))

dev.off()   #chiude tutto (killer)

# visualizzazione mappe
im.multiframe <- function (x, y)
plot(b2, col=cl)
plot(b2, col=inferno(100))

# Importing band 3

b3 <- im.import("sentinel.dolomites.b3.tif")

# Exercise: change the ramp palette according to the viridis package
plot(b3, col=plasma(100))

# Importng band 4
b4 <- im.import("sentinel.dolomites.b4.tif")

# Importng band 8
b8 <- im.import("sentinel.dolomites.b8.tif")

im.multiframe(2,2)

# Exercise: multiframe with the four bands, legends: in line with the wavelength
clb <- colorRampPalette(c("dark blue", "blue", "light blue"))(100)
plot(b2, col=clb)

clg <- colorRampPalette(c("dark green", "green", "light green"))(100)
plot(b3, col=clg)

clr <- colorRampPalette(c("#8B1A1A", "red", "pink"))(100)
plot(b4, col=clr)

cln <- colorRampPalette(c("goldenrod3", "goldenrod2", "goldenrod"))(100)
plot(b8, col=cln)

plot(b2, col=inferno(100))
plot(b3, col=inferno(100))
plot(b4, col=inferno(100))
plot(b8, col=inferno(100))

sentinel <- c(b2, b3, b4, b8)
plot(sentinel)
plot(sentinel, col=inferno(100))

plot(sentinel$sentinel.dolomites.b8)

# layer1=b2, layer2=b3, layer3=b4, layer4=b8
plot(sentinel[[4]])
plot(sentinel[[2]])
