# Consumo de APIs

![](https://developer.spotify.com/assets/WebAPI_intro.png)

* Es una manera segura de extraer datos, tanto para la empresa como para el usuario.
* Requieren de una autenticación, en algunos casos complicada.
* Suelen devolver los datos en formato JSON.

## Google Places API

* Funcionalidades exactas a las de Google Maps.
* Todos los datos de Google Maps a disposición de una query.
* Documentación disponible: https://developers.google.com/places/web-service/intro?hl=es
* Soporte: https://stackoverflow.com/questions/tagged/google-maps. Con los tags Google-places, Google-maps, otras.
* Requiere de un API key que se obtiene con una cuenta Google desde el enlace https://developers.google.com/places/web-service/get-api-key.
* Fácil de utilizar.
* Documentación muy bien explicada.
* Bug reporting.
* Múltiples ejemplos.

### ¿Cómo obtener la API Key?

1. Ir al siguiente enlace: https://developers.google.com/places/web-service/get-api-key#quick-guide
2. Seleccionar todos los en los servicios
3. Crea un proyecto si aún no lo tienes creado
4. Se debe habilitar la facturación. Esto no implica ningún cobro, se tienen un número limitado de solicitudes.
5. ¡Tu API key ya está listo para usarse! (si tienes la tarjeta de crédito añadida)

Habilitamos Distance Matrix, GeoCoding y Goggle Places. 

### Posibles ideas de aplicación

Con los datos de precios de pisos que sacamos en otros lados, podemos sacar la calle y número. Podemos geolocalizarlas y buscar con Google API el hospital más cercano, el suermercado más cercano, etc. 

Necesitaremos hacer limpieza de la dirección. 

### Googleway

Usamos librería [googleway](https://cran.r-project.org/web/packages/googleway/googleway.pdf), que a veces se queda obsoleta con cambios en Google Maps. 

Te wrappea la API, con funciones como google_distance para calcular distancia, o google_places para buscar sitios. 

## Idealista

* Se extraen datos de inmuebles que se encuentran publicados en la web.
* Difícil de conectar, necesita una autenticación Oauth 2.0.
* No es fácil obtener un API key.
* Devuelve solamente 50 inmuebles en un radio.
* Documentación solo disponible luego de la solicitud del API key.
* Es la web de inmuebles más completa de España.
* Precios elevados.
* Rellena el siguiente formulario: http://developers.idealista.com/access-request
* Cruza los dedos para que te lo aprueben.
* Tendrás solo 150 solicitudes mensuales.



## Otras APIs

* [Airquality](http://aqicn.org/here/es/)
* [Twitter](https://developer.twitter.com/en/docs/api-reference-index.html)
* [Facebook](https://developers.facebook.com/docs/apis-and-sdks?locale=es_ES)
* [Spotify](https://developer.spotify.com/documentation/web-api/)
* [Youtube](https://developers.google.com/youtube/v3/)





