# my function wow

somma <- function(x, y) {
  z= x+y
  return(z)
  }

difference <- function (bob, paperino) {
  z= bob-paperino
  return(z)
  }

#par
mf<- function (nx, ny){
  par(mfrow= c(nx, ny))
}

sent <- im.import("sentinel.dolomites")
mf(1,2)
library (terra)
plot(sent[[1]])
plot(sent[[2]])


mf2<- function (nx=1, ny=2){
  par(mfrow= c(nx, ny))
}
mf()
plot(sent[[1]])
plot(sent[[2]])

# if else

positivo <- function(x) {
  if(x>0){
    "positivo, stiamo andando a gonfie vele"
    }
  else if (x<0) {
    "negativo capitano, stiamo affondando"}    
  else {
    "zero non è negativo ne positivo"}
}


#for
loop<- function () {
  for(i in 1:50)
    print (i)
}

loop2 <- function () {
  for(i in 1:50) {
    op <- i*7
    print (op)
  }
}

setwd ...
sink("output.txt")
loop2()
sink ()

