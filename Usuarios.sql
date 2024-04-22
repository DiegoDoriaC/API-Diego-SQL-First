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


----------LISTAR USUARIO----------
select * from Usuarios
go


----------EDITAR USUARIO----------
Create procedure sp_editarUsuario
	@nombre varchar (20),
	@apellido varchar (20),
	@edad int
as
begin
	update Usuarios set
		apellido = @apellido,
		edad = @edad
		where nombre = @nombre
end
go


----------CREAR USUARIO----------
create procedure sp_crearUsuario
	@nombre varchar (20),
	@apellido varchar (20),
	@edad int
as
begin
	insert into Usuarios values
		(@nombre, @apellido, @edad)
end
go


----------ELIMINAR USUARIO----------
create procedure sp_eliminarUsuario
	@nombre varchar (20)
as
begin
	delete from Usuarios where nombre = @nombre
end
go