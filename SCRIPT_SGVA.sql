/*creameos la base de datos*/
create database Trazabilidad_SGVA;

/*comando para borrar la base de datos*/
drop database Trazabilidad_SGVA;

/*comando para usar esta base de datos*/
USE Trazabilidad_SGVA;

/*creamos las tablas con sus atributos*/
create table trazabilidad(
	id_trazabilidad int primary key not null auto_increment,
	nombre_empresa varchar(45) not null,
    encargado varchar(45) not null,
    fecha_inicio date not null,
    fecha_fin date not null,
    telefono varchar(45) not null,
    estado varchar(45) not null default 'pendiente',
    fecha_cierre varchar(45) not null
);

create table Empresa (
	id_empresa int primary key not null auto_increment,
    codigo_empresa varchar(45) not null,
    nombre_empresa varchar(100) not null
);
    
/*usamos este comando para borrar la columna id_empresa*/    
alter table empresa drop column id_empresa;

/*le añadimos la primary key*/
alter table empresa add primary key (codigo_empresa);

/*describimos la tabla*/
describe trazabilidad;

/*cambiamos el nombre de la columna*/
alter table trazabilidad change nombre_empresa cod_empresa varchar(45);

/*seleccionamos las filas que estan dentro de todas las columnas*/
select * from trazabilidad;

/*para borrar todos los datos de la talba*/
truncate trazabilidad;

/*insertamos los datos en las columnas*/
insert into empresa
values  ('COD1', 'Cooperativa de ahorro y credito para el bienestar social benificiar entidad cooperativa'),
		('COD2', 'Enfragen colombia sas'),
        ('COD3', 'Soporte y logistica sas'),
        ('COD4', 'Univeridad Antonio Nariño'),
        ('COD5', 'Industria militar');
        
insert into empresa (nombre_empresa, codigo_empresa)
values('Cooperativa de ahorro y credito para el bienestar social benificiar entidad cooperativa', 'COD6'),
('Enfragen colombia sas', 'COD7'),
('Soporte y logistica sas', 'COD8'),
('Univeridad Antonio Nariño', 'COD9'),
('Industria militar', 'COD10');

insert into trazabilidad (cod_empresa, encargado, fecha_inicio, fecha_fin, telefono, fecha_cierre)
values ('PO1', 'shallel', '2026-04-06', '2026-09-08', '3232342342', '2027-08-09');