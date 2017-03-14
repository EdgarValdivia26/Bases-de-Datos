use ABD2017
go


--CREANDO EL LOGIN
create login practica7
with password = 'pekesmeralda',
default_database = "ABD2017"


--CREANDO AL USUARIO
create user usuario7 for login practica7
go


--OTORGANDO PERMIOS DE ESCRITURA, LECTURA Y DE AGREGAR DDL
execute sp_addrolemember db_datawriter, usuario7
go
execute sp_addrolemember db_datareader, usuario7
go
execute sp_addrolemember db_ddladmin, usuario7
go


create schema DATOS authorization usuario7 --ESTE ESQUEMA YA ESBA CREADO PERO ASI LE DEJARÉ
go


