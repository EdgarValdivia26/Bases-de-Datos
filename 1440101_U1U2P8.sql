--PRACTICA 8.
--1. Conectaros como administradores del servidor SQLServer 2008

--2. Crear una BD para las reservaciones de un hotel con m�nimo 5 tablas relacionadas.
create database HOTEL
on primary
(
	name = 'HOTEL.MDF',
	filename = 'C:\ADB2017\U1_U2\HOTEL.MDF'
)
log on
(
	name = 'HOTEL.LDF',
	filename = 'C:\ADB2017\U1_U2\HOTEL.LDF'
)
go

use HOTEL
go

--3. Crear un inicio de sesi�n con nombre �pepe� y contrase�a �pepe1234�, base de datos por defecto 
--�hotel� e idioma �Spanish�. No exigir cambio de contrase�a  en la siguiente conexi�n. 
--No asignar ning�n permiso.

create login pepe
with password = '7890',
default_database = "HOTEL",
default_language = "Spanish"
go


--4. Conectarse con este usuario �qu� puede hacer? �por qu�? 
--5. Cree el usuario de base de datos �pepe� en la base de datos �hotel� asociado al inicio de sesi�n �pepe�. 

create user pepe for login pepe
go



--6. �Qu� puede hacer? �se la ha asignado alg�n rol a �pepe�?  
--SI, SE LE HA ASIGNADO TODOS LOS ROLES DE ADMINISTRACI�N YA QUE POR DEFAUL SE LOS DA

--7.  Asigne el rol de base de datos db_datareader  para la base de datos �hotel� al usuario.
execute sp_addrolemember db_datareader, pepe
go


--8. Conectaros de nuevo con el usuario �pepe�
--9.  �Puede insertar datos en reservas? �y leerlos? 


--10. Definir un rol de bases de datos �usuariosHotel� en la BD hotel. El propietario del rol ser� 
--el esquema �dbo�. Otorgarle la posibilidad de manipular los datos de las tablas y ejecutar 
--las funciones programadas.

--11. Asignar al usuario �pepe� el rol  �usuariosHotel�. 

--12. Comprobar qu� se le permite hacer ahora. 

--13. Crear el usuario �juan� y asignarle el rol �db_datawriter� y �db_datareader�

--14. . �Puede ejecutar funciones? 

--15.  Modificar el rol �usuariosHotel� dej�ndole �nicamente la posibilidad de gestionar 

--las reservas y clientes, y consultar el resto de informaci�n.

--16. Conectaros como �pepe� y tratar de insertar un nuevo servicio. �Se pudo? 

--17. Hazlo con la cuenta de �administrador�.

--18. Borrar el rol �usuariosHotel� �se puede?
