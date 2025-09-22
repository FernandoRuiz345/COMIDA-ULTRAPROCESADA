
library(readxl)
library(dplyr)

datos = read_excel("COMIDA-ULTRAPROCESADA/Zenodo/Natural_and_Ultra-Processed_Food_database_RATINGS.xlsx")

View(datos)
colnames(datos)

datos1 = datos %>% 
  select(1,4:9,13,17,21,25,29,33);View(datos1)
colnames(datos1)
espa = c("alimento","saludable/No",
         "calx100g","calx1g",
         "pesog",
         "calxporcion","mediaAA",
         "mediaDeseabilidad",
         "media_popularidad",
         "media_salubridad",
         "media_reconocimiento",
         "media_valencia",
         "media_excitación")
colnames(datos1) = espa

pairs(datos1[,3:6])


# Base de datos 2 ---------------------------------------------------------
library(readxl)
library(dplyr)

datos = read.csv("tabla1.csv");View(datos)
colnames(datos)

titulo = c("genero","edad","altura","peso",
         "historial","FAVC","FCVC","NCP",
         "CAEC","fumar","CH2O","SCC",
         "FAF","TUE","CALC","MTRANS",
         "NObeyesdad" )
colnames(datos) = titulo
View(datos)
dim(datos)
str(datos)


library(ggplot2)

ggplot(datos,aes(x=edad,
                 y=altura,
                 color=genero))+
  geom_point()+
  facet_wrap(~genero)+
  geom_smooth(method = "lm",
              color="black")+
  labs(title = "Correlacion entre la altura y edad",
       subtitle = "Separados por genero")

ggplot(datos,aes(x=peso,
                 y=altura,
                 color=genero))+
  geom_point()+
  facet_wrap(~genero)+
  geom_smooth(method = "lm",
              color="black")+
  labs(title = "Correlacion entre la altura y peso",
       subtitle = "Separados por genero")



























































































