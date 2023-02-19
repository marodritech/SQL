#EJERCICIO 1 conociendo tipo de producto

SELECT product_name,unit_price
FROM products 
limit 10;

# EJERCICIO 2 ordenar los resultados 
SELECT product_name,unit_price
FROM products
ORDER BY product_id DESC limit 10;

# EJERCICIO 3 que pedidos tenemos
SELECT DISTINCT product_id
FROM order_details ;

# EJERCICIO 4 los dos primeros pedidos 
SELECT  DISTINCT product_id
FROM order_details
LIMIT 2;

# EJERCICIO 5 pedidos que han gastado
SELECT  order_id , (quantity*unit_price) AS ImporteTotal
FROM order_details 
ORDER BY unit_price DESC 
LIMIT 3;

# EJERCICIO 6 posiciones 5 y 10 mejor posicionados
SELECT  order_id,(quantity*unit_price) AS ImporteTotal
FROM order_details 
ORDER BY ImporteTotal DESC 
LIMIT 5
OFFSET 5;

# EJERCICIO 7 se sacan las categorías con alias 
SELECT  category_id as NombreDeCategoria
FROM categories;

# EJERCICIO 8 envíos con retraso..... no ha funcionado
SELECT order_id, date_add(shipped_date,interval 5 day) as FechaRetrasada
FROM orders;

# EJERCICIO 9. Productos más rentables.
SELECT product_name, unit_price 	
FROM products
where unit_price BETWEEN 15 AND 50;

# EJERCICIO 10. seleccion de productos
SELECT *	
FROM products
where unit_price IN (18,19,20);
