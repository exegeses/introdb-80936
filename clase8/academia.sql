create database academia;
use academia;
# tablas proyecto academia
create table areas
(
    idArea tinyint unsigned primary key auto_increment,
    area varchar(50) unique not null
);
create table cursos
(
    idCurso smallint unsigned primary key auto_increment,
    curso varchar(100) not null,
    idArea tinyint unsigned not null,
    nivel enum('Inicial','Intermedio','Avanzado','Experto'),
    foreign key (idArea) references  areas (idArea)
);
create table alumnos
(
    idAlumno mediumint unsigned auto_increment primary key,
    nombre varchar(100) not null,
    apellido varchar(100) not null,
    dni int unsigned unique not null,
    email varchar(100) not null,
    nacimiento date not null
);
create table cursos_alumnos
(
    idCA smallint unsigned auto_increment primary key,
    idCurso smallint unsigned not null,
    idAlumno mediumint unsigned not null,
    inicio date not null,
    foreign key (idCurso) references cursos(idCurso),
    foreign key (idAlumno) references alumnos(idAlumno)
);

create table docentes
(
    idDocente mediumint unsigned auto_increment primary key,
    nombre varchar(100) not null,
    apellido varchar(100) not null,
    dni int unsigned unique not null,
    email varchar(100) not null,
    nacimiento date not null
);
