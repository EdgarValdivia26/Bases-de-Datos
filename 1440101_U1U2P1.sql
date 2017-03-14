--Autor: Edgar Jesus Valdivia Burgara
--Fecha: 23/02/17
--No.Control: 14401011
--Descripción: Pratica 1

----PREVIAMENTE ME CONECTE CON EL USUARIO SA
----CREAR UNA BASE DE DATOS LLAMADA ABD2017 Y PONERLA EN UN LUGAR ESPECÍFICO
create database ABD2017
on primary
(
name = 'ADB2017.MDF',
filename = 'C:\ADB2017\U1_U2\ADB2017.MDF'
)
log on
(
name = 'ADB2017.LDF',
filename = 'C:\ADB2017\U1_U2\ADB2017.LDF'
)
go

----USAR LA BASEDE DATOS QUE ACABO DE CREAR
use ABD2017
go

----CREAR UNA TABLA LLAMADA (DATOS) CON 2 CAMPOS
create table DATOS(
LLAVE int identity (1,1),
DESCRIPCION varchar(50)
)
go

----VERIFICAR EN QUE ESQUEMA QUEDÓ
exec sp_help DATOS
go

----CREAR UN ESQUEMA LLAMADO (MIESQUEMA)
create schema MIESQUEMA
go

----CREAR OTRA TABLA LLAMADA (DATOS2) Y EN EL NUEVO ESQUEMA
create table MIESQUEMA.DATOS2(
LLAVE int identity (1,1),
DESCRIPCION varchar(50)
)
go

--XXXXXXXXAQUI ME QUEDEXXXXXXXXXXXXXXXXX
----INSERTAR 1000 REGISTROS EN CADA TABLA
insert into DATOS
values('Insertando Registros')
go 1000

insert into MIESQUEMA.DATOS2
values('Insertando Registros')
go 1000

----CONSULTAR LOS REGISTROS DE CADA TABLA
select * from DATOS
select * from MIESQUEMA.DATOS2