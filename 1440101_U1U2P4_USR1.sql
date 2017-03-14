--3.CONECTATE CON EL PRIMER USUARO.
--4.CREA 2 ESQUEMAS QUE EL PRIMERO SEA EL DEFAULT DE EL, Y EL SEGUNDO SEA EL DEFAULT DEL SEGUNDO USUARIO
create schema EsquemaUsuario1 authorization usuariopractica4a
go

create schema EsquemaUsuario2 authorization usuariopractica4a
go



alter user usuariopractica4a 
with default_schema = EsquemaUsuario1
go

alter user usuariopractica4b 
with default_schema = EsquemaUsuario2
go

use CAPACITACION
go


--5.CREA LAS TABLAS CURSO, INSTRUCTOR, MANUALES
create table CURSO(
IdCurso int primary key,
DesCurso varchar(70)
)

create table INSTRUCTOR(
IdInstructor int primary key,
DesInstructor varchar(70)
)

create table MANUALES(
IdManuales int primary key,
DesManuales varchar(70)
)
