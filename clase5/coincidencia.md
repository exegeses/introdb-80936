# Consultas de coincidencia
> En algunos casos vamos a querer obtener resultados por los que el filtro va a ser que contenga una cadena de caracteres.
> éstas son las consultas de coincidencia

> Obtener producto, precio, descripción de los productos donde en la descripción contenga la palabra "inalámbrico"

    SELECT producto, precio, descripcion  
      FROM productos  
      WHERE descripcion LIKE '%inalambrico%';  

> utilizamos la palabra reservada **LIKE** en vez del símbolo **=** en combinación con el caracter **%** (porcentaje) como una especie de comodín que podría ocupar 1 (uno), varios o incluso ningún carácter.
