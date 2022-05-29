# Diana Zepada Martinez
# José Juan García Romero


library(psych)
library(readxl)

# a) Preparación de la base de datos

Base_de_datos_de_colombia_tv_internet <- read_excel("C:/Users/josej/Documents/Universidad/Métodos Estadisticos/R/Base_de_datos_de_colombia_tv_internet.xlsx")
View(Base_de_datos_de_colombia_tv_internet)

datos <- Base_de_datos_de_colombia_tv_internet[2:9]
row.names(datos)<-Base_de_datos_de_colombia_tv_internet$DEPTO 
datos 

# b) Análisis de correlación (Recomendado) 

correlacion<-round(cor(datos),2)  #matriz de correlación entre variables 

correlacion 



# c) ACP con función prcomp y con estandarización de datos 

acp <- prcomp(datos, center = T, scale. = T) 

acp 



# c.1) mostrar el porcentaje de varianza acumulada de los CP 

summary(acp) 



# c.2) Gráfico de sedimentación de varianzas 
plot(acp, type="l",  
     col = "blue", 
     main = "Gráfico de sedimentación") 

text(acp$sdev^2,  #datos a escribir 
     labels = round((acp$sdev)^2,2),   #valores a escribir 
     pos = 4, #Posición del texto 
     cex = 0.4)   #Tamaño del texto 



# c.3) Gráfico de variables e inidividuos 

library(ade4)

library(grDevices) 

biplot(acp, scale = 0, cex=0.6) 



# d) ACP con función PCA creando gráficos de variables e individuos 

library(FactoMineR)

acp_PCA <- PCA(datos, scale.unit = T, graph = T)   



# d.1) Gráfica de los porcentajes de varianzas de los componentes
library(ggplot2)
library(factoextra)

fviz_eig(acp_PCA,addlabels = T, ylim = c(0,70))  



# d.2) Gráfica de las variables de los componentes 

fviz_pca_var(acp_PCA)   



# d.3) Gráfica de los individuos de los componentes 

fviz_pca_ind(acp_PCA)   



# d.4) Gráfica conjunta (variables e individuos) los componentes 

fviz_pca_biplot(acp_PCA) 



# d.5) Gráficas de la calidad que aportan las variables a los CP 

library(corrplot)

# d.5-1) Tabla de correlación-calidad variables 

corrplot(acp_PCA$var$cos2, is.corr=FALSE) 



# d.5-2) Histograma 

fviz_cos2(acp_PCA,  
          
          choice = "var",   #variable a graficar 
          
          axes = 1:2,       #número de dimensiones 
          
          ylim = c(0,1)) 



# d.5-3) Variables-PCA 

fviz_pca_var(acp_PCA, col.var = "cos2", 
             
             gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"),  
             
             repel = TRUE) # evita la superposición de texto) 





# d.6) Gráficas de la calidad que aportan los individuos a los PCA 

library(corrplot) 

# d.6-1) Tabla de correlación-calidad individuos

corrplot(acp_PCA$ind$cos2, is.corr=FALSE, tl.cex = 0.5, cl.cex = 0.5) 



# d.6-2) Histograma 

fviz_cos2(acp_PCA,  
          
          choice = "ind",   #variable a graficar 
          
          axes = 1:2,       #número de dimensiones 
          
          ylim = c(0,1)) 



# d.6-3) Individuos-PCA 

fviz_pca_ind(acp_PCA, col.ind = "cos2", 
             
             gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"),  
             
             repel = TRUE) # evita la superposición de texto) 



# d.7) Gráficas de la contribución que aportan las variables a los PCA 

# d.7-1) Tabla de correlación-contribución variables 

corrplot(acp_PCA$var$contrib, is.corr=FALSE)     



# d.7-2) Histograma para variables - PC1 y PC2

fviz_contrib(acp_PCA, choice = "var", axes = 1:2, ylim = c(0,20)) 



# d.7-3) Variables-PCA 

fviz_pca_var(acp_PCA, col.var = "contrib", 
             
             gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07")) 





# d.8) Gráficas de la contribución que aportan las variables a los PCA 
# d.8-1) Tabla de correlación-contribución individuos 

corrplot(acp_PCA$ind$contrib, is.corr=FALSE, tl.cex = 0.5, cl.cex = 0.5)     



# d.8-2) Histograma para individuos - PC1 y PC2 

fviz_contrib(acp_PCA, choice = "ind", axes = 1:2, ylim = c(0,25)) 



# d.8-3) Individuos-PCA 

fviz_pca_ind(acp_PCA, col.ind = "contrib", 
             
             gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07")) 



# e) Obtener clusters jeráquicos con PCA 

hcpc_BDColombia <- HCPC(acp_PCA, nb.clust = 0, graph = F) 



# e.1) Clúster de individuos 

library(factoextra) 

library(ggrepel) 

fviz_cluster(hcpc_BDColombia, 
             
             repel=T,     #para que no se traslapen las etiquetas 
             
             palette="lancet", 
             
             show.clust.cent = F,  #que no muestre los centroides 
             
             ggtheme = theme_minimal(),  #fondo color blanco si no gris 
             
             main = "Cluster de individuos" 
             
) 



# e.2) Determinar las variables que describe más los clusters 

hcpc_BDColombia$desc.var$quanti.var 



# e.3) Determinar las variables más significativas de cada cluster 

hcpc_BDColombia$desc.var$quanti 



# e.4) Determinar los componentes que más se reflejan en cada clúster 

hcpc_BDColombia$desc.axes$quanti   



# e.5) Individuos que más participan en cada clúster 

hcpc_BDColombia$desc.ind$para     # los 5 más altos 
