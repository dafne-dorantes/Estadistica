
#___________Tablas de frecuencia____________
#utilizamos la matriz iris

#-------------------------------------------
#       Exploración de la matriz 
#-------------------------------------------

#1.- exportación de matriz 
# tenemos 150 individuos y 5 variables
data(iris) 

#2.- exploración de la matriz 
dim(iris)

#3.- nombre de las columnas 
colnames(iris)

#4.- exportación de especies
iris$Species

#5.- tipos de variables
str(iris)

#6.- en busca de valores perdidos
anyNA(iris)

#--------------------------------------------
# Generación de tablas NO AGRUPADAS
#--------------------------------------------

#1.- convertir la matriz de datos a un data frame,
# se agupan los valores para la variable Petal.lenght
# y se calcula la frecuencia absluta

Tabla_Pl<-as.data.frame(table(PI=iris$Petal.Length))

#2.- visualización de la tabla de contingencia de
# la variable Petal.Lenght(PL) y su respectiva frecuencia absoluta
Tabla_Pl

#3.- crear la tabla completa
Tabla1<-transform(Tabla_Pl,
          freqAc=cumsum(Freq),
          Rel=round(prop.table(Freq),3),
          RelAc=round(cumsum(prop.table(Freq)),3))

#----------------------------------------------------
# tablas agrupadas
#----------------------------------------------------
#nota: se debe tener calculado previamente el valor de la amplitud y 
#el rango

#1.- Agrupación de la variable en clases (8 clases)
# 8 renglones.
Tabla_clases<-as.data.frame(table(Petal.Lenght=factor
                                  (cut(iris$Petal.Length,breaks=8))))

#2.- construcción de tabla completa
Tabla2<-transform(Tabla_clases,
                  freqAc=cumsum(Freq),
                  Rel=round(prop.table(Freq),3),
                  RelAc=round(cumsum(prop.table(Freq)),3))
