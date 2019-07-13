#--------------------------------------------------------------------------------------------------#
# google_geocode.R: Este codigo ejecuta la limpieza de la direccion que proviene del web scraping
# y la geolocalizacion de la direccion
# Realiza una llamada a las funciones del codigo  "./Web_scraping/clean_data_scrap.R" que se utilizan
# para extraer la direccion mas limpia

#INPUT: dataset con direccion a limpiar y geolocalizar

#OUTPUT: dataset con columna address_format

#--------------------------------------------------------------------------------------------------#




#--------------------------------------------------------------------------------------------------#
#  ___           _          _                  ____                                     _        
# |_ _|  _ __   (_)   ___  (_)   ___    _     / ___|   ___    ___     ___    ___     __| |   ___ 
#  | |  | '_ \  | |  / __| | |  / _ \  (_)   | |  _   / _ \  / _ \   / __|  / _ \   / _` |  / _ \
#  | |  | | | | | | | (__  | | | (_) |  _    | |_| | |  __/ | (_) | | (__  | (_) | | (_| | |  __/
# |___| |_| |_| |_|  \___| |_|  \___/  (_)    \____|  \___|  \___/   \___|  \___/   \__,_|  \___|
#--------------------------------------------------------------------------------------------------#




rm(list=ls())

#Mi apikey
APIkey<-NULL

#cargamos las funciones auxiliares
source("./Web_scraping/clean_data_scrap.R")

#leemos el fichero en output
list.files("./data_out",full.names = T,pattern=".Rdata")
load("./data_out/data_scrap_madrid_venta_pisoscom_2019-04-22.Rdata")


#extraemos la direccion a limpiar y geolocalizar
address <- data_scrap$address


#---------------- Limpieza de la direccion address ----------------------#
address <- tolower(address)
address <- chartr("\u00e1\u00e9\u00ed\u00f3\u00fa","aeiou",address) #quitamos tildes

#obtenemos el tipo de vivienda
Tipo <- getTipo(address)

DirClean_DirCompleta <- Get_DirClean_DirCompleta(address) # 1 o 0 diciendo si está completa (con el número)

DirClean <- DirClean_DirCompleta[[1]]

address_complete <- paste0(DirClean, ", ",data_scrap$localidad) # ponemos las direcciones en formato "Calle Viriato 2, Belmez", que así descubre
#mejor Google Map. 

#---------------- Fin Limpieza de la direccion address ----------------------#







for(i in 1:length(address_complete)){
  
  print(paste("Geolocalizando direccion",i,"de",length(address_complete)))
  
  address<-address_complete[i]
  status<-"ZERO_RESULTS"
  j<-1
  
  #Se realiza el sigueinte while para que realice al menos tres intentos
  while(status=="ZERO_RESULTS" & j<=3){# Lo intentmoas 3 veces. No nos van a cobrar más, porque golgle no te cobra por 2 si haces la misma request en poco lapso de tiempo
    result<-googleway::google_geocode(address,key=APIkey)
    status<-result$status
    if(status=="ZERO_RESULTS"){Sys.sleep(3)}
    j<-j+1
  }
  
  #Si el resultado es KO se asigna NA
  if(status=="ZERO_RESULTS"){result$results$geometry$location<-data.frame(lat=NA,lng=NA);result$results$formatted_address<-NA}
  
  #guardamos los resultados 
  if(exists("latlon")==F){ # cuando es la primera vez que lo ejecuto ,no existe esa variable
    latlon<-data.frame(result$results$geometry$location[1,],address,formated_address=result$results$formatted_address[1])}else{
      latlon<-rbind(latlon,data.frame(result$results$geometry$location[1,],address,formated_address=result$results$formatted_address[1]))
      #rbind es añadir una fila, recordemos
    }
  
  
  
}

names(latlon)<-c("lat","lon","address","formated_address")

latlon$lat
latlon$formated_address

View(latlon)

save(latlon,file="latlon.Rdata")




#---------------------------------------------------------------------------#
#                            _____   _         
#                           |  ___| (_)  _ __  
#                           | |_    | | | '_ \ 
#                           |  _|   | | | | | |
#                           |_|     |_| |_| |_|
#---------------------------------------------------------------------------#


