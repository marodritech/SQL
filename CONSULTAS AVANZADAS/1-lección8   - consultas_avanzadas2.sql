Use northwind;

-- Ejercicio 1, Relación entre número de pedidos y máxima carga

SELECT MAX(freight), COUNT(*), employee_id
FROM orders
GROUP BY employee_id;


-- Ejercicio 2 Descartar pedidos sin fecha y ordénalos

SELECT MAX(freight), COUNT(*), employee_id
FROM orders
WHERE shipped_date IS NOT NULL
GROUP BY employee_id;

-- Ejercicio 3 Números de pedidos por día

SELECT COUNT(order_id), DAY(order_date), MONTH(order_date), YEAR(order_date)
FROM orders
GROUP BY order_date;

-- Ejercicio 4 Número de pedidos por mes y año

SELECT COUNT(order_id) AS numero_pedidos, MONTH(order_date) AS mes, YEAR(order_date) AS año
FROM orders
GROUP BY YEAR(order_date), MONTH(order_date);

-- Ejercicio 5 Seleccionad las ciudades con 4 o más empleados

SELECT distinct city, COUNT(employee_id)
FROM employees
GROUP BY city
HAVING COUNT(employee_id) >= 4;


-- Ejercicio 6 Cread una nueva columna basándonos en la cantidad monetaria

SELECT order_id, ROUND(unit_price * quantity, 2) AS Calculo,
CASE
	WHEN unit_price * quantity >= 2000 THEN "ALTO"
	WHEN unit_price * quantity <  2000 THEN "BAJO"
END AS Total
FROM order_details; 





