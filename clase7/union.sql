# UNION
/*
    Utilizamos la palabra reservada **UNION**
    para unir dos consultas
*/

select
    nombre, apellido,
    empleados.idDepartamento, departamento
from empleados
 LEFT JOIN departamentos
       ON empleados.idDepartamento = departamentos.idDepartamento

UNION

select
    nombre, apellido,
    empleados.idDepartamento, departamento
from empleados
 RIGHT JOIN departamentos
        ON empleados.idDepartamento = departamentos.idDepartamento;
