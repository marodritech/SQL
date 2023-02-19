-- Ejercicio 1. Extraed información de los productos "Beverages"

SELECT product_id, product_name, category_id
FROM products
WHERE category_id IN (SELECT category_id
						FROM categories
                        WHERE category_name = "Beverages");

-- Otra forma más sencilla de hacer esto sería

SELECT product_id, product_name, category_id
FROM products
NATURAL JOIN categories 
WHERE category_name = "Beverages";




-- Ejercicio 2. Extraed la lista de países donde viven los clientes, pero no hay ningún proveedor ubicado en ese país


SELECT DISTINCT country
FROM customers
WHERE country NOT IN ( SELECT country
						FROM suppliers);
                        
					
                    
-- Ejercicio 3. Extraer los clientes que compraron mas de 20 articulos "Grandma's Boysenberry Spread"


SELECT company_name              -- Esta primera query es porque según el enunciao estábamos entendiendo el nombr de la compañía por lo cual hemos relacionado estas tres tablas.
FROM customers
WHERE customer_id IN (SELECT customer_id
						FROM orders
                        WHERE order_id IN (SELECT order_id
											FROM order_details
											WHERE product_id = 6 and quantity >= 20));
																	
                                                                    
SELECT customer_id, order_id                   -- Esta sería la query que pide el enunciado
FROM orders
WHERE order_id IN (SELECT order_id
					FROM order_details
					WHERE product_id = 6 and quantity >= 20);                                                                    
                                                                
                                                                
															
SELECT customer_id, order_id           -- Y esta es la query de arriba desarrollada para sacar el número correspondiente al producto que nos piden.
FROM orders
WHERE order_id IN (SELECT order_id
					FROM order_details
					WHERE product_id IN (SELECT product_id
										FROM products
										WHERE product_name = "Grandma's Boysenberry Spread"  and quantity >= 20) );                                      
                                                                                       
                                            


-- Ejercicio 4. Extraed los 10 productos más caros

SELECT product_name AS "Los productos más caros", unit_price
FROM products
ORDER BY unit_price DESC LIMIT 10;


-- Ejercicio 5. Qué producto es más popular
-- la unica manera que hemos encontrado para sacar el resultado pedido es a través de una CTE

WITH productos_mas_vendidos (product_id, quantity, product_name) AS (
SELECT order_details.product_id, order_details.quantity, products.product_name
FROM order_details
LEFT JOIN products
ON  order_details.product_id = products.product_id
)

SELECT product_name, (product_id * quantity) AS "cantidad"
FROM productos_mas_vendidos
ORDER BY "cantidad" DESC LIMIT 1;


