create table productos_proveedores
(
    idProducto smallint unsigned not null,
    idProveedor tinyint unsigned not null,
    foreign key (idProducto) references productos (idProducto),
    foreign key (idProveedor) references proveedores (idProveedor)
);
