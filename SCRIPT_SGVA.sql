USE Trazabilidad_SGVA;

create table trazabilidad(
	id_trazabilidad int primary key not null auto_increment,
	nombre_empresa varchar(45) not null,
    encargado varchar(45) not null,
    fecha_inicio date not null,
    fecha_fin date not null,
    telefono varchar(45) not null,
    estado varchar(45) not null,
    fecha_cierre varchar(45) not null
);

create table Empresa (
    codigo_empresa int primary key not null auto_increment,
    nombre_empresa varchar(45) not null
)
    