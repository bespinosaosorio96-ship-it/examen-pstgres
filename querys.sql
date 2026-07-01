

-- 1. Obtener una lista de todos los vehículos disponibles para la venta, incluyendo detalles como marca, modelo, y precio.

select * from vehiculos;

-- 2.  Mostrar los clientes que han realizado compras recientemente, junto con la información de los vehículos adquiridos.

select nombre , fecha_contacto, v.marca ,v.modelo  
from clientes c
inner join vehiculos v on v.id = c.id
order by fecha_contacto desc;

--3.Obtener el historial completo de servicios realizados para un vehículo específico, incluyendo detalles sobre los empleados involucrados y las fechas de servicio.


select hs.id, hs.servicio , v.marca , v.modelo 
from historial_servicios hs
inner join vehiculos v on v.id = hs.id 
;

--4 istar los proveedores de piezas que han suministrado componentes utilizados en los servicios de mantenimiento.

select provedor 
from historial_servicios hs
where provedor != null;

--5 Calcular las comisiones generadas por cada empleado del departamento de ventas en un período específico.

select ventas_generadas , ventas_generadas*0.2 as comision, e.nombre 
from ventas_vendedor vv 
inner join empleados e on e.id=vv.id;


--6Identificar todos los servicios de mantenimiento realizados por un empleado específico, incluyendo detalles sobre los vehículos atendidos.


select *
from historial_servicios hs 
where id_empleado =1;
-- Mostrar información sobre los clientes potenciales y los vehículos de su interés, proporcionando pistas valiosas para estrategias de marketing.

select *
from clientes c 
inner join vehiculos v on c.id=v.id 
where tipo='Potencial';

--8istar todos los empleados que pertenecen al departamento de servicio, junto con sus horarios de trabajo.

select *
from departamento_servicios ds ;

--ncontrar los vehículos vendidos en un rango de precios específico, proporcionando datos útiles para análisis de ventas.
select *
from vehiculos v 
inner join ventas_vendedor vv on v.id =vv.id_vehiculo 
where precio between 120000000 and 300000000;


--10.Identificar a aquellos clientes que han realizado más de una compra en el concesionario, destacando la lealtad del cliente.








