# R code for visualizing satellite images

libray(terra)
library(imagery)

install.packages("viridis")
library(viridis)

install.packages("patchwork")
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

# quarto metodo per un plot: ggplot2
#installa ggplot2
        install.packages("ggplot2")

?im.ggplot
b2<-im.import( "sentinel.dolomites.b2.tif"  )
b3<-im.import( "sentinel.dolomites.b3.tif" )
b4<-im.import( "sentinel.dolomites.b4.tif"    )
b8<-im.import( "sentinel.dolomites.b8.tif")

p1<-im.ggplot(b8)
p2<-im.ggplot(b4)

          p1+p2

# multiframe
          #1. par(mfrow=c(1,2))
          #2. im.multiframe(1,2)
          #3. stack
          #4. ggplot2 patchwork
#RGB ploting
  sentinel<-c(b2, b3, b4, b8)   #il centro è lo stack
  # 1=b2 blue
  # 2=b3 green
  # 3= b4 red
  # 4= b8 nir
#3 filtri e 4 bande
im.plotRGB(sentinel, r=3, g=2, b=1)  #immagine a colore naturale, associa ogni banda al proprio colore con i rispettivi livelli

# vicino infrarosso
im.multiframe(1, 2)
          im.plotRGB(sentinel, r=4, g=3, b=2) #false color red
im.multiframe(1, 2)
im.plotRGB(sentinel, r=3, g=2, b=1)   
im.plotRGB(sentinel, r=4, g=3, b=2)

plot(sentinel[[4]])  #per mettere il plot con scala colori
im.plotRGB(sentinel, r=4, g=3, b=2)

          #nir on green
          g=4
          im.plotRGB(sentinel, r=3, g=4, b=2)  #false color green
          #Nir on top of blue component 
          im.plotRGB(sentinel, r=3, g=2, b=4) # usato spesso a suolo nudo perchè diventano gialle, quindi ad es. per evidenziaare deforestazione false color blu
#plot the four manners of RGB in a single multiframe
im.multiframe(2, 2)
im.plotRGB(sentinel, r=3, g=2, b=1)   
im.plotRGB(sentinel, r=4, g=3, b=2)
im.plotRGB(sentinel, r=3, g=4, b=2) 
im.plotRGB(sentinel, r=3, g=2, b=4)

#position of visible bands
       im.plotRGB(sentinel, r=4, g=3, b=2)
          im.plotRGB(sentinel, r=4, g=2, b=3) #è importante solo l'infrarosso (banda 4)
pairs(sentinel) grafico con tutte le correlazioni con tutte le bande

# plotRGB() from terra
        plotRGB(sentinel, r=4, g=2, b=3, stretch="lin")
plotRGB(sentinel, r=4, g=2, b=3, stretch="hist")
