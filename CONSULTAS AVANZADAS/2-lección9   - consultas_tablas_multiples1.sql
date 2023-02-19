-- Ejercicio 1 Pedidos por empresa en UK

select `customers`.`company_name` AS Nombre_compañía,`customers`.`customer_id` AS Identificador,  count(`orders`.`order_id`) as 'nºpedidos'
FROM orders
cross JOIN customers
where `customers`.`customer_id`=`orders`.`customer_id` and `customers`.`country`='UK'
group by  `customers`.`company_name`;

-- Ejercicio 2 Productos pedidos por empresa en UK por año

select `customers`.`company_name` AS compañía,   year(`orders`.`order_date`) AS año ,  sum(`order_details`.`quantity`) AS num_objetos 
FROM customers
inner join orders on `customers`.`customer_id`=`orders`.`customer_id`
inner JOIN order_details on `orders`.`order_id` =`order_details`.`order_id`
where `customers`.`country`='UK'
group by `customers`.`company_name` , year(`orders`.`order_date`);


-- Ejercicio 3. Mejorad la query anterior
-- No nos casan los resultados de la columna de los descuentos con los resultados ofrecidos en el gitbook, no sabemos si estamos haciendo mal el cálculo.

select `customers`.`company_name` AS compañía,   year(`orders`.`order_date`) AS año ,  sum(`order_details`.`quantity`) AS num_Objetos ,  ((`order_details`.`unit_price`*`order_details`.`quantity`) * 0.15) as total
FROM customers
inner join orders on `customers`.`customer_id`=`orders`.`customer_id`
inner JOIN order_details on `orders`.`order_id` =`order_details`.`order_id`
where `customers`.`country`='UK'
group by `customers`.`company_name` , year(`orders`.`order_date`);


-- Ejercicio 4 BONUS: Pedidos que han realizado cada compañía y su fecha

select `customers`.`company_name`,`orders`.`order_id` , `orders`.`order_date`
from customers
inner join orders on `orders`.`customer_id`=`customers`.`customer_id`;

-- Ejercicio 5 BONUS: Tipos de producto vendidos
-- No nos casan los resultados de la columna de los descuentos con los resultados ofrecidos en el gitbook, no sabemos si estamos haciendo mal el cálculo.

SELECT category_id, category_name, product_name, (unit_price*quantity * (1 -discount)) AS Total
FROM categories
NATURAL JOIN order_details
NATURAL JOIN products
GROUP BY product_name;



