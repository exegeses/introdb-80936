# creación de tablas en SQL
> para crear una tabla utilizamos el comando
> **CREATE TABLE**

> Sintaxis: 

    CREATE TABLE nombre  
    (
        nombreCampo tipoDato [modificadores],  
        nombreCampo2 tipoDato [modificadores], 
        nombreCampo3 tipoDato [modificadores], 
        nombreCampoX tipoDato [modificadores] 
    );


> Ejemplo de prueba:

    CREATE TABLE clientes  
    (
        idCliente int auto_increment primary key,  
        nombre varchar(50) not null,  
        apellido varchar(50) not null,   
        telefono int not null,  
        email varchar(50),  
        fechaAlta date not null
    );

## Eliminar una tabla

    DROP TABLE nombre;  