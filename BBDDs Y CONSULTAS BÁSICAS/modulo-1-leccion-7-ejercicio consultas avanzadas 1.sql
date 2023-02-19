# Ejercicio 1 productos más baratos y caros

SELECT MAX(unit_price) AS highestPrice, MIN(unit_price) AS lowestPrice
FROM products;

# Ejercicio 2 numero productos y media

SELECT COUNT(product_name) AS numero_de_productos, ROUND(AVG(unit_price),2) AS precio_medio
FROM products;

# Ejercicio 3 maxima y mina de UK

SELECT MAX(freight) AS carga_maxima, MIN(freight) AS carga_minima
FROM orders
WHERE ship_country = "UK";

# Ejercicio 4 productos por encima del precio medio
# Como en el ejercicio 2 hemos sacado la media de precio de los producto y vemos que es de 28.87 usaremos ese calculo para empezar

SELECT * 
FROM products
WHERE unit_price > 28.87
ORDER BY unit_price DESC;

# Ejercicio 5 productos descontinuados (Según la consulta no hay ningún producto descontinuado)

SELECT COUNT(product_name) AS numero_total, product_name
FROM products
WHERE discontinued = 1;

# Ejercicio 6 detalles de la query anterior

SELECT product_id, product_name
FROM products
WHERE discontinued = 0
ORDER BY product_id DESC
LIMIT 10;