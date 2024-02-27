create database Practica
go
use Practica
drop table Productos;
create table Productos 
(
Id int identity (1,1) primary key,
Nombre nvarchar (100),
Descripcion nvarchar (100),
Marca nvarchar (100),
Ubicacion nvarchar(10),
Stock int
)

insert into Productos 
values
('SSD','DISCO SSD','SDASD45646','R0101',24),
('CPU','UNIDAD CENTRAR PROCESO','fdfd5454','T10',15);

---PROCEDIMIENTOS ALMACENADOS 
--------------------------MOSTRAR 
create proc MostrarProductos
as
select *from Productos
go

--------------------------INSERTAR 
create proc InsetarProductos
@nombre nvarchar (100),
@descrip nvarchar (100),
@marca nvarchar (100),
@ubicacion nvarchar(10),
@stock int
as
insert into Productos values (@nombre,@descrip,@marca,@ubicacio,@stock)
go

------------------------ELIMINAR
create proc EliminarProducto
@idpro int
as
delete from Productos where Id=@idpro
go
------------------EDITAR

create proc EditarProductos
@nombre nvarchar (100),
@descrip nvarchar (100),
@marca nvarchar (100),
@ubicacion nvarchar(10),
@stock int,
@id int
as
update Productos set Nombre=@nombre, Descripcion=@descrip, Marca=@marca, Ubicacion=@ubicacion, Stock=@stock where Id=@id
go
