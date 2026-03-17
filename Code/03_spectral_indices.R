library(terra)
library(imageRy)

#lista file
im.list()

#importing data
mato1992 <-im.import("matogrosso_l5_1992219_lrg.jpg")
#landsat 5 è il satellite che l'ha raccolta

# ruota
mato1992<-flip(mato1992)
# l1=NIR, l2=RED, l3=green
im.plotRGB(mato1992, 1, 2, 3)   # tutto ciò che è rosso è foresta pluviale

# evidenzia la parte verde con NIR on top of the green component of the RGB scheme
im.plotRGB(mato1992, 2, 1, 3) 
# diventa blu
im.plotRGB(mato1992, 3, 2, 1) 

mato1992
 2^8
[1] 256   #immagine a 8 bit

# risoluzione spaziale, spettrale (e radiometrica (quanti bit compongono l'immagine)

# importa immagine del 2006
mato2006 <-im.import("matogrosso_ast_2006209_lrg.jpg")
mato2006<-flip(mato2006)

im.plotRGB(mato2006, 1, 2, 3)

#exercise: make a multiframe with the two images
im.multiframe(1,2)
im.plotRGB(mato1992, 1, 2, 3)
im.plotRGB(mato2006, 1, 2, 3)

plotRGB(mato1992, 1, 2, 3, stretch="hist")
plotRGB(mato2006, 1, 2, 3, stretch="hist")

im.multiframe(1,2)
im.plotRGB(mato1992, 3, 2, 1)
im.plotRGB(mato2006, 3, 2, 1)

im.multiframe(1,2)
im.plotRGB(mato1992, 2, 1, 3)
im.plotRGB(mato2006, 2, 1, 3)

#DVI
dvi1992<- mato1992[[1]] - mato1992[[2]]
plot(dvi1992)
im.plotRGB(mato1992, 1, 2, 3)

# 8 bit
# NIR - red = 255-0 = 255 #max DVI
# NIR - red = 0 - 255 = -255 #min DVI
# range = -255, 255

# exercise: calculate min and max for image with 4 bit
2^4=16
# NIR - red = 15-0 = 15 #max DVI
# NIR - red = 0 - 15 = -15 #min DVI
# range = -15, 15

# due immagini quindi con 2 risoluzioni diverse-> NDVI (porta ad una standardizzazione, non normalizzazione)
# NDVI
# (NIR - red)/(NIR + red)= (255-0)/(255+0)= 1 #max NDVI 8 bit
# (NIR - red)/(NIR + red)= (0-255)/(0+255) = -1 #min NDVI 8 bit

# (NIR - red)/(NIR + red)= (15-0)/(15+0)= 1 #max NDVI 4 bit
# (NIR - red)/(NIR + red)= (0-15)/(0+15) = -1 #min NDVI 4 bit

# ora si possono comparare

ndvi1992 = dvi1992/(mato1992[[1]]+mato1992[[2]])

dvi2006<- mato2006[[1]] - mato2006[[2]]
ndvi2006 = dvi2006/(mato2006[[1]]+mato2006[[2]])
im.multiframe(1,2)
plot(ndvi1992)
plot(ndvi2006)

                   library(viridis)
                   plot(ndvi1992, col=inferno(100))

                   # DVi by imageRy
                   dvi1992= im.dvi(mato1992, 1, 2)
                    dvi2006= im.dvi(mato2006, 1, 2)
                   plot(dvi1992, col=inferno(100))
                   plot(dvi2006, col=inferno(100))

                   # NDVi by imageRy
                   ndvi1992= im.ndvi(mato1992, 1, 2)
                   ndvi2006= im.ndvi(mato2006, 1, 2)
                   plot(ndvi1992, col=mako(100))
                   plot(ndvi2006, col=mako(100))
#plot DVI and NDVI with the 4 images 
im.multiframe (2, 2)
                   plot(dvi1992, col=inferno(100))
                   plot(dvi2006, col=inferno(100))
                   plot(ndvi1992, col=magma(100))
                   plot(ndvi2006, col=magma(100))
                   
