create database biblioteca;
use biblioteca;
create table generos
(
    idGenero tinyint unsigned auto_increment primary key,
    genero varchar(50) not null
);
create table editoriales
(
    idEditorial tinyint unsigned auto_increment primary key,
    editorial varchar(50) not null
);

create table libros
(
    idLibro smallint unsigned auto_increment primary key,
    titulo varchar(100) not null,
    anio smallint unsigned not null,
    idGenero tinyint unsigned not null,
    idEditorial tinyint unsigned not null,
    isbn varchar(20) unique not null,
    foreign key (idGenero) references generos (idGenero),
    foreign key (idEditorial) references editoriales (idEditorial)
);
 create table autores
 (
     idAutor smallint unsigned auto_increment primary key,
     nombre varchar(100) unique not null,
     nacionalidad varchar(50) not null
 );
create table libros_autores
(
    idLibro smallint unsigned not null,
    idAutor smallint unsigned not null,
    foreign key (idLibro) references libros (idLibro),
    foreign key (idAutor) references autores (idAutor)
);