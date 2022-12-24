with a AS (
    select extract(MONTH FROM invoicedate) as month, description, SUM(quantity * unitprice) as total_paid from online_retail
    GROUP BY month, description
    ORDER BY extract(MONTH FROM invoicedate)),
b as (
select month, description, total_paid, RANK() OVER(PARTITION BY month ORDER BY total_paid DESC) FROM a)
select month, description, total_paid from b
WHERE rank = 1