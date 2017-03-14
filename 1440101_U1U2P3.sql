--Autor: Edgar Jesus Valdivia Burgara
--Fecha: 23/02/17
--No.Control: 14401011
--Descripción: Pratica 3

--1. CREA UNA BD LLAMADA KINDERMUDOFELIZ
create database KINDERMUDOFELIZ
on primary
(
name = 'KINDERMUDOFELIZ.MDF',
filename = 'C:\ADB2017\U1_U2\KINDERMUDOFELIZ.MDF'
)
log on
(
name = 'KINDERMUDOFELIZ.LDF',
filename = 'C:\ADB2017\U1_U2\KINDERMUDOFELIZ.LDF'
)
go


--USAR LA BASE DE DATOS CREADA
use KINDERMUDOFELIZ
go


--1. EN ELLA CREAR 10 TABLAS
create table ALUMNOS(
     IdAlumno int not null,
     ApellidoPaterno varchar(15) null,
     ApellidoMaterno varchar(15) null,
     Nombres varchar (25) null)
alter table ALUMNOS
add constraint pk_alumnos
primary key(IdAlumno)
go


create table PADRE_TUTOR(
     IdPadre_Tutor int not null,
     ApellidoPaterno varchar(15) null,
     ApellidoMaterno varchar(15) null,
     Nombres varchar (25) null)
alter table PADRE_TUTOR
add constraint pk_padre_tutor
primary key(IdPadre_Tutor)
go  


create table GRUPOS(
     IdGrupo int not null,
     GradoGrupo varchar (5) null, 
     LetraGrupo varchar (5) null)
alter table GRUPOS
add constraint pk_grupos
primary key(IdGrupo)
go  


create table MAESTROS(
     IdMaestro int not null,
     ApellidoPaterno varchar(15) null,
     ApellidoMaterno varchar(15) null,
     Nombres varchar (25) null)
alter table MAESTROS
add constraint pk_maestros
primary key(IdMaestro)
go
 
 
create table ASISTENCIAS(
     IdAsistencia int not null,
     Observaciones varchar(150) null)
alter table ASISTENCIAS
add constraint pk_asistencias
primary key(IdAsistencia)
go


create table REPORTES_INCIDENCIAS(
     IdReporte_Incidencia int not null,
     Observaciones varchar(150) null)
alter table REPORTES_INCIDENCIAS
add constraint pk_reportes_incidencias
primary key(IdReporte_Incidencia)
go


create table EXPEDIENTE_CLINICO(
     IdExpediente_Clinico int not null,
     Observaciones varchar(150) null)
alter table EXPEDIENTE_CLINICO
add constraint pk_expediente_clinico
primary key(IdExpediente_Clinico)
go


create table EXPEDIENTE_PEDAGOGICO(
     IdExpediente_Pedagogico int not null,
     Observaciones varchar(150) null)
alter table EXPEDIENTE_PEDAGOGICO
add constraint pk_expediente_pedagogico
primary key(IdExpediente_Pedagogico)
go


create table NUTRICION(
     IdNutricion int not null,
     Observaciones varchar(150) null)
alter table NUTRICION
add constraint pk_nutricion
primary key(IdNutricion)
go


create table EVALUACION(
     IdEvaluacion int not null,
     Observaciones varchar(150) null)
alter table EVALUACION
add constraint pk_evaluacion
primary key(IdEvaluacion)
go


