--6.CAMBIA AL SEGUNDO USUARIO Y CREA LAS TABLAS PERSONAL, CURSOSTOMADOS

use CAPACITACION
go

create table PERSONAL(
IdPersonal int primary key,
DesPersonal varchar(70)
)

create table CURSOSTOMADOS(
IdCursostomados int primary key,
DesCursostomados varchar(70)
)