-- Esta consulta cuenta el número total de clientes registrados en la tabla customers
SELECT COUNT(*) AS customers_count
FROM customers;

-- Reporte 1: los 10 vendedores con mayor facturación total

SELECT
    TRIM(CONCAT(e.first_name, ' ', e.last_name)) AS seller,
    COUNT(*) AS operations,
    FLOOR(SUM(s.quantity * p.price)) AS income
FROM sales s
JOIN employees e ON e.employee_id = s.sales_person_id
JOIN products p ON p.product_id = s.product_id
GROUP BY e.employee_id, e.first_name, e.last_name
ORDER BY income DESC
LIMIT 10;

-- Reporte 2: vendedores cuyo ingreso promedio por venta está por debajo
-- del promedio general de ingresos promedio de todos los vendedores.

WITH seller_avg AS (
    SELECT
        TRIM(CONCAT(e.first_name, ' ', e.last_name)) AS seller,
        AVG(s.quantity * p.price) AS raw_avg
    FROM sales s
    JOIN employees e ON e.employee_id = s.sales_person_id
    JOIN products p ON p.product_id = s.product_id
    GROUP BY e.employee_id, e.first_name, e.last_name
)
SELECT
    seller,
    FLOOR(raw_avg) AS average_income
FROM seller_avg
WHERE raw_avg < (SELECT AVG(raw_avg) FROM seller_avg)
ORDER BY average_income ASC;

-- Reporte 3: ingresos totales por vendedor y día de la semana.

WITH day_income AS (
    SELECT
        TRIM(CONCAT(e.first_name, ' ', e.last_name)) AS seller,
        TRIM(LOWER(TO_CHAR(s.sale_date, 'Day'))) AS day_of_week,
        EXTRACT(ISODOW FROM s.sale_date) AS day_num,
        FLOOR(SUM(s.quantity * p.price)) AS income
    FROM sales s
    JOIN employees e ON e.employee_id = s.sales_person_id
    JOIN products p ON p.product_id = s.product_id
    GROUP BY e.employee_id, e.first_name, e.last_name, day_of_week, day_num
)
SELECT seller, day_of_week, income
FROM day_income
ORDER BY day_num, seller;
