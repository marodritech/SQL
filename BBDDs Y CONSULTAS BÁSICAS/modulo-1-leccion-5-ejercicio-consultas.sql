#EJERCICIO 1 consulta id empleada, nombre y apellido

SELECT employee_id,last_name,first_name
FROM employees;

# EJERCICIO 2 consulta productos más baratos

SELECT unit_price
FROM products 
WHERE unit_price <= 5; 

# EJERCICIO 3 consulta precio 18, 19 y 20
SELECT *
FROM products 
WHERE unit_price =18 OR unit_price =19 OR unit_price =20; 

# EJERCICIO 4 productos que dan más beneficios

SELECT *
FROM products 
WHERE unit_price >= 15 AND unit_price<= 50; 
 
# EJERCICIO 5 productos que no tienen precio

SELECT *
FROM products 
WHERE unit_price = 0 OR unit_price = NULL; 

# EJERCICIO 6 comparar productos

SELECT *
FROM products
WHERE unit_price < 15 AND product_id < 10; 

# EJERCICIO 7 cambiando de operadores

SELECT *
FROM products
WHERE NOT unit_price > 15 AND NOT product_id > 10; 

# EJERCICIO 8 conociendo los paises

SELECT ship_country
FROM orders
WHERE ship_country IS NOT NULL;
