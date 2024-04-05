create database APIDiego
use apidiego
set dateformat dmy

create table Usuarios
(
	nombre varchar (20),
	apellido varchar (20),
	edad int
)
go

insert into Usuarios values
	('Diego', 'Doria', 21),
	('Javier', 'Doria', 26),
	('Erica', 'Doria', 09),
	('Elizabeth', 'Doria', 15)
go
