--Autor: Edgar Jesus Valdivia Burgara
--Fecha: 23/02/17
--No.Control: 14401011
--Descripción: Pratica 4



--1.CREA UNA BD LLAMADA CAPACITACIÓN
create database CAPACITACION
on primary(
   name = 'CAPACITACION.MDF',
   filename = 'C:\ADB2017\U1_U2\CAPACITACION.MDF'
)
LOG ON
(
   name = 'CAPACITACION.LDF',
   filename = 'C:\ADB2017\U1_U2\CAPACITACION.LDF'
)
go

use CAPACITACION
go

--2.CREA DOS USARIOS Y DALES PERMISOS NECESARIOS.
create login practica4a
with password = 'pekesmeralda',
default_database = "CAPACITACION"
GO

create login practica4b
with password = 'pekesmeralda',
default_database = "CAPACITACION"
GO

create user usuariopractica4a
for login practica4a

create user usuariopractica4b
for login practica4b


exec sp_addrolemember db_ddladmin,usuariopractica4a  --para el usuario a
go

exec sp_addrolemember db_owner,usuariopractica4a
go 

grant create table to usuariopractica4b



--7.DESCRIBE EN COMENTARIOS DEL QUERY COMO QUEDO LA BD.
/*Inclusive aunque le agregué después el (exec sp_addrolemember db_owner,usuariopractica4a)
  al crear las ultimas 2 tablasme da el mensaje de error de
  The specified schema name "EsquemaUsuario2" either does not exist or you do not have permission to use it.
  lo cual no me explico :( */