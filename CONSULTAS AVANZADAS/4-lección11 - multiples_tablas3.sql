-- Ejercicio 1. Extraer toda la información sobre las compañias que tengamos en la BBDD

select `city`, `company_name`, `contact_name`,  'customer' as relathionship
from customers
UNION 
SELECT `city`, `company_name`, `contact_name`,  'suppliers' as relationship
from suppliers;


-- Ejercicio 2. Extraer todos los pedidos gestinados por "Nancy Davolio"

SELECT * 
FROM orders
where employee_id = 1 IN (
	SELECT employee_id
	from employees);
   
   
-- Ejercicio 3. Extraed todas las empresas que no han comprado en el año 1997 

SELECT company_name, country
FROM customers
WHERE customer_id  NOT IN (SELECT customer_id
						   FROM orders
						   WHERE YEAR(order_date) = 1997); 



-- Ejercicio 4. Extraed toda la información de los pedidos donde tengamos "Konbu"

 SELECT *
 FROM orders
 NATURAL JOIN order_details
 WHERE product_id IN (SELECT product_id
					  FROM products
                      WHERE product_name = "Konbu");





