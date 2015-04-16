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
rango <- function(x, ...){range(x, ...)}
dest <- function(x, ...){sd(x, ...)}
RIC <- function(x, ...){IQR(x, ...)}
media <- function(x, ...){mean(x, ...)}
mediana <- function(x, ...){median(x, ...)}
tabla <- function(...){table(...)}
niveles <- function(x){levels(x)}
resumen <- function(x, ...){
  media.x <- mean(x, na.rm = TRUE)
  mediana.x <- median(x, na.rm = TRUE)
  q1.x <- quantile(x, probs = 0.33, na.rm = TRUE)
  q3.x <- quantile(x, probs = 0.66, na.rm = TRUE)
  min.x <- min(x, na.rm = TRUE)
  max.x <- max(x, na.rm = TRUE)
  matrix(round(c(min.x, q1.x, mediana.x, media.x, q3.x, max.x), 1),
    nrow = 6, ncol = 1,
    dimnames = list(c("Minimo", "1er. cuartil",
      "Mediana", "Media", "3er. cuartil", "Maximo"),
      c("Valores")
    )
  )
}
