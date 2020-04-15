## code to prepare `diccionarios` dataset goes here

diccionarios <- list(
  entidad = entidad,
  municipios = municipios,
  nacionalidad = nacionalidad,
  origen = origen,
  paciente = paciente,
  resultado = resultado,
  sector = sector,
  sexo = sexo,
  sino = sino,
  guia = guia
)

usethis::use_data(diccionarios, overwrite = TRUE)
