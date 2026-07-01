
create eschema brayan;

create type  estado_auto as enum ('Nuevo','Usado');

create table vehiculos (
id serial primary key,
marca varchar(50) not null ,
modelo  varchar(50) not null,
año int not null,
estado estado_auto not null,
precio decimal(12,2)
);


create type tipo_empleado as enum('Vendedor', 'Service');


create table empleados(
id serial primary key,
nombre varchar (50) not null,
identificacion varchar(50) unique not null,
rol tipo_empleado not null,
contratacion date not null  --año/mes/dia
);


create table provedores(
id serial primary key,
nombre varchar(50)
);

create table ventas_vendedor(
id serial primary key,
id_vendedor int not null,
id_vehiculo int not null,
ventas_generadas int not null,
foreign key(id_vendedor) references empleados(id),
foreign key(id_vehiculo) references vehiculos(id)
);

create type tipo_cliente as enum('Comprador','Potencial');


create table clientes(
id serial primary key,
nombre varchar (50) not null,
identificacion varchar(50) unique not null,
telefono varchar(13),
fecha_contacto date not null,
tipo tipo_cliente not null
);

create type tipo_de_servicio as enum('Mantenimiento','Reparacion');

create table historial_servicios(
id serial primary key,
servicio tipo_de_servicio not null,
fecha date not null,
id_empleado int not null,
id_cliente int not null,
id_vehiculo int not null,
marca_vehiculo varchar(50) not null,
modelo_vehiculo varchar(50) not null,
provedor int not null,
foreign key (id_empleado) references empleados(id),
foreign key(id_vehiculo) references vehiculos(id),
foreign key(provedor) references provedores(id)
);

create table departamento_servicios(
id_empleado int not null,
servicio tipo_de_servicio not null,
horario varchar(50)
);






