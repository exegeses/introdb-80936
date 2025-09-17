# consultas

> obtener todos los datos de la tabla marcas
> ordenados por su id

    SELECT * FROM marcas  
    ORDER BY idMarca;  

> obtener la columna "producto" y la columna "precio" de la tabla productos ordenado por precio

    SELECT producto, precio  
	  FROM productos
        ORDER BY precio;

> Podemos utilizar dos criterios de orden

    SELECT producto, precio  
      FROM productos  
      ORDERR BY idMarca, precio;  

