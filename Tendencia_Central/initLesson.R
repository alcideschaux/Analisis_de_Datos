assign("cars", openintro::cars, envir=globalenv())
assign("mpg.midsize", cars[cars$type=="midsize","mpgCity"], envir=globalenv())
# Creando el conjunto de datos 'autos' a partir de 'cars'
autos <- openintro::cars
# Renombrando nombres de las variables
colnames(autos) <- c("tipo", "precio", "mpgCiudad", "trenManejo", "pasajeros", "peso")
# Renombrando los niveles de 'tipo'
levels(autos$tipo)[levels(autos$tipo)=="large"] <- "grande"
levels(autos$tipo)[levels(autos$tipo)=="small"] <- "chico"
levels(autos$tipo)[levels(autos$tipo)=="midsize"] <- "mediano"
# Renombrando los niveles de 'trenManejo'
levels(autos$trenManejo)[levels(autos$trenManejo)=="4WD"] <- "4x4"
levels(autos$trenManejo)[levels(autos$trenManejo)=="front"] <- "frontal"
levels(autos$trenManejo)[levels(autos$trenManejo)=="rear"] <- "trasero"
# Renombrando 'mpg.midsize'
mpg.mediano <- mpg.midsize
# Creando funciones en español
media <- function(x, ...){mean(x, ...)}
mediana <- function(x, ...){median(x, ...)}
tabla <- function(...){table(...)}
