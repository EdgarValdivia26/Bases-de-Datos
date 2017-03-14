--PRACTICA 8.
--1. Conectaros como administradores del servidor SQLServer 2008

--2. Crear una BD para las reservaciones de un hotel con mínimo 5 tablas relacionadas.
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

--3. Crear un inicio de sesión con nombre “pepe” y contraseña “pepe1234”, base de datos por defecto 
--“hotel” e idioma “Spanish”. No exigir cambio de contraseña  en la siguiente conexión. 
--No asignar ningún permiso.

create login pepe
with password = '7890',
default_database = "HOTEL",
default_language = "Spanish"
go


--4. Conectarse con este usuario ¿qué puede hacer? ¿por qué? 
--5. Cree el usuario de base de datos “pepe” en la base de datos “hotel” asociado al inicio de sesión “pepe”. 

create user pepe for login pepe
go



--6. ¿Qué puede hacer? ¿se la ha asignado algún rol a “pepe”?  
--SI, SE LE HA ASIGNADO TODOS LOS ROLES DE ADMINISTRACIÓN YA QUE POR DEFAUL SE LOS DA

--7.  Asigne el rol de base de datos db_datareader  para la base de datos “hotel” al usuario.
execute sp_addrolemember db_datareader, pepe
go


--8. Conectaros de nuevo con el usuario “pepe”
--9.  ¿Puede insertar datos en reservas? ¿y leerlos? 


--10. Definir un rol de bases de datos “usuariosHotel” en la BD hotel. El propietario del rol será 
--el esquema “dbo”. Otorgarle la posibilidad de manipular los datos de las tablas y ejecutar 
--las funciones programadas.

--11. Asignar al usuario “pepe” el rol  “usuariosHotel”. 

--12. Comprobar qué se le permite hacer ahora. 

--13. Crear el usuario “juan” y asignarle el rol “db_datawriter” y “db_datareader”

--14. . ¿Puede ejecutar funciones? 

--15.  Modificar el rol “usuariosHotel” dejándole únicamente la posibilidad de gestionar 

--las reservas y clientes, y consultar el resto de información.

--16. Conectaros como “pepe” y tratar de insertar un nuevo servicio. ¿Se pudo? 

--17. Hazlo con la cuenta de “administrador”.

--18. Borrar el rol “usuariosHotel” ¿se puede?
