# Consultas en SQL

> podemos realizar consultas:

1. server
2. base de datos
3. tabla
4. vista

## consultas a server

    -- listar todas las bases de datos de un server  
    SHOW DATABASES;

    -- cuál es la base de datos activa
    SELECT DATABASE();

## consultas a una base de datos

    -- listar las tablas de una base  
    SHOW TABLES;  

## consultas a una tabla

> Cuándo vamos a hacer una consulta a una tabla vamos a utilizar el comando **SELECT** seguido de la palabra reservada **FROM**

    SELECT * FROM nombreTabla;  
    SELECT * FROM clientes;  
    SELECT * FROM proveedores;  

> esta consulta nos devolverá una grilla de resultados con todas las columnas y todos los registros de la tabla especificada

> en algún momento vamos a querer traer información de algunas columnas de una tabla (no todas las columnas)
> para lograrlo luego de la palabra Selects debemos especificar cada una de las columnas separadas con comas (en lugar de * )

    SELECT razonSocial, email  
      FROM proveedores;   

## orden de los resultados
> podemos ordenar los resultados de una consulta utilizando el modificador **ORDER BY** seguido del nombre de la columna que queremos usar para ordenar

    SELECT idProveedor, razonSocial, email    
      FROM proveedores  
      ORDER BY razonsocial;   

