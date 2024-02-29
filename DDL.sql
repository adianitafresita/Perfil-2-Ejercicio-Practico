

DELIMITER //

CREATE PROCEDURE insert_cliente(nombre_cliente VARCHAR(50), apellido_cliente VARCHAR(50), telefono VARCHAR(10), direccion VARCHAR(255))
BEGIN
    INSERT INTO clientes(nombre, apellido, telefono, direccion) VALUES (nombre_cliente, apellido_cliente, telefono, direccion);
END //

DELIMITER //

CREATE PROCEDURE insert_empleado(nombre_empleado VARCHAR(50), apellido_empleado VARCHAR(50), cargo VARCHAR(50), fecha_contratacion DATE, salario DECIMAL(10,2))
BEGIN
    INSERT INTO empleados(nombre, apellido, cargo, fecha_contratacion, salario) VALUES (nombre_empleado, apellido_empleado, cargo, fecha_contratacion, salario);
END //

DELIMITER //

CREATE PROCEDURE insert_pedido(cliente_id BINARY(16), fecha_pedido DATE, total DECIMAL(10,2), estado VARCHAR(20), empleado_id BINARY(16))
BEGIN
    INSERT INTO pedidos(cliente_id, fecha_pedido, total, estado, empleado_id) VALUES (cliente_id, fecha_pedido, total, estado, empleado_id);
END //


DELIMITER //

CREATE PROCEDURE insert_producto(nombre_producto VARCHAR(100), descripcion VARCHAR(300), precio DECIMAL(10,2), existencias INT)
BEGIN
    INSERT INTO productos(nombre, descripcion, precio, existencias) VALUES (nombre_producto, descripcion, precio, existencias);
END //

DELIMITER //

CREATE PROCEDURE insert_detalles_pedido_cliente_producto(nombre_cliente VARCHAR(50), nombre_producto VARCHAR(100), cantidad INT, precio_unitario DECIMAL(10,2), subtotal DECIMAL(10,2))
BEGIN
    DECLARE pedido_id_var BINARY(16);
    DECLARE producto_id_var BINARY(16);

    -- Obtener el cliente_id
    SELECT cliente_id INTO pedido_id_var FROM clientes WHERE nombre = nombre_cliente LIMIT 1;
    
    -- Obtener el producto_id
    SELECT producto_id INTO producto_id_var FROM productos WHERE nombre = nombre_producto LIMIT 1;

    -- Insertar el detalle del pedido
    INSERT INTO detalles_pedido(pedido_id, producto_id, cantidad, precio_unitario, subtotal) VALUES (pedido_id_var, producto_id_var, cantidad, precio_unitario, subtotal);
END //

//

DELIMITER //

CREATE PROCEDURE insert_detalles_pedido(nombre_cliente VARCHAR(50), nombre_producto VARCHAR(100), cantidad INT, precio_unitario DECIMAL(10,2), subtotal DECIMAL(10,2))
BEGIN
    DECLARE cliente_id_var BINARY(16);
    DECLARE pedido_id_var BINARY(16);
    DECLARE producto_id_var BINARY(16);

    -- Obtener el cliente_id
    SELECT cliente_id INTO cliente_id_var FROM clientes WHERE nombre = nombre_cliente LIMIT 1;
    
    -- Obtener el pedido_id
    SELECT pedido_id INTO pedido_id_var FROM pedidos WHERE cliente_id = cliente_id_var LIMIT 1;

    -- Obtener el producto_id
    SELECT producto_id INTO producto_id_var FROM productos WHERE nombre = nombre_producto LIMIT 1;

    -- Insertar el detalle del pedido
    INSERT INTO detalles_pedido(pedido_id, producto_id, cantidad, precio_unitario, subtotal) VALUES (pedido_id_var, producto_id_var, cantidad, precio_unitario, subtotal);
END //

DELIMITER ;




DELIMITER //

CREATE TRIGGER descuento_cantidades AFTER INSERT ON detalles_pedido
FOR EACH ROW
BEGIN
    UPDATE productos 
    SET existencias = existencias - NEW.cantidad 
    WHERE productos.producto_id = NEW.producto_id;
END;
//

DELIMITER ;
