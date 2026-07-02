

-- 1. Obtener una lista de todos los vehículos disponibles para la venta, incluyendo detalles como marca, modelo, y precio.

select * from vehiculos;

-- 2.  Mostrar los clientes que han realizado compras recientemente, junto con la información de los vehículos adquiridos.

select c.nombre as cliente, v.marca, v.modelo, vv.fecha_venta
from ventas_vendedor vv
inner join clientes c
on  vv.id_cliente=c.id
inner join vehiculos v
on  vv.id_vehiculo=v.id
ORDER BY vv.fecha_venta DESC;
--3.Obtener el historial completo de servicios realizados para un vehículo específico, incluyendo detalles sobre los empleados involucrados y las fechas de servicio.

select v.marca, v.modelo, hs.servicio, hs.fecha, e.nombre as empleado
from historial_servicios hs
inner join vehiculos v
on hs.id_vehiculo=v.id
inner join empleados e
on hs.id_empleado=e.id
where v.id=1;

--4 istar los proveedores de piezas que han suministrado componentes utilizados en los servicios de mantenimiento.


select distinct p.nombre
from historial_servicios hs
inner join proveedores p
on hs.id_proveedor=p.id;
--5 Calcular las comisiones generadas por cada empleado del departamento de ventas en un período específico.

select e.nombre,  SUM(vv.valor_venta*0.05) as comision 
from ventas_vendedor vv
inner join empleados e
on vv.id_vendedor=e.id
where vv.fecha_venta between '2025-01-01' and '2025-12-31'
group by e.nombre;



--6Identificar todos los servicios de mantenimiento realizados por un empleado específico, incluyendo detalles sobre los vehículos atendidos.

select e.nombre, v.marca, v.modelo , hs.servicio, hs.fecha
from historial_servicios hs
inner join empleados e
on hs.id_empleado=e.id
inner join vehiculos v
on hs.id_vehiculo=v.id
where e.id=2;
-- Mostrar información sobre los clientes potenciales y los vehículos de su interés, proporcionando pistas valiosas para estrategias de marketing.

select c.nombre, v.marca, v.modelo, ic.fecha_interes 
from interes_clientes ic
inner join clientes c
on ic.id_cliente=c.id
inner join vehiculos v
on ic.id_vehiculo=v.id
where c.tipo='Potencial';

--8istar todos los empleados que pertenecen al departamento de servicio, junto con sus horarios de trabajo.
select e.nombre, ds.servicio, ds.horario
from departamento_servicios ds
inner join empleados e
on ds.id_empleado=e.id;

--ncontrar los vehículos vendidos en un rango de precios específico, proporcionando datos útiles para análisis de ventas.
select v.marca, v.modelo, vv.valor_venta
from ventas_vendedor vv
inner join vehiculos v
on vv.id_vehiculo=v.id
where vv.valor_venta between 100000000 and 600000000;


--10.Identificar a aquellos clientes que han realizado más de una compra en el concesionario, destacando la lealtad del cliente.


select c.nombre, count(vv.id) as total_compras
from clientes c
inner join ventas_vendedor vv
on c.id=vv.id_cliente
group by c.nombre
having count(vv.id)>1;





