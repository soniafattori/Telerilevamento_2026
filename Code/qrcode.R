#install package 
install.packages("qrcode")
library(qrcode)
 
url <- "https://github.com/soniafattori"
 
qr <- qr_code(url)

setwd("C://utente/desktop/")  #rifai
png("github_profile_qr.png", width = 1000, height = 1000)
plot(qr)
dev.off()
