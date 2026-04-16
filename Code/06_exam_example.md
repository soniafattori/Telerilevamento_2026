# Titolo progetto esame

L'area di studio bla bla

ho scelto la mauritania perchè bl bla 

<img width="270" height="180" alt="OIP" src="https://github.com/user-attachments/assets/6f7eaac2-1048-40da-bd56-1dbcdb730eb8" />


## Pacchetti utilizzati

Per questo esame sono stati usati questi pacchetti:

```r
library(terra) #pacchetto per..
library(imageRy) #per multiframe etc
```

## Importazione dati

i dati sono stati scaricati da Earth Observatory: https://assets.science.nasa.gov/dynamicimage/assets/science/esd/eo/images/iotd/2026/eyeing-the-richat-structure/richatstructure_oli_20260306.jpg?w=1440&h=960&fit=clip&crop=faces%2Cfocalpoint

oppure cosi: [earth observatory] (https://assets.science.nasa.gov/dynamicimage/assets/science/esd/eo/images/iotd/2026/eyeing-the-richat-structure/richatstructure_oli_20260306.jpg?w=1440&h=960&fit=clip&crop=faces%2Cfocalpoint)


il codice utilizzato è il seguente

```r
setwd()
# c:://blblabla/lnlnln
getwd()
list.files()
```

per importare i dati è stata utilizzata la funzione `rast()` del pacchetto terra

```r
richat <- rast("C:\Users\Sonia\Desktop\richatstructure_oli_20260306.jpg")
richat <- flip(richat)
plot(richat)
```

importa foto trascinandola dopo aver fatto png
<img width="1440" height="960" alt="richatstructure_oli_20260306" src="https://github.com/user-attachments/assets/5324b7d9-ec2b-4bd5-b9e1-47288c338e44" />
## analisi esplorativa

plottaggio singole bande
```r
im.multiframe (2,1)
plot(richat[[1]])
plot(richat[[2]])
```

# istogrammi tramite chat gpt
chiedi help
