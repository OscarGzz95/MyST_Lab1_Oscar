# -- Laboratorio 1

# Remover todos los objetos del "Eviroment"
rm(list=ls())

#ceros expresados sin notaci�n cient�fica
options("scipen"=100, "digits" = 4)

## Librerias a usar
suppressMessages(library(plotly)) #Gr�ficas interactivas
suppressMessages(library(Quandl)) #Descargar precios
suppressMessages(library(PortfolioAnalytics)) #Teor�a moderna de portafolios
suppressMessages(library(ROI)) #Optimizaci�n portafolio
suppressMessages(library(knitr)) #Opciones de documentaci�n + c�digo
suppressMessages(library(kableExtra)) #Tablas en HTML
options(knitr.table.format = "html")

Quandl.api_key("DyhrLtT5MsaKtMXoK9zi")

#Crear funciones -> nombre<-function(par�metros){que quieres que haga}

Bajar_precios <- function(Columns, Ticker, Fecha_In, Fecha_Fn){
  
  
  Datos <- Quandl.datatable(code="WIKI/PRICES", qopts.columns=Columns,
                            ticker=Tiker,date.gte=Fecha_In, date.lte=Fecha_Fn)
  return(Datos)
}


tk <- c("TSLA","BBY","HD") #Datos a solicitar
cs <- c("date","adj_close")

fs <- c("2015-08-01","2016-08-01")

Datos <- list()
for(i in 1:length(tk)){
  Datos[[i]] <- Bajar_precios(Columns=cs, Ticker=tk[i], Fecha_In=fs[1], Fecha_Fn=fs[2])
}

names(Datos) <- tk
