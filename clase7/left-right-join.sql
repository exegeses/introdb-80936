/*
Obtener nombre, apellido de los empleados
y nombre del departamento asignado
*/

select
        nombre, apellido,
        empleados.idDepartamento, departamento
from empleados
JOIN departamentos
  ON empleados.idDepartamento = departamentos.idDepartamento;

-- no trae los dos empleados que no tienen departamento asignado

## LEFT JOIN  (prioridad a la primera tabla)
select
    nombre, apellido,
    empleados.idDepartamento, departamento
from empleados
 LEFT JOIN departamentos
      ON empleados.idDepartamento = departamentos.idDepartamento;

## RIGHT JOIN  (prioridad a la segunda tabla)
select
    nombre, apellido,
    empleados.idDepartamento, departamento
from empleados
 RIGHT JOIN departamentos
       ON empleados.idDepartamento = departamentos.idDepartamento;
