-- creación de al menos 4 tipo de productos--
insert into minimarket.tipoProduct (categoria) values ('snack');
insert into minimarket.tipoProduct (categoria) values ('frutas');
insert into minimarket.tipoProduct (categoria) values ('abarrotes');
insert into minimarket.tipoProduct (categoria) values ('articulos personales');

-- creación de al menos 5 productos --

insert into minimarket.producto (producto_id, nombre, precio, tipoProduct_id) values (1, 'papas fritas', 2000, 1);
insert into minimarket.producto (producto_id, nombre, precio, tipoProduct_id) values (2, 'papel higiénico', 1000, 4);
insert into minimarket.producto (producto_id, nombre, precio, tipoProduct_id) values (3, 'lentejas', 1500, 3);
insert into minimarket.producto (producto_id, nombre, precio, tipoProduct_id) values (4, 'tallarines', 1500, 3);
insert into minimarket.producto (producto_id, nombre, precio, tipoProduct_id) values (5, 'kilo manzana', 1000, 2);

select * from minimarket.stock;

-- creación de ventas que se han hecho por producto -- 
insert into minimarket.venta (venta_id, fecha, monto, cantidadProd, producto_id) values (1, '2019-11-11', 3000, 3, 5);
insert into minimarket.venta (venta_id, fecha, monto, cantidadProd, producto_id) values (2, '2020-11-11', 10000, 5, 1);
insert into minimarket.venta (fecha, monto, cantidadProd, producto_id) values ('2021-11-12', 10000, 10, 2);
select * from minimarket.venta; 

-- creación de proovedor
insert into minimarket.proovedor (nombre, rut, correo, direccion) 
values ('incoludido', '76.585.348-6', 'contacto@incoludido.cl', 'Aldunate 1466');

-- creacion de stock de producto
insert into minimarket.stock (cantidad, fecha, proovedor_id, tipoProduct_id)
values(10, '2019-11-11', 1, 4);

-- cración de inversion realizada en la compra del producto
insert into minimarket.inversion (monto, fecha, cantidad, producto_id) 
values (5000, '2019-11-11', 10, 4);
