--Autor: Edgar Jesus Valdivia Burgara
--Fecha: 07/03/17
--No.Control: 14401011
--Descripción: Pratica 6

--1.CREA UNA BD LLAMDA ITT

create database ITT
on primary
(
  name = 'ITT.mdf',
  filename = 'C:\ADB2017\U1_U2\ITT.mdf'
)
log on
(
  name = 'ITT.ldf',
  filename = 'C:\ADB2017\U1_U2\ITT.ldf'
)
go

use ITT
go


--2.CREA TRES ESQUEMAS (ESCOLARES, RECHUMANOS, VINCULACION-POSGRADO)
create schema ESCOLARES
go

create schema RECHUMANOS
go

create schema VINCULACION_POSGRADO
go


--3.INVESTIGUE QUE ES LO QUE SE MANEJARIA EN CADA AREA Y CREA EN CADA ESQUEMA LAS TABLAS QUE USTED SUGERIRIA
-------------------------------------------ESCOLARES
create table ESCOLARES.Alumnos(
  IdAlumno int primary key not null,
  Nombres varchar(20) null,
  ApPaterno varchar(15)null,
  ApMaterno varchar(15)null
)
go

create table ESCOLARES.OtrosPagos(
  IdOtroPago int primary key not null,
  Monto float null,
  Detalles varchar(75)null
)
go

create table ESCOLARES.Eventos(
  IdEvento int primary key not null,
  FechaEvento date,
  Detalles varchar(75)null
)
go

create table ESCOLARES.Inscripciones(
  IdInscripcion int primary key not null,
  Fecha date,
  Monto float null,
  Detalles varchar(75)null
)
go
-------------------------------------------RECHUMANOS
create table RECHUMANOS.Empleados(
  IdEmpleado int primary key not null,
  Nombres varchar(20),
  ApPaterno varchar(15)null,
  ApMaterno varchar(15)null,
  Antiguedad date null
)
go

create table RECHUMANOS.Nominas(
  IdNomina int primary key not null,
  Observaciones varchar(30)
)
go
--------------------------------------------VINCULACION_POSGRADO
create table VINCULACION_POSGRADO.Evaluaciones(
  IdEvaluacion int primary key not null,
  Fecha date
)
go

create table VINCULACION_POSGRADO.Asesorias(
  IdAsesoria int primary key not null,
  Fecha date
)
go

drop table ESCOLARES.Eventos
go

--4.INSERTE DATOS EN CADA TABLA DE LA BASE DE DATOS.
insert into ESCOLARES.Alumnos(IdAlumno,Nombres,ApPaterno,ApMaterno)
values (1,'Edgar Jesús','Valdivia','Burgara'),
       (2,'Juan Francisco','Aldape','Herrera'),
       (3,'Esmeralda Lizeth','Villegas','Beltrán'),
       (4,'Andrew Tonalá','Arizmendiz','Bilsbao'),
       (5,'Juan Leonelo','Perez','Gomez'),
       (6,'Ana Lucia','Somerville','Aranda')
go

insert into ESCOLARES.Eventos(IdEvento,FechaEvento,Detalles)
values (1,'2017-03-12','Carrera 6k por ayuda a los niños discapacitados'),
       (2,'2017-03-26','Evento conmemorativo Tecnologicos de México'),
       (3,'2017-04-10','Certificacion para jovenes recien terminados cursos Cisco')
go

insert into ESCOLARES.Inscripciones(IdInscripcion,Fecha,Monto,Detalles)
values (1,'2017-03-12',2500,'Ordinaria'),
       (2,'2017-03-12',2500,'Ordinaria'),
       (3,'2017-03-12',2500,'Ordinaria'),
       (4,'2017-03-12',2500,'Ordinaria'),
       (5,'2017-03-12',2900,'Especial'),
       (6,'2017-03-12',2500,'Ordinaria'),
       (7,'2017-03-12',2500,'Ordinaria'),
       (8,'2017-03-12',2500,'Ordinaria'),
       (9,'2017-03-12',2500,'Ordinaria'),
       (10,'2017-03-12',2500,'Ordinaria'),
       (11,'2017-03-12',2900,'Especial'),
       (12,'2017-03-12',2500,'Ordinaria'),
       (13,'2017-03-13',2500,'Ordinaria'),
       (14,'2017-03-13',2900,'Especial'),
       (15,'2017-03-13',2900,'Especial'),
       (16,'2017-03-13',2500,'Ordinaria'),
       (17,'2017-03-13',2900,'Especial'),
       (18,'2017-03-13',2900,'Especial')
go       

insert into ESCOLARES.OtrosPagos(IdOtroPago,Monto,Detalles)
values (1,750,'Daños y perjuicios en la institución'),
       (2,90,'Articulos laboratorio de computo')
go

insert into RECHUMANOS.Empleados(IdEmpleado,Nombres,ApPAterno,ApMaterno,Antiguedad)
values (1,'Luis Omar','Valderrama','Carrillo','2007-11-13'),
       (2,'Carmen Valeria','Aldape','Hurrutia','1995-05-26'),
       (3,'Luz Elena','Martinez','Carrillo','2002-09-11'),
       (4,'Rosario Elizabeth','Escamilla','Oronia','2000-07-03'),
       (5,'Perdomo Ali','Vasconcelos','Letrán','1997-08-30')
go       

insert into RECHUMANOS.Nominas(IdNomina,Observaciones)
values (1,'Ni idea'),
       (2,'Quien sabe'),
       (3,'No se que poner'),
       (4,'Nada'),
       (5,'No pasa nada')
go       

insert into VINCULACION_POSGRADO.Asesorias(IdAsesoria,Fecha)
values (1,'2017-03-11'),
       (2,'2017-03-15'),
       (3,'2017-03-21')
go

insert into VINCULACION_POSGRADO.Evaluaciones(IdEvaluacion,Fecha)
values (1,'2017-03-11'),
       (2,'2017-03-15'),
       (3,'2017-03-21'),
       (4,'2017-04-11'),
       (5,'2017-04-15'),
       (6,'2017-05-01'),
       (7,'2017-05-11'),
       (8,'2017-05-25'),
       (9,'2017-06-01')
go


--5.MUESTRE EL CONTENIDO DE CADA TABLA DE LA BD
select * from ESCOLARES.Alumnos
go

select * from ESCOLARES.Eventos
go

select * from ESCOLARES.Inscripciones
go

select * from ESCOLARES.OtrosPagos
go

select * from RECHUMANOS.Empleados
go

select * from RECHUMANOS.Nominas
go

select * from VINCULACION_POSGRADO.Asesorias
go

select * from VINCULACION_POSGRADO.Evaluaciones
go
