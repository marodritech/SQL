-- Ejercicio 1. Qué empresas tenemos en la BBDD Northwind.

select `customers`.`company_name`,`orders`.`order_id`,`orders`.`order_date`
from orders
inner join customers  on `orders`.`customer_id`=`customers`.`customer_id`;

-- otra forma de hacerlos sería 

SELECT order_id, company_name, order_date
FROM orders
NATURAL JOIN customers;


-- Ejercicio 2. Pedidos por cliente de UK

select `customers`.`company_name`, count(`orders`.`order_id`) as nºpedidos
from customers
inner join orders on `orders`.`customer_id`=`customers`.`customer_id`
where country= 'UK'
group by `company_name`;

-- Ejercicio 3. Empresas de UK y sus pedidos.(Hemos añadido el conctact name porque aparece en el enunciado)                               

select `customers`.`company_name`, `orders`.`order_id` ,`orders`.`order_date`
from customers
inner join orders on `orders`.`customer_id`=`customers`.`customer_id`
where country= 'UK';

-- o 
SELECT order_id, company_name, contact_name, order_date
FROM customers 
NATURAL JOIN orders
WHERE country = "UK" ;


-- Ejercicio 4. Empleadas que sean de la misma ciudad.

SELECT Jefes.city, CONCAT(Jefes.first_name, " ", Jefes.last_name) AS Nombre_Empleados, Empleados.city, CONCAT(Empleados.first_name," ", Empleados.last_name) AS Nombre_Supervisores
FROM employees AS Empleados, employees AS Jefes
WHERE  Jefes.reports_to = Empleados.employee_id ;


-- Ejercicio 5. BONUS. Pedidos y empresas con pedidos asociados o no.

SELECT order_id, company_name, order_date
FROM orders 
LEFT JOIN customers	
ON orders.customer_id = customers.customer_id
UNION ALL
SELECT order_id, company_name, order_date
FROM orders
RIGHT JOIN customers
ON orders.customer_id = customers.customer_id ;






