# filtrado de resultados

> Filtrar resultados de una consulta significa que vamos a traer únicamente los registros que cumplan una condición
> para implementar un filtro utilizamos la palabra reservada **WHERE** seguida de una condición

    SELECT campo, campo  
      FROM tabla  
      WHERE condicion;

> práctica: 
> obtener el nombre y el precio de un producto con un precio hasta 750

    SELECT producto, precio  
      FROM productos  
      WHERE precio <= 750;  

> obtener el nombre y el precio de un producto con un precio entre 150 y 750

    SELECT producto, precio  
      FROM productos  
      WHERE precio >= 150  
      AND precio <= 750;  

> uso de BETWEEN 

    SELECT producto, precio  
      FROM productos  
      WHERE precio BETWEEN 150 AND 750;  

    select * from clientes
      WHERE fechaAlta
      BETWEEN '2024-06-01'  AND '2024-06-30';  

> Obtener todos los productos de las marcas
> Logitech (idMarca = 14) 
> y de la marca HP (idMarca = 7)

    SELECT producto, precio  
      FROM productos  
      WHERE idMarca = 7  
      OR idMarca = 14;  

> función IN()

    SELECT producto, precio  
      FROM productos  
      WHERE idMarca IN(7, 14);  
