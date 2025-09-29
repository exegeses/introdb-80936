# Modificaciones de estructura en una tabla

## Cambiar nombre de una columna

    ALTER TABLE nombreTabla  
       CHANGE nombreOld nombreNew tipoDato; 

> Tener en cuenta que debemos repetir el tipo de datos, si no dará error 

    ALTER TABLE proveedores  
      CHANGE idProveedores idProveedor tinyint unsigned auto_increment;

## Cambiar tipo de datos o modificadores de una columna

    ALTER TABLE nombreTabla  
      MODIFY nombreColumna tipoDato [modificadores]; 

> Tener en cuenta que debemos mencionar **NOT NULL** si queremos mantener este modificador

    ALTER TABLE clientes  
      MODIFY apellido varchar(60) NOT NULL; 

    ALTER TABLE clientes  
      MODIFY idCliente smallint auto_increment,  
      MODIFY nombre varchar(60) NOT NULL,  
      MODIFY apellido varchar(60) NOT NULL;  
        

## Agregar una columna a una tabla

    ALTER TABLE nombreTabla  
      ADD nombreCampo tipoDato [modificadores];  

    ALTER TABLE clientes  
      ADD notas varchar(1000);   

## Eliminar una columna de una tabla

    ALTER TABLE nombreTabla  
      DROP nombreColumna;  

    ALTER TABLE clientes  
      DROP notas;  

## Agregar Primary Key

    ALTER TABLE nombreTabla  
      MODIFY nombreColumna tipoDato PRIMARY KEY AUTO_INCREMENT NOT NULL;

## Agregar Foreign Key

    ALTER TABLE nombreTabla  
       ADD FOREIGN KEY (campoFK) REFERENCES tabla2 (campoPK);   

    ALTER TABLE abonados  
       ADD FOREIGN KEY (idCompania) REFERENCES companias (idCompania);  
## Cambiar nombre de una tabla

    RENAME TABLE nombreOld TO nombreNew;  

