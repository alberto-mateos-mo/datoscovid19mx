#' Raw data for COVID-19 in Mexico
#'
#' @source \url{https://www.gob.mx/salud/documentos/datos-abiertos-152127}
#' @format A dataframe with columns:
#' \describe{
#' \item{fecha_actualizacion}{date of update}
#' \item{origen}{if observation comes from USMER system or not}
#' \item{sector}{institution where patient was treated}
#' \item{entidad_um}{state of hospital were the patient was treated}
#' \item{sexo}{gender of the patient}
#' \item{entidad_nac}{state of birth}
#' \item{entidad_res}{state of residence}
#' \item{municipio_res}{town of residence}
#' \item{tipo_paciente}{if patient was hospitalized or not}
#' \item{fecha_ingreso}{date of hospitalization}
#' \item{fecha_sintomas}{date of first symptom}
#' \item{fecha_def}{date of death, if ocurred}
#' \item{intubado}{if intubation was needed}
#' \item{neumonia}{if patient presented pneumonia}
#' \item{edad}{age}
#' \item{nacionalidad}{if patient is mexican or not}
#' \item{embarazo}{if patient was pregnant}
#' \item{habla_langua_indig}{if patient speaks native language}
#' \item{diabetes}{if patient has diabetes}
#' \item{epoc}{if patient had COPD}
#' \item{asma}{if patient has asthma}
#' \item{inmusupr}{if patient has immunosuppression}
#' \item{hipertension}{if patient has hipertension}
#' \item{otra_com}{if patient has other co-morbidities}
#' \item{cardiovascular}{if patient has cardiovascular diseases}
#' \item{obesidad}{if patient has obesity}
#' \item{renal_cronica}{if patient has chronic kidney disease}
#' \item{tabaquismo}{if patient is a smoker}
#' \item{otro_caso}{if patient has contact with a covid positive}
#' \item{resultado}{result of covid19 test}
#' \item{migrante}{if patient is migrant}
#' \item{pais_nacionalidad}{nacionality}
#' \item{pais_origen}{country the patient came from}
#' \item{uci}{if patient required intensive care}
#' }
#' @examples
#' \dontrun{
#'  covid_raw
#' }
"covid_raw"



#' Cleaned data for COVID-19 in Mexico
#'
#' Same data as covid_raw but recoded for better readability
#'
#' @source \url{https://www.gob.mx/salud/documentos/datos-abiertos-152127}
#' @format A dataframe with columns:
#' \describe{
#' \item{fecha_actualizacion}{date of update}
#' \item{origen}{if observation comes from USMER system or not}
#' \item{sector}{institution where patient was treated}
#' \item{entidad_um}{state of hospital were the patient was treated}
#' \item{sexo}{gender of the patient}
#' \item{entidad_nac}{state of birth}
#' \item{entidad_res}{state of residence}
#' \item{municipio_res}{town of residence}
#' \item{tipo_paciente}{if patient was hospitalized or not}
#' \item{fecha_ingreso}{date of hospitalization}
#' \item{fecha_sintomas}{date of first symptom}
#' \item{fecha_def}{date of death, if ocurred}
#' \item{intubado}{if intubation was needed}
#' \item{neumonia}{if patient presented pneumonia}
#' \item{edad}{age}
#' \item{nacionalidad}{if patient is mexican or not}
#' \item{embarazo}{if patient was pregnant}
#' \item{habla_langua_indig}{if patient speaks native language}
#' \item{diabetes}{if patient has diabetes}
#' \item{epoc}{if patient had COPD}
#' \item{asma}{if patient has asthma}
#' \item{inmusupr}{if patient has immunosuppression}
#' \item{hipertension}{if patient has hipertension}
#' \item{otra_com}{if patient has other co-morbidities}
#' \item{cardiovascular}{if patient has cardiovascular diseases}
#' \item{obesidad}{if patient has obesity}
#' \item{renal_cronica}{if patient has chronic kidney disease}
#' \item{tabaquismo}{if patient is a smoker}
#' \item{otro_caso}{if patient has contact with a covid positive}
#' \item{resultado}{result of covid19 test}
#' \item{migrante}{if patient is migrant}
#' \item{pais_nacionalidad}{nacionality}
#' \item{pais_origen}{country the patient came from}
#' \item{uci}{if patient required intensive care}
#' }
#' @examples
#' \dontrun{
#'  covid_clean
#' }
"covid_clean"


#' Dictionaries to recode covid_raw data
#' @source \url{https://www.gob.mx/salud/documentos/datos-abiertos-152127}
#' @format A list with the following data frames:
#' \describe{
#' \item{entidad}{dataframe with values and description for states variables}
#' \item{municipio}{dataframe with values and description for towns}
#' \item{nacionalidad}{dataframe with values and descripttion for nationality variables}
#' \item{origen}{dataframe with values and description for origen variable}
#' \item{paciente}{dataframe with values and description for tipo_paciente variable}
#' \item{resultado}{dataframe with values and description for resultado variable}
#' \item{sector}{dataframe with values and description for sector variable}
#' \item{sexo}{dataframe with values and description for sexo(gender) variable}
#' \item{sino}{dataframe with values and description for binary (yes/no) variables}
#' \item{guia}{description of variables in spanish}
#' }
#' @examples
#' \dontrun{
#'  diccionarios$entidad
#'
#'  diccionarios$origen
#'
#'  diccionarios$resultado
#' }
"diccionarios"
