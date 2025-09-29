# Backup (copia de respaldo)

> a la hora de hacer una copia de respaldo tenemos tres opciones

1. Sólo datos
2. Sólo estructura
3. Estructura y datos

## Sólo datos:
> Se generará un script con comandos de **INSERT** para insertar todos los registros de las tablas de la base de datos

## Sólo estructura:
> Se generará un script con comandos **CREATE TABLE** y **CREATE VIEW** para crear todas las tablas y las vistas de nuestra base de datos

## Estructura y datos: 
> genera un script con todos los comandos necesarios para crear las tablas, las vistas y además insertar todos los datos
 
## Pasos: 
1. En la barra de menús ir a **SERVER**
2. Seleccionar **Data Export**
3. Seleccionar Base
> Aparecerá un cuadro donde del lado izquierdo sse verán todas nuestras bases de datos
> Y del lado derecho se verán todas las tablas y vistas
5. Seleccionar tablas y/o vistas
> En la parte inferior podemos elegir el tipo de backup y además en qué directorio se va a exportar
6. Seleccionar el tipo de backup (Estructura y datos)
7. Seleccionar el radiobutton que dice: **Export to Self-contained file**
8. Seleccionar directorio y nombre del backup
9. Pulsar el botón que dice **Start Export**

## Restaurar desde un backup
> para restaurar todas las tablas con sus datos desde un backup simplemente tenemos que importar el archivo como ya conocemos
1. En el menu seleccionar **File**
2. Seleccionar Open SQL Script
3. Ejecutar
