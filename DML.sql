-- Insertar clientes
CALL insert_cliente('Juan', 'Perez', '123456789', 'Calle 123');
CALL insert_cliente('Maria', 'Lopez', '987654321', 'Avenida Principal');
CALL insert_cliente('Pedro', 'Gonzalez', '456789123', 'Calle Secundaria');
CALL insert_cliente('Ana', 'Rodriguez', '555666777', 'Avenida Central');
CALL insert_cliente('Luis', 'Gomez', '333222111', 'Calle Principal');
CALL insert_cliente('Laura', 'Martinez', '999888777', 'Avenida Sur');
CALL insert_cliente('Sofia', 'Fernandez', '111222333', 'Calle Norte');
CALL insert_cliente('Diego', 'Gutierrez', '777888999', 'Avenida Este');
CALL insert_cliente('Elena', 'Sanchez', '444555666', 'Calle Oeste');
CALL insert_cliente('Roberto', 'Lopez', '222333444', 'Avenida Poniente');
CALL insert_cliente('Carla', 'Hernandez', '666555444', 'Calle Central');
CALL insert_cliente('Mario', 'Perez', '888999111', 'Avenida 123');
CALL insert_cliente('Lucia', 'Garcia', '333444555', 'Calle 456');
CALL insert_cliente('Javier', 'Gonzalez', '555444333', 'Avenida 789');
CALL insert_cliente('Natalia', 'Martinez', '777888999', 'Calle 012');
SELECT * FROM clientes;

-- Insertar empleados
CALL insert_empleado('Carlos', 'Martinez', 'Cocinero', '2023-01-15', 2000.00);
CALL insert_empleado('Laura', 'Gomez', 'Cajero', '2023-02-20', 1800.00);
CALL insert_empleado('Roberto', 'Sanchez', 'Repartidor', '2023-03-10', 1500.00);
CALL insert_empleado('Ana', 'Garcia', 'Chef', '2023-04-05', 2200.00);
CALL insert_empleado('Diego', 'Fernandez', 'Cajero', '2023-05-15', 1700.00);
CALL insert_empleado('Sofia', 'Lopez', 'Cocinero', '2023-06-20', 1900.00);
CALL insert_empleado('Luis', 'Rodriguez', 'Repartidor', '2023-07-10', 1600.00);
CALL insert_empleado('Elena', 'Sanchez', 'Chef', '2023-08-25', 2300.00);
CALL insert_empleado('Carla', 'Hernandez', 'Cajero', '2023-09-05', 1750.00);
CALL insert_empleado('Mario', 'Perez', 'Cocinero', '2023-10-15', 1950.00);
CALL insert_empleado('Lucia', 'Garcia', 'Repartidor', '2023-11-20', 1650.00);
CALL insert_empleado('Javier', 'Gonzalez', 'Chef', '2023-12-10', 2400.00);
CALL insert_empleado('Natalia', 'Martinez', 'Cajero', '2024-01-05', 1800.00);
CALL insert_empleado('Pedro', 'Lopez', 'Repartidor', '2024-02-15', 1700.00);
CALL insert_empleado('Marina', 'Fernandez', 'Cocinero', '2024-03-20', 2000.00);
SELECT * FROM empleados;

-- Insertar productos
CALL insert_producto('Hamburguesa', 'Hamburguesa con queso, lechuga y tomate', 5.99, 50);
CALL insert_producto('Pizza', 'Pizza de pepperoni y queso', 8.99, 30);
CALL insert_producto('Ensalada', 'Ensalada César con pollo', 6.49, 20);
CALL insert_producto('Sushi', 'Sushi de salmón y aguacate', 12.99, 40);
CALL insert_producto('Pasta', 'Pasta al pesto', 9.49, 25);
CALL insert_producto('Tacos', 'Tacos de carne asada', 7.99, 35);
CALL insert_producto('Burritos', 'Burritos de frijoles y queso', 6.99, 45);
CALL insert_producto('Sándwich', 'Sándwich de jamón y queso', 4.99, 60);
CALL insert_producto('Sopa', 'Sopa de pollo casera', 3.99, 55);
CALL insert_producto('Pollo', 'Pollo a la parrilla', 10.99, 20);
CALL insert_producto('Pescado', 'Filete de pescado a la plancha', 11.49, 15);
CALL insert_producto('Pastel', 'Pastel de chocolate', 8.49, 10);
CALL insert_producto('Helado', 'Helado de vainilla', 2.99, 70);
CALL insert_producto('Café', 'Café americano', 1.99, 80);
CALL insert_producto('Refresco', 'Refresco de cola', 1.49, 90);
SELECT * FROM empleados;