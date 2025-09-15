# Modificar registros en SQL

> Para modificar los datos de una tabla 
> utilizamos el comando **UPDATE**
> debemos especificar un filtro utilizando la palabra reservada **WHERE** seguida de una condición

> Sintaxis: 

    UPDATE nombreTabla  
      SET  
           nombreCampo = valor  
     WHERE condición;  

> Ejemplo práctico: 

    UPDATE clientes  
      SET    
            telefono = 1144445567  
     WHERE idCliente = 4;  

    UPDATE clientes  
      SET    
            email = 'amartinez@mail.com'  
     WHERE idCliente = 5;  

> MySQL WORKBENCH cuenta con un modo seguro para modificaciones y bajas. Es por eso que no me dejaría hacer un update masivo. 
> Cuidado esto no es una característica del lenguaje SQL

> Suponiendo que tenemos una tabla llamada productos
> inicia tabla hay una columna llamada precio
> Y otra columna llamada idMarca
> si quisiéramos incrementar el precio de todos los productos de una marca: esto sería un ejemplo de modificación masiva

    UPDATE productos  
      SET   
            precio = precio * 1.05  
     WHERE  idMarca = 25;  
