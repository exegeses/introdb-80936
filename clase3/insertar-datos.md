# Insertar datos en SQL

> En SQL tenemos tres maneras principales de insertar datos en una tabla
> Estas tres maneras comienzan con:

    INSERT INTO nombreTabla ...  

## Sintaxis usando SET  

    INSERT INTO nombreTabla  
       SET  
            nombreCampo = valor,  
            nombreCampo2 = valor2,  
            nombreCampo3 = valor3,  
            nombreCampoX = valorX;  

> Ejemplo práctico: 

    INSERT INTO clientes  
       SET  
            idCliente = 1,  
            nombre = 'Lucía',  
            apellido = 'González',  
            telefono = 1123456789,  
            email = 'lucia.gonzalez@mail.com',  
            fechaAlta = '2024-05-12';  

    INSERT INTO clientes  
       SET
            nombre = 'Martín',  
            apellido = 'Pérez',  
            telefono = 1139876543,  
            email = 'martin.perez@mail.com',    
            fechaAlta = '2024-06-01';  

## Sintaxis completa (se mencionan los campos)

    INSERT INTO nombreTabla  
        ( ncampo, ncampo2, ncampo3, ncampoX )  
      VALUES  
        ( valor, valor2, valor3, valorX ); 


    INSERT INTO clientes  
        ( idCliente, nombre, apellido, telefono, email, fechaAlta )  
      VALUES  
        ( DEFAULT, 'Sofía', 'Ramírez', 1144455566, 'sofia.ramirez@mail.com', '2024-06-15' ); 

    INSERT INTO clientes  
        ( nombre, apellido, telefono, email, fechaAlta )  
      VALUES  
        ( 'Carlos', 'Lopez', 1144455566, 'carlos.lopez@mail.com', '2024-06-20' ); 

## Sintaxis simplificada (NO se mencionan los campos)

    INSERT INTO nombreTabla  
      VALUES  
        ( valor, valor2, valor3, valorX );   

> En la sintaxis simplificada si bien no mencionamos los nombres de las columnas, estamos obligados a mencionar todos y cada uno de los valores en el orden exacto en el que fueron declarados

    INSERT INTO clientes  
      VALUES
        ( DEFAULT, 'Ana', 'Martínez', 1166677788, '', '2024-06-25' ); 