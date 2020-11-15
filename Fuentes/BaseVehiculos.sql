create database ImportacionVehiculo
go
use ImportacionVehiculo 
go

create table vehiculo(
CodigoVehiculo int primary key not null,
Marca varchar(100) not null,
Modelo varchar(100) not null,	
Color varchar(100) not null
)

go
create table clase(
CodigoClase char(3) primary key not null,
NombreClase varchar(100) not null
)

go
create table combustible(
CodigoCombustible char(3) primary key not null, 
NombreCombustible varchar(100) not null
)

go
create table placa(
CodigoPlaca char(3) primary key not null,
NombrePlaca varchar(100) not null,
)

go
create table tiempo(
CodigoFecha char(2) primary key not null ,
Año int not null
)

go
create table lugar_propietario(
CodigoLugarPropietario char(6) not null primary key,
Departamento varchar(100) not null,
Municipio varchar(100) not null
)

go
create table pertenencia(
CodigoPertenencia char(3) not null primary key,
Pertenencia varchar(100) not null
)

go
create table condicion(
CodigoCondicion char(2) not null primary key,
Condicion varchar(100) not null
)

go
create table estado(
CodigoEstado char(2) not null primary key,
Estado varchar(100) not null
)

go
create table aduana(
CodigoAduana char(5) not null primary key,
NombreAduana varchar(100) not null
)

go
create table valor_vehiculo(
CodigoVehiculo int not null,
CodigoPlaca char(3) not null,
CodigoFecha char(2) not null,
CodigoLugarPropietario char(6) not null,
CodigoCondicion char(2) not null,
CodigoEstado char(2) not null,
CodigoAduana char(5) not null,
CodigoCombustible char(3) not null,
CodigoClase char(3) not null,
CodigoPertenencia char(3) not null,
ValorVehiculo money not null,
Impuesto money not null
)

alter table valor_vehiculo add constraint fk_vehiculo foreign key (CodigoVehiculo) references vehiculo(CodigoVehiculo)
alter table valor_vehiculo add constraint fk_clase foreign key (CodigoClase) references clase(CodigoClase)
alter table valor_vehiculo add constraint fk_combustible foreign key (CodigoCombustible) references combustible(CodigoCombustible)
alter table valor_vehiculo add constraint fk_placa foreign key (CodigoPlaca) references placa(CodigoPlaca)
alter table valor_vehiculo add constraint fk_fecha foreign key (CodigoFecha) references tiempo(CodigoFecha)
alter table valor_vehiculo add constraint fk_propietario_lugar foreign key (CodigoLugarPropietario) references lugar_propietario(CodigoLugarPropietario)
alter table valor_vehiculo add constraint fk_pertenencia foreign key (CodigoPertenencia) references pertenencia(CodigoPertenencia)
alter table valor_vehiculo add constraint fk_estado foreign key (CodigoEstado ) references estado(CodigoEstado)
alter table valor_vehiculo add constraint fk_aduana foreign key (CodigoAduana) references aduana(CodigoAduana)
alter table valor_vehiculo add constraint fk_codicion foreign key (CodigoCondicion) references condicion(CodigoCondicion)


use ImportacionVehiculo
select * from valor_vehiculo













use master
drop database ImportacionVehiculo

