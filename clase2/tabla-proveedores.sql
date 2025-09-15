# script para la creación de la tabla proveedores

CREATE TABLE proveedores
(
    idProveedor int unsigned auto_increment primary key,
    razonSocial varchar(100) not null,
    cuit bigint unsigned unique not null,
    telefono varchar(23) not null,
    email varchar(100) not null,
    direccion varchar(200) not null
);
