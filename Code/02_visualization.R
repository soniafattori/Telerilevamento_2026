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

