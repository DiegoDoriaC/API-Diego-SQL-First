create database APIDiego
use apidiego
set dateformat dmy

create table Usuarios
(
	idUsuario int primary key identity(1,1),
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
create procedure sp_listarUsuario
as
begin
	select * from Usuarios
end
go


----------BUSCAR USUARIO----------
create procedure sp_buscarUsuario
	@idUsuario int
as
begin
	select * from Usuarios where idUsuario = @idUsuario
end
go

----------EDITAR USUARIO----------
Create procedure sp_editarUsuario
	@idUsuario int,
	@nombre varchar (20),
	@apellido varchar (20),
	@edad int
as
begin
	update Usuarios set
		nombre = @nombre,
		apellido = @apellido,
		edad = @edad
		where idUsuario = @idUsuario
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
	@idUsuario int
as
begin
	delete from Usuarios where idUsuario = @idUsuario
end
go