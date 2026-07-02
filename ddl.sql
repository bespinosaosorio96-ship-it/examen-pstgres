
create schema brayan;
set search_path to brayan;

create type estado_auto as enum ('Nuevo','Usado');

create table vehiculos(
    id serial primary key,
    marca varchar(50) not null,
    modelo varchar(50) not null,
    año int not null,
    estado estado_auto not null,
    precio decimal(12,2) not null
);


create type tipo_empleado as enum ('Vendedor','Service');
create table empleados(
    id serial primary key,
    nombre varchar(60) not null,
    identificacion varchar(30) unique not null,
    rol tipo_empleado not null,
    contratacion date not null
);



create table proveedores(
    id serial primary key,
   nombre varchar(60) not null
);

create type tipo_cliente as enum('Comprador','Potencial');

create table clientes(
    id serial primary key,
    nombre varchar(60) not null,
    identificacion varchar(30) UNIQUE not null,
    telefono varchar(20),
    fecha_contacto date not null,
    tipo tipo_cliente not null
);



create table ventas_vendedor(
    id serial primary key,
    id_cliente int not null,
    id_vendedor int not null,
    id_vehiculo int not null,
    fecha_venta date not null,
    valor_venta DECIMAL(12,2) not null,
    foreign key(id_cliente) references clientes(id),
    foreign key(id_vendedor) references empleados(id),
    foreign key(id_vehiculo) references vehiculos(id)
);


create table historial_servicios(
    id serial primary key,
    servicio tipo_servicio not null,
    fecha date not null,
    id_empleado int not null,
    id_cliente int not null,
    id_vehiculo int not null,
    id_proveedor int not null,
    foreign key(id_empleado) references empleados(id),
    foreign key(id_cliente) references clientes(id),
    foreign key(id_vehiculo) references vehiculos(id),
    foreign key(id_proveedor) references proveedores(id)
);

create type tipo_servicio as enum ('Mantenimiento','Reparacion');
create table departamento_servicios(
    id serial primary key,
    id_empleado int not null,
    servicio tipo_servicio not null,
    horario varchar(50),
    foreign key(id_empleado) references empleados(id)
);



create table interes_clientes(
    id serial primary key,
    id_cliente int not null,
    id_vehiculo int not null,
    fecha_interes date not null,
    foreign key(id_cliente) references clientes(id),
    foreign key(id_vehiculo) references vehiculos(id)
);



