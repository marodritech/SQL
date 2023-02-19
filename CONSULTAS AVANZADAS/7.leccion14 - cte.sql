-- Ejercicio 1. Extraer en una CTE todos los nombres de las compañias y los id de los clientes.

WITH NombresyID_clientes (customer_id, company_name) AS (
SELECT customer_id, company_name
FROM customers)
SELECT customer_id, company_name
FROM NombresyID_clientes;


-- Ejercicio 2. Selecciona solo los de que vengan de "Germany"

WITH NombresyID_clientes (customer_id, company_name, country) AS (
SELECT customer_id, company_name, country
FROM customers)

SELECT customer_id, company_name
FROM NombresyID_clientes
WHERE country = 'Germany';



-- Ejercicio 3. Extraed el id de las facturas y su fecha de cada cliente.

WITH facturas_y_fechas (customer_id, company_name, order_id, order_date) AS (
SELECT orders.customer_id, customers.company_name, orders.order_id, orders.order_date
FROM orders 
INNER JOIN customers 
ON  orders.customer_id = customers.customer_id
)

SELECT customer_id, company_name, order_id, order_date
FROM facturas_y_fechas
;



-- Ejercicio 4. Contad el número de facturas por cliente.

WITH facturas_y_fechas (customer_id, company_name, order_id, order_date) AS (
SELECT orders.customer_id, customers.company_name, orders.order_id, orders.order_date
FROM orders 
INNER JOIN customers 
ON  orders.customer_id = customers.customer_id
)

SELECT customer_id, company_name, COUNT(order_id)
FROM facturas_y_fechas
GROUP BY company_name
;



-- Ejercicio5. Cuál la cantidad media pedida de todos los productos ProductID. 
-- No nos coinciden nuevamente las cifras con los resultados del gitbook y no sabemos bien por qué.

WITH Media_productos (product_name, product_id, quantity) AS (
SELECT products.product_name, order_details.product_id, order_details.quantity
FROM order_details
INNER JOIN products 
ON  order_details.product_id = products.product_id
)

SELECT product_name AS Nombre_producto , AVG(quantity) AS Media
FROM Media_productos
GROUP BY product_name
;



