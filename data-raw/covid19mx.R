## code to prepare `covid19mx` dataset goes here

# Libraries needed
require(dplyr)
require(plyr)
require(datoscovid19mx)

# Data reading
datos <- read.csv("datos_abiertos_covid19/200415COVID19MEXICO.csv", encoding = "UTF-8")
datos <- janitor::clean_names(datos)
covid_raw <- datos

usethis::use_data(covid_raw, overwrite = TRUE)

# Data recoding

datos$municipio_res <- as.numeric(paste0(datos$municipio_res, datos$entidad_res))

diccionarios$municipios$clave2 <- as.numeric(paste0(as.numeric(diccionarios$municipios$clave_municipio), as.numeric(diccionarios$municipios$clave_entidad)))

datos$origen <- mapvalues(datos$origen, from = diccionarios$origen$clave, to = diccionarios$origen$descripcion)

datos$sector <- mapvalues(datos$sector, from = diccionarios$sector$clave, to = diccionarios$sector$descripcion)

datos$sexo <- mapvalues(datos$sexo, from = diccionarios$sexo$clave, to = diccionarios$sexo$descripcion)

datos$entidad_um <- mapvalues(datos$entidad_um, from = as.numeric(diccionarios$entidad$clave_entidad), to = diccionarios$entidad$entidad_federativa)

datos$entidad_nac <- mapvalues(datos$entidad_nac, from = as.numeric(diccionarios$entidad$clave_entidad), to = diccionarios$entidad$entidad_federativa)

datos$entidad_res <- mapvalues(datos$entidad_res, from = as.numeric(diccionarios$entidad$clave_entidad), to = diccionarios$entidad$entidad_federativa)

datos$municipio_res <- mapvalues(datos$municipio_res, from = diccionarios$municipios$clave2, to = diccionarios$municipios$municipio)

datos$tipo_paciente <- mapvalues(datos$tipo_paciente, from = diccionarios$paciente$clave, to = diccionarios$paciente$descripcion)

datos$intubado <- mapvalues(datos$intubado, from = diccionarios$sino$clave, to = diccionarios$sino$descripcion)

datos$neumonia <- mapvalues(datos$neumonia, from = diccionarios$sino$clave, to = diccionarios$sino$descripcion)

datos$nacionalidad <- mapvalues(datos$nacionalidad, from = diccionarios$nacionalidad$clave, to = diccionarios$nacionalidad$descripcion)

datos$embarazo <- mapvalues(datos$embarazo, from = diccionarios$sino$clave, to = diccionarios$sino$descripcion)

datos$habla_lengua_indi <- mapvalues(datos$habla_lengua_indi, from = diccionarios$sino$clave, to = diccionarios$sino$descripcion)

datos$diabetes <- mapvalues(datos$diabetes, from = diccionarios$sino$clave, to = diccionarios$sino$descripcion)

datos$epoc <- mapvalues(datos$epoc, from = diccionarios$sino$clave, to = diccionarios$sino$descripcion)

datos$asma <- mapvalues(datos$asma, from = diccionarios$sino$clave, to = diccionarios$sino$descripcion)

datos$inmusupr <- mapvalues(datos$inmusupr, from = diccionarios$sino$clave, to = diccionarios$sino$descripcion)

datos$hipertension <- mapvalues(datos$hipertension, from = diccionarios$sino$clave, to = diccionarios$sino$clave)

datos$otra_con <- mapvalues(datos$otra_con, from = diccionarios$sino$clave, to = diccionarios$sino$descripcion)

datos$cardiovascular <- mapvalues(datos$cardiovascular, from = diccionarios$sino$clave, to = diccionarios$sino$descripcion)

datos$obesidad <- mapvalues(datos$obesidad, from = diccionarios$sino$clave, to = diccionarios$sino$descripcion)

datos$renal_cronica <- mapvalues(datos$renal_cronica, from = diccionarios$sino$clave, to = diccionarios$sino$descripcion)

datos$tabaquismo <- mapvalues(datos$tabaquismo, from = diccionarios$sino$clave, to = diccionarios$sino$descripcion)

datos$otro_caso <- mapvalues(datos$otro_caso, from = diccionarios$sino$clave, to = diccionarios$sino$descripcion)

datos$resultado <- mapvalues(datos$resultado, from = diccionarios$resultado$clave, to = diccionarios$resultado$descripcion)

datos$migrante <- mapvalues(datos$migrante, from = diccionarios$sino$clave, to = diccionarios$sino$descripcion)

datos$uci <- mapvalues(datos$uci, from = diccionarios$sino$clave, to = diccionarios$sino$descripcion)

covid_clean <- datos

usethis::use_data(covid_clean, overwrite = TRUE)
