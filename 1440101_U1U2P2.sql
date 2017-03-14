--Autor: Edgar Jesus Valdivia Burgara
--Fecha: 23/02/17
--No.Control: 14401011
--Descripción: Pratica 2

--CREAR UN USUARIO QUE SE PUEDA CONECTAR A LA BASE DE DATOS (ABD2017) 
--CON TODOS LOS PERMISOS ESCRIBIR LEER Y USAR TODOS LOS DDL
--1.CONECTARME AL SERVIDOR CON SA
--2.PRIMERO CREAMOS UN LOGIN
create login OTROUSUARIO
with password = 'pekesmeralda',
  default_database = "ABD2017"
go


--2.DESPUÉS CREAR UN USUARIO PARA EL LOGIN
create user edgarvaldivia for login OTROUSUARIO
go


--2.OTORGANDO AUTORIZACION/PERMISOS AL USUARIO CREADO
grant create table to edgarvaldivia;
grant select to edgarvaldivia;
grant insert to edgarvaldivia;
grant update to edgarvaldivia;
grant delete to edgarvaldivia;
grant alter to edgarvaldivia;
go


--3.CREAR ESQUEMA DATOS Y DARLE AUTORIZACION AL USUARIO CREADO
create schema DATOS authorization edgarvaldivia
go


--4.CONECTARME CON EL USUARIO CREADO



--5.EN ABD2017 CREAR UNA TABLA LLAMADA DOMICILIOS
create table DOMICILIOS
(
ID int primary key not null, 
NOMBRE varchar(30) not null, 
DOMICILIO varchar(90)not null
)
go


--6.VERIFICAR EN QUE ESQUEMA QUEDÓ
exec sp_help DATOS
go


--7.CAMBIAR EL ESQUEMA POR DEFAULT AL USUARIO
alter user edgarvaldivia
with
default_schema = "DATOS"
go


--8.CAMBIAR LA CONEXION A SA Y CREAR UNA TABLA
--PARA ESTE EJEMPLO CREE UNA LLAMADA DOMICILIOS IGUAL
create table DOMICILIOS
(
ID int primary key not null, 
NOMBRE varchar(30) not null, 
DOMICILIO varchar(90)not null
)
go


--9.VERIFICAR EN QUE ESQUEMA QUEDO
exec sp_help DOMICILIOS
go


