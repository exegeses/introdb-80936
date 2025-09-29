# tabla departamentos
create table departamentos
(
    idDepartamento tinyint unsigned auto_increment primary key,
    departamento varchar(50) unique not null
);

-- insserción de datos
insert into departamentos
        (idDepartamento, departamento)
    values
        (default, 'Administraci´on'),
        (default, 'Compars'),
        (default, 'Ventas'),
        (default, 'Atención al público'),
        (default, 'Gerencia general'),
        (default, 'Marketing');
