# -- Laboratorio 1

# Remover todos los objetos del "Eviroment"
rm(list=ls())

#ceros expresados sin notación científica
options("scipen"=100, "digits" = 4)

## Librerias a usar
suppressMessages(library(plotly)) #Gráficas interactivas
suppressMessages(library(Quandl)) #Descargar precios
suppressMessages(library(PortfolioAnalytics)) #Teoría moderna de portafolios
suppressMessages(library(ROI)) #Optimización portafolio
suppressMessages(library(knitr)) #Opciones de documentación + código
suppressMessages(library(kableExtra)) #Tablas en HTML
options(knitr.table.format = "html")

Quandl.api_key("DyhrLtT5MsaKtMXoK9zi")

#Crear funciones -> nombre<-function(parámetros){que quieres que haga}

Bajar_precios <- function(Columns, Tickers, Fecha_In, Fecha_Fn){
  
  
  Datos <- Quandl.datatable(code="WIKI/PRICES", qopts.columns=Columns,
                            ticker=Tikers,date.gte=Fecha_In, date.lte=Fecha_Fn)
  return(Datos)
}
