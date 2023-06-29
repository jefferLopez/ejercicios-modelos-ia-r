# install.packages("tm")
library(tm)
# install.packages("e1071")
library(e1071)

# Obtiene la ruta del archivo
rutaDatos <- file.path("D:", "Proyectos", "IA", "ejercicios-modelos-ia-r", "datos", "spam.csv")
# Leer los datos
dataSms <- read.csv(rutaDatos, stringsAsFactors=FALSE)

# Imprime los resultados
head(dataSms)
tail(dataSms)

# Cambia el nombre de la columna v1 por tipo
colnames(dataSms)[1] <- "tipo"

# Convierte la columna type a columna categorica
dataSms$tipo <- as.factor(dataSms$tipo)

# Consultar la cantidad de instancias de cada clase
prop.table(table(dataSms$tipo))

# Cambia el nombre de la columna v2 por texto
colnames(dataSms)[2] <- "texto"

# Aplica tratamiento de datos a los textos para convertirlos en objetos
smsCorpus <- Corpus(VectorSource(dataSms$texto))

# Obtener los datos del objeto corpus
head(smsCorpus[[1]]$content)
head(smsCorpus[[2]])
head(smsCorpus[[3]])
