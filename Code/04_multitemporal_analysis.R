# R code for performing multitemporal analysis with satellite imagery

install.packages("ggrdiges")
library (ggrdiges)
library (terra)
library (imageRy)
library (viridis)
im.list()

EN_01 <- im.import("EN_01.png")
EN_01 <- flip(EN_01)    #2^8 -> 8 bit
plot(EN_01)

EN_13 <- im.import("EN_13.png")
EN_13 <- flip(EN_13)    #2^8 -> 8 bit
plot(EN_13)

im.multiframe (2, 1)
plot(EN_01)
plot(EN_13)

ENdifference <- EN_01[[1]] - EN_13[[1]]
plot(ENdifference)  #valori gialli avevano valori più alti nella prima immagine

# greenland example

#import all the greenland data and create a stack
gr00 <- im.import( "greenland.2000.tif")
gr05 <- im.import("greenland.2005.tif") 
gr10 <- im.import( "greenland.2010.tif")
gr15 <- im.import( "greenland.2015.tif")

GR <- c(gr00, gr05, gr10, gr15)
plot (GR)

# 2 
GR2 <- im.import ("greenland")
plot (GR2)

im.multiframe(1, 2)
plot (GR2[[1]], col=plasma(100))
plot (GR2[[4]], col=plasma(100))

dif <- GR2[[4]]- GR2[[1]]
plot (dif)

#RGB
im.plotRGB(GR2, r=1, g=2, b=4)

# import data
ndvi <- im.import("Sentinel2_NDVI")

hist (ndvi)

# distribuzione di frequenza rappresentata da curve continue: 
im.ridgeline(ndvi, scale=1, palette="viridis") 

names(ndvi)<-c ("02feb", "05may", "08aug", "11nov")
im.ridgeline(ndvi, scale=2, palette="viridis") 

plot(ndvi[[1]], ndvi[[2]])
# y= x
# y= a + bx 
# a= 0, b= 1
abline(0, 1, col= "blue")

# mettere le stesse scale 
# xmin = -0,3
# y max = 0.9
plot(ndvi[[1]], ndvi[[2]], xlim=c(-0.3, 0.9), ylim=c(-0.3, 0.9))
abline(0, 1, col= "blue")
