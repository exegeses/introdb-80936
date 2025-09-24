# proyecto biblioteca
> Crear tablas y almacenar datos para una biblioteca personal

> vamos a necesitar almacenar
1. titulo
2. año de publicación
3. género literario
4. editorial
5. isbn (código)

> tablas propuestas
1. libros
2. generos
3. editoriales
4. autores
5. libros_autores

> obtener: 
1. titulo
2. nombre
3. año

    SELECT titulo, nombre, anio    
      FROM libros as L   
      JOIN libros_autores as LA  
        ON L.idLibro = LA.idLibro  
      JOIN autores as A  
        ON LA.idAutor = A.idAutor;  

> obtener:
1. titulo
2. nombre
3. año
4. genero
5. editorial

   SELECT titulo, nombre, anio, genero, editorial      
   FROM libros as L   
   JOIN libros_autores as LA  
   ON L.idLibro = LA.idLibro  
   JOIN autores as A  
   ON LA.idAutor = A.idAutor  
   JOIN generos as G  
     ON L.idGenero = G.idGenero  
   JOIN editoriales as E  
     ON L.idEditorial = E.idEditorial;