# consulta a través de tabla pivot
/*
    Obtener: producto, precio (tabla productos)
    También razonsocial, telefono (tabla a proveedores)
*/
SELECT producto, precio, razonSocial, telefono
FROM productos AS prod
JOIN productos_proveedores AS pp
ON prod.idProducto = pp.idProducto
JOIN proveedores AS prov
ON prov.idProveedor = pp.idProveedor;

-- agregar marca y categoría
SELECT producto, precio, marca, categoria, razonSocial, telefono
FROM productos AS prod
JOIN productos_proveedores AS pp
ON prod.idProducto = pp.idProducto
JOIN proveedores AS prov
ON prov.idProveedor = pp.idProveedor
JOIN marcas AS m
ON prod.idMarca = m.idMarca
JOIN categorias AS c
ON prod.idCategoria = c.idCategoria;
