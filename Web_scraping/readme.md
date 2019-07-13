# Web Scraping

* ¿Cuál es la mayor “base de datos” del mundo?
* ¿Copiar y pegar datos podría tener sentido?
* Los mayores casos de uso de negocio son datos en directorios de páginas amarillas, sitios de bienes raíces, redes sociales, sitios de compras en línea, etc.

![web scrapping](https://www.grid.cl/blog/wp-content/uploads/2019/03/001-efficient-web-scraping.png)

* Por un lugar debemos conocer un poco de html a nivel conceptual y por el otro debemos disponer de los conocimientos técnicos necesarios para lograr extraer datos
* Gestión de grandes cantidades de datos (big data).
* Plantear la estrategia de extracción debemos saber cómo y cuáles serán los datos que a extraer con la finalidad de poder dar un sentido informativo para un caso de uso de negocio.

![scrapping](https://www.antevenio.com/wp-content/uploads/2019/03/web-scraping-service.png)

* El web scraping es la técnica de extracción automática de datos de sitios web mediante software / script.
* Se puede extraer: imágenes, videos, texto, información de contacto como emails, números de teléfonos, etc.
* No es robusto, depende de la estructura de la web.
* Legalidad en la extracción de datos. No se ve con muy buenos ojos, pero hay que tener cuidad con los términos y condiciones de la página. Por eso muchas de estas empresas están en sitios _sin ley_.
* Leyes de protección de datos.

## Ejercicio

Vamos a extraer datos de pisos.com. Fue un proyecto en el que querían extraer datos de pisos. Entraron en idealista y scrapearon la página y por eso se protegió. 

Tienes que detectar la url que quieres atacar. En este caso, para ver madrid , vemos que es https://www.pisos.com/venta/pisos-madrid/. Hay otras mucho más complicadas. 

Queremos sacar:
- Precio.
- Habitación.
- Metros cuadrados. 
- Planta.
- Número de baños. 

Hay una extensíon de Chrome que se llama [SelectorGadget](https://chrome.google.com/webstore/detail/selectorgadget/mhjhnkcfbdhnjickkkdbjoemdmbfginb). Aunque con la consola de chrome sobra. 

Después, los valores que nos llevan necesitan hacer **minería de texto**, que es limpiarlo, quitar los espacios, los retornos de carro, parsear, etc.

Otro problema es la **paginación**. Hay que ser capaz de identificar la relación entre la URL y la página actual. También ser capaz de ver el número de páginas.  

## Biblografía

Simon Munzert, Christian Rubba, Peter Meiner, and Dominic Nyhuis. 2014. Automated Data Collection with R: A Practical Guide to Web Scraping and Text Mining (1st ed.). Wiley Publishing.
Aydın, Olgun. (2018). R Web Scraping Quick Start Guide. 


