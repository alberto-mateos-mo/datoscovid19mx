## code to prepare `covid19mx` dataset goes here

# Libraries needed
require(plyr)
require(dplyr)
require(datoscovid19mx)

# Data reading
archivo <- list.files("datos_abiertos_covid19")
datos <- read.csv(paste0("datos_abiertos_covid19/", archivo), encoding = "UTF-8")
datos <- janitor::clean_names(datos)
covidmx <- datos

usethis::use_data(covidmx, overwrite = TRUE, compress = "gzip")
