 CREATE SCHEMA `tienda_zapatillas`;
 USE `tienda_zapatillas`;
 
 CREATE TABLE zapatillas (
	id_zapatilla INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    modelo VARCHAR(45) NOT NULL,
    color VARCHAR(45) NOT NULL
	);
    
CREATE TABLE clientes (
	id_cliente INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nombre VARCHAR(45) NOT NULL,
    numero_teléfono INT(9) NOT NULL,
    email VARCHAR(45) NOT NULL,
    direccion VARCHAR(45) NOT NULL,
    ciudad VARCHAR(45),
    provincia VARCHAR(45) NOT NULL,
    pais VARCHAR(45) NOT NULL,
    codigo_postal VARCHAR(45) NOT NULL
	);
    
CREATE TABLE empleados (
	id_empleado INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nombre VARCHAR(45) NOT NULL,
    tienda VARCHAR(45) NOT NULL,
    salario INT,
    fecha_bajo_incorporacion DATE NOT NULL
    );
    
CREATE TABLE facturas (
	id_factura INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    numero_factura VARCHAR(45) NOT NULL,
    fecha DATE NOT NULL,
    id_zapatilla INT NOT NULL,
    id_empleado INT NOT NULL,
    id_cliente INT NOT NULL,
    CONSTRAINT FK_facturas_zapatillas 
		FOREIGN KEY (id_zapatilla)
	REFERENCES zapatillas(id_zapatilla),
     CONSTRAINT FK_facturas_empleados 
		FOREIGN KEY (id_empleado)
	REFERENCES empleados(id_empleado),
     CONSTRAINT FK_facturas_clientes 
		FOREIGN KEY (id_cliente)
	REFERENCES clientes(id_cliente)
    );