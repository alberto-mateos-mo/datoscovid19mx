## code to prepare `covid19mx` dataset goes here

# Libraries needed
require(dplyr)
require(plyr)
# require(datoscovid19mx)

# Data reading
datos <- read.csv("datos_abiertos_covid19/200414COVID19MEXICO.csv", encoding = "UTF-8")
datos <- janitor::clean_names(datos)
covid_raw <- datos

usethis::use_data(covid_raw)

# Data recoding

datos$municipio_res <- as.numeric(paste0(datos$municipio_res, datos$entidad_res))

municipios$clave2 <- as.numeric(paste0(as.numeric(municipios$clave_municipio), as.numeric(municipios$clave_entidad)))

datos$origen <- mapvalues(datos$origen, from = origen$clave, to = origen$descripcion)

datos$sector <- mapvalues(datos$sector, from = sector$clave, to = sector$descripcion)

datos$sexo <- mapvalues(datos$sexo, from = sexo$clave, to = sexo$descripcion)

datos$entidad_um <- mapvalues(datos$entidad_um, from = as.numeric(entidad$clave_entidad), to = entidad$entidad_federativa)

datos$entidad_nac <- mapvalues(datos$entidad_nac, from = as.numeric(entidad$clave_entidad), to = entidad$entidad_federativa)

datos$entidad_res <- mapvalues(datos$entidad_res, from = as.numeric(entidad$clave_entidad), to = entidad$entidad_federativa)

datos$municipio_res <- mapvalues(datos$municipio_res, from = municipios$clave2, to = municipios$municipio)

datos$tipo_paciente <- mapvalues(datos$tipo_paciente, from = paciente$clave, to = paciente$descripcion)

datos$intubado <- mapvalues(datos$intubado, from = sino$clave, to = sino$descripcion)

datos$neumonia <- mapvalues(datos$neumonia, from = sino$clave, to = sino$descripcion)

datos$nacionalidad <- mapvalues(datos$nacionalidad, from = nacionalidad$clave, to = nacionalidad$descripcion)

datos$embarazo <- mapvalues(datos$embarazo, from = sino$clave, to = sino$descripcion)

datos$habla_lengua_indi <- mapvalues(datos$habla_lengua_indi, from = sino$clave, to = sino$descripcion)

datos$diabetes <- mapvalues(datos$diabetes, from = sino$clave, to = sino$descripcion)

datos$epoc <- mapvalues(datos$epoc, from = sino$clave, to = sino$descripcion)

datos$asma <- mapvalues(datos$asma, from = sino$clave, to = sino$descripcion)

datos$inmusupr <- mapvalues(datos$inmusupr, from = sino$clave, to = sino$descripcion)

datos$hipertension <- mapvalues(datos$hipertension, from = sino$clave, to = sino$clave)

datos$otra_con <- mapvalues(datos$otra_con, from = sino$clave, to = sino$descripcion)

datos$cardiovascular <- mapvalues(datos$cardiovascular, from = sino$clave, to = sino$descripcion)

datos$obesidad <- mapvalues(datos$obesidad, from = sino$clave, to = sino$descripcion)

datos$renal_cronica <- mapvalues(datos$renal_cronica, from = sino$clave, to = sino$descripcion)

datos$tabaquismo <- mapvalues(datos$tabaquismo, from = sino$clave, to = sino$descripcion)

datos$otro_caso <- mapvalues(datos$otro_caso, from = sino$clave, to = sino$descripcion)

datos$resultado <- mapvalues(datos$resultado, from = resultado$clave, to = resultado$descripcion)

datos$migrante <- mapvalues(datos$migrante, from = sino$clave, to = sino$descripcion)

datos$uci <- mapvalues(datos$uci, from = sino$clave, to = sino$descripcion)

covid_clean <- datos

usethis::use_data(covid_clean)
