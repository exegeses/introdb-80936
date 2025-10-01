-- ======================
-- AREAS (10)
-- ======================
INSERT INTO areas
    (idArea, area)
VALUES
     (1,'Programación'),
     (2,'Diseño Gráfico'),
     (3,'Marketing Digital'),
     (4,'Ciencia de Datos'),
     (5,'Idiomas'),
     (6,'Ciberseguridad'),
     (7,'UX/UI'),
     (8,'Administración de Sistemas'),
     (9,'Videojuegos'),
     (10,'Cloud Computing');

-- ======================
-- CURSOS (20)
-- ======================
INSERT INTO cursos
    (idCurso, curso, idArea, nivel)
VALUES
       (1, 'JavaScript desde Cero', 1, 'Inicial'),
       (2, 'PHP con MVC y buenas prácticas', 1, 'Intermedio'),
       (3, 'MySQL para desarrolladores', 1, 'Intermedio'),
       (4, 'Diseño con Figma', 2, 'Inicial'),
       (5, 'Branding y Tipografía', 2, 'Intermedio'),
       (6, 'SEO Técnico', 3, 'Avanzado'),
       (7, 'Publicidad en Redes (Meta/Google)', 3, 'Inicial'),
       (8, 'Introducción a Python para Datos', 4, 'Inicial'),
       (9, 'Análisis de Datos con Pandas', 4, 'Intermedio'),
       (10, 'Machine Learning práctico', 4, 'Avanzado'),
       (11, 'Inglés para Programadores', 5, 'Intermedio'),
       (12, 'Portugués Conversacional', 5, 'Inicial'),
       (13, 'Fundamentos de Ciberseguridad', 6, 'Inicial'),
       (14, 'Hacking Ético', 6, 'Avanzado'),
       (15, 'UX Research', 7, 'Intermedio'),
       (16, 'UI Design Systems', 7, 'Avanzado'),
       (17, 'Linux Administración I', 8, 'Inicial'),
       (18, 'Docker y Kubernetes', 8, 'Avanzado'),
       (19, 'Desarrollo de Videojuegos con Unity', 9, 'Intermedio'),
       (20, 'Arquitecturas Serverless en la Nube', 10, 'Experto');

-- ======================
-- ALUMNOS (20)  (1990–2008)
-- ======================
INSERT INTO alumnos
    (idAlumno, nombre, apellido, dni, email, nacimiento)
VALUES
     (1, 'Lautaro', 'Gómez', 40123123, 'lautaro.gomez@example.com', '1998-03-12'),
     (2, 'Julieta', 'López', 40234234, 'julieta.lopez@example.com', '2001-07-25'),
     (3, 'Santiago', 'Martínez', 38999111, 'santiago.martinez@example.com', '1995-11-09'),
     (4, 'Camila', 'Fernández', 41345678, 'camila.fernandez@example.com', '2002-02-18'),
     (5, 'Mateo', 'Rodríguez', 39765432, 'mateo.rodriguez@example.com', '1996-08-30'),
     (6, 'Valentina', 'Pereyra', 40555123, 'valentina.pereyra@example.com', '2000-05-04'),
     (7, 'Thiago', 'Sosa', 41444777, 'thiago.sosa@example.com', '2003-09-21'),
     (8, 'Martina', 'Silva', 39555111, 'martina.silva@example.com', '1997-12-02'),
     (9, 'Agustín', 'Álvarez', 40888777, 'agustin.alvarez@example.com', '2000-10-14'),
     (10, 'Lucía', 'Romero', 39900333, 'lucia.romero@example.com', '1996-04-27'),
     (11, 'Benjamín', 'Ruiz', 41222000, 'benjamin.ruiz@example.com', '2002-06-06'),
     (12, 'Emma', 'Molina', 40666123, 'emma.molina@example.com', '1999-01-19'),
     (13, 'Bruno', 'Castro', 40333999, 'bruno.castro@example.com', '1998-09-03'),
     (14, 'Mía', 'Vega', 41555999, 'mia.vega@example.com', '2004-07-11'),
     (15, 'Bautista', 'Herrera', 41010101, 'bautista.herrera@example.com', '2001-03-23'),
     (16, 'Catalina', 'Giménez', 40777000, 'catalina.gimenez@example.com', '1999-11-28'),
     (17, 'Ian', 'Navarro', 40222888, 'ian.navarro@example.com', '1997-01-07'),
     (18, 'Sofía', 'Ríos', 41666123, 'sofia.rios@example.com', '2005-05-15'),
     (19, 'Franco', 'Acosta', 40999444, 'franco.acosta@example.com', '2000-12-20'),
     (20, 'Isabella', 'Cabrera', 41333000, 'isabella.cabrera@example.com', '2003-08-09');

