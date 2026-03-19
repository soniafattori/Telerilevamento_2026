# R code for performing multitemporal analysis with satellite imagery

library (terra)
library (imageRy)

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
