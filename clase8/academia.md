# Proyecto academia

> Se trata de una academia que dicta cursos de tecnologías de la informaci´ón (informática) 
> Dicta cursos tales como: 
1. SQL para Análisis de Datos
2. Machine Learning Fundamentos
3. Introducción a SQL
4. Introducción a Python
5. Programación en PHP y MySQL
6. Marketing en Redes Sociales

> Algunas de las áreas temáticas de los cursos son: 
1. Ciencias de Datos
2. Programación
3. Diseño Gráfico
4. Marketing Digital

> Los cursos tienen niveles de complejidad como: 
1. Inicial
2. Intermedio
3. Avanzado
4. Experto

> También debemos almacenar datos de los alumnos y los docentes
> Un alumno se puede anotar en más de un curso
> Un curso tiene más de un alumno

> Tablas propuestas:
[] cursos
[] alumnos
[] docentes
[] areas
[] cursos_alumnos

> Obtener nombre, apellido, curso, fecha de inicio

-----
> cambiar nombre a la tabla cursos_alumnos y llamarle inscripciones

    RENAME TABLE cursos_alumnos TO inscripciones;

> cambiar nombre de columna idCA a idInscripcion

    ALTER TABLE inscripciones
      CHANGE idCA idInscripcion smallint unsigned auto_increment;

> agregar columna "costo" después de idAlumno

    ALTER TABLE inscripciones  
      ADD costo decimal(10,2) unsigned not null  
      AFTER idAlumno;  


