## code to prepare `diccionarios` dataset goes here

library(readxl)

origen <- read_excel("diccionario_datos_covid19/Catalogos_071020.xlsx", sheet = "Catálogo ORIGEN")
sector <- read_excel("diccionario_datos_covid19/Catalogos_071020.xlsx", sheet = "Catálogo SECTOR")
sexo <- read_excel("diccionario_datos_covid19/Catalogos_071020.xlsx", sheet = "Catálogo SEXO")
paciente <- read_excel("diccionario_datos_covid19/Catalogos_071020.xlsx", sheet = "Catálogo TIPO_PACIENTE")
sino <- read_excel("diccionario_datos_covid19/Catalogos_071020.xlsx", sheet = "Catálogo SI_NO")
nacionalidad <- read_excel("diccionario_datos_covid19/Catalogos_071020.xlsx", sheet = "Catálogo NACIONALIDAD")
lab <- read_excel("diccionario_datos_covid19/Catalogos_071020.xlsx", sheet = "Catálogo RESULTADO_LAB")
clasificacion <- read_excel("diccionario_datos_covid19/Catalogos_071020.xlsx", sheet = "Catálogo CLASIFICACION_FINAL")
entidad <- read_excel("diccionario_datos_covid19/Catalogos_071020.xlsx", sheet = "Catálogo de ENTIDADES")
municipios <- read_excel("diccionario_datos_covid19/Catalogos_071020.xlsx", sheet = "Catálogo MUNICIPIOS")


diccionarios <- list(
  entidad = entidad,
  municipios = municipios,
  nacionalidad = nacionalidad,
  origen = origen,
  paciente = paciente,
  sector = sector,
  sexo = sexo,
  sino = sino,
  resultado_lab = lab,
  clasificacion = clasificacion
)

usethis::use_data(diccionarios, overwrite = TRUE)
