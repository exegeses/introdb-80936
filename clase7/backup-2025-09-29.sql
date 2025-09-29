-- MySQL dump 10.13  Distrib 8.0.36, for macos14 (x86_64)
--
-- Host: 127.0.0.1    Database: introdb80936
-- ------------------------------------------------------
-- Server version	9.0.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `autores`
--

DROP TABLE IF EXISTS `autores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autores` (
  `idAutor` smallint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `nacionalidad` varchar(50) NOT NULL,
  PRIMARY KEY (`idAutor`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autores`
--

LOCK TABLES `autores` WRITE;
/*!40000 ALTER TABLE `autores` DISABLE KEYS */;
INSERT INTO `autores` VALUES (1,'Isaac Asimov','Estadounidense'),(2,'Stanislav Lem','Polaco'),(3,'Terry Pratchett','Británico'),(4,'J. R. R. Tolkien','Británico'),(5,'Howard Phillips Lovecraft','Estadounidense'),(6,'Michael Crichton','Estadounidense'),(7,'Stephen Fry','Británico'),(8,'Michio Kaku','Estadounidense'),(9,'Stephen Hawking','Británico'),(10,'Carl Sagan','Estadounidense'),(11,'Bill Bryson','Estadounidense'),(12,'Neil Gaiman','Británico'),(13,'Douglas Adams','Británico'),(14,'Ursula K. Le Guin','Estadounidense'),(15,'Philip K. Dick','Estadounidense'),(16,'Frank Herbert','Estadounidense'),(17,'Ray Bradbury','Estadounidense'),(18,'Arthur C. Clarke','Británico'),(19,'Jorge Luis Borges','Argentino'),(20,'Julio Cortázar','Argentino');
/*!40000 ALTER TABLE `autores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `idCategoria` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `categoria` varchar(45) NOT NULL,
  PRIMARY KEY (`idCategoria`),
  UNIQUE KEY `categoria` (`categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (8,'Accesorios'),(14,'Almacenamiento'),(16,'Audio'),(15,'Cámaras'),(12,'Componentes de PC'),(6,'Domótica'),(5,'Electrodomésticos'),(11,'Gaming'),(13,'Hogar Inteligente'),(1,'Laptops'),(9,'Periféricos'),(10,'Redes'),(2,'Smartphones'),(7,'Software'),(4,'Tablets'),(3,'Televisores');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `idCliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `telefono` int NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `fechaAlta` date NOT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Lucía','González',1123456789,'lucia.gonzalez@mail.com','2024-05-12'),(2,'Martín','Pérez',1139876543,'martin.perez@mail.com','2024-06-01'),(3,'Sofía','Ramírez',1144455566,'sofia.ramirez@mail.com','2024-06-15'),(4,'Carlos','Lopez',1144445567,'carlos.lopez@mail.com','2024-06-20'),(5,'Ana','Martínez',1166677788,'amartinez@mail.com','2024-07-25');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `editoriales`
--

DROP TABLE IF EXISTS `editoriales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `editoriales` (
  `idEditorial` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `editorial` varchar(50) NOT NULL,
  PRIMARY KEY (`idEditorial`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editoriales`
--

LOCK TABLES `editoriales` WRITE;
/*!40000 ALTER TABLE `editoriales` DISABLE KEYS */;
INSERT INTO `editoriales` VALUES (1,'Penguin Random House'),(2,'Planeta'),(3,'Anagrama'),(4,'Alianza Editorial'),(5,'Tusquets'),(6,'Minotauro'),(7,'Crítica'),(8,'Debate'),(9,'Debolsillo'),(10,'Salamandra');
/*!40000 ALTER TABLE `editoriales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generos`
--

DROP TABLE IF EXISTS `generos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generos` (
  `idGenero` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `genero` varchar(50) NOT NULL,
  PRIMARY KEY (`idGenero`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generos`
--

LOCK TABLES `generos` WRITE;
/*!40000 ALTER TABLE `generos` DISABLE KEYS */;
INSERT INTO `generos` VALUES (1,'Ciencia Ficción'),(2,'Fantasía'),(3,'Terror'),(4,'Divulgación Científica'),(5,'Humor'),(6,'Biografía'),(7,'Historia'),(8,'Ensayo'),(9,'Ficción Histórica'),(10,'Aventura');
/*!40000 ALTER TABLE `generos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libros`
--

DROP TABLE IF EXISTS `libros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libros` (
  `idLibro` smallint unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `anio` smallint unsigned NOT NULL,
  `idGenero` tinyint unsigned NOT NULL,
  `idEditorial` tinyint unsigned NOT NULL,
  `isbn` varchar(20) NOT NULL,
  PRIMARY KEY (`idLibro`),
  UNIQUE KEY `isbn` (`isbn`),
  KEY `idGenero` (`idGenero`),
  KEY `idEditorial` (`idEditorial`),
  CONSTRAINT `libros_ibfk_1` FOREIGN KEY (`idGenero`) REFERENCES `generos` (`idGenero`),
  CONSTRAINT `libros_ibfk_2` FOREIGN KEY (`idEditorial`) REFERENCES `editoriales` (`idEditorial`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros`
--

LOCK TABLES `libros` WRITE;
/*!40000 ALTER TABLE `libros` DISABLE KEYS */;
INSERT INTO `libros` VALUES (1,'Mort',1987,2,6,'978-0552131063'),(2,'El Color de la Magia',1983,2,6,'978-0552124751'),(3,'Buenos Presagios',1990,2,6,'978-0552137034'),(4,'Dioses Menores',1992,2,6,'978-0552140294'),(5,'Cosmos',1980,4,7,'978-0345331359'),(6,'Relatos del Piloto Pirx',1968,1,6,'978-8445077429'),(7,'Solaris',1961,1,6,'978-8445077436'),(8,'La Llamada de Cthulhu',1928,3,4,'978-8420674308'),(9,'Las Montañas de la Locura',1931,3,4,'978-8420674315'),(10,'El Silmarillion',1977,2,6,'978-8445077443'),(11,'El Hobbit',1937,2,6,'978-8445077450'),(12,'Parque Jurásico',1990,1,1,'978-8497930451'),(13,'Breve Historia del Tiempo',1988,4,7,'978-8408053309'),(14,'El Futuro de la Humanidad',2018,4,8,'978-8483068014'),(15,'Fundación',1951,1,6,'978-8445077467'),(16,'Yo, Robot',1950,1,6,'978-8445077474'),(17,'El Fin de la Eternidad',1955,1,6,'978-8445077481'),(18,'Segunda Fundación',1953,1,6,'978-8445077498'),(19,'El Señor de los Anillos: La Comunidad del Anillo',1954,2,6,'978-8445077504'),(20,'El Señor de los Anillos: Las Dos Torres',1954,2,6,'978-8445077511'),(21,'El Señor de los Anillos: El Retorno del Rey',1955,2,6,'978-8445077528'),(22,'Mundodisco: El Segador',1991,2,6,'978-8445077535'),(23,'Mundodisco: Hombres de Armas',1993,2,6,'978-8445077542'),(24,'El Horror de Dunwich',1929,3,4,'978-8420674322'),(25,'La Sombra sobre Innsmouth',1931,3,4,'978-8420674339'),(26,'Esfera',1987,1,1,'978-8497930468'),(27,'Presa',2002,1,1,'978-8497930475'),(28,'Un Poco de Todo',2010,5,3,'978-8433977236'),(29,'Mitología',2017,5,3,'978-8433977243'),(30,'Universos Paralelos',2005,4,7,'978-8483068021'),(31,'La Física del Futuro',2011,4,7,'978-8483068038'),(32,'El Universo Elegante',2003,4,7,'978-8483068045'),(33,'Un Paseo por el Bosque',1998,4,7,'978-8483068052'),(34,'Breve Historia de Casi Todo',2003,4,7,'978-8483068069'),(35,'Guía del Autoestopista Galáctico',1979,1,9,'978-8445077559'),(36,'El Restaurante del Fin del Mundo',1980,1,9,'978-8445077566'),(37,'Buenos Presagios (Edición Especial)',1990,2,6,'978-8445077573'),(38,'Sandman: Preludios y Nocturnos',1989,2,10,'978-8445077580'),(39,'American Gods',2001,2,10,'978-8445077597'),(40,'La Mano Izquierda de la Oscuridad',1969,1,6,'978-8445077603'),(41,'Los Desposeídos',1974,1,6,'978-8445077610'),(42,'¿Sueñan los Androides con Ovejas Eléctricas?',1968,1,6,'978-8445077627'),(43,'Minority Report',1956,1,6,'978-8445077634'),(44,'Dune',1965,1,6,'978-8445077641'),(45,'El Mesías de Dune',1969,1,6,'978-8445077658'),(46,'Fahrenheit 451',1953,1,6,'978-8445077665'),(47,'Crónicas Marcianas',1950,1,6,'978-8445077672'),(48,'2001: Una Odisea del Espacio',1968,1,6,'978-8445077689'),(49,'Cita con Rama',1973,1,6,'978-8445077696'),(50,'Ficciones',1944,8,4,'978-8420674346'),(51,'El Aleph',1949,8,4,'978-8420674353'),(52,'Rayuela',1963,9,4,'978-8420674360'),(53,'Bestiario',1951,8,4,'978-8420674377'),(54,'Historia Universal de la Infamia',1935,8,4,'978-8420674384'),(55,'Casa Tomada',1946,8,4,'978-8420674391'),(56,'El Nombre del Viento',2007,2,1,'978-8497930482'),(57,'Neuromante',1984,1,6,'978-8445077702'),(58,'1984',1949,1,4,'978-8420674407'),(59,'Un Mundo Feliz',1932,1,4,'978-8420674414'),(60,'La Máquina del Tiempo',1895,1,4,'978-8420674421'),(61,'La Guerra de los Mundos',1898,1,4,'978-8420674438'),(62,'20.000 Leguas de Viaje Submarino',1870,10,4,'978-8420674445'),(63,'Viaje al Centro de la Tierra',1864,10,4,'978-8420674452'),(64,'Frankenstein',1818,3,4,'978-8420674469'),(65,'Drácula',1897,3,4,'978-8420674476');
/*!40000 ALTER TABLE `libros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libros_autores`
--

DROP TABLE IF EXISTS `libros_autores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libros_autores` (
  `idLibro` smallint unsigned NOT NULL,
  `idAutor` smallint unsigned NOT NULL,
  KEY `idLibro` (`idLibro`),
  KEY `idAutor` (`idAutor`),
  CONSTRAINT `libros_autores_ibfk_1` FOREIGN KEY (`idLibro`) REFERENCES `libros` (`idLibro`),
  CONSTRAINT `libros_autores_ibfk_2` FOREIGN KEY (`idAutor`) REFERENCES `autores` (`idAutor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros_autores`
--

LOCK TABLES `libros_autores` WRITE;
/*!40000 ALTER TABLE `libros_autores` DISABLE KEYS */;
INSERT INTO `libros_autores` VALUES (1,3),(2,3),(4,3),(22,3),(23,3),(3,3),(3,12),(33,3),(33,12),(5,10),(6,2),(7,2),(8,5),(9,5),(24,5),(25,5),(10,4),(11,4),(19,4),(20,4),(21,4),(12,6),(26,6),(27,6),(13,9),(14,8),(30,8),(31,8),(15,1),(16,1),(17,1),(18,1),(28,7),(29,7),(32,11),(33,11),(34,13),(35,13),(36,12),(37,12),(38,14),(39,14),(40,15),(41,15),(42,16),(43,16),(44,17),(45,17),(46,18),(47,18),(48,19),(49,19),(53,19),(50,20),(51,20),(52,20),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1);
/*!40000 ALTER TABLE `libros_autores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `lista_precios`
--

DROP TABLE IF EXISTS `lista_precios`;
/*!50001 DROP VIEW IF EXISTS `lista_precios`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `lista_precios` AS SELECT 
 1 AS `ID`,
 1 AS `Producto`,
 1 AS `Contado`,
 1 AS `Lista`,
 1 AS `Marca`,
 1 AS `Categoría`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `marcas`
--

DROP TABLE IF EXISTS `marcas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marcas` (
  `idMarca` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `marca` varchar(45) NOT NULL,
  PRIMARY KEY (`idMarca`),
  UNIQUE KEY `marca` (`marca`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marcas`
--

LOCK TABLES `marcas` WRITE;
/*!40000 ALTER TABLE `marcas` DISABLE KEYS */;
INSERT INTO `marcas` VALUES (9,'Acer'),(11,'Amazon'),(4,'Apple'),(8,'Asus'),(13,'Bosch'),(10,'Google'),(7,'HP'),(6,'Lenovo'),(2,'LG'),(14,'Logitech'),(5,'Microsoft'),(12,'Philips'),(1,'Samsung'),(3,'Sony'),(15,'TP-Link'),(16,'Xiaomi');
/*!40000 ALTER TABLE `marcas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `idProducto` smallint unsigned NOT NULL AUTO_INCREMENT,
  `producto` varchar(45) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `idMarca` tinyint unsigned NOT NULL,
  `idCategoria` tinyint unsigned NOT NULL,
  `descripcion` varchar(1000) NOT NULL,
  `imagen` varchar(45) NOT NULL,
  `activo` tinyint(1) NOT NULL,
  PRIMARY KEY (`idProducto`),
  UNIQUE KEY `producto` (`producto`),
  KEY `idMarca` (`idMarca`),
  KEY `idCategoria` (`idCategoria`),
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`idMarca`) REFERENCES `marcas` (`idMarca`),
  CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`idCategoria`) REFERENCES `categorias` (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Laptop Lenovo IdeaPad 3',749.99,6,1,'Notebook de uso general con procesador AMD Ryzen 5','imagen01.png',1),(2,'Smartphone Xiaomi Redmi Note 12',299.99,16,2,'Smartphone Android con excelente relación calidad-precio','imagen02.png',1),(3,'Televisor LG 55\" OLED',1399.00,2,3,'Televisor 4K con tecnología OLED y sistema WebOS','imagen03.png',1),(4,'iPad 10ª generación',499.99,4,4,'Tablet con chip A14 y pantalla Liquid Retina','imagen04.png',1),(5,'Heladera Samsung No Frost',999.99,1,5,'Electrodoméstico con congelador inferior y eficiencia energética A+','imagen05.png',1),(6,'Kit domótica Philips Hue',199.00,12,6,'Luces LED inteligentes controladas por app y voz','imagen06.png',1),(7,'Microsoft Office 365 Personal',79.99,5,7,'Licencia anual para uso individual, incluye Word, Excel y más','imagen07.png',1),(8,'Mouse Logitech MX Master 3',109.00,14,8,'Mouse inalámbrico ergonómico de alta precisión','imagen08.png',1),(9,'Teclado mecánico Asus ROG Strix',129.00,8,9,'Teclado gamer retroiluminado con switches rojos','imagen09.png',1),(10,'Router TP-Link AX1500',89.99,15,10,'Router Wi-Fi 6 ideal para hogares conectados','imagen10.png',1),(11,'Consola Sony PlayStation 5',599.00,3,11,'Consola de videojuegos de última generación','imagen11.png',1),(12,'Procesador AMD Ryzen 7 5800X',329.99,1,12,'CPU de alto rendimiento para gamers y creadores','imagen12.png',1),(13,'Enchufe inteligente TP-Link Tapo',29.99,15,13,'Controla cualquier dispositivo desde tu smartphone','imagen13.png',1),(14,'Disco SSD Samsung 1TB',119.00,1,14,'Almacenamiento veloz NVMe para laptops y PCs','imagen14.png',1),(15,'Cámara Logitech StreamCam',149.00,14,15,'Cámara ideal para streaming en 1080p a 60 fps','imagen15.png',1),(16,'Auriculares Sony WH-1000XM5',399.00,3,16,'Auriculares inalámbricos con cancelación de ruido premium','imagen16.png',1),(17,'Laptop HP Pavilion 15',829.00,7,1,'Laptop con pantalla Full HD y procesador Intel i5','imagen17.png',1),(18,'Smartphone Samsung Galaxy S23',899.99,1,2,'Alta gama con cámara triple y pantalla Dynamic AMOLED','imagen18.png',1),(19,'Smart TV Sony Bravia 65\"',1799.00,3,3,'Televisor con Google TV integrado y 4K UHD','imagen19.png',1),(20,'Tablet Amazon Fire HD 10',149.99,11,4,'Tablet económica ideal para entretenimiento','imagen20.png',1),(21,'Lavarropas Bosch Serie 6',849.99,13,5,'Ciclo rápido y motor silencioso con eficiencia energética','imagen21.png',1),(22,'Sensor de movimiento Xiaomi Mi',24.99,16,6,'Sensor inteligente para activación de luces y alarmas','imagen22.png',1),(23,'Windows 11 Home',129.00,5,7,'Sistema operativo moderno y optimizado','imagen23.png',1),(24,'Parlante Bluetooth JBL Flip 6',119.00,3,8,'Sonido potente y resistente al agua','imagen24.png',1),(25,'Auriculares Gaming Asus TUF',89.99,8,9,'Auriculares con micrófono y sonido envolvente','imagen25.png',1),(26,'Extensor de red TP-Link RE450',59.99,15,10,'Amplía la cobertura Wi-Fi en tu hogar','imagen26.png',1),(27,'Joystick Microsoft Xbox Series X',69.00,5,11,'Control inalámbrico compatible con consolas y PC','imagen27.png',1),(28,'Motherboard Asus B550M',149.00,8,12,'Placa base compatible con Ryzen y RAM DDR4','imagen28.png',1),(29,'Cámara de seguridad Xiaomi Mi 360',54.99,16,13,'Visión nocturna, grabación en la nube y control desde app','imagen29.png',1),(30,'Disco externo Seagate 2TB',89.99,1,14,'Almacenamiento portátil USB 3.0','imagen30.png',1),(31,'Cámara Canon EOS M50',699.00,3,15,'Cámara mirrorless ideal para fotografía y video 4K','imagen31.png',1),(32,'Barra de sonido LG SN5Y',229.00,2,16,'Audio envolvente con subwoofer inalámbrico','imagen32.png',1);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos_proveedores`
--

DROP TABLE IF EXISTS `productos_proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos_proveedores` (
  `idProducto` smallint unsigned NOT NULL,
  `idProveedor` tinyint unsigned NOT NULL,
  KEY `idProducto` (`idProducto`),
  KEY `idProveedor` (`idProveedor`),
  CONSTRAINT `productos_proveedores_ibfk_1` FOREIGN KEY (`idProducto`) REFERENCES `productos` (`idProducto`),
  CONSTRAINT `productos_proveedores_ibfk_2` FOREIGN KEY (`idProveedor`) REFERENCES `proveedores` (`idProveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos_proveedores`
--

LOCK TABLES `productos_proveedores` WRITE;
/*!40000 ALTER TABLE `productos_proveedores` DISABLE KEYS */;
INSERT INTO `productos_proveedores` VALUES (16,5),(30,7),(27,4),(4,10),(16,8),(8,2),(14,6),(14,5),(7,13),(5,2),(22,12),(13,9),(29,1),(15,15),(26,8),(4,4),(12,14),(21,15),(11,7),(23,4),(8,5),(31,8),(23,11),(11,8),(6,6),(9,12),(28,8),(23,3),(23,12),(29,3),(7,15),(16,3),(27,10),(11,12),(29,15),(32,13),(2,3),(24,10),(10,10),(7,8),(27,5),(30,10),(32,15),(14,12),(5,4),(21,1),(26,6),(1,2),(24,4),(28,3),(24,5),(18,15),(26,10),(5,14),(13,6),(2,13),(15,14),(24,15),(10,6),(30,11);
/*!40000 ALTER TABLE `productos_proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `idProveedor` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `razonSocial` varchar(100) NOT NULL,
  `cuit` bigint unsigned NOT NULL,
  `telefono` varchar(23) NOT NULL,
  `email` varchar(100) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  PRIMARY KEY (`idProveedor`),
  UNIQUE KEY `cuit` (`cuit`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'Electro Hogar S.A.',30714567891,'011-4321-5678','contacto@electrohogar.com','Av. Rivadavia 4521, CABA'),(2,'Distribuidora Andina SRL',30715678902,'011-4789-3321','ventas@andinasrl.com','San Martín 150, Mendoza'),(3,'Proveedora del Sur S.A.',30716789013,'0291-455-1122','info@provsur.com','Av. Alem 2200, Bahía Blanca'),(4,'Hogar y Confort SRL',30717890124,'011-4900-8899','ventas@hogaryconfort.com','Av. Corrientes 3030, CABA'),(5,'Tecno Distribuciones SA',30718901235,'0341-421-7744','info@tecnodistrib.com','Bv. Oroño 1245, Rosario'),(6,'Mundo Digital SRL',30719012346,'011-4678-9988','contacto@mundodigital.com','Av. Cabildo 3456, CABA'),(7,'Proveedor del Norte SA',30720123457,'0381-421-5566','info@provnorte.com','San Martín 450, Tucumán'),(8,'Red Hogar SRL',30721234568,'011-4780-3344','ventas@redhogar.com','Av. Santa Fe 2450, CABA'),(9,'Electro Andino SA',30722345679,'0261-422-8899','contacto@electroandino.com','Av. San Martín 1280, Mendoza'),(10,'Distribuidora Patagónica SA',30723456780,'0299-445-6677','ventas@patagonica.com','Av. Argentina 999, Neuquén'),(11,'Casa Central Hogar SRL',30724567891,'011-4956-2211','info@casacentralhogar.com','Av. Belgrano 2200, CABA'),(12,'Tecno Vision SA',30725678902,'011-4123-7766','ventas@tecnovision.com','Av. Córdoba 3100, CABA'),(13,'Electro Global SRL',30726789013,'0341-437-2211','info@electroglobal.com','Av. Pellegrini 2100, Rosario'),(14,'Digital Hogar SA',30727890124,'011-4777-2211','contacto@digitalhogar.com','Av. Cabildo 2233, CABA'),(15,'Importadora Lux SA',30728901235,'011-4333-1199','ventas@importlux.com','Av. Callao 1550, CABA'),(16,'Distribuidora Platense SRL',30729012346,'0221-452-3344','info@distplatense.com','Calle 12 Nº 1050, La Plata'),(17,'Tecnología Express SA',30730123457,'011-4322-8899','ventas@tecexpress.com','Av. Pueyrredón 1980, CABA'),(18,'Hogar Total SRL',30731234568,'011-4666-1133','info@hogartotal.com','Av. Gaona 3555, CABA'),(19,'Electro Distribuidora SA',30732345679,'0351-422-7788','ventas@electrodistrib.com','Av. Colón 2500, Córdoba'),(20,'Proveedora Metropolitana SA',30733456780,'011-4778-4433','contacto@provmetro.com','Av. Scalabrini Ortiz 1600, CABA');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `lista_precios`
--

/*!50001 DROP VIEW IF EXISTS `lista_precios`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `lista_precios` AS select `productos`.`idProducto` AS `ID`,`productos`.`producto` AS `Producto`,`productos`.`precio` AS `Contado`,(`productos`.`precio` * 1.05) AS `Lista`,`marcas`.`marca` AS `Marca`,`categorias`.`categoria` AS `Categoría` from ((`productos` join `marcas` on((`productos`.`idMarca` = `marcas`.`idMarca`))) join `categorias` on((`productos`.`idCategoria` = `categorias`.`idCategoria`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-29  9:29:44
