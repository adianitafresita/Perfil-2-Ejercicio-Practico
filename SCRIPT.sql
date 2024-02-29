DROP DATABASE IF EXISTS  QuickBite;


CREATE DATABASE QuickBite;
USE QuickBite;

CREATE TABLE clientes(
    cliente_id BINARY(16) PRIMARY KEY DEFAULT UUID(),
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    telefono VARCHAR(10) NOT NULL,
    direccion VARCHAR(255) NOT NULL
);

CREATE TABLE empleados(
    empleado_id BINARY(16) PRIMARY KEY DEFAULT UUID(),
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    cargo VARCHAR(50) NOT NULL,
    fecha_contratacion DATE NOT NULL,
    salario DECIMAL(10,2) NOT NULL
);

CREATE TABLE pedidos(
    pedido_id BINARY(16) PRIMARY KEY DEFAULT UUID(),
    cliente_id BINARY(16), 
    fecha_pedido DATE NOT NULL,
    total DECIMAL(10,2) NOT NULL,
    estado VARCHAR(20) NOT NULL,
    empleado_id BINARY(16) NOT NULL
);

CREATE TABLE productos(
    producto_id BINARY(16) PRIMARY KEY DEFAULT UUID(),
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(300) NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    existencias INT NOT NULL
);

CREATE TABLE detalles_pedido(
    detalle_id BINARY(16) PRIMARY KEY DEFAULT UUID(),
    pedido_id BINARY(16), 
    producto_id BINARY(16), 
    cantidad INT NOT NULL,
    precio_unitario DECIMAL(10,2) NOT NULL,
    subtotal DECIMAL(10,2) NOT NULL
);

-- Agrega las restricciones de clave foránea después de haber ajustado los tipos de datos
ALTER TABLE pedidos
ADD CONSTRAINT fk_pedidos_clientes FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id);

ALTER TABLE pedidos
ADD CONSTRAINT fk_pedidos_empleados FOREIGN KEY (empleado_id) REFERENCES empleados(empleado_id);

ALTER TABLE detalles_pedido
ADD CONSTRAINT fk_detalles_pedido_pedidos FOREIGN KEY (pedido_id) REFERENCES pedidos(pedido_id);

ALTER TABLE detalles_pedido
ADD CONSTRAINT fk_detalles_pedido_productos FOREIGN KEY (producto_id) REFERENCES productos(producto_id);

