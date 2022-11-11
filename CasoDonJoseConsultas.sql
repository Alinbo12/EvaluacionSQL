select * from minimarket.tipoproduct; 
select * from minimarket.producto; 
select * from minimarket.venta;

 -- consulta de la venta, su fecha, monto, cantidad de productos, y qué producto
select venta.fecha, venta.monto, venta.cantidadProd, venta.producto_id
from minimarket.venta
left join minimarket.producto on minimarket.venta.venta_id = minimarket.producto.producto_id;


-- conuslta de nombre de producto, precio, stock, fecha de adquisión del stock, cantidad de stock, proovedor y monto de la inversion
select producto.nombre, producto.precio, stock_id, stock.fecha, stock.cantidad, stock.proovedor_id, inversion.monto
from minimarket.producto
inner join minimarket.tipoProduct on minimarket.producto.producto_id = minimarket.tipoproduct.tipoProduct_id
inner join minimarket.stock on minimarket.tipoproduct.tipoProduct_id = minimarket.stock.stock_id
inner join minimarket.inversion on minimarket.producto.producto_id = minimarket.inversion.inversion_id
