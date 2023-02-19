# ejercicios insercción de datos 

# ejercicio 1
INSERT INTO zapatillas ( modelo, color, marca, talla)
	VALUES ('XQYUN', 'Negro', 'Nike', 42),
		   ('UOPMN', 'Rosas', 'Nike', 39),
           ('OPNYT','Verdes','Adidas',35);
        
INSERT INTO empleados ( nombre, tienda, salario, fecha_bajo_incorporacion )
	VALUES ('Laura', 'Alcobendas' , 25987.00 , "2010-09-03"),
		   ('María','Sevilla', 0, "2001-04-11"),
           ('Ester','Oviedo',30165.98, "2000-11-29");
INSERT INTO clientes ( nombre,numero_teléfono,email,direccion,ciudad,provincia,codigo_postal)
	values ('Mónica',1234567289,'monica@email.com','Calle felicidad','Móstoles','Madrid',28176),
		   ('Lorena',289345678,'lorena@email.com','calle Alegría','Barcelona','Barcelona',12346),
           ('Carmen',298463759,'carmen@email.com','calle del Color','Vigo','Pontevedra',23456);
INSERT INTO facturas (numero_factura,fecha,id_zapatilla,id_empleado,id_cliente,total)
	values (123, "2001-12-11", 1, 10, 1, 54.98),
		   (1234, "2005-05-23", 1, 11, 3, 89.91),
		   (12345, "2015-09-18", 2, 12, 3, 76.23);
        
# ejercicio 2. Actualizar datos de la tabla

UPDATE zapatillas
SET color = 'amarillas'
WHERE color = 'rosas';
        
        
UPDATE empleados
SET tienda = 'A Coruña'
WHERE nombre ='Laura';
   
   
UPDATE clientes
SET numero_teléfono = '123456728'
WHERE nombre = 'Mónica';

UPDATE facturas	
SET total = 89.91
WHERE id_zapatilla = 2;
   
    
    