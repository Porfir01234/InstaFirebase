InstaFirebase
Descripción:

InstaFirebase es una aplicación diseñada para facilitar la gestión de imágenes utilizando los poderosos servicios de Firebase.
Con una interfaz intuitiva y un flujo de trabajo sencillo, InstaFirebase permite a los usuarios seleccionar imágenes de su galería,
asignarles un nombre y subirlas a Firebase, donde se almacenan de manera segura y accesible.

Características Principales:

Selección de Imágenes:
Permite al usuario seleccionar imágenes directamente desde la galería de su dispositivo, lo que hace que el proceso de carga sea rápido y fácil.

Asignación de Nombres:
Los usuarios pueden nombrar cada imagen antes de subirla, facilitando la organización y búsqueda de imágenes en el futuro.

Integración con Firebase:
Utiliza Firebase Authentication (FireAuth) para gestionar el acceso y la autenticación de los usuarios, 
asegurando que solo los usuarios autorizados puedan cargar y ver las imágenes.
Emplea Firebase Storage para almacenar las imágenes, garantizando un acceso rápido y seguro.
Utiliza Firestore para guardar la metadata de las imágenes (nombre y URL) y permitir su recuperación eficiente.

Visualización de Imágenes:
Las imágenes subidas se muestran en una pantalla de lista, donde los usuarios pueden ver todas las imágenes junto con sus nombres.
Esto permite una navegación sencilla y rápida a través de su contenido.

Interactividad:

Flujo de Trabajo:
El usuario inicia sesión en la aplicación mediante Firebase Authentication.
Selecciona una imagen de su galería.
Ingresa un nombre para la imagen.
La imagen se sube a Firebase Storage, y los datos (nombre y URL) se almacenan en Firestore.
En la pantalla de lista, se muestran todas las imágenes subidas, permitiendo al usuario acceder a ellas fácilmente.

Tecnologías Utilizadas:
Frontend: Swift (para iOS)
Backend: Firebase (Firestore, Firebase Storage, FireAuth)
