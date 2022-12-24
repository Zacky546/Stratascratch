SELECT customers.id, first_name, SUM(total_order_cost) as total_order FROM customers
JOIN orders ON customers.id = orders.cust_id
GROUP BY customers.id, first_name
ORDER BY first_name
