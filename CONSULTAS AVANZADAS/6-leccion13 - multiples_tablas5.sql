-- Ejercicio 1. Extraed los pedidos con el máximo "order_date" para cada empleado.

SELECT a.order_id, a.customer_id, a.employee_id, a.order_date, a.required_date
FROM orders AS a
GROUP BY a.employee_id
HAVING order_date IN (SELECT b.order_date
					  FROM orders AS b
                      WHERE a.order_id = b.order_id)
ORDER BY a.order_date DESC;


-- Ejercicio 2. Extraed el precio unitario máximo (unit_price) de cada producto vendido.

SELECT A.product_id, A.unit_price AS Máximos_por_unidad
FROM products AS A
WHERE A.unit_price IN (SELECT B.unit_price
					   FROM products AS B
                       WHERE A.product_id = B.product_id);
					

-- Ejercicio 3. Ciudades que empiezan con "A" o "B".


SELECT city, company_name, contact_name
FROM customers
WHERE city REGEXP "^[A-B]\\w+"; 


-- Ejercicio 4. Número de pedidos que han hecho en las ciudades que empiezan con L.

SELECT city, company_name, contact_name, COUNT(order_id)
FROM customers
NATURAL JOIN orders
WHERE city REGEXP "^[L]\\w+" 
GROUP BY company_name;


-- Ejercio 5. Todos los clientes cuyo "contact_title" no incluya "Sales".

SELECT contact_name, contact_title, company_name
FROM customers
WHERE contact_title NOT LIKE "Sales%";


-- Ejercicio 6. Todos los clientes que no tengan una "A" en segunda posición en su nombre.

SELECT contact_name
FROM customers
WHERE contact_name NOT LIKE "_a%";







