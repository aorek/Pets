[![license](https://img.shields.io/github/license/mashape/apistatus.svg)](https://github.com/aorek/Pets/blob/master/LICENSE.md)

# Pets

Queremos poder hacer un seguimiento de las mascotas de nuestro equipo de desarrollo, para ello vamos a desarrollar una pequeña app donde poder:

* Añadir, editar y borrar miembros del equipo de desarrollo que tendrán al menos estos campos: Nombre, Apellido, Email.

* Añadir y editar mascotas que irán vinculadas a un único miembro/dueño. Para el control necesitamos al menos estos campos: Nombre, edad, sexo, tipo (de esta lista: ‘Dog’, ‘Rat’, ‘Cat’, ‘Chinchilla’). Además como no consideramos que una mascota podamos borrarla de nuestras vidas añadiremos un campo más booleano “alive” donde poder indicar si la mascota ha fallecido. Además como requisito cada miembro podrá tener como máximo 5 mascotas asociadas.


#### Getting Started

1. Inicia el server

  `$ rails s`

2. Inicializa la base de datos para que se creen los datos iniciales.

  `$ rake db:setup`

### Destacados

* Modelo de base de datos.
* Datos extraidos de la base de datos, como en el caso de las opciones del tipo
de mascota.

### Mejoras

* Paginación de la tabla de usuarios.
