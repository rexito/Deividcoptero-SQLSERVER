--Video 65 Triggers[Update]

--Estructura
-- create triggre Nombretrigger
 -- on Tabla
 -- for update
 --as 
 -- sentencias

select * from TablaAlmacen
select * from TablaVentas join TablaAlmacen 
on TablaVentas.id_producto = TablaAlmacen.id_producto

--Creacion trigger--
create trigger ActualizarVenta --Asignamos un nombre al trigger
on TablaVentas --Indicamos la tabla donde se activara la accion
for update --Despues de insertar en la TablaVentas
as
	begin --Comienza las sentencias
		insert into TablaTotales values(1)
	end --finalizan las sentecias
		--fin Trigger--

--Comprobamos los valores ingresados
	select * from TablaVentas
	select * from TablaTotales

--Actualizar un registro
update TablaVentas
set cantidad = 20
where TablaVentas.id_venta = 3
