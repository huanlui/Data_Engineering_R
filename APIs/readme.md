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