--1. RELACIONAR LAS TABLAS
--ALUMNOS CON GRUPOS
alter table ALUMNOS
add constraint fk_alumnos_grupos
foreign key(IdAlumno)
references Grupos(IdGrupo)
go
--MAESTROS CON GRUPOS
alter table MAESTROS
add constraint fk_maestros_grupos
foreign key(IdMaestro)
references Grupos(IdGrupo)
go
--ALUMNOS CON EXPEDIENTE CLINICO
alter table ALUMNOS
add constraint fk_alumnos_expediente_clinico
foreign key(IdAlumno)
references EXPEDIENTE_CLINICO(IdExpediente_Clinico)
go
--ALUMNOS CON EXPEDIENTE PEDAGOGICO
alter table ALUMNOS
add constraint fk_alumnos_expediente_pedagogico
foreign key(IdAlumno)
references EXPEDIENTE_PEDAGOGICO(IdExpediente_Pedagogico)
go
--ALUMNOS CON NUTRICION
alter table ALUMNOS
add constraint fk_alumnos_nutricion
foreign key(IdAlumno)
references NUTRICION(IdNutricion)
go
--ALUMNOS CON ASISTENCIAS
alter table ALUMNOS
add constraint fk_alumnos_asistencias
foreign key(IdAlumno)
references ASISTENCIAS(IdAsistencia)
go
--ALUMNOS CON EVALUACION
alter table ALUMNOS
add constraint fk_alumnos_evaluacion
foreign key(IdAlumno)
references EVALUACION(IdEvaluacion)
go
--ALUMNOS CON REPORTES INCIDENCIAS
alter table ALUMNOS
add constraint fk_alumnos_reportes_incidencias
foreign key(IdAlumno)
references REPORTES_INCIDENCIAS(IdReporte_Incidencia)
go
--ALUMNOS CON PADRE TUTOR
alter table ALUMNOS
add constraint fk_alumnos_padre_tutor
foreign key(IdAlumno)
references PADRE_TUTOR(IdPadre_Tutor)
go


--1. CREA LOS ESQUEMAS NECESARIOS PARA CATEGORIZAR LAS TABLAS NO IMPORTAN 
--LOS PERMISOS O LAS AUTORIZACIONES
--PENDIENTE EN CLASES
create schema PERSONAL
go
create schema ACADEMICO
go


--2.CAMBIE LAS TABLAS AL ESQUEMA QUE LE CORRESPONDE
alter schema PERSONAL transfer dbo.NUTRICION
alter schema PERSONAL transfer dbo.EXPEDIENTE_CLINICO
alter schema PERSONAL transfer dbo.EXPEDIENTE_PEDAGOGICO
alter schema PERSONAL transfer dbo.PADRE_TUTOR
alter schema ACADEMICO transfer dbo.ALUMNOS
alter schema ACADEMICO transfer dbo.GRUPOS
alter schema ACADEMICO transfer dbo.MAESTROS
alter schema ACADEMICO transfer dbo.REPORTES_INCIDENCIAS
alter schema ACADEMICO transfer dbo.ASISTENCIAS
alter schema ACADEMICO transfer dbo.EVALUACION
go


--3.CREA UN ESQUEMA LLAMADO FINANCIERO
create schema FINANCIERO
go


--4.CREA DOS TABLAS EN EL ESQUEMA FINANCIERO UNA LLAMADA CONCEPTOS DE PAGO 
--Y OTRA PAGOS
create table CONCEPTOS_DE_PAGOS(
IdConcepto_De_Pago int not null,
Concepto varchar (70) null)
alter table CONCEPTOS_DE_PAGOS
add constraint pk_conceptos_de_pagos
primary key(IdConcepto_De_Pago)
alter schema FINANCIERO transfer dbo.CONCEPTOS_DE_PAGOS
go

create table PAGOS(
IdPago int not null,
Monto money null,
Fecha date null)
alter table PAGOS
add constraint pk_pagos
primary key(IdPago)
alter schema FINANCIERO transfer dbo.PAGOS
go


--POR HABER REALIZADO EL CAMBIO DE ESQUEMAS LAS TABLAS SE MOVIERON EN 
--MI ESQUEMA VISUAL YA QUE LO HICE PRIMERO CON EL dbo Y NO CON
--ALGUN ESQUEMA YA EN ESPECIFICO

--4.ESTABLEZCA LAS RELACIONES QUE TIENEN EN LA BD.
--ALUMNOS CON CONCEPTOS DE PAGOS
alter table ACADEMICO.ALUMNOS
add constraint fk_alumnos_conceptos_de_pagos
foreign key(IdAlumno)
references FINANCIERO.CONCEPTOS_DE_PAGOS(IdConcepto_De_Pago)
go

--CONCEPTOS DE PAGOS CON PAGOS
alter table FINANCIERO.CONCEPTOS_DE_PAGOS
add constraint fk_conceptos_de_pagos_pagos
foreign key(IdConcepto_De_Pago)
references FINANCIERO.PAGOS(IdPago)
go