-- ======================
-- DOCENTES (10)  (1970–1990)
-- ======================
INSERT INTO docentes
    (idDocente, nombre, apellido, dni, email, nacimiento)
VALUES
   (1, 'María', 'Pérez', 20111222, 'maria.perez@academia.edu', '1981-04-15'),
   (2, 'José', 'García', 20999888, 'jose.garcia@academia.edu', '1978-10-03'),
   (3, 'Ana', 'Suárez', 23333444, 'ana.suarez@academia.edu', '1985-01-29'),
   (4, 'Ricardo', 'Torres', 22111777, 'ricardo.torres@academia.edu', '1976-06-17'),
   (5, 'Paula', 'Benítez', 23444777, 'paula.benitez@academia.edu', '1987-09-12'),
   (6, 'Hernán', 'Cabrera', 21555111, 'hernan.cabrera@academia.edu', '1979-02-22'),
   (7, 'Claudia', 'Ramos', 22888000, 'claudia.ramos@academia.edu', '1983-07-01'),
   (8, 'Diego', 'Méndez', 21999000, 'diego.mendez@academia.edu', '1977-03-09'),
   (9, 'Verónica', 'Salas', 23123456, 'veronica.salas@academia.edu', '1986-12-05'),
   (10,'Gustavo', 'Ibarra', 22666123, 'gustavo.ibarra@academia.edu', '1982-08-26');

-- ======================
-- CURSOS_ALUMNOS (40 inscripciones)
-- Fechas recientes y combinación variada
-- ======================
INSERT INTO cursos_alumnos
    (idCA, idCurso, idAlumno, inicio)
VALUES
     (1, 1, 1, '2025-01-15'),
     (2, 1, 2, '2025-01-15'),
     (3, 2, 3, '2025-02-01'),
     (4, 2, 4, '2025-02-01'),
     (5, 3, 5, '2025-03-10'),
     (6, 3, 6, '2025-03-10'),
     (7, 4, 7, '2025-01-22'),
     (8, 4, 8, '2025-01-22'),
     (9, 5, 9, '2025-02-12'),
     (10, 5, 10, '2025-02-12'),
     (11, 6, 11, '2025-03-05'),
     (12, 6, 12, '2025-03-05'),
     (13, 7, 13, '2025-04-02'),
     (14, 7, 14, '2025-04-02'),
     (15, 8, 15, '2025-01-30'),
     (16, 8, 16, '2025-01-30'),
     (17, 9, 17, '2025-02-25'),
     (18, 9, 18, '2025-02-25'),
     (19, 10, 19, '2025-03-20'),
     (20, 10, 20, '2025-03-20'),
     (21, 11, 1, '2025-04-15'),
     (22, 11, 3, '2025-04-15'),
     (23, 12, 2, '2025-05-03'),
     (24, 12, 4, '2025-05-03'),
     (25, 13, 5, '2025-05-18'),
     (26, 13, 7, '2025-05-18'),
     (27, 14, 6, '2025-06-01'),
     (28, 14, 8, '2025-06-01'),
     (29, 15, 9, '2025-06-14'),
     (30, 15, 11, '2025-06-14'),
     (31, 16, 10, '2025-07-02'),
     (32, 16, 12, '2025-07-02'),
     (33, 17, 13, '2025-07-20'),
     (34, 17, 15, '2025-07-20'),
     (35, 18, 14, '2025-08-05'),
     (36, 18, 16, '2025-08-05'),
     (37, 19, 17, '2025-08-22'),
     (38, 19, 19, '2025-08-22'),
     (39, 20, 18, '2025-09-10'),
     (40, 20, 20, '2025-09-10');
