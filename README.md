# MarvelHeroes_iOS

Proyecto para la realización de la prueba técnica de openbank

Pantallas que componen la aplicación:
* Splash
* Listado de superhéroes
* Detalle de un superhéroe

Arquitectura escogida: MVP
Pods instalados:
* Alamofire
* SwiftyJSON

La estructura del proyecto se compone de los siguientes paquetes:
* Utils: Clases de utilidad
* Services: Clases donde se define la estructura que tendrán las llamadas a la API y su implementación
* Model: Clases para el modelo
* Splash: Un ejemplo de estructura para una vista
 * SplashPresenter: Presentador encargado de comunicarse con la vista y el modelo
 * SplashView: Interfaz donde se definen los métodos a implementar en el viewcontroller
 * SplashVC: ViewController con la lógica de la vista

Al inicio de la aplicación se muestra un splash simulando un loading con un timer de 2 segundos. 
Después pasamos al viewcontroller principal con el listado de los superhéroes llamando a la API y retornandolos. Se ha utilizado un collectionView con 2 celdas por fila.
Las imágenes se cargan mediante URL.
Al pinchar sobre un superhéroe pasaremos a su vista de detalle. Se ha utilizado un NavigationRootController para la navegación mediante navigationBar.
En la vista de detalle se ha utilizado un tableView para facilitar el scroll y con el prototipado de celdas se ha montado la pantalla de detalle.

