url <- "https://www.pisos.com/venta/pisos-madrid/"

pisoscom<-read_html(url,silent = T)

# control + shift + m . %>% 
detail<- pisoscom %>%
  html_nodes(".price") %>% 
  html_text()

detail

# text mining (limpieza)

# Me quedo sólo con los que tengan el texto € (para caracteres raros, usar el código unicode, "\u20AC" en este caso).
# Ver https://unicode-table.com/es/
price<-detail[grepl("\u20AC",detail,perl=TRUE)]  

price 

price<-gsub("\u20AC", "",price,perl=TRUE) # sustituyo euro por nada

price

price<-gsub(" ","",chartr(".", " ", price)) #quitamos puntos y especios. También me ha quitado retornos de caro, no sabemos muy bien xq pero mejor

price

#lo convierto a número

price<-as.numeric(price[!is.na(as.numeric(price))])
price

