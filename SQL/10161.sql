SELECT host_id, SUM(n_beds) as total_beds, DENSE_RANK() OVER(ORDER BY sum(n_beds) DESC) FROM airbnb_apartments
GROUP BY host_id