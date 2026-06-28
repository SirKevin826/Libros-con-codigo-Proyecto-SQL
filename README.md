# Libros-con-codigo-Proyecto-SQL
Proyecto con uso de SQL para el análisis del comportamiento de los usuarios de una aplicación de libros.

Una startup desarrolló una nueva aplicación para los amantes de los libros, esto durante el confinamiento por la pandemia del COVID-19.

Se usó una base de datos de uno de los servicios que compiten en este mercado, en la cual, contiene datos sobre libros, editoriales, autores y calificaciones de clientes y reseñas de libros. En base a la información se utilizó para generar una propuesta de valor para un nuevo producto.

## Archivos

Para la realización del proyecto se conectó a una base de datos a través de SQL:

**`books`**

Contiene datos sobre libros:

- `book_id`: identificación del libro
- `author_id`: identificación del autor o autora
- `title`: título
- `num_pages`: número de páginas
- `publication_date`: fecha de la publicación
- `publisher_id`: identificación de la editorial

**`authors`**

Contiene datos sobre autores:

- `author_id`: identificación del autor o autora
- `author`: el autor o la autora

**`publishers`**

Contiene datos sobre editoriales:

- `publisher_id`: identificación de la editorial
- `publisher`: la editorial

**`ratings`**

Contiene datos sobre las calificaciones de usuarios:

- `rating_id`: identificación de la calificación
- `book_id`: identificación del libro
- `username`: el nombre del usuario que revisó el libro
- `rating`: calificación

**`reviews`**

Contiene datos sobre las reseñas de los y las clientes:

- `review_id`: identificación de la reseña
- `book_id`: identificación del libro
- `username`: el nombre del usuario que revisó el libro
- `text`: el texto de la reseña

## Metodologías

Para la realización de este proyecto se requirió de una consulta de base de datos a través de SQL, además se utilizó la librería pandas para para imprimir y almacenar los resultados de la consulta, contando así la cantidad de libros, reseñas, editoriales, autores y usuarios activos.

## Hallazgos y recomendaciones

Durante el desarrollo del proyecto y las consultas, se hallaron los siguientes datos:

* Se encontraron 819 libros, se reveló que la base de datos tiene una buena representación de literatura moderna.
* Se encontraron 2793 reseñas, buena parte de los libros se han reseñado en promedio **2.8**, y por lo general, la calificación es entre **3.5 y 4.5**, lo que puede indicar que los usuarios califican principalmente libros que les gustaron, o que la selección de libros en la plataforma es de buena calidad.
* Hay una concentración significativa en pocas editoriales grandes. Las top 5 editoriales publican entre 19-42 libros, mientras que muchas otras solo tienen 1-2 libros.
* Solo el 0.6% de usuarios son extremadamente activos, esto muestra que los usuarios más comprometidos no solo califican muchos libros, sino que también escriben reseñas detalladas.

En conclusión, en esta startup, hay mucho potencial para desarrollar nuevas ideas que podrán aumentar la tasa de retención de una aplicación. Entre las cuales se puede crear un programa de "Embajadores de Lectura" para estos usuarios súper activos, ofreciendo:

* Acceso anticipado a nuevos libros
* Insignias especiales en sus perfiles
* Posibilidad de moderar comunidades temáticas

Tambien pueden desarrollar secciones especializadas como:
* "Nuevos Lanzamientos" y "Tendencias Actuales" para capitalizar este inventario moderno. 
* Los autores mejor calificados son principalmente escritores establecidos, esto puede servir para crear "Colecciones de Autor" y sistemas de recomendación basados en estos autores populares.


