# Vistas en SQL
/*
    Una vista es una consulta
    que podemos almacenar dentro de nuestra base de datos
    Nota: parece una tabla independiente pero en realidad no lo es
*/

CREATE VIEW lista_precios
    AS
    SELECT
        idProducto AS ID,
        producto AS Producto,
        precio AS Contado,
        precio * 1.05 AS Lista,
        marca AS Marca,
        categoria AS Categoría
    FROM productos
         JOIN marcas
          ON productos.idMarca = marcas.idMarca
         JOIN categorias
          ON productos.idCategoria = categorias.idCategoria;

/* ejecutando una vista */
SELECT * FROM lista_precios;

/* listar todas las visstas */
SHOW FULL TABLES
    WHERE table_type = 'VIEW';
