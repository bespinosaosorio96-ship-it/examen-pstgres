
set search_path to brayan;


insert into vehiculos(marca,modelo,año,estado,precio) values
('Mazda','MX5',2024,'Nuevo',178985000),
('Mazda','CX30',2023,'Usado',188898500),
('Renault','Clio',2019,'Usado',28000000),
('Toyota','Tacoma',2025,'Nuevo',520000000);



insert into empleados(nombre,identificacion,rol,contratacion)  values
('Brayan Espinosa','123456789','Vendedor','2022-12-14'),
('Camilo Albarracin','123856789','Service','2024-05-26'),
('Andres Florez','123897645','Service','2020-06-20'),
('Aquiles Vendo','456789123','Vendedor','2021-07-30');



insert into proveedores(nombre) values
('Mazda Colombia'),
('BMW Repuestos'),
('Mitsubishi Parts');


insert into clientes(nombre,identificacion,telefono,fecha_contacto,tipo) values
('Brayan','789456','3001111111','2025-01-10','Comprador'),
('Carlos','741258','3012222222','2025-02-15','Comprador'),
('Laura','951357','3023333333','2025-03-01','Potencial'),
('Diana','654987','3034444444','2025-03-20','Potencial');



insert into ventas_vendedor(id_cliente,id_vendedor,id_vehiculo,fecha_venta,valor_venta) values
(1,1,1,'2025-01-15',178985000),
(1,1,2,'2025-04-20',188898500),
(2,4,4,'2025-05-10',520000000);


insert into historial_servicios(servicio,fecha,id_empleado,id_cliente,id_vehiculo,id_proveedor) values
('Mantenimiento','2025-05-15',2,1,1,1),
('Reparacion','2025-06-01',3,2,4,2);


insert into departamento_servicios(id_empleado,servicio,horario) values
(2,'Mantenimiento','08:00-17:00'),
(3,'Reparacion','07:00-16:00');



insert into interes_clientes(id_cliente,id_vehiculo,fecha_interes) values
(3,1,'2025-03-15'),
(3,4,'2025-03-18'),
(4,2,'2025-04-01');
