--Autor: Edgar Jesus Valdivia Burgara
--Fecha: 23/02/17
--No.Control: 14401011
--Descripción: Pratica 5


---1.SE TE PROPORCIONO UNA BD LLAMA MODPERSONAL
---2.TODAS SUS TABLAS PERTENECEN AL ESQUEMA DBO
---3.CREA AL MENOS DOS ESQUEMAS Y ORGANIZA LA BD

--NO IMPORTA QUE A LOS ESQUEMAS NO LE DE LA AUTORIZACIÓN
--YA QUE EL USUARIO (SA) CUENTA CON TODOS LOS PRIVILEGIOS 
use ModPersonal
go

create schema ESQUEMA1
go

create schema ESQUEMA2
go

alter schema ESQUEMA1 transfer dbo.per_cat_estados
alter schema ESQUEMA1 transfer dbo.per_cat_municipios
alter schema ESQUEMA1 transfer dbo.per_cat_localidades
alter schema ESQUEMA1 transfer dbo.per_cat_permisos
alter schema ESQUEMA1 transfer dbo.per_mtd_directorio
alter schema ESQUEMA2 transfer dbo.per_cat_catalogos
alter schema ESQUEMA2 transfer dbo.per_cat_partidas
alter schema ESQUEMA2 transfer dbo.per_det_movimientos
alter schema ESQUEMA2 transfer dbo.per_parametros
alter schema ESQUEMA2 transfer dbo.per_cat_ur
alter schema ESQUEMA2 transfer dbo.per_cat_usuario
alter schema ESQUEMA2 transfer dbo.per_dir_comision





